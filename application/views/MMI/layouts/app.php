
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title><?= isset($title) ? $title : 'MMI' ?></title>

<!-- Style -->
    <?php $this->load->view('MMI/layouts/_style') ?>
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

<script src="https://cdnjs.cloudflare.com/ajax/libs/tinymce/5.2.0/tinymce.min.js"></script>
<!-- DataTables -->
<script src="<?= base_url('MMI-assets/')?>plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url('MMI-assets/')?>plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="<?= base_url('MMI-assets/')?>plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?= base_url('MMI-assets/')?>plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>

<script src="<?= base_url('assets/') ?>bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script type="text/javascript">
       
       $.fn.dataTableExt.oApi.fnPagingInfo = function(oSettings)
       {
           return {
               "iStart": oSettings._iDisplayStart,
               "iEnd": oSettings.fnDisplayEnd(),
               "iLength": oSettings._iDisplayLength,
               "iTotal": oSettings.fnRecordsTotal(),
               "iFilteredTotal": oSettings.fnRecordsDisplay(),
               "iPage": Math.ceil(oSettings._iDisplayStart / oSettings._iDisplayLength),
               "iTotalPages": Math.ceil(oSettings.fnRecordsDisplay() / oSettings._iDisplayLength)
           };
       };
    function idleLogout(){
   var t;
   window.onload = resetTimer;
   window.onmousemove = resetTimer;
   window.onmousedown = resetTimer; // catches touchscreen presses
   window.onclick = resetTimer;     // catches touchpad clicks
   window.onscroll = resetTimer;    // catches scrolling with arrow keys
   window.onkeypress = resetTimer;

   function logout() {
       window.location.href = '<?= base_url('login/lockscreen?user='.$this->session->userdata('nip')) ?>';
   }

   function resetTimer() {
       clearTimeout(t);
       t = setTimeout(logout,900000);  // time is in milliseconds //60000 = 1 minutes
   }
   }

// idleLogout();
</script>
</head>
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper">
  <!-- Navbar -->
  <?php $this->load->view('MMI/layouts/_navbar') ?>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <?php $this->load->view('MMI/layouts/_sidebar') ?>

  <!-- Content Wrapper. Contains page content -->
    <?=$contents?>
  <!-- /.content-wrapper -->    

  <!-- Main Footer -->
  <?php $this->load->view('MMI/layouts/_footer') ?>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<script>
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
</script>
<script>

$('.tgl').datepicker({
      autoclose: true,
      format:'yyyy-mm-dd'
    });
</script>

</body>
</html>
