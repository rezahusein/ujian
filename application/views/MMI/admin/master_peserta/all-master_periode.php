
<link rel="stylesheet" href="<?= base_url('MMI-assets/')?>plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="<?= base_url('MMI-assets/')?>plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<style>
.table-striped tbody tr:nth-of-type(odd) {
    background-color: #6d7ae00f !important;
}
</style>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Peserta Tes</h1> 
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Peserta Tes</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">
                        <h4>Periode</h4>
                    </div>
                    
                    <div class="card-body">
                        <div id="load-table"></div>
                    </div>
                </div>
            </div>
        </div>

      </div><!--/. container-fluid -->
    </section>
    <!-- /.content -->
  </div>

  <script type="text/javascript">
    
        function loadtable(status) {
            var table = '<table class="table table-bordered table-hover table-striped d-table" id="mytable">'+
                   '     <thead>'+
                   '     <tr style="background: #8bc34a0d !important;">'+
                   '       <th style="width:5%" class="text-center">No</th>'+'<th>Periode</th>'+'<th>Lama Waktu Ujian (Menit)</th>'+'<th>Peserta</th>'+'<th style="width:60px">Status</th>'+
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
                ajax: {"url": "<?= base_url('mmi/admin/Master_periode/json_peserta?status=') ?>"+status, "type": "POST"},
                columns: [
                    {"data": "id","orderable": false},{"data": "periode"},{"data": "lama_waktu_ujian"},
                   {"data": "status"},
                   {"data": "status"},
                    {   "data": "view",
                        "orderable": false
                    }
                ],
                order: [[1, 'asc']],
                columnDefs : [
                    { targets : [4],
                        render : function (data, type, row, meta) {
                              // if(row['status']=='ENABLE'){
                              //   var htmls = '<a href="<?= base_url('MMI/admin/master_periode/status/') ?>'+row['id']+'/DISABLE">'+
                              //               '    <span type="button" class="badge badge-success"> ENABLE</span>'+
                              //               '</a>';
                              // }else{
                              //   var htmls = '<a href="<?= base_url('MMI/admin/master_periode/status/') ?>'+row['id']+'/ENABLE">'+
                              //               '    <button type="button" class="btn btn-sm btn-sm btn-danger"><i class="fa fa-home"></i> DISABLE</button>'+
                              //               '</a>';

                              // }
                              var batas = parseInt(row['periode_sampai'].replaceAll('-', ''));
                              var batas_dari = parseInt(row['periode_dari'].replaceAll('-', ''));
                              if(parseInt('<?=date('Ymd')?>') > batas){
                                  var htmls= "<span class='badge badge-danger'><i class='fa fa-clock'></i> Expired</span>";
                              }
                              if(parseInt('<?=date('Ymd')?>') < batas_dari){
                                  var htmls= "<span class='badge badge-warning'><i class='fa fa-clock'></i> Belum Dimulai</span>";
                              }
                              else{
                                var htmls= "<span class='badge badge-success'><i class='fa fa-check'></i> Aktif</span>";
                              }
                              return htmls;
                          }
                      },
                      { targets : [3],
                        render : function (data, type, row, meta) {
                              // if(row['status']=='ENABLE'){
                              //   var htmls = '<a href="<?= base_url('MMI/admin/master_periode/status/') ?>'+row['id']+'/DISABLE">'+
                              //               '    <span type="button" class="badge badge-success"> ENABLE</span>'+
                              //               '</a>';
                              // }else{
                              //   var htmls = '<a href="<?= base_url('MMI/admin/master_periode/status/') ?>'+row['id']+'/ENABLE">'+
                              //               '    <button type="button" class="btn btn-sm btn-sm btn-danger"><i class="fa fa-home"></i> DISABLE</button>'+
                              //               '</a>';

                              // }
                              var htmls="<label class='badge badge-primary'>Jumlah Peserta : "+row['jumlah_peserta']+"</label><br>"+
                              "<label class='badge badge-warning'>Peserta Belum Ujian : "+row['peserta_belum_ujian']+"</label><br>"+
                              "<label class='badge badge-warning'>Peserta Sedang Ujian : "+row['peserta_sedang_ujian']+"</label><br>"+
                              "<label class='badge badge-warning'>Peserta Menuggu Hasil : "+row['peserta_menunggu_hasil']+"</label><br>"+
                              "<label class='badge badge-warning'>Peserta Selesai Ujian : "+row['peserta_selesai_ujian']+"</label><br>";
                              return htmls;
                          }
                      },
                      { targets : [2],
                        render : function (data, type, row, meta) {
                              var htmls = row['lama_waktu_ujian']+' Menit';
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


         loadtable('ENABLE');
         
        function soal(id) {
            location.href = "<?= base_url('mmi/admin/peserta_periode?id_periode=') ?>"+id;

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