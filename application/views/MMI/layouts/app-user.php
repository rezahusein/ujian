
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title><?= isset($title) ? $title : 'MMI' ?></title>
<!-- Style -->
    <?php $this->load->view('MMI/layouts/_style') ?>

 
<!-- Bootstrap -->
<script src="<?= base_url("MMI-assets/")?>plugins/jquery/jquery.min.js"></script>
<script src="<?= base_url("MMI-assets/")?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script src="<?= base_url("MMI-assets/")?>plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url("MMI-assets/")?>dist/js/adminlte.js"></script>


<!-- OPTIONAL SCRIPTS -->

<!-- PAGE PLUGINS -->
<!-- jQuery Mapael -->
<!-- ChartJS -->
<!-- PAGE SCRIPTS -->
<script src="<?= base_url("MMI-assets/")?>dist/js/pages/dashboard2.js"></script>
</head>
<body class="sidebar-collapse">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <div class="logo">
       <a href="" class="navbar-brand"><b style="color:#2196F3">MMI</b> TEST</a>
    </div>
    <style>
      @media (max-width:768px){
        .button-group-style{
          margin-right:0 !important;
        }
      }
    </style>
    <div class="d-flex ml-auto button-group-style" style="margin-right:100px">
        <?php 
          if($title == 'Soal Ujian')
          {

        ?>
        <button class="btn btn-success btn-sm" data-toggle="modal" href="#modal-alert-selesai">Selesai</button>
         <b class="btn btn-primary btn-sm ml-1" id="time-explore">-</b> 
          <?php }?>
    </div>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="fas fa-ellipsis-v"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">Setting</span>

          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-id-card mr-2"></i> Profile
            <!-- <span class="float-right text-muted text-sm">3 mins</span> -->
          </a>
          
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-sign-out-alt mr-2"></i> Logout
            <!-- <span class="float-right text-muted text-sm">3 mins</span> -->
          </a>
          <div class="dropdown-divider"></div>
        </div>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->


  <!-- Content Wrapper. Contains page content -->
 <?=$contents?>
<?php
    if($title == 'Soal Ujian'){
        ?>
        <div class="modal fade" id="modal-alert-selesai">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Peringatan</h4>
              </div>
              <div class="modal-body">
                <div class="row">
                    <div class="col-12">
                      <center>
                        <i class="fas fa-exclamation-triangle text-warning" style="font-size: 60px"></i><br>
                        <h6 class="mt-4">Apakah Anda Yakin ?</h6>
                      </center>
                    </div>  
                 </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Tidak</button>
                <a class="btn btn-success" href="<?=base_url()?>mmi/user/soal/selesaiTest/<?=$user['id']?>">Ya</a>
              </div>
            </div>
          </div>
        </div>
        <div class="modal fade" id="modal-expired">
           <div class="modal-dialog">
             <div class="modal-content">
               <div class="modal-header">
                 <h4 class="modal-title">Peringatan</h4>
               </div>
               <div class="modal-body">
                 <div class="row">
                    <div class="col-12">
                      <center>
                        <i class="fas fa-exclamation-triangle text-warning" style="font-size: 60px"></i><br>
                        <h6 class="mt-4">Waktu Sudah Habis Silahkan Keluar Dari Halaman Soal</h6>
                      </center>
                    </div>  
                 </div>
               </div>
               <div class="modal-footer">
                 <a href="<?=base_url()?>mmi/user/dashboard" class="btn btn-danger"><i class="fas fa-sign-out-alt"></i> Keluar</a>
               </div>
             </div>
           </div>
         </div>
         <script>
// Set the date we're counting down to
var countDownDate = new Date("<?=$expired_date?>").getTime();

// Update the count down every 1 second

getTimeExpired(1);
var x = '';
function getTimeExpired(sign=0){
  var now = new Date().getTime();
    
  // Find the distance between now and the count down date
  var distance = countDownDate - now;

  var minutes = Math.floor((distance / (1000 * 60)));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
  minutes = (String(minutes).length == 1)?'0'+minutes:minutes;   
  seconds = (String(seconds).length == 1)?'0'+seconds:seconds;   
  // Output the result in an element with id="demo"
  document.getElementById("time-explore").innerHTML = minutes + ":" + seconds;
    
  // If the count down is over, write some text 
  if (distance < 0) {
    // alert('asdsa');
    $('#modal-expired').modal({backdrop: 'static', keyboard: false}); 
    if(sign == 0){
      clearInterval(x); 
    }
    $('#time-explore').attr('class','btn btn-danger btn-sm ml-1');
    document.getElementById("time-explore").innerHTML = "EXPIRED";
  }
  if(sign == 1 && distance >= 0){
  x = setInterval(function() {
      getTimeExpired();
  
}, 1000);
  }
}
         </script>
        <?php
    }
?>
         
         <div class="modal fade" id="modal-koneksi">
           <div class="modal-dialog">
             <div class="modal-content">
               <div class="modal-header">
                 <h4 class="modal-title">Peringatan</h4>
               </div>
               <div class="modal-body">
                 <div class="row">
                    <div class="col-12">
                      <center>
                        <i class="fas fa-exclamation-triangle text-warning" style="font-size: 60px"></i><br>
                        <h6 class="mt-4">Koneksi Terputus , Harap Sambungkan Kembali Koneksi Internet Anda</h6>
                      </center>
                    </div>  
                 </div>
               </div>
             </div>
           </div>
         </div>
  <!-- /.content-wrapper -->    

</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<!-- jQuery -->



<script>
  $(document).ready(function(){
  //   var xs = setInterval(function(){
  //     // alert('asdas');
  //     if(!navigator.onLine){
  //       alert('offline');
  //       id_online = 0;
  //         id_offline++;
  //         if(id_offline == 1){
  //           $('#modal-koneksi').modal({backdrop: 'static', keyboard: false});   
  //         }
  //     }
  //     else{
  //       alert('online');
  //       id_offline = 0;
  //         id_online++;
  //         if(id_online == 1){
  //           $('#modal-koneksi').modal('hide');   
  //         }
  //     }
  //   },1000);
  const checkOnlineStatus = async () => {
  try {
    const online = await fetch("<?=base_url()?>mmi/user/dashboard/checkInternet");
    return online.status >= 200 && online.status < 300; // either true or false
  } catch (err) {
    return false; // definitely offline
  }
};
  var id_online = 0;
  var id_offline = 0;
setInterval(async () => {
  const result = await checkOnlineStatus();
  if(result){
          id_online++;
                  if(id_online == 1 && id_offline > 0){
            // $('#modal-koneksi').modal('hide'); 
            location.reload();  
          }
          id_offline = 0;
      // alert('online');
  }
  else{
          id_online = 0;
          id_offline++;
                  if(id_offline == 1){
            $('.content-wrapper').html('<center><i class="fas fa-exclamation-triangle text-warning" style="font-size: 60px;margin-top:40vh"></i><br><h6 class="mt-4">Koneksi Terputus , Harap Sambungkan Kembali Koneksi Internet Anda</h6></center>');   
          }
      // alert('offline');
  }
}, 3000);
//   setTimeout(function(){
//     alert('asdasda');
//   window.addEventListener("load", (event) => {
//   // const statusDisplay = document.getElementById("status");
//   if(navigator.onLine){
//       alert('online');
//   }
//   else{
//     alert('offline');
//   }
//   // statusDisplay.textContent = navigator.onLine ? "Online" : "OFFline";
// });

//   },10000);
//   window.addEventListener("offline", (event) => {
//   // const statusDisplay = document.getElementById("status");
//   // statusDisplay.textContent = "OFFline";
//   alert('offline');
// });
//   window.addEventListener("online", (event) => {
//   // const statusDisplay = document.getElementById("status");
//   // statusDisplay.textContent = "OFFline";
//   alert('online');
// });
      $('.form-group').click(function(){
          $(this).find('input[type="radio"]').prop('checked',true);
      }); 


      var listItems = $('.number-test');
      $('.number-test').click(function(){
        for(let i = 0; i < listItems.length; i++){
            listItems[i].classList.remove('active');
        }
        
        this.classList.add('active');
      })
  });
 </script>

 <script>
    $('#myModal').on('shown.bs.modal', function () {
      $('#myInput').trigger('focus')
    });
 </script>

</body>
</html>
