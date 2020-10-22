
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
                <li class="breadcrumb-item"><a href="#">Data Soal</a></li>
                <li class="breadcrumb-item active">Edit Soal</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->

    </section>
    <!-- Main content -->
    <section class="content">
    <form method="POST" action="<?= base_url('mmi/admin/Master_soal/update') ?>" id="upload-create" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<?= $master_soal['id'] ?>">


      <div class="row">
        <div class="col">
          <div class="card">
            <!-- /.card-header -->
            <div class="card-header">
              <h5 class="card-title">
                  Edit Master Soal
              </h5>
            </div>
            <div class="card-body">
                <div class="show_error"></div><div class="form-group">
                      <label for="form-image">Image</label>
                      <input type="text" class="form-control" id="form-image" placeholder="Masukan Image" name="dt[image]" value="<?= $master_soal['image'] ?>">
                  </div><div class="form-group">
                      <label for="form-deskripsi">Deskripsi</label>
                      <textarea name="dt[deskripsi]" class="form-control"><?= $master_soal['deskripsi'] ?></textarea>
                  </div><div class="form-group">
                      <label for="form-jenis_soal">Jenis Soal</label>
                      <input type="text" class="form-control" id="form-jenis_soal" placeholder="Masukan Jenis Soal" name="dt[jenis_soal]" value="<?= $master_soal['jenis_soal'] ?>">
                  </div><div class="form-group">
                      <label for="form-id_jawaban">Id Jawaban</label>
                      <input type="text" class="form-control" id="form-id_jawaban" placeholder="Masukan Id Jawaban" name="dt[id_jawaban]" value="<?= $master_soal['id_jawaban'] ?>">
                  </div><div class="form-group">
                      <label for="form-id_periode">Id Periode</label>
                      <input type="text" class="form-control" id="form-id_periode" placeholder="Masukan Id Periode" name="dt[id_periode]" value="<?= $master_soal['id_periode'] ?>">
                  </div><div class="form-group">
                      <label for="form-urutan_soal">Urutan Soal</label>
                      <input type="text" class="form-control" id="form-urutan_soal" placeholder="Masukan Urutan Soal" name="dt[urutan_soal]" value="<?= $master_soal['urutan_soal'] ?>">
                  </div></div>
            <div class="card-footer">
                <button type="submit" class="btn btn-primary btn-send float-right" ><i class="fa fa-save"></i> Save</button>
                <button type="reset" class="btn btn-danger float-right"><i class="fa fa-refresh"></i> Reset</button>
             
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
                           window.location.href = "<?= base_url('master/Master_soal') ?>";
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