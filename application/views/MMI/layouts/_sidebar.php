
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link text-center">
      <!-- <img src="<?= base_url('MMI-assets/') ?>dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8"> -->
      <span class="brand-text font-weight-light text-center"><b>MMI</b> ADMIN.</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="<?= base_url('MMI-assets/') ?>dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block"><?=$this->session->userdata('name')?></a>
        </div>  
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="<?= site_url('mmi/admin/dashboard') ?>" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= site_url('mmi/admin/master_periode') ?>" class="nav-link">
              <i class="nav-icon fas fa-clipboard"></i>
              <p>
                Soal Tes
              </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="<?= site_url('mmi/admin/master_peserta') ?>" class="nav-link" style="position:relative">
              <i class="nav-icon fas fa-clipboard"></i> <i class="fas fa-user" style="font-size: 7px;
                position: absolute;
                display: block;
                z-index: 1;
                top: 18px;
                color: #343a40;
                left: 26.5px;"></i>
              <p>
                Laporan Peserta Tes
              </p>
            </a>
          </li>    
          
          <!-- <li class="nav-item">
            <a href="<?= site_url('mmi/admin/Soal_ujian') ?>" class="nav-link">
              <i class="nav-icon fas fa-clipboard-list"></i>
              <p>
                Preview Ujian
              </p>
            </a>
          </li> -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Akun
              </p>
            </a>
            <ul class="nav nav-treeview">
            <li class="nav-item"><a href="<?=base_url()?>mmi/admin/akun" class="nav-link"><i class="far fa-circle nav-icon"></i> Pengelola</a></li>
            <li class="nav-item"><a href="<?=base_url()?>mmi/admin/akun?role=peserta" class="nav-link"><i class="far fa-circle nav-icon"></i> Peserta</a></li>
          </ul>
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>