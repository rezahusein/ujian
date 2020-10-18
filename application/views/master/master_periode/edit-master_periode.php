
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Master Periode
        <small>Master</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">master</a></li>
        <li class="active">Master Periode</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
    <form method="POST" action="<?= base_url('master/Master_periode/update') ?>" id="upload-create" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<?= $master_periode['id'] ?>">


      <div class="row">
        <div class="col-xs-8">
          <div class="box">
            <!-- /.box-header -->
            <div class="box-header">
              <h5 class="box-title">
                  Edit Master Periode
              </h5>
            </div>
            <div class="box-body">
                <div class="show_error"></div><div class="form-group">
                      <label for="form-periode_dari">Periode Dari</label>
                      <input type="text" class="form-control tgl" id="form-periode_dari" placeholder="Masukan Periode Dari" name="dt[periode_dari]" value="<?= $master_periode['periode_dari'] ?>">
                  </div><div class="form-group">
                      <label for="form-periode_sampai">Periode Sampai</label>
                      <input type="text" class="form-control tgl" id="form-periode_sampai" placeholder="Masukan Periode Sampai" name="dt[periode_sampai]" value="<?= $master_periode['periode_sampai'] ?>">
                  </div><div class="form-group">
                      <label for="form-lama_waktu_ujian">Lama Waktu Ujian</label>
                      <input type="text" class="form-control" id="form-lama_waktu_ujian" placeholder="Masukan Lama Waktu Ujian" name="dt[lama_waktu_ujian]" value="<?= $master_periode['lama_waktu_ujian'] ?>">
                  </div><div class="form-group">
                      <label for="form-persentase_pg">Persentase Pg</label>
                      <input type="text" class="form-control" id="form-persentase_pg" placeholder="Masukan Persentase Pg" name="dt[persentase_pg]" value="<?= $master_periode['persentase_pg'] ?>">
                  </div><div class="form-group">
                      <label for="form-persentase_essay">Persentase Essay</label>
                      <input type="text" class="form-control" id="form-persentase_essay" placeholder="Masukan Persentase Essay" name="dt[persentase_essay]" value="<?= $master_periode['persentase_essay'] ?>">
                  </div><div class="form-group">
                      <label for="form-created_by">Created By</label>
                      <input type="text" class="form-control" id="form-created_by" placeholder="Masukan Created By" name="dt[created_by]" value="<?= $master_periode['created_by'] ?>">
                  </div></div>
            <div class="box-footer">
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
                           window.location.href = "<?= base_url('master/Master_periode') ?>";
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