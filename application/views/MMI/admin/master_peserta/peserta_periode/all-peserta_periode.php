
<link rel="stylesheet" href="<?= base_url('MMI-assets/')?>plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="<?= base_url('MMI-assets/')?>plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<style>
.table-striped tbody tr:nth-of-type(odd) {
    background-color: #6d7ae00f !important;
}
</style>
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0 text-dark">Peserta Ujian</h1> 
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Periode Ujian</a></li>
                <!-- <li class="breadcrumb-item"><a href="#">Tambah Peserta</a></li> -->
                <li class="breadcrumb-item active">Data Peserta</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col">
          <div class="card">
            <!-- /.card-header -->
            <div class="card-header">
              <div class="row">
                <div class="col-md-6">
                  <select onchange="loadtable(this.value)" id="select-status" style="width: 150px" class="form-control">
                      <option value="ENABLE">ENABLE</option>
                      <option value="DISABLE">DISABLE</option>

                  </select>
                </div>
                <div class="col-md-6">
                  <div class="float-right">
                  <a href="<?= base_url('mmi/admin/Peserta_periode/create?id_periode='.@$_GET['id_periode']) ?>">
                    <button type="button" class="btn btn-sm btn-success"><i class="fa fa-plus"></i> Tambah Peserta Periode</button> 
                  </a>
                  
                  </div>
                </div>  
              </div>
              
            </div>
            <div class="card-body">
                <div class="show_error"></div>

              <div class="table-responsive">
                <div id="load-table"></div>
              </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <div class="modal fade bd-example-modal-sm" tabindex="-1" peserta_periode="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="modal-delete">
      <div class="modal-dialog modal-sm">
          <div class="modal-content">
              <form id="upload-delete" action="<?= base_url('master/Peserta_periode/delete') ?>">
              <div class="modal-header">
                  <h5 class="modal-title">Confirm delete</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
              </div>
              <div class="modal-body">
                  <input type="hidden" name="id" id="delete-input">
                  <p>Are you sure to delete this data?</p>
              </div>
              <div class="modal-footer">
                  <button type="submit" class="btn btn-danger btn-send">Yes, Delete</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
              </div>
              </form>
          </div>
      </div>
  </div> 

  <div class="modal fade" id="modal-impor">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Impor Peserta Periode</h4>
        </div>
        <form action="<?= base_url('fitur/impor/peserta_periode') ?>" method="POST"  enctype="multipart/form-data">

        <div class="modal-body">
            <div class="form-group">
              <label for="">File Excel</label>
              <input type="file" class="form-control" id="" name="file" placeholder="Input field">
            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
          <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save</button>
        </div>
        </form>

      </div>
    </div>
  </div>

  <script type="text/javascript">
    
        function loadtable(status) {
            var table = '<table class="table table-bordered table-striped table-responsive d-table" id="mytable">'+
                   '     <thead>'+
                   '     <tr style="background: #8bc34a0d !important;">'+
                   '       <th style="width:20px">No</th>'+'<th>Nama Peserta</th>'+'<th>Email Peserta</th>'+'       <th style="width:150px">Status</th>'+
                   '       <th style="width:100px">Action</th>'+
                   '     </tr>'+
                   '     </thead>'+
                   '     <tbody>'+
                   '     </tbody>'+
                   ' </table>';
             // body...
             $("#load-table").html(table)

              var t = $("#mytable").dataTable({
                  'autoWidth' : false,
                  "responsive": true,
                initComplete: function() {
                    var api = this.api();
                    $('#mytable_filter input')
                            .off('.DT')
                            .on('keyup.DT', function(e) {
                                if (e.keyCode == 13) {
                                    api.search(this.value).draw();
                        }
                    });
                },
                oLanguage: {
                    sProcessing: "loading..."
                },
                processing: true,
                serverSide: true,
                ajax: {"url": "<?= base_url('mmi/admin/Peserta_periode/json?status=') ?>"+status, "type": "POST"},
                columns: [
                    {"data": "id","orderable": false},{"data": "nama_peserta"},{"data": "email_peserta"},
                   {"data": "status"},
                    {   "data": "view",
                        "orderable": false
                    }
                ],
                order: [[1, 'asc']],
                columnDefs : [
                    { targets : [3],
                        render : function (data, type, row, meta) {
                              if(row['status']=='ENABLE'){
                                var htmls = '<a href="<?= base_url('mmi/admin/Peserta_periode/status/') ?>'+row['id']+'/DISABLE">'+
                                            '    <button type="button" class="btn btn-sm btn-sm btn-success"> ENABLE</button>'+
                                            '</a>';
                              }else{
                                var htmls = '<a href="<?= base_url('mmi/admin/Peserta_periode/status/') ?>'+row['id']+'/ENABLE">'+
                                            '    <button type="button" class="btn btn-sm btn-sm btn-danger"> DISABLE</button>'+
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
                    $('td:eq(0)', row).html(index);
                }
            });
         }


         loadtable($("#select-status").val());

         function edit(id) {
            location.href = "<?= base_url('mmi/admin/Peserta_periode/edit/') ?>"+id+"?id_periode<?=$_GET['id_periode']?>";
         }

         function hapus(id) {
            $("#modal-delete").modal('show');
            $("#delete-input").val(id);
            
         }
         $("#upload-delete").submit(function(){
            event.preventDefault();
            var form = $(this);
            var mydata = new FormData(this);

            $.ajax({
                type: "POST",
                url: form.attr("action"),
                data: mydata,
                cache: false,
                contentType: false,
                processData: false,
                beforeSend : function(){
                    $(".btn-send").addClass("disabled").html("<i class='la la-spinner la-spin'></i>  Processing...").attr('disabled',true);
                    $(".show_error").slideUp().html("");
                },
                success: function(response, textStatus, xhr) {
                   var str = response;
                    if (str.indexOf("success") != -1){
                        $(".show_error").hide().html(response).slideDown("fast");
                       
                        $(".btn-send").removeClass("disabled").html('Yes, Delete it').attr('disabled',false);
                    }else{
                         setTimeout(function(){ 
                           $("#modal-delete").modal('hide');
                        }, 1000);
                        $(".show_error").hide().html(response).slideDown("fast");
                        $(".btn-send").removeClass("disabled").html('Yes , Delete it').attr('disabled',false);
                        loadtable($("#select-status").val());
                    }
                },
                error: function(xhr, textStatus, errorThrown) {
            
                }
            });
            return false;
    
        });
  </script>