<?php
$query = "SELECT COLUMN_NAME,COLUMN_KEY FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='".$this->db->database."' AND TABLE_NAME='".$table."' AND COLUMN_KEY = 'PRI'";
$pri = $this->mymodel->selectWithQuery($query);
$primary = $pri[0]['COLUMN_NAME'];
$c = ucfirst(str_replace(".php", "", $controller));
  $arr_select_dinamis = array();
  $d = 0;
  foreach($collum as $key => $value){
        if(in_array($value,$show)){
          if($type_collum[$key] == 'SELECT OPTION'){
              $arr_select_dinamis[$value] = array('table'=>$post_input['kolom'][$d],'option'=>$post_input['option'][$d],'value'=>$post_input['value'][$d]);
              $d++;
        }
      }
  }
  $stringFilter = "";
  $stringBuildData = "";
if(!empty($post_input['filter_select'])){
    // echo "asdasd";
      foreach($post_input['filter_select'] as $fs){
        if($arr_select_dinamis[$fs]['table'] == 'user'){
            $stringWhere = "NULL";
      }
      else{
            $stringWhere = "array('".$arr_select_dinamis[$fs]['table'].".status'=>'ENABLE')";
      }
      $stringBuildData .= "
                    'filter_".$fs."' : \$('#filter_".$fs."').val(), 
      ";
      $stringFilter .= "
                    <?php
                      \$select_".$arr_select_dinamis[$fs]['table']." = \$this->mymodel->selectWhere('".$arr_select_dinamis[$fs]['table']."',".$stringWhere.");
                    ?>
                    <div class=\"col-md-3 no-padding\">
                        <label style=\"text-transform:capitalize\">".str_replace('_', ' ', $fs)."</label>
                        <select class=\"form-control select2\" style=\"width:100%\" id=\"filter_".$fs."\">
                            <option value=\"\">Pilih</option>
                            <?php
                                foreach(\$select_".$arr_select_dinamis[$fs]['table']." as \$key => \$value){
                                      ?>
                                    <option value=\"<?=\$value['".$arr_select_dinamis[$fs]['value']."']?>\"><?=\$value['".$arr_select_dinamis[$fs]['option']."']?></option>
                                    <?php
                                }
                            ?>
                        </select>
                    </div>
      ";
            }
            $stringBuildData = "
                function buildData(){
                    var json_filter = {
                      ".$stringBuildData."
                  }
                  return json_filter;
                }
            ";
            $stringFilter = "
                <div class=\"row\" style=\"margin-bottom:10px\">
                    <div class=\"col-md-12\">
                      ".$stringFilter."
                      <div class=\"col-md-2 no-padding\">
                          <button class=\"btn btn-primary\" onclick=\"loadtable('ENABLE')\" type=\"button\" style=\"margin-top:25px;border-radius:0px\"><i class=\"fa fa-filter\"></i> Filter</button>
                      </div>
                    </div>
                </div>

            ";
          }
$stringall= "
 <!-- Content Wrapper. Contains page content -->
  <div class=\"content-wrapper\">
    <!-- Content Header (Page header) -->
    <section class=\"content-header\">
      <h1>
        ".$this->template->label($table)."
        <small>master</small>
      </h1>
      <ol class=\"breadcrumb\">
        <li><a href=\"#\"><i class=\"fa fa-dashboard\"></i> Home</a></li>
        <li><a href=\"#\">master</a></li>
        <li class=\"active\">".$this->template->label($table)."</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class=\"content\">
      <div class=\"row\">
        <div class=\"col-xs-12\">
          <div class=\"panel\">
            <!-- /.panel-header -->
            <div class=\"panel-heading\">
              <div class=\"row\">
                <div class=\"col-md-6\">
                  <select onchange=\"loadtable(this.value)\" id=\"select-status\" style=\"width: 150px\" class=\"form-control\">
                      <option value=\"ENABLE\">ENABLE</option>
                      <option value=\"DISABLE\">DISABLE</option>
                  </select>
                </div>
                <div class=\"col-md-6\">
                  <div class=\"pull-right\">";
      if($form_type=="page"){

         $stringall .= "          <a href=\"<?= base_url('master/".$c."/create') ?>\">
                    <button type=\"button\" class=\"btn btn-sm btn-success\"><i class=\"fa fa-plus\"></i> Tambah ".$this->template->label($table)."</button> 
                  </a>";
          }else{
         $stringall .= "          <a href=\"javascript::void(0)\" onclick=\"create()\">
        <button type=\"button\" class=\"btn btn-sm btn-success\"><i class=\"fa fa-plus\"></i> Tambah ".$this->template->label($table)."</button> 
      </a>";
          }

       $stringall .= "
                  <a href=\"<?= base_url('fitur/ekspor/".$table."') ?>\" target=\"_blank\">
                    <button type=\"button\" class=\"btn btn-sm btn-warning\"><i class=\"fa fa-file-excel-o\"></i> Ekspor ".$this->template->label($table)."</button> 
                  </a>
                  <button type=\"button\" class=\"btn btn-sm btn-info\" onclick=\"\$('#modal-impor').modal()\"><i class=\"fa fa-file-excel-o\"></i> Import ".$this->template->label($table)."</button>
                  </div>
                </div>  
              </div>

            </div>
            <div class=\"panel-body\">
                <div class=\"show_error\"></div>
                ".$stringFilter."
              <div class=\"table-responsive\">
                <div id=\"load-table\"></div>
              </div>
            </div>
            <!-- /.panel-body -->
          </div>
          <!-- /.panel -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->";
if($form_type=="modal"){
  $stringall .= "

  <div class=\"modal fade bd-example-modal-sm\" tabindex=\"-1\" ".$table."=\"dialog\" aria-labelledby=\"mySmallModalLabel\" aria-hidden=\"true\" id=\"modal-form\">
      <div class=\"modal-dialog modal-md\">
          <div class=\"modal-content\">
              <div class=\"modal-header\">
                  <h5 class=\"modal-title\" id=\"title-form\" ></h5>
                  <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">
                      <span aria-hidden=\"true\">&times;</span>
                  </button>
              </div>
              <div class=\"modal-body\">
                <div id=\"load-form\"></div>
              </div>

          </div>
      </div>
  </div> ";
}
$stringall .= "
  <div class=\"modal fade bd-example-modal-sm\" tabindex=\"-1\" ".$table."=\"dialog\" aria-labelledby=\"mySmallModalLabel\" aria-hidden=\"true\" id=\"modal-delete\">
      <div class=\"modal-dialog modal-sm\">
          <div class=\"modal-content\">
              <form id=\"upload-delete\" action=\"<?= base_url('master/".$c."/delete') ?>\">
              <div class=\"modal-header\">
                  <h5 class=\"modal-title\">Confirm delete</h5>
                  <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">
                      <span aria-hidden=\"true\">&times;</span>
                  </button>
              </div>
              <div class=\"modal-body\">
                  <input type=\"hidden\" name=\"".$primary."\" id=\"delete-input\">
                  <p>Are you sure to delete this data?</p>
              </div>
              <div class=\"modal-footer\">
                  <button type=\"submit\" class=\"btn btn-danger btn-send\">Yes, Delete</button>
                  <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Cancel</button>
              </div>
              </form>
          </div>
      </div>
  </div> 
  <div class=\"modal fade\" id=\"modal-impor\">
    <div class=\"modal-dialog\">
      <div class=\"modal-content\">
        <div class=\"modal-header\">
          <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>
          <h4 class=\"modal-title\">Impor ".$this->template->label($table)."</h4>
        </div>
        <form action=\"<?= base_url('fitur/impor/".$table."') ?>\" method=\"POST\"  enctype=\"multipart/form-data\">
        <div class=\"modal-body\">
            <div class=\"form-group\">
              <label for=\"\">File Excel</label>
              <input type=\"file\" class=\"form-control\" id=\"\" name=\"file\" placeholder=\"Input field\">
            </div>
        </div>
        <div class=\"modal-footer\">
          <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\"><i class=\"fa fa-times\"></i> Close</button>
          <button type=\"submit\" class=\"btn btn-primary\"><i class=\"fa fa-save\"></i> Save</button>
        </div>
        </form>
      </div>
    </div>
  </div>
  <script type=\"text/javascript\">
    ".$stringBuildData."
        function loadtable(status) {
              var table = '<table class=\"table table-bordered table-striped datatables\" id=\"mytable\">'+
                   '     <thead>'+";
$stringall .= "
                   '     <tr>'+
                   '       <th style=\"width:20px\">No</th>'+";
                      foreach ($show as $key => $value) {
  $stringall .=     "'<th>".$label->$value."</th>'+";
                  }

$stringall.=   "'       <th style=\"width:150px\">Status</th>'+
                   '       <th style=\"width:150px\"></th>'+
                   '     </tr>'+";
if($form_table=="datatables_search"){
$stringall .= "
                   '     <tr>'+
                   '       <th style=\"width:20px\">No</th>'+";
                      foreach ($show as $key => $value) {
  $stringall .=     "'<th>".$label->$value."</th>'+";
                  }

$stringall.=   "'       <th style=\"width:150px\">Status</th>'+
                   '       <th style=\"width:150px\"></th>'+
                   '     </tr>'+";
}

$stringall .= "

                   '     </thead>'+
                   '     <tbody>'+
                   '     </tbody>'+
                   ' </table>';
             // body...
             \$(\"#load-table\").html(table)
              var t = \$(\"#mytable\").DataTable({
                  initComplete: function() {
                      var api = this.api();
                    \$('#mytable_filter input')
                            .off('.DT')
                            .on('keyup.DT', function(e) {
                                  if (e.keyCode == 13) {
                                      api.search(this.value).draw();
                        }
                    });
                },
                oLanguage: {
                      sProcessing: \"loading...\"
                },
                processing: true,
                serverSide: true,";
  if($form_table=="datatables_search"){
    $stringall.= "orderCellsTop: true,\n";
  }
  $stringall.= "
                ajax: {\"url\": \"<?= base_url('master/".$c."/json?status=') ?>\"+status, \"type\": \"POST\"".(!empty($stringBuildData)?",\"data\":buildData()":"")."},
                columns: [
                    {\"data\": \"".$primary."\",\"orderable\": false},";
          $cek = 1;
          $static_id = 0;
          $arr_select_static = array();
          foreach($collum as $key => $value) {
              if(in_array($value,$show)){
  $stringall.=       "{\"data\": \"".$value."\"},";
            if($type_collum[$key] == 'SELECT OPTION STATIC'){
                $name_arr_option_static = 'option_static'.$post_input['static_select'][$static_id];
              $name_arr_value_static = 'value_static'.$post_input['static_select'][$static_id];
              $arr_select_static[$static_id]['nomor_kolom'] = $cek; 
              foreach($post_input[$name_arr_option_static] as $pi => $opt){
                  $arr_select_static[$static_id]['option'][] = $opt; 
                $arr_select_static[$static_id]['value'][] = $post_input[$name_arr_value_static][$pi]; 
              }
              $static_id++;
            }
          $cek++;
  }
          }                  
$stringSelectStatic = "";
foreach($arr_select_static as $ass){
    $stringOptionSelect = '';
  foreach($ass['value'] as $i => $val){
      $stringOptionSelect .= "if(data == \"".$val."\"){
          htmls = \"".$ass['option'][$i]."\";
    }";
  }
    $stringSelectStatic .= "{ targets : [".$ass['nomor_kolom']."],
                        render : function (data, type, row, meta) {
                                var htmls = \"\";

                              ".$stringOptionSelect."
                              return htmls;
                          }
                      },
                      ";
  }
  $stringAjaxField = "";
    $b = 0;
    $g = 1;
foreach ($collum as $key => $value) {
              if(in_array($value, $show)){
          if($type_collum[$key] == 'SELECT OPTION' && $post_input['kolomstatus'.$b] == 'ajax'){
                $stringAjaxField .= "
                \$('td:eq(\"".$g."\")', row).html('Loading...');
                \$.ajax({
                      url : \"<?= base_url('master/".$c."/loadAjaxField_".$value."/') ?>\"+data['".$value."'],
                    success : function(views){
                          \$('td:eq(\"".$g."\")', row).html(views);
                    }
                  });
              ";
              }

        if($type_collum[$key] == 'SELECT OPTION'){
                $b++;
        }
        $g++;
            }
          }
$stringall.=      "
                   {\"data\": \"status\"},
                    {   \"data\": \"view\",
                        \"orderable\": false
                    }
                ],
                order: [[1, 'asc']],
                columnDefs : [
                    ".$stringSelectStatic."
                    { targets : [".$cek."],
                        render : function (data, type, row, meta) {
                                if(row['status']=='ENABLE'){
                                  var htmls = '<a href=\"<?= base_url('master/".$c."/status/') ?>'+row['".$primary."']+'/DISABLE\">'+
                                            '    <button type=\"button\" class=\"btn btn-sm btn-sm btn-success\"><i class=\"fa fa-home\"></i> ENABLE</button>'+
                                            '</a>';
                              }else{
                                  var htmls = '<a href=\"<?= base_url('master/".$c."/status/') ?>'+row['".$primary."']+'/ENABLE\">'+
                                            '    <button type=\"button\" class=\"btn btn-sm btn-sm btn-danger\"><i class=\"fa fa-home\"></i> DISABLE</button>'+
                                            '</a>';
                              }
                              return htmls;
                          }
                      }
                ],

                rowCallback: function(row, data, iDisplayIndex) {
                      var info = this.fnPagingInfo();
                    var page = info.iPage;
                    var length = info.iLength;
                    var index = page * length + (iDisplayIndex + 1);
                    \$('td:eq(0)', row).html(index);
                    ".$stringAjaxField."
                }
            });";
if($form_table=="datatables_search"){
$stringall .= "
            $('#mytable thead tr:eq(1) th').each( function (i) {
              t.settings()[0].aoColumns[i].bSearchable = false;
              var title = $(this).text()
              if(title!='No' && title!='' && title!='Status'&& title!='#'){
                $(this).html( '<input type=\"text\" style=\"color: black;width:100%\" placeholder=\"Search '+title+'\" />' );
                $( 'input', this ).on( 'keyup change', function (e) {
                    //  alert('as');
                    if (e.keyCode == 13) {
                        if(this.value!=''){
                            t.settings()[0].aoColumns[i].bSearchable = true  
                        }
                    if(t.column(i).search() !== this.value){
                        t.column(i).search( this.value ).draw();
                        // alert()
                        }
                    }
                });  
              }else{
                $(this).html( '<input type=\"hidden\" style=\"color: black; placeholder=\"Search '+title+'\" />' );
              }

            });

            $(\"#mytable_filter\").hide();";
}

$stringall.="
         }
         loadtable(\$(\"#select-status\").val());
        ";
if($form_type=="page"){
    $stringall.="   
      function edit(id) {
              location.href = \"<?= base_url('master/".$c."/edit/') ?>\"+id;
         }";
    }else{
    $stringall.="   
      function edit(id) {
              // location.href = \"<?= base_url('master/".$c."/edit/') ?>\"+id;
            $(\"#load-form\").html('loading...');

            $(\"#modal-form\").modal();
            $(\"#title-form\").html('Edit ".$this->template->label($table)."');
            $(\"#load-form\").load(\"<?= base_url('master/".$c."/edit/') ?>\"+id);

         }
      function create() {
              $(\"#load-form\").html('loading...');
            // location.href = \"<?= base_url('master/".$c."/edit/') ?>\"+id;
            $(\"#modal-form\").modal();
            $(\"#title-form\").html('Create ".$this->template->label($table)."');
            $(\"#load-form\").load(\"<?= base_url('master/".$c."/create/') ?>\");

         }
         ";
    }
$stringall.="         function hapus(id) {
              \$(\"#modal-delete\").modal('show');
            \$(\"#delete-input\").val(id);

         }
         \$(\"#upload-delete\").submit(function(){
              event.preventDefault();
            var form = \$(this);
            var mydata = new FormData(this);
            \$.ajax({
                  type: \"POST\",
                url: form.attr(\"action\"),
                data: mydata,
                cache: false,
                contentType: false,
                processData: false,
                beforeSend : function(){
                      \$(\".btn-send\").addClass(\"disabled\").html(\"<i class='la la-spinner la-spin'></i>  Processing...\").attr('disabled',true);
                    \$(\".show_error\").slideUp().html(\"\");
                },
                success: function(response, textStatus, xhr) {
                     var str = response;
                    if (str.indexOf(\"success\") != -1){
                          \$(\".show_error\").hide().html(response).slideDown(\"fast\");

                        \$(\".btn-send\").removeClass(\"disabled\").html('Yes, Delete it').attr('disabled',false);
                    }else{
                           setTimeout(function(){ 
                             \$(\"#modal-delete\").modal('hide');
                        }, 1000);
                        \$(\".show_error\").hide().html(response).slideDown(\"fast\");
                        \$(\".btn-send\").removeClass(\"disabled\").html('Yes , Delete it').attr('disabled',false);
                        loadtable(\$(\"#select-status\").val());
                    }
                },
                error: function(xhr, textStatus, errorThrown) {



                }
            });
            return false;

        });
  </script>";
    $this->template->createFile($stringall, $path);
  ?>