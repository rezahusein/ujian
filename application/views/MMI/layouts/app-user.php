
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title><?= isset($title) ? $title : 'MMI' ?></title>
<!-- Style -->
    <?php $this->load->view('MMI/layouts/_style') ?>
</head>
<body class="sidebar-collapse">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <div class="logo">
    <a href="" class="navbar-brand"><b style="color:#2196F3">MMI</b> TEST.</a>
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
  <!-- /.content-wrapper -->    

</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<!-- jQuery -->
<script src="<?= base_url("MMI-assets/")?>plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="<?= base_url("MMI-assets/")?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script src="<?= base_url("MMI-assets/")?>plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url("MMI-assets/")?>dist/js/adminlte.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="/MMI-assets/dist/js/demo.js"></script>

<!-- PAGE PLUGINS -->
<!-- jQuery Mapael -->
<script src="<?= base_url("MMI-assets/")?>plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
<script src="<?= base_url("MMI-assets/")?>plugins/raphael/raphael.min.js"></script>
<script src="<?= base_url("MMI-assets/")?>plugins/jquery-mapael/jquery.mapael.min.js"></script>
<script src="<?= base_url("MMI-assets/")?>plugins/jquery-mapael/maps/usa_states.min.js"></script>
<!-- ChartJS -->
<script src="<?= base_url("MMI-assets/")?>plugins/chart.js/Chart.min.js"></script>

<!-- PAGE SCRIPTS -->
<script src="<?= base_url("MMI-assets/")?>dist/js/pages/dashboard2.js"></script>
</body>
</html>
