

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
              <h1 class="m-0 text-dark">Buat Soal</h1> 
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Periode Ujian</a></li>
                <li class="breadcrumb-item active">Data Soal</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->

    </section>
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <!-- /.box-header -->
            <div class="card-header">
              <div class="row">
                <div class="col-md-6 mb-2">
                  <select onchange="loadtable(this.value)" id="select-status" style="width: 150px" class="form-control">
                      <option value="ENABLE">ENABLE</option>
                      <option value="DISABLE">DISABLE</option>

                  </select>
                </div>
                <div class="col-md-6">
                  <div class="float-md-right float-sm-left">
                  <a href="<?= base_url('mmi/admin/Master_soal/create') ?>" class="">
                    <button type="button" class="btn btn-sm btn-success"><i class="fa fa-plus"></i> Tambah Soal</button> 
                  </a>
                  <a href="<?= base_url('fitur/ekspor/master_soal') ?>" target="_blank">
                    <button type="button" class="btn btn-sm btn-info"><i class="fas fa-file-excel"></i> Eksport Soal</button> 
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
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


  <div class="modal fade" id="modal-impor">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Impor Master Soal</h4>
        </div>
        <form action="<?= base_url('fitur/impor/master_soal') ?>" method="POST"  enctype="multipart/form-data">

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
            var table = '<table class="table table-bordered table-hover table-striped" id="mytable">'+
                   '     <thead>'+
                   '     <tr style="background: #8bc34a0d !important;">'+
                   '       <th style="width:20px">No</th>'+'<th>Image</th>'+'<th>Deskripsi</th>'+'<th>Jenis Soal</th>'+'<th>Id Jawaban</th>'+'<th>Id Periode</th>'+'<th>Urutan Soal</th>'+'       <th style="width:150px">Status</th>'+
                   '       <th style="width:150px">Action</th>'+
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
                ajax: {"url": "<?= base_url('master/Master_soal/json?status=') ?>"+status, "type": "POST"},
                columns: [
                    {"data": "id","orderable": false},{"data": "image"},{"data": "deskripsi"},{"data": "jenis_soal"},{"data": "id_jawaban"},{"data": "id_periode"},{"data": "urutan_soal"},
                   {"data": "status"},
                    {   "data": "view",
                        "orderable": false
                    }
                ],
                order: [[1, 'asc']],
                columnDefs : [
                    { targets : [7],
                        render : function (data, type, row, meta) {
                              if(row['status']=='ENABLE'){
                                var htmls = '<a href="<?= base_url('mmi/admin/Master_soal/status/') ?>'+row['id']+'/DISABLE">'+
                                            '    <button type="button" class="btn btn-sm btn-sm btn-success"> Enable </button>'+
                                            '</a>';
                              }else{
                                var htmls = '<a href="<?= base_url('mmi/admin/Master_soal/status/') ?>'+row['id']+'/ENABLE">'+
                                            '    <button type="button" class="btn btn-sm btn-sm btn-danger"> Disabled</button>'+
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
            location.href = "<?= base_url('mmi/admin/Master_soal/edit/') ?>"+id;
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