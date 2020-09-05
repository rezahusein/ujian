
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Dashboard</h1>
      <h5 style="padding-left:1px;">Welcome to SmartSoft Dashboard</h5>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="alert alert-danger">
              <style type="text/css">p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px 'Helvetica Neue'; color: #000000} p.p2 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px 'Helvetica Neue'; color: #000000; min-height: 12.0px} li.li1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px 'Helvetica Neue'; color: #000000} span.s1 {font-kerning: none} span.s2 {text-decoration: underline ; font-kerning: none} ol.ol1 {list-style-type: decimal}</style>
<p class="p1" style="text-align: center;"><span class="s1"><strong><span style="color: rgb(255, 255, 255);">CLEAN CODE SMARTSOFT</span></strong></span></p>
<p class="p1"><span style="color: rgb(255, 255, 255);"><span class="s1"><strong>QUERY</strong></span></span></p>
<ol class="ol1">
  <li class="li1"><span style="color: rgb(255, 255, 255);"><span class="s1">Hindari penggunaan ‘ SELECT * ‘, definisikan kolom yang mau diambil<span class="Apple-converted-space">&nbsp;</span></span></span></li>
  <li class="li1"><span style="color: rgb(255, 255, 255);"><span class="s1">Hindari penggunaan left join, lebih baik gunakan denormalisasi. contoh :</span></span>
    <ol class="ol1">
      <li class="li1"><span style="color: rgb(255, 255, 255);"><span class="s1">data user menimpan data id kota,</span></span></li>
      <li class="li1"><span style="color: rgb(255, 255, 255);"><span class="s1">Untuk mendapatkan data user dan nama kota maka data user JOIN data kota</span></span></li>
      <li class="li1"><span style="color: rgb(255, 255, 255);"><span class="s1">lebih baik id kota dan nama kota disimpan di data user</span></span></li>
    </ol>
  </li>
  <li class="li1"><span style="color: rgb(255, 255, 255);"><span class="s1">Backup data secara berkala, gunakan fitur 
        <a href="http://gatoko1.com/sop/backupdb"><span class="s2">http://gatoko1.com/sop/backupdb</span></a>
      </span></span></li>
  <li class="li1"><span style="color: rgb(255, 255, 255);"><span class="s1">Untuk tiap data transaksi tambahkan juga data untuk nilai akhir, sehingga sistem tidak perlu query counting / sum setiap butuh data.</span></span></li>
</ol>
<p class="p1"><span style="color: rgb(255, 255, 255);"><span class="s1"><strong>CODING</strong></span></span></p>
<ol class="ol1">
  <li class="li1"><span style="color: rgb(255, 255, 255);"><span class="s1">Untuk stater aplikasi, gunakan 
        <a href="http://gatoko1.com/sop_clean/"><span class="s2">http://gatoko1.com/sop_clean/</span></a>. SOP versi lite
      </span></span></li>
  <li class="li1"><span style="color: rgb(255, 255, 255);"><span class="s1">untuk GATOKO SOP jangan digunakan, cukup ambil fitur atau script yang dibutuhkan</span></span></li>
</ol>
<p class="p1"><span style="color: rgb(255, 255, 255);"><span class="s1"><strong>PESAN</strong></span></span></p>
<ol class="ol1">
  <li class="li1"><span style="color: rgb(255, 255, 255);"><span class="s1">silahkan menambah kan fitur baru di SOP ketika dirasakan ada fitur yang sering digunakan dan dapat dibagi dengan yang lain. Langsung diisikan</span></span></li>
</ol>
<p class="p2"><span style="color: rgb(255, 255, 255);">
    <br>
  </span></p>
<p class="p2"><span style="color: rgb(255, 255, 255);">
    <br>
  </span></p>
<p class="p1"><span class="s1"><em><span style="color: rgb(255, 255, 255);">Hatur nuhun, Keep Lazy Coding....</span></em></span></p>
          </div>
        </div>
      </div>
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h5 class="text-uppercase"><strong>New Orders</strong></h5>
              <h3>150</h3>
            </div>
            <div class="icon">
              <i class="mdi mdi-shopping"></i>
            </div>
            <a href="#" class="small-box-footer">Detail <i class="mdi mdi-chevron-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h5 class="text-uppercase"><strong>Bounce Rate</strong></h5>
              <h3>53<sup style="font-size: 20px">%</sup></h3>
            </div>
            <div class="icon">
              <i class="mdi mdi-chart-areaspline"></i>
            </div>
            <a href="#" class="small-box-footer">Detail <i class="mdi mdi-chevron-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h5 class="text-uppercase"><strong>User Registrations</strong></h5>
              <h3>44</h3>
            </div>
            <div class="icon">
              <i class="mdi mdi-account-plus"></i>
            </div>
            <a href="#" class="small-box-footer">Detail <i class="mdi mdi-chevron-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h5 class="text-uppercase"><strong>Unique Visitors</strong></h5>
              <h3>65</h3>
            </div>
            <div class="icon">
              <i class="mdi mdi-chart-pie"></i>
            </div>
            <a href="#" class="small-box-footer">Detail <i class="mdi mdi-chevron-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-md-12">
          <h5>Contoh Button Restrict :</h5>
          <!-- echo $this->core->button_restrict(array user, allow atau restrict); 
            - allow untuk memperbolehkan role yang dimaksud mengakses button tsb
            - restrict untuk mencegah role yang dimaksud mengakses button tsb
           -->
          <button type="button" class="btn btn-primary <?= $this->core->button_restrict(['peserta','finance'],'restrict') ?>">Restrict Button</button>
          <button type="button" class="btn btn-success <?= $this->core->button_restrict(['peserta','finance'],'allow') ?>">Restrict Button</button>
        </div>
      </div>


    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->