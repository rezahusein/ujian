
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
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper">
  <!-- Navbar -->
  <?php $this->load->view('MMI/layouts/_navbar') ?>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <?php $this->load->view('MMI/layouts/_sidebar') ?>

  <!-- Content Wrapper. Contains page content -->
    <?php $this->load->view($page) ?>
  <!-- /.content-wrapper -->    

  <!-- Main Footer -->
  <?php $this->load->view('MMI/layouts/_footer') ?>
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
