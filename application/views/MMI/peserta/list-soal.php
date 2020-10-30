<div class="info-box p-5 d-block">
    <?php
        if($soal['jenis_soal'] == 'pg'){
            ?>
            <h5><b>I. Pilihan Ganda</b></h5>
            <?php
        }
        else{
            ?>
            <h5><b>II. Essay</b></h5>
            <?php
        }
    ?>
    <?php
        if(!empty($soal['image'])){
    ?>
                <div class="img-position d-flex  mb-3 mt-1">
                     <img src="<?=base_url().$soal['image']?>" style="width: 200px;height: 200px" alt="">
                </div>
<?php
        }
?>
<?php
        if(!empty($soal['voice'])){
            $ext = pathinfo($soal['voice']);
    ?>
                <div class="img-position d-flex  mb-3">
                     <audio controls><source src="<?=base_url().$soal['voice']?>" type="audio/<?=$ext['extension']?>"></audio>
                </div>
<?php
        }
?>
                <div class="test-pg-content d-flex">
                    <span class="number-of-test"><?=$urutan?>. &nbsp; </span>
                    <div class="test-content">
                        <?=$soal['deskripsi']?>
                    </div>
                </div>

                <div class="result-pg">
                    <div class="form">
                        <?php
                        if($soal['jenis_soal'] == 'pg'){
                            foreach($jawaban_pg as $pg){
                            if($pg['jenis_jawaban'] == 'deskripsi'){
                        ?>
                        <div class="form-group" onclick="setJawabanPg($(this))" style="cursor: pointer">
                            <input type="radio" name="jawaban" class="jawaban-pg" value="<?=$pg['id']?>" <?=($pg['id'] == @$jawaban['id_jawaban_pg'])?"checked":""?>> <?=$pg['keyword']?>. <?=$pg['deskripsi']?>
                        </div>
                        <?php
                                }
                                else{
                                    ?>
                        <div class="form-group" onclick="setJawabanPg($(this))">
                            <div class="row">
                                <div class="col-1">
                                    <input type="radio" name="jawaban" class="jawaban-pg" value="<?=$pg['id']?>" <?=($pg['id'] == @$jawaban['id_jawaban_pg'])?"checked":""?>> <?=$pg['keyword']?>.
                                </div>   
                                <div class="col-9">
                                    <img src="<?=base_url().$pg['image']?>" style="width: 50px;height: 50px">   
                                </div>
                            </div>
                        </div>
                        <?php
                                }
                            }
                        }
                        else{
                            ?>
                            <div class="form-group">
                                <textarea class="form-control" onchange="setJawabanEssay($(this))"><?=$jawaban['jawaban_essay']?></textarea>   
                            </div>
                            <?php
                        }
                        ?>
                    </div>
                </div>

                <div class="row" style="display: flow-root">
                    <div class="col-md-3 float-left mb-2">
                    <?php
                        if(!empty($before)){
                    ?>
                    <button type="button" onclick="loadSoal('<?=$before['id']?>',$('.number-test[id-soal=\'<?=$before['id']?>\']').attr('urutan-soal'))" class="btn btn-block btn-danger"><i class="fas fa-chevron-circle-left"></i> PREV</button>
                    <?php
                        }
                        else if($soal['id'] == @$first_essay['id']){
                            ?>
                    <button type="button" onclick="loadSoal('<?=$last_pg['id']?>',$('.number-test[id-soal=\'<?=$last_pg['id']?>\']').attr('urutan-soal'))" class="btn btn-block btn-danger"><i class="fas fa-chevron-circle-left"></i> PREV</button>
                    <?php 
                        }
                        ?> 
                    </div>
                    <div class="col-md-3 float-right mb-2"> 
                        <?php
                        if(!empty($after)){
                    ?>
                    <button type="button" onclick="loadSoal('<?=$after['id']?>',$('.number-test[id-soal=\'<?=$after['id']?>\']').attr('urutan-soal'))" class="btn btn-block btn-success ">NEXT <i class="fas fa-chevron-circle-right"></i></button>
                    <?php
                        }
                        else if($soal['id'] == @$last_pg['id']){
                            ?>
                    <button type="button" onclick="loadSoal('<?=$first_essay['id']?>',$('.number-test[id-soal=\'<?=$first_essay['id']?>\']').attr('urutan-soal'))" class="btn btn-block btn-success">NEXT <i class="fas fa-chevron-circle-right"></i></button>
                    <?php    
                        }
                    ?>  
                    </div>
                    
                </div>
            </div>
            <script>    
                var elemntsoal = '';
                function setJawabanPg(eleid){
                    // alert('asdsa');
                    event.preventDefault();
                    // eleid.preventDefault();
                    elemntsoal = eleid;
                    $.ajax({
                        url : '<?=base_url()?>mmi/user/soal/answerePage/<?=$soal['id']?>',
                        type : 'POST',
                        data : {
                            'jawaban':eleid.find('input').val()
                        },
                        success : function(){
                              elemntsoal.find('input').prop('checked',true);
                              $('.number-test[id-soal=\'<?=$soal['id']?>\']').attr('data-checklist','1');
                              generateBox('<?=$soal['id']?>');  
                        }
                    });
                }
                function setJawabanEssay(eleid){
                    elemntsoal = eleid;
                    $.ajax({
                        url : '<?=base_url()?>mmi/user/soal/answerePage/<?=$soal['id']?>',
                        type : 'POST',
                        data : {
                            'jawaban':eleid.val()
                        },
                        success : function(){
                            if(elemntsoal.val()){
                                $('.number-test[id-soal=\'<?=$soal['id']?>\']').attr('data-checklist','1');
                            }
                            else{
                                $('.number-test[id-soal=\'<?=$soal['id']?>\']').attr('data-checklist','0');
                            }
                            generateBox('<?=$soal['id']?>');
                              // elemntsoal.find('input').prop('checked',true);  
                        }
                    });
                }
            </script>   