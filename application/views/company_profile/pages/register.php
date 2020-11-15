
<section class="login-section" style="margin-top: 100px;">
    <div class="container">
        <div class="row">
            <div class="col d-flex justify-content-center">
                    <div class="login-card" data-aos="fade-up" data-aos-delay="200">
                        <div class="card ">
                            <div class="card-body">
                                <span class="h5 d-block text-center">Daftar Akun <b style="color: #0066b2">MMI</b></span>
                                <form action="<?=base_url()?>company-profile/login/prosesRegister" method="post" id="register" class="mt-3">
                                    <div class="col-12 mb-3">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                                            </div>
                                            <input type="text" class="form-control" name="dt[name]" placeholder="Nama " aria-label="Username" aria-describedby="basic-addon1">
                                        </div> 
                                    </div>
                                    <div class="col-12 mb-3">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                            </div>
                                            <input type="email" class="form-control" onchange="cekEmail()" id="email" name="dt[email]" placeholder="Email" aria-label="Username" aria-describedby="basic-addon1">
                                        </div>
                                        <div class="input-group alert-email" style="display: none">
                                            <span class="text-danger">Email Tidak Tersedia</span>
                                        </div>
                                    </div>
                                    <div class="col-12 mb-3">
                                        <div class="inline-form d-flex">
                                            
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                            </div>
                                            <input type="password" name="dt[password]" class="form-control" placeholder="Password" aria-label="Username" aria-describedby="basic-addon1">
                                        </div>
                                        
                                        <div class="input-group mb-3 ml-3 margin-style">
                                            <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                            </div>
                                            <input type="password" name="dt[re_password]" class="form-control" placeholder="Ulangi Password" aria-label="Username" aria-describedby="basic-addon1">
                                        </div>

                                        </div>
                                    </div>
                                    <!-- <div class="input-group mb-3">
                                        <textarea class="form-control" name="dt[alamat]" placeholder="Alamat"></textarea>
                                    </div> -->
                                    <button class="btn btn-block btn-submit-custom mt-3" type="submit">DAFTAR</button>
                                </form>

                           
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</section>
<script src="<?= base_url('assets/login')?>/vendor/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
    var cekValidasiEmail = 1;
    function cekEmail(){
        $.ajax({
            url : '<?=base_url()?>company-profile/login/cekEmail',
            type : 'POST',
            data : {
                email : $('#email').val()
            },
            success : function(json){
                jsondata = JSON.parse(json);
                if(jsondata.status_email > 0){
                    cekValidasiEmail = 0;
                    $('.alert-email').fadeIn();
                }
                else{
                    cekValidasiEmail = 1;
                    $('.alert-email').fadeOut();
                }
            }
        });
    }
     $("#register").submit(function(){
        if(cekValidasiEmail == 1){
            var mydata = new FormData(this);
            var form = $(this);
            $.ajax({
                type: "POST",
                url: form.attr("action"),
                data: mydata,
                cache: false,
                contentType: false,
                processData: false,
                beforeSend : function(){
                    $(".btn-submit-custom").prop('disabled',true).css('cursor','not-allowed').html("<i class='fa fa-spinner fa-spin'></i>  Proses Login...");
                    form.find(".show_error").slideUp().html("");
                },
                    success: function(response, textStatus, xhr) {
                    var str = response;
                    if (str.indexOf("oke") != -1){
                        // document.getElementById('login').reset();
                        $(".btn-submit-custom").prop("disabled",false).css('cursor','pointer').html("DAFTAR");
                         location.href = '<?= base_url("company-profile/login") ?>';
                    }else{
                         $(".btn-submit-custom").prop("disabled",false).css('cursor','pointer').html("DAFTAR");
                        form.find(".show_error").hide().html(response).slideDown("fast");
                    }
                },
                error: function(xhr, textStatus, errorThrown) {
                }
            });
        }
            return false;
            });
</script>