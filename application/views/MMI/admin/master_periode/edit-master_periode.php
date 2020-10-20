
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0 text-dark">Edit Periode Ujian</h1> 
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Soal Periode</a></li>
                <li class="breadcrumb-item">Edit Ujian</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </section>
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <form method="POST" action="<?= base_url('mmi/admin/master_periode/update') ?>" id="upload-create" enctype="multipart/form-data">
          <input type="hidden" name="id" value="<?= $master_periode['id'] ?>">


            <div class="row">
              <div class="col-6">
                <div class="card">
                  <!-- /.box-header -->
                  <div class="card-header">
                    <h5 class="card-title">
                        Edit Periode
                    </h5>
                  </div>
                  <div class="card-body">
                      <div class="show_error"></div>
                      <div class="form-group">
                <label for="form-periode_dari">Dari</label>
                <input type="date" class="form-control" onchange="$('#form-periode_sampai').attr('min',this.value)" id="form-periode_dari" value="<?=$master_periode['periode_dari']?>" name="dt[periode_dari]" autocomplete="off">
            </div><div class="form-group">
                <label for="form-periode_sampai">Sampai</label>
                <input type="date" min='<?=$master_periode['periode_dari']?>' class="form-control" id="form-periode_sampai" value="<?=$master_periode['periode_sampai']?>" name="dt[periode_sampai]" autocomplete="off">
            </div><div class="form-group">
                <label for="form-lama_waktu_ujian">Lama Waktu Ujian (Menit)</label>
                <div class="input-group">
                <input type="text" value="<?=$master_periode['lama_waktu_ujian']?>" class="form-control" id="form-lama_waktu_ujian"  placeholder="Masukan Lama Waktu Ujian" name="dt[lama_waktu_ujian]" autocomplete="off">
                  <div class="input-group-append">
                    <span class="input-group-text" id="basic-addon2"><i class="fa fa-clock"></i></span>
                  </div> 
                </div>
            </div>
              <div class="form-group">
                <label for="form-persentase_pg">Standar Nilai</label>
                <input type="number" max="100" class="form-control"  id="form-persentase_pg" name="dt[standar_nilai]">
            </div>
            <div class="form-group">
                <label for="form-persentase_pg">Persentase (Pilihan Ganda)</label>
                <div class="input-group"> 
                <input type="number"  value="<?=$master_periode['persentase_pg']?>" oninput="setPersentaseEssay(this.value)" max="100" class="form-control"  id="form-persentase_pg" name="dt[persentase_pg]">
                <div class="input-group-append">
                    <span class="input-group-text" id="basic-addon2">%</span>
                  </div> 
                </div>
            </div><div class="form-group">
                <label for="form-persentase_essay">Persentase (Essay)</label>
                <div class="input-group"> 
                <input type="number" value="<?=$master_periode['persentase_essay']?>" readonly class="form-control" id="form-persentase_essay" name="dt[persentase_essay]">
                 <div class="input-group-append">
                    <span class="input-group-text" id="basic-addon2">%</span>
                  </div> 
              </div>
            </div>
          </div>
                  <div class="card-footer">
                      <button type="submit" class="btn btn-primary btn-send" ><i class="fa fa-save"></i> Save</button>
                      <button type="reset" class="btn btn-danger"><i class="fa fa-refresh"></i> Reset</button>
                  
                  </div>
                  <!-- /.box-body -->
                </div>
                <!-- /.box -->

                <!-- /.box -->
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->
        </form>
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <script type="text/javascript">
    function setPersentaseEssay(val){
      // alert('asdasd');
      var persentase = 100 - val;
        $('#form-persentase_essay').val(persentase);
    }
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
                           window.location.href = "<?= base_url('mmi/admin/master_periode') ?>";
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