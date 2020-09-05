<?php 
$query = "SELECT COLUMN_NAME,COLUMN_KEY FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='".$this->db->database."' AND TABLE_NAME='".$table."' AND COLUMN_KEY = 'PRI'";
$pri = $this->mymodel->selectWithQuery($query);
$primary = $pri[0]['COLUMN_NAME'];
$c = ucfirst(str_replace(".php", "", $controller));
if($form_type=="page"){
    $stringedit = "
  <!-- Content Wrapper. Contains page content -->
  <div class=\"content-wrapper\">
    <!-- Content Header (Page header) -->
    <section class=\"content-header\">
      <h1>
        ".$this->template->label($table)."
        <small>Master</small>
      </h1>
      <ol class=\"breadcrumb\">
        <li><a href=\"#\"><i class=\"fa fa-dashboard\"></i> Home</a></li>
        <li><a href=\"#\">master</a></li>
        <li class=\"active\">".$this->template->label($table)."</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class=\"content\">
    <form method=\"POST\" action=\"<?= base_url('master/".$c."/update') ?>\" id=\"upload-create\" enctype=\"multipart/form-data\">
    <input type=\"hidden\" name=\"".$primary."\" value=\"<?= \$".$table."['".$primary."'] ?>\">
      <div class=\"row\">
        <div class=\"col-xs-8\">
          <div class=\"panel\">
            <!-- /.panel-header -->
            <div class=\"panel-heading\">
              <h5 class=\"panel-title\">
                  Edit ".$this->template->label($table)."
              </h5>
            </div>
            <div class=\"panel-body\">
                <div class=\"show_error\"></div>\n";
$i=0;
$select = 0;
$select_static = 0;
foreach ($kolom as $klm) {
    $tipe = $type[$i]; 
  if($tipe!="HIDDEN"){
    if($tipe=="TEXT"){
    $stringedit .=  "<div class=\"form-group\">
                      <label for=\"form-".$klm."\">".$label->$klm."</label>
                      <input type=\"text\" class=\"form-control\" id=\"form-".$klm."\" placeholder=\"Masukan ".$label->$klm."\" name=\"dt[".$klm."]\" value=\"<?= \$".$table."['".$klm."'] ?>\">
                  </div>\n";
}
if($tipe=="PRICE"){
      $stringedit .=  "<div class=\"form-group\">
                        <label for=\"form-".$klm."\">".$label->$klm."</label>
                        <input type=\"text\" class=\"form-control money\" id=\"form-".$klm."\" placeholder=\"Masukan ".$label->$klm."\" name=\"dt[".$klm."]\" value=\"<?= \$".$table."['".$klm."'] ?>\">
                    </div>\n";
  }
 if($tipe=="DATE"){ 
     $stringedit .=  "<div class=\"form-group\">
                      <label for=\"form-".$klm."\">".$label->$klm."</label>
                      <input type=\"text\" class=\"form-control tgl\" id=\"form-".$klm."\" placeholder=\"Masukan ".$label->$klm."\" name=\"dt[".$klm."]\" value=\"<?= \$".$table."['".$klm."'] ?>\">
                  </div>\n";
}
 if($tipe=="TEXTAREA"){ 
     $stringedit .=  "<div class=\"form-group\">
                      <label for=\"form-".$klm."\">".$label->$klm."</label>
                      <textarea name=\"dt[".$klm."]\" class=\"form-control\"><?= \$".$table."['".$klm."'] ?></textarea>
                  </div>\n";
}
 if($tipe=="SELECT OPTION"){ 
     $stringedit .=  "<div class=\"form-group\">
                      <label for=\"form-".$klm."\">".$label->$klm."</label>
                      <select name=\"dt[".$klm."]\" class=\"form-control select2\" style=\"width:100%\">
                          <option value=\"0\">Pilih</option>
                        <?php 
                        \$".$select_kolom[$select]." = \$this->mymodel->selectWhere('".$select_kolom[$select]."',null);
                        foreach (\$".$select_kolom[$select]." as \$".$select_kolom[$select]."_record) {
                             \$text=\"\";
                          if(\$".$select_kolom[$select]."_record['".$select_value[$select]."']==\$".$table."['".$klm."']){
                               \$text = \"selected\";
                        }
                         echo \"<option value=\".\$".$select_kolom[$select]."_record['".$select_value[$select]."'].\" \".\$text.\" >\".\$".$select_kolom[$select]."_record['".$select_option[$select]."'].\"</option>\";
                      }
                       ?>
                     </select>
                 </div>\n";
   $select++;
}
 if($tipe=="SELECT OPTION STATIC"){ 
       $stringstatic = '';
    $name_arr_option_static = 'option_static'.$post_input['static_select'][$select_static];
    $name_arr_value_static = 'value_static'.$post_input['static_select'][$select_static];
    foreach($post_input[$name_arr_option_static] as $pi => $val){
          $stringstatic .= "<option value=\"".$post_input[$name_arr_value_static][$pi]."\" <?=(\$".$table."['".$klm."']==\"".$post_input[$name_arr_value_static][$pi]."\")?\"selected\":\"\"?> >".$val."</option>
       "; 
  }
 $stringedit .=  "<div class=\"form-group\">
                     <label for=\"form-".$klm."\">".$label->$klm."</label>
                     <select name=\"dt[".$klm."]\" class=\"form-control\">
                      <option value=\"\">Pilih</option>
                      ".$stringstatic."
                     </select>
                 </div>\n";
   $select_static++;
}
}
$i++;
}
if($file==true){
  $stringedit .=  "<?php
                  if(\$file['dir']!=\"\"){
                    \$types = explode(\"/\", \$file['mime']);
                  if(\$types[0]==\"image\"){
                    ?>
                    <img src=\"<?= base_url(\$file['dir']) ?>\" style=\"width: 200px\" class=\"img img-thumbnail\">
                    <br>
                  <?php }else{ ?>

                    <i class=\"fa fa-file fa-5x text-danger\"></i>
                    <br>
                    <a href=\"<?= base_url(\$file['dir']) ?>\" target=\"_blank\"><i class=\"fa fa-download\"></i> <?= \$file['name'] ?></a>
                    <br>
                  <br>
                <?php } ?>
              <?php } ?>";
$stringedit .=  "<div class=\"form-group\">
                    <label for=\"form-file\">File</label>
                    <input type=\"file\" class=\"form-control\" id=\"form-file\" placeholder=\"Masukan File\" name=\"file\">
                </div>\n";
}
$stringedit .=  "</div>
          <div class=\"panel-footer\">
              <button type=\"submit\" class=\"btn btn-primary btn-send\" ><i class=\"fa fa-save\"></i> Save</button>
              <button type=\"reset\" class=\"btn btn-danger\"><i class=\"fa fa-refresh\"></i> Reset</button>

          </div>
          <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
        <!-- /.panel -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
    </form>
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<script type=\"text/javascript\">
    \$(\"#upload-create\").submit(function(){
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
                    form.find(\".show_error\").slideUp().html(\"\");
              },
              success: function(response, textStatus, xhr) {
                      // alert(mydata);
                   var str = response;
                    if (str.indexOf(\"success\") != -1){
                          form.find(\".show_error\").hide().html(response).slideDown(\"fast\");
                        setTimeout(function(){ 
                             window.location.href = \"<?= base_url('master/".$c."') ?>\";
                      }, 1000);
                      \$(\".btn-send\").removeClass(\"disabled\").html('<i class=\"fa fa-save\"></i> Save').attr('disabled',false);
                  }else{
                          form.find(\".show_error\").hide().html(response).slideDown(\"fast\");
                        \$(\".btn-send\").removeClass(\"disabled\").html('<i class=\"fa fa-save\"></i> Save').attr('disabled',false);

                  }
              },
              error: function(xhr, textStatus, errorThrown) {
                    console.log(xhr);
                    \$(\".btn-send\").removeClass(\"disabled\").html('<i class=\"fa fa-save\"></i> Save').attr('disabled',false);
                    form.find(\".show_error\").hide().html(xhr).slideDown(\"fast\");
              }
          });
          return false;

      });
</script>";
}else{
      $stringedit = "
  <!-- Content Wrapper. Contains page content -->
    <form method=\"POST\" action=\"<?= base_url('master/".$c."/update') ?>\" id=\"upload-create\" enctype=\"multipart/form-data\">
    <input type=\"hidden\" name=\"".$primary."\" value=\"<?= \$".$table."['".$primary."'] ?>\">
                <div class=\"show_error\"></div>\n";
$i=0;
$select = 0;
$select_static = 0;
foreach ($kolom as $klm) {
    $tipe = $type[$i]; 
  if($tipe!="HIDDEN"){
    if($tipe=="TEXT"){
    $stringedit .=  "<div class=\"form-group\">
                      <label for=\"form-".$klm."\">".$label->$klm."</label>
                      <input type=\"text\" class=\"form-control\" id=\"form-".$klm."\" placeholder=\"Masukan ".$label->$klm."\" name=\"dt[".$klm."]\" value=\"<?= \$".$table."['".$klm."'] ?>\">
                  </div>\n";
}
if($tipe=="PRICE"){
      $stringedit .=  "<div class=\"form-group\">
                        <label for=\"form-".$klm."\">".$label->$klm."</label>
                        <input type=\"text\" class=\"form-control money\" id=\"form-".$klm."\" placeholder=\"Masukan ".$label->$klm."\" name=\"dt[".$klm."]\" value=\"<?= \$".$table."['".$klm."'] ?>\">
                    </div>\n";
  }
 if($tipe=="DATE"){ 
     $stringedit .=  "<div class=\"form-group\">
                      <label for=\"form-".$klm."\">".$label->$klm."</label>
                      <input type=\"text\" class=\"form-control tgl\" id=\"form-".$klm."\" placeholder=\"Masukan ".$label->$klm."\" name=\"dt[".$klm."]\" value=\"<?= \$".$table."['".$klm."'] ?>\">
                  </div>\n";
}
 if($tipe=="TEXTAREA"){ 
     $stringedit .=  "<div class=\"form-group\">
                      <label for=\"form-".$klm."\">".$label->$klm."</label>
                      <textarea name=\"dt[".$klm."]\" class=\"form-control\"><?= \$".$table."['".$klm."'] ?></textarea>
                  </div>\n";
}
 if($tipe=="SELECT OPTION"){ 
     $stringedit .=  "<div class=\"form-group\">
                      <label for=\"form-".$klm."\">".$label->$klm."</label>
                      <select name=\"dt[".$klm."]\" class=\"form-control select2\" style=\"width:100%\">
                          <option value=\"0\">Pilih</option>
                        <?php 
                        \$".$select_kolom[$select]." = \$this->mymodel->selectWhere('".$select_kolom[$select]."',null);
                        foreach (\$".$select_kolom[$select]." as \$".$select_kolom[$select]."_record) {
                             \$text=\"\";
                          if(\$".$select_kolom[$select]."_record['".$select_value[$select]."']==\$".$table."['".$klm."']){
                               \$text = \"selected\";
                        }
                         echo \"<option value=\".\$".$select_kolom[$select]."_record['".$select_value[$select]."'].\" \".\$text.\" >\".\$".$select_kolom[$select]."_record['".$select_option[$select]."'].\"</option>\";
                      }
                       ?>
                     </select>
                 </div>\n";
   $select++;
}
 if($tipe=="SELECT OPTION STATIC"){ 
       $stringstatic = '';
    $name_arr_option_static = 'option_static'.$post_input['static_select'][$select_static];
    $name_arr_value_static = 'value_static'.$post_input['static_select'][$select_static];
    foreach($post_input[$name_arr_option_static] as $pi => $val){
          $stringstatic .= "<option value=\"".$post_input[$name_arr_value_static][$pi]."\" <?=(\$".$table."['".$klm."']==\"".$post_input[$name_arr_value_static][$pi]."\")?\"selected\":\"\"?> >".$val."</option>
       "; 
  }
 $stringedit .=  "<div class=\"form-group\">
                     <label for=\"form-".$klm."\">".$label->$klm."</label>
                     <select name=\"dt[".$klm."]\" class=\"form-control\">
                      <option value=\"\">Pilih</option>
                      ".$stringstatic."
                     </select>
                 </div>\n";
   $select_static++;
}
}
$i++;
}
if($file==true){
  $stringedit .=  "<?php
                  if(\$file['dir']!=\"\"){
                    \$types = explode(\"/\", \$file['mime']);
                  if(\$types[0]==\"image\"){
                    ?>
                    <img src=\"<?= base_url(\$file['dir']) ?>\" style=\"width: 200px\" class=\"img img-thumbnail\">
                    <br>
                  <?php }else{ ?>

                    <i class=\"fa fa-file fa-5x text-danger\"></i>
                    <br>
                    <a href=\"<?= base_url(\$file['dir']) ?>\" target=\"_blank\"><i class=\"fa fa-download\"></i> <?= \$file['name'] ?></a>
                    <br>
                  <br>
                <?php } ?>
              <?php } ?>";
$stringedit .=  "<div class=\"form-group\">
                    <label for=\"form-file\">File</label>
                    <input type=\"file\" class=\"form-control\" id=\"form-file\" placeholder=\"Masukan File\" name=\"file\">
                </div>\n";
}
$stringedit .=  "
              <hr>
              <button type=\"submit\" class=\"btn btn-primary btn-send\" ><i class=\"fa fa-save\"></i> Save</button>
              <button type=\"reset\" class=\"btn btn-danger\"><i class=\"fa fa-refresh\"></i> Reset</button>


    </form>
<!-- /.content-wrapper -->
<script type=\"text/javascript\">
  \$(\".money\").simpleMoneyFormat();
    \$(\"#upload-create\").submit(function(){

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
                    form.find(\".show_error\").slideUp().html(\"\");
              },
              success: function(response, textStatus, xhr) {
                      // alert(mydata);
                   var str = response;
                    if (str.indexOf(\"success\") != -1){
                          form.find(\".show_error\").hide().html(response).slideDown(\"fast\");
                        setTimeout(function(){ 
                            // window.location.href = \"<?= base_url('master/".$c."') ?>\";
                          \$(\"#load-table\").html('');
                          loadtable(\$(\"#select-status\").val());
                          $(\"#modal-form\").modal('hide');
                      }, 1000);
                      \$(\".btn-send\").removeClass(\"disabled\").html('<i class=\"fa fa-save\"></i> Save').attr('disabled',false);
                  }else{
                          form.find(\".show_error\").hide().html(response).slideDown(\"fast\");
                        \$(\".btn-send\").removeClass(\"disabled\").html('<i class=\"fa fa-save\"></i> Save').attr('disabled',false);

                  }
              },
              error: function(xhr, textStatus, errorThrown) {
                    console.log(xhr);
                    \$(\".btn-send\").removeClass(\"disabled\").html('<i class=\"fa fa-save\"></i> Save').attr('disabled',false);
                    form.find(\".show_error\").hide().html(xhr).slideDown(\"fast\");
              }
          });
          return false;

      });
      $('.select2').select2();
</script>";
}
  $this->template->createFile($stringedit, $path);
