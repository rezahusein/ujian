
            <div class="col-6 last-periode" style="display: none">
                <div class="card mb-3" style="border-radius: 10px;">
                    <div class="container">
                        <div class="card-header" style="background:white;padding: 30px;">
                            <h3 style="color:#0066B2;font-size: 24px;"><?=$periode['kode_periode']?></h3>
                            <div class="tes-time d-flex ">
                                <div class="tanggal-tes mr-3">
                                    <i class="fas fa-calendar-alt"></i> 
                                    <?php
                                    if($periode['periode_dari'] != $periode['periode_sampai']){
                                    ?>
                                    <?=hari_indo(date('D',strtotime($periode['periode_dari'])))?>, <?=date('d',strtotime($periode['periode_dari']))?> <?=bulan_indo(date('m',strtotime($periode['periode_dari'])))?> - <?=hari_indo(date('D',strtotime($periode['periode_sampai'])))?>, <?=date('d',strtotime($periode['periode_sampai']))?> <?=bulan_indo(date('m',strtotime($periode['periode_sampai'])))?> <?=date('Y',strtotime($periode['periode_sampai']))?>
                                    <?php
                                    }
                                    else{
                                        ?>
                                        <?=hari_indo(date('D',strtotime($periode['periode_sampai'])))?>, <?=date('d',strtotime($periode['periode_sampai']))?> <?=bulan_indo(date('m',strtotime($periode['periode_sampai'])))?> <?=date('Y',strtotime($periode['periode_sampai']))?>
                                        <?php
                                    }
                                    ?>
                                </div>
                            </div>
                            <div class="tes-time d-flex mt-2">
                                <?php
                                if(date('Y-m-d') <= $periode['periode_sampai']){
                                ?>
                                <?=(($periode['kuota_peserta'] - $jumlah_peserta) > 0)?"<span class='badge badge-success'><i class='fas fa-check'></i> Jadwal Tes Tersedia</span>":"<span class='badge badge-danger'><i class='fas fa-times'></i> Jadwal Tes Tersedia</span>"?>
                                <?php
                            }
                            else{
                                ?>
                                <span class='badge badge-danger'><i class='fas fa-clock'></i> Periode Sudah Tidak Berlaku</span>
                                <?php
                            }
                                ?>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="left-detail-tes d-flex flex-column" style="line-height: 20px !important;">
                                        <table class="d-table table table-borderless">
                                            <tbody>
                                                <tr>
                                                    <td>Kuota Peserta</td>
                                                    <td>:</td>
                                                    <td> <?=$periode['kuota_peserta']?></td>
                                                </tr>
                                                <tr>
                                                    <td>Jumlah Peserta</td>
                                                    <td>:</td>
                                                    <td> <?=$jumlah_peserta?></td>
                                                </tr>
                                                <tr>
                                                    <td>Kuota Tersedia</td>
                                                    <td>:</td>
                                                    <td> <?=$periode['kuota_peserta'] - $jumlah_peserta?></td>
                                                </tr>
                                                <tr>
                                                    <td>Durasi (menit)</td>
                                                    <td>:</td>
                                                    <td> <?=$periode['lama_waktu_ujian']?> m</td>
                                                </tr>
                                                <tr>
                                                    <td>Standar Nilai </td>
                                                    <td>:</td>
                                                    <td><?=$periode['standar_nilai']?></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="left-detail-tes d-flex flex-column" style="line-height: 20px !important;">
                                        <table class="d-table table">
                                            <tbody>
                                                <tr>
                                                    <td>Jumlah Soal</td>
                                                    <td>:</td>
                                                    <td><?=$soal['jumlah_soal']?></td>
                                                </tr>
                                                <tr>
                                                    <td>Soal PG </td>
                                                    <td>:</td>
                                                    <td><?=$soal['sum_pg']?></td>
                                                </tr>
                                                 <tr>
                                                    <td>Soal Essay </td>
                                                    <td>:</td>
                                                    <td><?=$soal['sum_essay']?></td>
                                                </tr>
                                                <tr>
                                                    <td>Bobot PG </td>
                                                    <td>:</td>
                                                    <td><?=$periode['persentase_pg']?>%</td>
                                                </tr>
                                                <tr>
                                                    <td>Bobot Essay </td>
                                                    <td>:</td>
                                                    <td><?=$periode['persentase_essay']?>%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <?php
                                        if($periode_aktif['id_periode'] == $periode['id']){
                                            ?>
                                            <span class="badge badge-success float-right"><i class="fas fa-check"></i> Sudah Terdaftar</span>
                                            <?php
                                        }
                                        else if(!empty($periode_aktif) && $periode_aktif['periode_sampai'] >= date('Y-m-d')){
                                    ?>
                                    <button disabled style="cursor: not-allowed" class="btn btn-primary btn-sm float-right" type="button"><i class="fa fa-edit"></i> Daftar Periode</button>
                                    <?php
                                        }else{
                                            ?>
                                            <button class="btn btn-primary btn-sm float-right" onclick="daftarPeriode(<?=$periode['id']?>)" type="button" data-toggle="modal" href="#modal-daftar-periode"><i class="fa fa-edit"></i> Daftar Periode</button>
                                            <?php
                                        }
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>