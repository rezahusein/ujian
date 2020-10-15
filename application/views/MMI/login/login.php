
<div class="login-box">
  <div class="login-logo">
    <a href=""><b class="" style="color:#1c89e0!important">MMI</b> Login</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Sign in to start your test</p>

      <form action="<?= site_url('mmi/user/dashboard') ?>" method="post">
        <div class="input-group mb-3">
          <input type="email" class="form-control" placeholder="Email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <label for="" class="control-label text-danger d-block" style="font-size: 12px;">Noted : cek email untuk memasukan Token.</label>
        <div class="input-group mb-3">
          <input type="password" class="form-control" placeholder="Token">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>

        <div class="button-submit">
          <button type="submit" class="btn btn-primary btn-block">Sign In<i class="fas fa-sign-in"></i></button>
      </div>
    </div>
      </form>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->