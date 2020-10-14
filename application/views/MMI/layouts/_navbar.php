
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <!-- <li class="nav-item d-none d-sm-inline-block">
        <a href="index3.html" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li> -->
    </ul>

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

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
          <a href="<?=base_url()?>login/logout" class="dropdown-item">
            <i class="fas fa-sign-out-alt mr-2"></i> Logout
            <!-- <span class="float-right text-muted text-sm">3 mins</span> -->
          </a>
          <div class="dropdown-divider"></div>
        </div>
      </li>
    </ul>
  </nav>