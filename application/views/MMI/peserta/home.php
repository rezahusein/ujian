<?php
    
        $mulai_ujian = date('Y-m-d H:i:s');
        if(!empty($user['waktu_mulai_ujian'])){
            $mulai_ujian = $user['waktu_mulai_ujian'];
        }
        $expired = date('Y-m-d H:i:s',strtotime('+'.$periode['lama_waktu_ujian'].' minutes',strtotime($mulai_ujian)));
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
        <div class="col-12"> 
        <div class="section-periode card bg-warning" style="box-shadow: none;">
        <div class="periode-list px-2 py-2 text-white">
                <p style="font-size: 15px;font-weight:bold" class="mb-0">
                   <i class="fas fa-exclamation-circle"></i> Periode Ujian: <?=date('d M Y',strtotime($periode['periode_dari']))?> - <?=date('d M Y',strtotime($periode['periode_sampai']))?>
                </p>
            </div> 
        </div>  
        <div class="section-periode card bg-success" style="box-shadow: none;">
        <div class="periode-list px-2 py-2 text-white">
                <p style="font-size: 15px;font-weight:bold" class="mb-0">
                   <i class="fas fa-clock"></i> Waktu Ujian <?=$periode['lama_waktu_ujian']?> Menit
                </p>
            </div> 
        </div>
        <div class="info-box" style="box-shadow: none;">
            <div class="row">
                <div class="col-3">
                    <div class="user-logo text-center mt-2">
                        <i class="fa fa-user" style="font-size: 50px;color:#9E9E9E"></i>
                    </div>
                </div>
                <div class="col-9">
                    <div class="row mt-1">
                        <div class="col-12">
                            <span>Nama : <?=$user['nama_peserta']?></span> 
                        </div>
                        <div class="col-12">
                            <span>Email : <?=$user['email_peserta']?> </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php
            if($user['status_ujian'] == 'selesai ujian'){
        ?>
        <div class="info-box justify-content-center align-items-center" style="box-shadow:none">
            <div class="content-status">
                <div class="play-test align-items-center d-flex text-center mt-3">
                        <h4>Hasil Ujian Anda  </h4>
                </div> 
                <div class="result-test text-center ">
                    <h1 style="font-size: 50px;" class="text-success"><?=$user['total_nilai']?></h1>
                </div>
            </div>
        </div>
        <?php
            }
        ?>
        <div class="info-box justify-content-center align-items-center"  style="box-shadow:none">

            <div class="content-status">
                <div class="icon-status text-center d-flex justify-content-center mb-2 mt-2"><br />
                
                    <!-- 1. icon lulus -->
                    <?php
                        if($user['status_ujian'] == 'selesai ujian' && $user['total_nilai'] >= $periode['standar_nilai']){
                    ?>
                     <span class="info-box-icon">
                         <i class="fas fa-clipboard-check text-success" style="font-size: 55px;"></i>
                    </span> 
                    <?php
                        }
                        else if($user['status_ujian'] == 'belum ujian' && date('Y-m-d') > $periode['periode_sampai']){
                    ?>
                    <!-- 2. icon Exp -->
                        
                     <span class="info-box-icon">
                         <i class="fas fa-exclamation-circle text-danger" style="font-size: 55px;"></i>
                    </span> 
                        <?php
                            }
                            else if($user['status_ujian'] == 'selesai ujian' && $user['total_nilai'] < $periode['standar_nilai']){
                        ?>
                    <!-- 3. Fail Exam -->
                        
                     <span class="info-box-icon">
                         <i class="fas fa-times-circle text-danger" style="font-size: 55px;"></i>
                    </span> 
                    <?php
                        }

                            else if($user['selesai_ujian'] == '0' && !empty($user['waktu_mulai_ujian']) && date('Y-m-d H:i:s') > $expired){
                                $this->db->update('peserta_periode',array('status_ujian'=>'menunggu hasil'),array('id'=>$user['id']));
                    ?> 
                    <span class="info-box-icon">
                         <i class="fas fa-clock text-warning" style="font-size: 55px;"></i>
                        </span>
                        <?php
                            }
                        else if($user['status_ujian'] == 'sedang ujian'){
                    ?>

                    <!-- 5. Sedang ujian -->
                        
                     <span class="info-box-icon">
                         <i class="fas fa-user-clock text-warning" style="font-size: 55px;"></i>
                    </span> 
                    <?php
                        }
                        else{
                    ?>

                 
                    
                
                <!-- -->
                     <span class="info-box-icon">
                         <i class="fas fa-clock text-warning" style="font-size: 55px;"></i>
                        </span>
                        <?php
                            }
                        ?> 
                </div>

               <div class="play-test align-items-center d-flex text-center mt-3">
                   <?php
                        if($user['status_ujian'] == 'selesai ujian' && $user['total_nilai'] >= $periode['standar_nilai']){
                    ?>
                       <h5>Lulus Ujian</h5>
                    <?php
                        }
                            else if($user['selesai_ujian'] == '1' && $user['status_ujian'] == 'menunggu hasil'){
                    ?>
                       <h5>Hasil Ujian Sedang Diproses</h5>
                        <?php
                            }
                            else if($user['selesai_ujian'] == '0' && !empty($user['waktu_mulai_ujian']) && date('Y-m-d H:i:s') > $expired){
                    ?>
                       <h5>Waktu Ujian Sudah Habis & Hasil Ujian Sedang Diproses</h5>
                        <?php
                            }
                            else if($user['status_ujian'] == 'selesai ujian' && $user['total_nilai'] < $periode['standar_nilai']){
                        ?>
                       <h5>Tidak Lulus</h5>
                    <?php
                        }
                        else if($user['status_ujian'] == 'sedang ujian'){
                    ?>
                       <h5>Ujian Sedang Berlangsung.</h5>
                    <?php
                        }
                        else if(date('Y-m-d') >= $periode['periode_dari']){
                                ?>
                       <h5>Belum Mengerjakan Ujian</h5>
                                <?php
                        }
                        else{
                    ?>
                       <h5>Ujian Belum Dimulai</h5>
                        <?php
                            }
                        ?> 
               </div> 
            </div>
        </div>   
        <?php
            if(empty($user['waktu_mulai_ujian']) && (date('Y-m-d') >= $periode['periode_dari'] && date('Y-m-d') <= $periode['periode_sampai'])){
        ?>
        <a href="<?= base_url('mmi/user/soal') ?>">
            <div class="info-box bg-primary" style="min-height: 60px !important;">
                <span class="info-box-icon"><i class="fas fa-play"></i></span>
                    <div class="play-test align-items-center d-flex mt-1">
                        <h3>Mulai Test</h3>
                    </div> 
            </div>
        </a>
        <?php
            }
            else if(!empty($user['waktu_mulai_ujian']) && date('Y-m-d H:i:s') <= $expired && $user['selesai_ujian'] == '0'){
                ?>
        <a href="<?= base_url('mmi/user/soal') ?>">
            <div class="info-box bg-primary" style="min-height: 60px !important;">
                <span class="info-box-icon"><i class="fas fa-play"></i></span>
                    <div class="play-test align-items-center d-flex mt-1">
                        <h3>Lanjut Kerjakan Soal <?=date('Y-m-d H:i:s')?> <= <?=$expired?></h3>
                    </div> 
            </div>
        </a>
        <?php
            }
        ?>
        </div>
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      </div><!--/. container-fluid -->
    </section>
    <!-- /.content -->
  </div>