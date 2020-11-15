
<nav class="navbar navbar-expand-lg navbar-light <?= $title == "Kirim Lamaran MMI" ? 'mb-5' : '' ?>" >
    <div class="container">
        <a class="navbar-brand" href="<?= base_url('company-profile/landing') ?>">
            <img src="<?= base_url() ?>assets-company-profile/images/logo-brand-mmi.svg" alt="" width="170px" height="100">
        </a>
        <button style="outline:none" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon-custom">
                <i class="fas fa-bars" style="color:white;border:none;outline:none"></i>
            </span>
        </button>
        <div class="collapse navbar-collapse " id="navbarNavAltMarkup">
            <div class="navbar-nav ml-auto">
            <a class="nav-item nav-link" href="<?= base_url('company-profile/profile_perusahaan') ?>">Tentang MMI <span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="<?= base_url('company-profile/layanan') ?>">Layanan</a>
            <a class="nav-item nav-link" href="<?= base_url('company-profile/kontak') ?>">Kontak</a>
            <a class="nav-item nav-link" href="berita.html">Berita</a>
            <?php
            if(!empty($this->session->userdata('session_portofolio'))){
                ?>
                <a class="nav-item nav-link" href="<?= base_url('company-profile/loker') ?>">Loker</a>
                <?php
            }
            ?>
            <a class="nav-item nav-link" href="<?= base_url('company-profile/faq') ?>">FAQ</a>
            <?php
            if(empty($this->session->userdata('session_portofolio'))){
                ?>
                <a href="<?= base_url('company-profile/login') ?>" class="btn px-4 mr-5 text-white ml-5 btn-login mb-md-0 md-sm-3">
                    <span><i class="fas fa-sign-in-alt"></i> Login</span>
                </a>
                <?php
            }
            else{
                ?>
                <a href="<?= base_url('company-profile/login/logout') ?>" class="btn px-4 mr-5 text-white ml-5 btn-login mb-md-0 md-sm-3" style="background: #dc3545!important">
                    <span><i class="fas fa-sign-out-alt"></i> Logout</span>
                </a>
                <?php
            }
            ?>
            </div>
        </div>
    </div>
</nav>