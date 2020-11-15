<section class="login-section" style="margin-top: 100px;">
    <div class="container">
        <div class="row">
            <div class="col d-flex justify-content-center">
                    <div class="login-card" data-aos="fade-up" data-aos-delay="200">
                        <div class="card ">
                            <div class="card-body">
                                <span class="h5 d-block text-center">Masuk <b style="color: #0066b2">MMI</b></span>
                                <form action="<?=base_url()?>company-profile/login/prosesLogin" method="post" id="login-portofolio" class="mt-3">
                                <div class="col-12">
                                    <div class="show_error">
                                        <?php
                                            if($this->session->flashdata('alert-berhasil-register')){
                                                    echo $this->session->flashdata('alert-berhasil-register');
                                            }
                                        ?>
                                    </div>
                                </div>
                                    <div class="col-12 mb-3">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                            </div>
                                            <input type="email" id="email" name="email" class="form-control" placeholder="Email" aria-label="Username" aria-describedby="basic-addon1">
                                        </div>
                                        <div class="input-group alert-email" style="display: none">
                                            <span class="text-danger">Email Tidak Tersedia</span>
                                        </div>
                                    </div>
                                    <div class="col-12 mb-3">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                            </div>
                                            <input type="password" id="password" name="password" class="form-control" placeholder="Password" aria-label="Username" aria-describedby="basic-addon1">
                                    </div>

                                    <button class="btn btn-block btn-submit-custom mt-3" type="submit">MASUK</button>
                                </form>

                           
                            </div>
                        </div>
                    </div>

                    <div class="d-block text-center mt-4" data-aos="fade-up" data-aos-delay="300">
                        <span>
                            Tidak Punya Akun ? <a href="<?= base_url('company-profile/login/register') ?>" style="color:#065895;border-bottom: 1px dotted #065895;">Daftar</a>
                        </span>
                    </div>
            </div>
        </div>
    </div>
</section>

<script src="<?= base_url('assets/login')?>/vendor/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

        $("#login-portofolio").submit(function(){
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
                        $(".btn-submit-custom").prop("disabled",false).css('cursor','pointer').html("MASUK");
                         location.href = '<?= base_url("company-profile/landing") ?>';
                    }else{
                         $(".btn-submit-custom").prop("disabled",false).css('cursor','pointer').html("MASUK");
                        form.find(".show_error").hide().html(response).slideDown("fast");
                    }
                },
                error: function(xhr, textStatus, errorThrown) {
                }
            });
            return false;
            });
    </script>