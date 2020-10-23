
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      
    <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0 text-dark">Add Peserta</h1> 
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Periode Ujian</a></li>
                <!-- <li class="breadcrumb-item"><a href="#">Tambah Peserta</a></li> -->
                <li class="breadcrumb-item active">Tambah Peserta</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
    <form method="POST" action="<?= base_url('master/Peserta_periode/store') ?>" id="upload-create" enctype="multipart/form-data">

      <div class="row">
        <div class="col">
          <div class="card">
            <!-- /.card-header -->
            <div class="card-header">
              <h5 class="card-title">
                  Tambah Peserta Periode
              </h5>
            </div>
            <div class="card-body">
                <div class="show_error"></div><div class="form-group">
                      <label for="form-nama_peserta">Nama Peserta</label>
                      <input type="text" class="form-control" id="form-nama_peserta" placeholder="Masukan Nama Peserta" name="dt[nama_peserta]">
                  </div><div class="form-group">
                      <label for="form-email_peserta">Email Peserta</label>
                      <input type="text" class="form-control" id="form-email_peserta" placeholder="Masukan Email Peserta" name="dt[email_peserta]">
                  </div><div class="form-group">
                      <label for="form-no_telp_peserta">No Telp Peserta</label>
                      <input type="text" class="form-control" id="form-no_telp_peserta" placeholder="Masukan No Telp Peserta" name="dt[no_telp_peserta]">
                  </div><div class="form-group">
                      <label for="form-alamat_peserta">Alamat Peserta</label>
                      <input type="text" class="form-control" id="form-alamat_peserta" placeholder="Masukan Alamat Peserta" name="dt[alamat_peserta]">
                  </div><div class="form-group">
                      <label for="form-kode_peserta">Kode Peserta</label>
                      <input type="text" class="form-control" id="form-kode_peserta" placeholder="Masukan Kode Peserta" name="dt[kode_peserta]">
                  </div><div class="form-group">
                      <label for="form-id_periode">Id Periode</label>
                      <input type="text" class="form-control" id="form-id_periode" placeholder="Masukan Id Periode" name="dt[id_periode]">
                  </div><div class="form-group">
                      <label for="form-status_ujian">Status Ujian</label>
                      <input type="text" class="form-control" id="form-status_ujian" placeholder="Masukan Status Ujian" name="dt[status_ujian]">
                  </div><div class="form-group">
                      <label for="form-waktu_mulai_ujian">Waktu Mulai Ujian</label>
                      <input type="text" class="form-control" id="form-waktu_mulai_ujian" placeholder="Masukan Waktu Mulai Ujian" name="dt[waktu_mulai_ujian]">
                  </div><div class="form-group">
                      <label for="form-total_nilai">Total Nilai</label>
                      <input type="text" class="form-control" id="form-total_nilai" placeholder="Masukan Total Nilai" name="dt[total_nilai]">
                  </div><div class="form-group">
                      <label for="form-nilai_pg">Nilai Pg</label>
                      <input type="text" class="form-control" id="form-nilai_pg" placeholder="Masukan Nilai Pg" name="dt[nilai_pg]">
                  </div><div class="form-group">
                      <label for="form-nilai_essay">Nilai Essay</label>
                      <input type="text" class="form-control" id="form-nilai_essay" placeholder="Masukan Nilai Essay" name="dt[nilai_essay]">
                  </div></div>
            <div class="card-footer">
                <button type="submit" class="btn btn-primary btn-send" ><i class="fa fa-save"></i> Save</button>
                <button type="reset" class="btn btn-danger"><i class="fa fa-refresh"></i> Reset</button>
             
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->

          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
      </form>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <script type="text/javascript">
      $("#upload-create").submit(function(){
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
                    form.find(".show_error").slideUp().html("");
                },
                success: function(response, textStatus, xhr) {
                    // alert(mydata);
                   var str = response;
                    if (str.indexOf("success") != -1){
                        form.find(".show_error").hide().html(response).slideDown("fast");
                        setTimeout(function(){ 
                           window.location.href = "<?= base_url('master/Peserta_periode') ?>";
                        }, 1000);
                        $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);


                    }else{
                        form.find(".show_error").hide().html(response).slideDown("fast");
                        $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);
                        
                    }
                },
                error: function(xhr, textStatus, errorThrown) {
                  console.log(xhr);
                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);
                    form.find(".show_error").hide().html(xhr).slideDown("fast");

                }
            });
            return false;
    
        });
  </script>