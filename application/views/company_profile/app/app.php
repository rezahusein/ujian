<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title ?></title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,400;1,500;1,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="<?= base_url()?>assets-company-profile/style/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
   <?php 
    if($title == 'Home MMI'){
    ?>
    <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets-company-profile/maps/beautify-marker.css">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css" />
    
    <?php } ?>

    <?php if($title == 'Layanan') { ?>
        <link rel="stylesheet" href="<?= base_url() ?>assets-company-profile/owl/css/owl.carousel.min.css">
        <link rel="stylesheet" href="<?= base_url() ?>assets-company-profile/owl/css/owl.theme.default.min.css">

    <?php } ?>
</head>
<body>
<?php $this->load->view('company_profile/include/navbar') ?>


<!-- Content -->
<?= $contents ?>

<footer class="footer-mmi bg-footer-blue mb-0" <?= $title == 'Layanan' ? "style='margin-top: 0px'" : "style='margin-top: 130px'"?> >
    <div class="container-fluid p-1  mb-5">
        <div class="row">
            <div class="col-md-4">
                <img src="<?= base_url() ?>assets-company-profile/images/logo-brand-mmi.svg" alt="" data-aos="fade-up" data-aos-delay="600">
            </div>
            <div class="col-md-2 d-flex flex-column link-footer" data-aos="fade-up" data-aos-delay="600">
                <a href="" class="nav-link nav-item">Tentang MMI</a>
                <a href="" class="nav-link nav-item">Layanan</a>
                <a href="" class="nav-link nav-item">Kontak</a>
                <a href="" class="nav-link nav-item">Berita</a>
                <a href="" class="nav-link nav-item">FAQ</a>
                <a href="" class="nav-link nav-item">Blog</a>
            </div>

            
            <div class="col-md-2">
                <div class="text-white nav-item nav-link" style="padding: .5rem 1rem;" data-aos="fade-up" data-aos-delay="600">Ikuti Kami</div>
                <div class="fonts-group d-flex" data-aos="fade-up" data-aos-delay="600">
                    <a href="" class="nav-link nav-item">
                        <i class="fas fa-phone"></i>
                    </a>
                    <a href="" class="nav-link nav-item">
                        <i class="fab fa-whatsapp"></i>
                    </a>
                    <a href="" class="nav-link nav-item">
                        <i class="fas fa-envelope"></i>
                    </a>
                    <a href="" class="nav-link nav-item">
                        <i class="fas fa-map-marker-alt"></i>
                    </a>
                </div>

                <div class="fonts-group d-flex" data-aos="fade-up" data-aos-delay="600">
                    <a href="" class="nav-link nav-item">
                        <i class="fab fa-facebook-square"></i>
                    </a>
                    <a href="" class="nav-link nav-item">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="" class="nav-link nav-item">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="" class="nav-link nav-item">
                        <i class="fab fa-linkedin"></i>
                    </a>
                </div>
            </div>

            <div class="col-md-4">
                <div class="address" style="padding: .5rem 1rem;">
                    <div class="title-address nav-item text-white" data-aos="fade-up" data-aos-delay="600">
                        Alamat
                    </div>

                    <p data-aos="fade-up" data-aos-delay="600" class="mt-3 text-white">Jl. Jendral Sudirman Kav. 2
                        Menara Taspen Lt. 5
                        Jakarta Pusat JK 10220, Indonesia</p>
                </div>
            </div>
        </div>
    </div>

    
</footer>
<div class="div mt-0">
        <div class="container-fluid">
        <div class="row p-2" style="    background: white;
    color: #0066b2;">
        <div class="col-md-12">
            <div class="footer-down text-center" style="font-size: 13px;">
            Copyright © PT MICRO MADANI INSTITUTE
            </div>
        </div>
    </div>
        </div>
</div>

<!-- <script src="https://code.jquery.com/jquery-3.5.0.js"></script> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="<?= base_url('assets/login')?>/vendor/jquery/jquery-3.2.1.min.js"></script>
<script>
  AOS.init();
</script>

<?php 
if($title == 'Home MMI'){
?>

<script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js"></script>
<script src="<?= base_url() ?>assets-company-profile/maps/beautify-marker.js"></script>

<script src="<?= base_url() ?>assets-company-profile/js/map.js"></script>
<script>
    var windowsize = $(window).width();
    
    $(window).resize(function() {
      windowsize = $(window).width();
      if (windowsize <= 991) {
          $('#col-md-7').addClass('col-md-12').removeClass('col-md-7');
          $('#col-md-5').addClass('col-md-12').removeClass('col-md-5');
        //   $('#col-md-7').removeClass('col-md-7');
      }
      else{  
        $('#col-md-7').removeClass('col-md-12').addClass('col-md-7');
        $('#col-md-5').removeClass('col-md-12').addClass('col-md-5');
        // $('#col-md-7').addClass('col-md-7');
      }
    });
</script>

<?php } ?>

<?php if($title == 'Layanan') { ?>
    
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
<script>
$('.loop').owlCarousel({
    loop: true,
    margin: 20,
    nav: false,
    autoplay: true,
    autoplayTimeout: 3000,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 3
        },
        1000: {
            items: 4
        }
    }
});
</script>
<?php } ?>


<?php if($title == 'FAQ MMI') {?>
    <script>
$(document).ready(function(){
        $("#card-faq-1").click(function(){


        $(".arrow-right-1").toggleClass("arrow-right-slide");

    });      
    $("#card-faq-2").click(function(){

        $(".arrow-right-2").toggleClass("arrow-right-slide");

     });  
    $("#card-faq-3").click(function(){

        $(".arrow-right-3").toggleClass("arrow-right-slide");

     });
});
</script>
<?php } ?>


<?php if($title == 'Kirim Lamaran MMI'){ ?>
    
<script>
    $(document).ready(function(){
        $('#selanjutnya').click(function(){
            
            $('.step-2').show(500);
            $('.step-1').hide(500);
            $('#step-circle-2').addClass('step-circle-2-js');
            $('.cabang-step-2').show(); 
            $('.pelamar-step-1').hide();
        });

         $('.btn-prev').click(function(){
            $('.step-1').show(500);
            $('.step-2').hide(500);
            $('#step-circle-2').removeClass('step-circle-2-js');
            $('.cabang-step-2').hide(); 
            $('.pelamar-step-1').show();
        });
    });
</script>
<?php } ?>

</body>
</html>