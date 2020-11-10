<script src="<?= base_url('MMI-assets/')?>dist/js/tox-progress.js"></script>

<link rel="stylesheet" href="<?= base_url('MMI-assets/')?>plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="<?= base_url('MMI-assets/')?>plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" href="<?= base_url('MMI-assets/')?>dist/css/tox-progress.css">
<style>
.table-striped tbody tr:nth-of-type(odd) {
    background-color: #6d7ae00f !important;
}
#mytable-pg thead{
  display: none;
}
#mytable-pg{
  border:0px !important;
}
#mytable-pg td{
  border-bottom: 0px !important;
  border-top: 0px !important;
}
#mytable-pg tbody{
  border:0px !important;
}
#mytable-essay thead{
  display: none;
}
#mytable-essay{
  border:0px !important;
}
#mytable-essay td{
  border-bottom: 0px !important;
  border-top: 0px !important;
}
#mytable-essay tbody{
  border:0px !important;
}
</style>
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      
      <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0 text-dark">Konfirmasi Jawaban</h1> 
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
            <div class="card-body">

              <div class="row mb-4">
                <div class="col-md-6 mb-2">
                  <a href="<?=base_url()?>mmi/admin/peserta_periode?id_periode=<?=$user['id_periode']?>" class="btn btn-sm btn-danger"><i class="fas fa-chevron-left"></i> Kembali</a>
                </div>
                <div class="col-md-6 mb-2">
                  <a href="<?=base_url()?>mmi/admin/peserta_periode/konfirmasiNilai/<?=$user['id']?>" onclick="confirm('Apakah Anda Yakin ?')" class="btn btn-success btn-sm float-right"><i class="fa fa-check"></i> Konfirmasi Nilai</a>
                </div>
                <div class="col-md-12 mb-2">
                  <!-- Nav tabs -->
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#pg">Pilihan Ganda</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#essay">Essay</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#nilai" onclick="viewNilai()">Nilai</a>
  </li>
</ul>
<script>  
    function viewNilai(){
      $('#nilai').html('Loading...').load('<?=base_url()?>mmi/admin/peserta_periode/loadReportNilai/<?=$user['id']?>');
    }
</script> 
                </div>
                </div> 
<div class="tab-content">
  <div class="tab-pane container active" id="pg">
      <div class="table-responsive">
        <div id="load-table-pg">
          
        </div>
      </div>
  </div>
  <div class="tab-pane container fade" id="essay">
    <div class="table-responsive">
        <div id="load-table-essay">
          
        </div>
      </div>
  </div>
  <div class="tab-pane container fade" id="nilai">
  </div>
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
    
        function loadtablePg(status) {
            var table = '<table class="table table-bordered table-hover" id="mytable-pg">'+
                   '     <thead>'+
                   '     <tr style="background: #8bc34a0d !important;">'+
                   '       <th style="width:20px">No</th>'+
                   '     </tr>'+
                   '     </thead>'+
                   '     <tbody>'+
                   '     </tbody>'+
                   ' </table>';
             // body...
             $("#load-table-pg").html(table)

              var t = $("#mytable-pg").dataTable({
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
                ajax: {"url": "<?= base_url('mmi/admin/peserta_periode/json_ujian_peserta?id_periode='.@$user['id_periode']) ?>&tipe_soal=pg&id_peserta=<?=$user['id']?>", "type": "POST"},
                columns: [
                    {"data": "urutan_soal"},
                ],
                order: [[0, 'asc']],
                columnDefs : [
                ],
             
                rowCallback: function(row, data, iDisplayIndex) {
                    var info = this.fnPagingInfo();
                    var page = info.iPage;
                    var length = info.iLength;
                    var index = page * length + (iDisplayIndex + 1);
                              var htmls = '<div class="info-box p-5 d-block">';
                              if(!data['id_peserta_jawaban']){
                              htmls += '<div class="row">'+
                                '<div class="col-12 text-right">'+
                                  '<span class="badge badge-danger"><i class="fas fa-times"></i> Tidak Menjawab</span>'+
                                '</div>'+
                              '</div>';
                            }
                            else{
                              htmls += '<div class="row">'+
                                '<div class="col-12 text-right">'+
                                  '<span class="badge badge-success"><i class="fas fa-check"></i> Sudah Menjawab</span>'+
                                '</div>'+
                              '</div>';
                            }
                              if(data['image']){
                                  htmls += '<div class="img-position d-flex  mb-3 mt-1">'+
                                      '<img src="<?=base_url()?>'+data['image']+'" style="width: 200px;height: 200px" alt="">'+
                                  '</div>';
                                }
                            if(data['voice']){
            var voice = data['voice'].split('.');
                htmls += '<div class="img-position d-flex  mb-3">'+
                     '<audio controls><source src="<?=base_url()?>'+data['voice']+'" type="audio/'+voice[voice.length-1]+'"></audio>'+
                '</div>';
        }
        htmls += '<div class="test-pg-content d-flex">'+
                    '<span class="number-of-test">'+index+'. &nbsp; </span>'+
                    '<div class="test-content">'+
                        data['deskripsi']+         
                    '</div>'+
                '</div>';
        htmls += '<div class="result-pg">'+
                    '<div class="form isi-jawaban">'+
                      '<i class="fa fa-spin fa-spinner"></i> Loading...';
        htmls += '</div>'+
                    '</div>'+
                    '</div>';
                    $('td:eq(0)', row).html(htmls);
                    $.ajax({
                        url : "<?=base_url()?>mmi/admin/peserta_periode/getJawabanSoal/"+data['id']+'/<?=@$user['id']?>',
                        success : function(views){
                            $('td:eq(0)', row).find('.isi-jawaban').html(views);
                        }
                    });
                }
            });
         }


         loadtablePg('ENABLE');

         function loadtableEssay(status) {
            var table = '<table class="table table-bordered table-hover" id="mytable-essay">'+
                   '     <thead>'+
                   '     <tr style="background: #8bc34a0d !important;">'+
                   '       <th style="width:20px">No</th>'+
                   '     </tr>'+
                   '     </thead>'+
                   '     <tbody>'+
                   '     </tbody>'+
                   ' </table>';
             // body...
             $("#load-table-essay").html(table)

              var t = $("#mytable-essay").dataTable({
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
                ajax: {"url": "<?= base_url('mmi/admin/peserta_periode/json_ujian_peserta?id_periode='.@$user['id_periode']) ?>&tipe_soal=essay&id_peserta=<?=$user['id']?>", "type": "POST"},
                columns: [
                    {"data": "urutan_soal"},
                ],
                order: [[0, 'asc']],
                columnDefs : [
                ],
             
                rowCallback: function(row, data, iDisplayIndex) {
                    var info = this.fnPagingInfo();
                    var page = info.iPage;
                    var length = info.iLength;
                    var index = page * length + (iDisplayIndex + 1);
                              var htmls = '<div class="info-box p-5 d-block">';
                               if(!data['jawaban_essay']){
                              htmls += '<div class="row">'+
                                '<div class="col-12 text-right">'+
                                  '<span class="badge badge-danger"><i class="fas fa-times"></i> Tidak Menjawab</span>'+
                                '</div>'+
                              '</div>';
                            }
                            else{
                              htmls += '<div class="row">'+
                                '<div class="col-12 text-right">'+
                                  '<span class="badge badge-success"><i class="fas fa-check"></i> Sudah Menjawab</span>'+
                                '</div>'+
                              '</div>';
                            }
                              if(data['image']){
                                  htmls += '<div class="img-position d-flex  mb-3 mt-1">'+
                                      '<img src="<?=base_url()?>'+data['image']+'" style="width: 200px;height: 200px" alt="">'+
                                  '</div>';
                                }
                            if(data['voice']){
            var voice = data['voice'].split('.');
                htmls += '<div class="img-position d-flex  mb-3">'+
                     '<audio controls><source src="<?=base_url()?>'+data['voice']+'" type="audio/'+voice[voice.length-1]+'"></audio>'+
                '</div>';
        }
        htmls += '<div class="test-pg-content d-flex">'+
                    '<span class="number-of-test">'+index+'. &nbsp; </span>'+
                    '<div class="test-content">'+
                        data['deskripsi']+         
                    '</div>'+
                '</div>';
        htmls += '<div class="result-pg">'+
                    '<div class="form isi-jawaban">'+
                      '<h5>Jawaban</h5>'+
                      '<label style="display:inline;border-bottom:1px solid black;font-weight:200">'+((data['jawaban_essay'])?data['jawaban_essay']:'-')+'</label>';
        htmls += '</div>'+
                    '</div>'+
                    '<div class="row mt-4">'+
                      '<div class="col-12">'+
                        '<select class="form-control" onchange="setNilaiEssay('+data['id']+',this.value)">'+
                          '<option value="0" '+((data['is_true'] == 0 || (!data['id_peserta_jawaban']))?"selected":"")+'>Salah</option>'+
                          '<option value="1" '+((data['is_true'] == 1 )?"selected":"")+' '+((!data['jawaban_essay'])?"disabled":"")+'>Benar</option>'+
                        '</select>'+
                      '</div>'+
                    '</div>'+
                    '</div>';
                    $('td:eq(0)', row).html(htmls);
                }
            });
         }


         loadtableEssay('ENABLE');

        function setNilaiEssay(id_soal,hasil_jawaban){
          $.ajax({
            url : '<?=base_url()?>mmi/admin/peserta_periode/setNilaiEssay/'+id_soal+'/'+hasil_jawaban+'/<?=$user['id']?>',
            success : function(views){
              // alert('Berhasil');  
            }
          })
        }

         function edit(id) {
            location.href = "<?= base_url('mmi/admin/Master_soal/edit/') ?>"+id+"?id_periode=<?=$user['id_periode']?>";
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