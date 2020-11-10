<style>
#chartdiv {
  width: 100%;
  height: 400px;
}
</style>

<!-- Resources -->
<div class="row">
        <div class="col-md-6">
            <table class="table table-bordered">
                <thead> 
                    <tr class="bg-primary">  
                        <th colspan="2">Nilai Pilihan Ganda</th>
                    </tr> 
                </thead>   
                <tbody> 
                    <?php
                        $nilai_soal = $pg['jawaban_benar'] / $pg['jumlah_soal'] * 100;
                        $total_nilai = ($nilai_soal  * $periode['persentase_pg'] / 100) + ($user['nilai_essay'] * $periode['persentase_essay'] / 100);
                    ?>
                    <tr>  
                        <td>Total Soal</td>
                        <td><?=$pg['jumlah_soal']?></td>
                    </tr>
                    <tr>  
                        <td>Jawaban Benar</td>
                        <td><?=$pg['jawaban_benar']?></td>
                    </tr> 
                    <tr>  
                        <td>Jawaban Salah</td>
                        <td><?=$pg['jawaban_salah']?></td>
                    </tr> 
                    <tr>  
                        <td>Nilai</td>
                        <td><?=$nilai_soal?></td>
                    </tr> 
                    <tr>  
                        <td>Persentase Ke Total Nilai</td>
                        <td><?=$periode['persentase_pg']?>%</td>
                    </tr> 
                    <tr>  
                        <td>Konversi Ke Total Nilai</td>
                        <td><?=$nilai_soal  * $periode['persentase_pg'] / 100?></td>
                    </tr> 
                </tbody>  
            </table>
            <table class="table table-bordered">
                <thead> 
                    <tr class="bg-primary">  
                        <th colspan="2">Nilai Essay</th>
                    </tr> 
                </thead>   
                <tbody> 
                    <tr>  
                        <td>Total Soal</td>
                        <td><?=$essay['jumlah_soal']?></td>
                    </tr>
                    <tr>  
                        <td>Jawaban Benar</td>
                        <td><?=$essay['jawaban_benar']?></td>
                    </tr> 
                    <tr>  
                        <td>Jawaban Salah</td>
                        <td><?=$essay['jawaban_salah']?></td>
                    </tr> 
                    <tr>  
                        <td>Nilai</td>
                        <td><?=(!empty($user['nilai_essay']))?$user['nilai_essay']:"0"?></td>
                    </tr> 
                    <tr>  
                        <td>Persentase Ke Total Nilai</td>
                        <td><?=$periode['persentase_essay']?>%</td>
                    </tr> 
                    <tr>  
                        <td>Konversi Ke Total Nilai</td>
                        <td><?=$user['nilai_essay'] * $periode['persentase_essay'] / 100?></td>
                    </tr>  
                </tbody>  
            </table>
        </div> 
        <div class="col-md-6">
            <div class="row">
                <div class="col-md-12 mb-4">
                    <?php
                        if($total_nilai >= $periode['standar_nilai']){
                    ?>
                    <div class="alert alert-success">
                       <center> 
                            <i class="fa fa-check"  style="font-size: 40px"></i><br>
                            Peserta Ini Dinyatakan Lulus
                       </center>
                    </div>   
                    <?php
                        }
                        else{
                            ?>
                            <div class="alert alert-danger">
                               <center> 
                                    <i class="fas fa-times"  style="font-size: 40px"></i><br>
                                    Peserta Ini Dinyatakan Tidak Lulus
                               </center>
                            </div>   
                            <?php
                        }
                    ?>
                </div>
                <div class="col-md-6 mb-4 text-center">
                    <h4 class="text-center">Standar Nilai</h4>
                    <div style="margin: auto" class="tox-progress" data-size="180" data-thickness="12" data-color="#229922"
                         data-background="#ffffff" data-progress="<?=$periode['standar_nilai']?>" data-speed="500">
                        <div class="tox-progress-content" data-vcenter="true">
                            <div class="text-center" style="width: 100%">
                                <p class="text-center" style="font-family:'Josefin Sans', sans-serif;font-size: 5em;margin-top: 12px;padding-bottom: 0;"><?=$periode['standar_nilai']?></p>
                            </div>
                        </div>
                    </div>       
                </div>
                <div class="col-md-6 mb-4 text-center">
                    <h4 class="text-center">Total Nilai</h4>
                    <div style="margin: auto" class="tox-progress" data-size="180" data-thickness="12" data-color="#229922"
                         data-background="#ffffff" data-progress="<?=$total_nilai?>" data-speed="500">
                        <div class="tox-progress-content" data-vcenter="true">
                            <div class="text-center" style="width: 100%">
                                <p class="text-center" style="font-family:'Josefin Sans', sans-serif;font-size: 5em;margin-top: 12px;padding-bottom: 0;"><?=$total_nilai?></p>
                            </div>
                        </div>
                    </div>       
                </div>
                <div class="col-md-6">
                    <h4 class="text-center">Nilai PG</h4>
                    <div style="margin: auto" class="tox-progress" data-size="180" data-thickness="12" data-color="#229922"
                         data-background="#ffffff" data-progress="<?=$nilai_soal?>" data-speed="500">
                        <div class="tox-progress-content" data-vcenter="true">
                            <div class="text-center" style="width: 100%">
                                <p class="text-center" style="font-family:'Josefin Sans', sans-serif;font-size: 5em;margin-top: 12px;padding-bottom: 0;"><?=$nilai_soal?></p>
                            </div>
                        </div>
                    </div>       
                </div>
                <div class="col-md-6">
                    <h4 class="text-center">Nilai Essay</h4>
                    <div style="margin: auto" class="tox-progress" data-size="180" data-thickness="12" data-color="#229922"
                         data-background="#ffffff" data-progress="<?=(!empty($user['nilai_essay']))?$user['nilai_essay']:"0"?>" data-speed="500">
                        <div class="tox-progress-content" data-vcenter="true">
                            <div class="text-center" style="width: 100%">
                                <p class="text-center" style="font-family:'Josefin Sans', sans-serif;font-size: 5em;margin-top: 12px;padding-bottom: 0;"><?=(!empty($user['nilai_essay']))?$user['nilai_essay']:"0"?></p>
                            </div>
                        </div>
                    </div>       
                </div>
            </div>

<!-- Chart code -->
<script>
$(document).ready(function(){
    ToxProgress.create();
    ToxProgress.animate();
});
</script>
        </div>
    </div>