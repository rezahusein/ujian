<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Email Sender</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com"><script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Assistant:wght@400;500;600;700&display=swap" rel="stylesheet">
<style>
*{
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    font-family: 'Assistant', sans-serif;
}
.container,.container-fluid,.container-lg,.container-md,.container-sm,.container-xl{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}@media (min-width:576px){.container,.container-sm{max-width:540px}}@media (min-width:768px){.container,.container-md,.container-sm{max-width:720px}}@media (min-width:992px){.container,.container-lg,.container-md,.container-sm{max-width:960px}}@media (min-width:1200px){.container,.container-lg,.container-md,.container-sm,.container-xl{max-width:1140px}}.row{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;margin-right:-15px;margin-left:-15px}.no-gutters{margin-right:0;margin-left:0}.no-gutters>.col,.no-gutters>[class*=col-]{padding-right:0;padding-left:0}.col,.col-1,.col-10,.col-11,.col-12,.col-2,.col-3,.col-4,.col-5,.col-6,.col-7,.col-8,.col-9,.col-auto,.col-lg,.col-lg-1,.col-lg-10,.col-lg-11,.col-lg-12,.col-lg-2,.col-lg-3,.col-lg-4,.col-lg-5,.col-lg-6,.col-lg-7,.col-lg-8,.col-lg-9,.col-lg-auto,.col-md,.col-md-1,.col-md-10,.col-md-11,.col-md-12,.col-md-2,.col-md-3,.col-md-4,.col-md-5,.col-md-6,.col-md-7,.col-md-8,.col-md-9,.col-md-auto,.col-sm,.col-sm-1,.col-sm-10,.col-sm-11,.col-sm-12,.col-sm-2,.col-sm-3,.col-sm-4,.col-sm-5,.col-sm-6,.col-sm-7,.col-sm-8,.col-sm-9,.col-sm-auto,.col-xl,.col-xl-1,.col-xl-10,.col-xl-11,.col-xl-12,.col-xl-2,.col-xl-3,.col-xl-4,.col-xl-5,.col-xl-6,.col-xl-7,.col-xl-8,.col-xl-9,.col-xl-auto{position:relative;width:100%;padding-right:15px;padding-left:15px}.col{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}
.card{position:relative;display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column;min-width:0;word-wrap:break-word;background-color:#fff;background-clip:border-box;border:1px solid rgba(0,0,0,.125);border-radius:.25rem}
.card-body{-ms-flex:1 1 auto;flex:1 1 auto;min-height:1px;padding:1.25rem}

.container .card-custom{
    border-top:5px solid #0066b2;
    border:none;
    border-radius: .25rem .25rem 0 0;
    padding-bottom: 60px;
}
footer{
    background:  #fff;
    width: 100%;
    height: auto;
    margin-top: 20px;
}
ul{
    margin-right: 20px;
}
ul li {
    list-style-type: none;
    display: inline;
    margin-right: 10px;
}
ul li a{
    color:#0066b2;
}

.container nav{
    background:#0066b2 ;
    width: 100%;
    display: flex;
    justify-content: center;
    padding: 0;
}
.container nav img{
    margin-right: 50px;;
}
.card-custom .card-body .img-vector{
    display: flex;
    justify-content: center;
    margin-bottom: 50px;
}
@media(max-width:700px){
    .card-custom .card-body .img-vector img{
        width: 239px;
        transition: 200ms cubic-bezier(0.175, 0.885, 0.32, 1.275);
    }
}
</style>
</head>
<body style="background: #f3f3f3;">
    <div class="container">
        <nav>
            <div class="row" style="margin-top: 20px;">
                <div class="col-md-12">
                    <img src="<?= base_url() ?>assets-company-profile/images/logo-brand-mmi.svg" alt="" width="170">
                </div>
            </div>
        </nav>
        
        <div class="card card-custom">
            <div class="card-body">
                <div class="img-vector">
                    <img src="<?= base_url() ?>assets-company-profile/images/email-vector.png" alt="" width="400">
                </div>
                <p>
                    Hi <b>Cahyo Fajar P,</b>
                </p>
                <div class="container">
                    <p>
                    Anda telah melakukan registrasi akun untuk persyartan selanjutnya silahkan aktifkan akun dengan Klik  <br>
                   Link dibawah ini :
                    </p>
                    <p>
                     
                        <span>
                        Link : <a href="" style="color:#0066b2;">www.micromadani.com/login</a>
                        </span>
                    </p>
                  <hr style="border:2px solid #0066b2;width:20%;margin-top:30px;float:left">
                  <br><br><br>
                  <div class="salam">
                        <p>
                            Thanks a lot
                        </p>
                        <p>
                            Team Micromadaninstitusi
                        </p>
                        <p>
                            <B>Afreza Zul</B>
                        </p>
                  </div>
                </div>
                
            </div>
        </div>
        
       
        <footer>
           <div class="container" style="padding-bottom: 10px;">
                <h2 style="text-align: center;color:#0066b2;font-weight:100;padding-top:20px;margin-top:0">Temukan <b>Kami</b></h2>
                <div class="social-media" style="padding-bottom: px;display:flex;justify-content:center">
                    <ul>
                        <li>
                            <a href=""><img src="<?= base_url() ?>assets-company-profile/images/social/instagram.svg" alt="" width="15"></a>
                        </li>
                        <li>
                            <a href=""><img src="<?= base_url() ?>assets-company-profile/images/social/youtube.svg" alt="" width="15" height="15"></a>
                        </li>
                        <li>
                            <a href=""><img src="<?= base_url() ?>assets-company-profile/images/social/twitter.svg" alt="" width="15"></a>
                        </li>
                        <li>
                            
                        <a href=""><img src="<?= base_url() ?>assets-company-profile/images/social/facebook.svg" alt="" width="15"></a>
                        </li>
                    </ul>
                </div>   
                <div class="alamat">
                <p style="text-align: center;color:#0066b2">
                    Jl. Jendral Sudirman Kav. 2 Menara Taspen Lt. 5 Jakarta Pusat JK 10220, Indonesia
                    </p>
                </div>
            </div>
        </footer>
    </div>
</body>
</html>