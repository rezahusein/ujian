
<section class="section-loker mt-5">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h2 data-aos="fade-up" data-aos-delay="100" style="color:#333333">Ayo Bergabung Bersama Kami ! </h2>
            </div>
            <div class="col-md-4">
                <a href="<?= base_url('company-profile/loker/jadwalTes') ?>" data-aos="fade-up" data-aos-delay="200" class="h5 float-md-right float-sm-left btn btn-warning text-white" style="background: #F7941D !important;border: none;">
                    <i class="fas fa-calendar-alt"></i> Jadwal Tes</a>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col-md-6 mb-3">
                <div class="card card-loker-custom" style="padding: 0 !important;" data-aos="fade-up" data-aos-delay="300">
                    <img class="img-loker img-fluid" src="<?= base_url() ?>assets-company-profile/images/bg-loker-1.svg"></img>
                        <div class="card-body">
                            <div class="text-sub-loker">
                                <h6 style="font-size:24px">Account Officer</h6>
                            </div>
                            <div class="group-button-loker mt-5">
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <a href="#" class="btn btn-login-custom-job-detail px-5" data-toggle="modal"
                                        data-target="#modalJobDetail">
                                           <i class="fas fa-briefcase"></i> Job Detail
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <a href="<?= base_url('company-profile/kirim_lamaran') ?>" class="btn btn-login-custom-sent-lamaran px-5">
                                          <i class="fas fa-paper-plane"></i>  Kirim Lamaran
                                        </a>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>    
            
            <div class="col-md-6">
                <div class="card card-loker-custom mb-3" style="padding: 0 !important;" data-aos="fade-up" data-aos-delay="400">
                    <img class="img-loker img-fluid" src="<?= base_url() ?>assets-company-profile/images/bg-loker-2.svg"></img>
                        <div class="card-body">
                            <div class="text-sub-loker">
                                <h6 style="font-size:24px">Finance Administraion Officer</h6>
                            </div>

                            <div class="group-button-loker mt-5">
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <a href="" class="btn btn-login-custom-job-detail px-5" data-toggle="modal"
                                        data-target="#modalJobDetail">
                                           <i class="fas fa-briefcase"></i> Job Detail
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <a href="<?= base_url('company-profile/kirim_lamaran') ?>" class="btn btn-login-custom-sent-lamaran px-5">
                                          <i class="fas fa-paper-plane"></i>  Kirim Lamaran
                                        </a>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
<!-- Modal -->
<div class="modal fade" id="modalJobDetail" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog" role="document" style="max-width: 800px;">
        <div class="modal-content">
            <div class="modal-header" style="border:none;padding: 10px !important;">
            <!-- <h5 class="modal-title" id="exampleModalLongTitle">Job Detail</h5> -->
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true"> <i class="fas fa-times"></i> </span>
            </button>
            </div>
                <div class="modal-body">
                    <div class="container">
                        <h3>Account Officer</h3>
                        <div class="tugas-detail mt-3">
                            <h5>Tugas Utama</h5>
                            <ol>
                                <li>Melakukan sosialisai,identifikasi dan wawancara calon nasabah</li>
                                <li>Melakukan uji keyakan calon nasabah</li>
                                <li>Melakukan persiapan pembiayaan</li>
                                <li>Melaksanakan pertemuan kelompok mingguan</li>
                            </ol>
                        </div>
                        <div class="kualifikasi mt-3">
                            <h5>Kualifikasi</h5>
                            <ol>
                                <li>Perempuan</li>
                                <li>Lulusan SMA/SMK/MA/Paket C semua jurusan</li>
                                <li>Belum menikah</li>
                                <li>Usia maksimal 23 tahun</li>
                                <li>Memiliki E-KTP / KTP Sementara</li>
                                <li>Mampu mengendarai motor</li>
                                <li>Diutamakan mempunyai SIM C</li>
                            </ol>
                        </div>

                        <div class="fasilitas mt-3 mb-3">
                            <h5>Fasilitas & Benefit</h5>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="benefit-fasilitas d-flex flex-column pl-4">
                                        <span> <i class="fas fa-check-square"></i> Gaji awal di atas UMK, THR</span>
                                        <span> <i class="fas fa-check-square"></i> Kendaraan operasional</span>
                                        <span> <i class="fas fa-check-square"></i> BPJS Kesehatan & BPJS Ketenaga Kerjaan</span>
                                        <span> <i class="fas fa-check-square"></i> Mess + Sembako </span>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="benefit-fasilitas d-flex flex-column pl-4">
                                        <span> <i class="fas fa-check-square"></i> Jenjang karir yang pasti</span>
                                        <span> <i class="fas fa-check-square"></i> Pelatihan dan pengembangan</span>
                                        <span> <i class="fas fa-check-square"></i> Penempatan sesuai domisili</span>
                                        <span> <i class="fas fa-check-square"></i> Asuransi jiwa </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</div>
</section>