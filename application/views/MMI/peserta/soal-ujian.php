<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2 justify-content-center">
            <style>
            .floating-button{
                width: 70px;
                height: 70px;
                border-radius: 100px;
                z-index: 999;
                right: 100px;
                bottom: 100px;
                cursor: pointer;
            }

            @media (max-width: 768px) {
                .floating-button{
                    right: 20px;
                    bottom: 10px;
                }
            }
            .form-group{
                cursor: pointer;
            }
            .number-test{
                cursor: pointer;
                
            }
            .number-test:hover{
                background: #4CAF50 !important;
            }
            .number-test.active{
                
                background: #4CAF50 !important;
            }
            </style>
            <!-- Modal -->
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Nomor Soal Ujian </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row" style="height: 230px;overflow-y:scroll">
                        <div class="col-12">
                            <h6>Soal Pilihan Ganda</h6>   
                        </div>
                        <?php 
                        $id_soal = '';
                            foreach($soal_pg as $i => $pg){
                                $color_label = '';
                                
                                if(empty($user['id_soal_terakhir']) && $i == 0){
                                    $urutan = $i+1;
                                    $id_soal = $pg['id'];
                                    $color_label = 'bg-warning';
                                }

                                else if($pg['id'] == $user['id_soal_terakhir']){
                                    $urutan = $i+1;
                                    $id_soal = $pg['id'];
                                    $color_label = 'bg-warning';
                                } 
                                else if(in_array($pg['id'],$jawaban)){
                                    $color_label = 'bg-success';
                                }
                                else{
                                    $color_label = 'bg-primary';
                                }
                        ?>
                        <div class="col-3">
                                
                            <a  data-dismiss="modal">
                                <div urutan-soal="<?= ($i+1) ?>" data-checklist="<?=(in_array($pg['id'],$jawaban))?"1":"0"?>" id-soal="<?=$pg['id']?>" class="number-test <?=$color_label?> text-center mb-2 py-2 ">
                                    <?= ($i+1) ?>
                                </div>
                            </a>
                        </div>

                        <?php } ?>
                        
                        <div class="col-12" style="border-top: 1px dotted grey">
                            <h6>Soal Essay</h6>   
                        </div>
                        <?php 
                            foreach($soal_essay as $i => $pg){
                                $color_label = '';
                                if($pg['id'] == $user['id_soal_terakhir']){
                                    $urutan = $i+1;
                                    $id_soal = $pg['id'];
                                    $color_label = 'bg-warning';
                                } 
                                else if(in_array($pg['id'],$jawaban)){
                                    $color_label = 'bg-success';
                                }
                                else{
                                    $color_label = 'bg-primary';
                                }
                        ?>
                        <div class="col-3">
                                
                            <a data-dismiss="modal" >
                                <div urutan-soal="<?= ($i+1) ?>" data-checklist="<?=(in_array($pg['id'],$jawaban))?"1":"0"?>" id-soal="<?=$pg['id']?>" class="number-test <?=$color_label?> text-center mb-2 py-2 ">
                                    <?= ($i+1) ?>
                                </div>
                            </a>
                        </div>

                        <?php } ?>
                        </div>
                    </div>
                    <div class="modal-footer">
                    </div>
                    </div>
                </div>
                </div>
            <div class="wrapper-floating" style="position:relative">
                <div class="floating-button bg-primary d-flex align-items-center justify-content-center position-fixed" 
                data-toggle="modal" data-target="#exampleModalCenter">
                    <i class="fas fa-clipboard-list" style="font-size: 22px;"></i>
                </div>
            </div>
        <div class="col-md-9" id="isi-soal">
            
         </div>
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
<script>
    var elementid = '';
    $('.number-test').click(function(){
        elementid = $(this);
        loadSoal(elementid.attr('id-soal'),elementid.attr('urutan-soal'));
    });

    function generateBox(id_soal){

        $('.number-test').each(function(){
            // alert(id_soal+' = '+$(this).attr('id-soal'));
            if(id_soal == $(this).attr('id-soal')){
                // alert('asd');
                // alert('asdas');
                $(this).attr('class','number-test bg-warning text-center mb-2 py-2');
            }
            else if($(this).attr('data-checklist') == '1'){
                $(this).attr('class','number-test bg-success text-center mb-2 py-2');
            }
            else{
                $(this).attr('class','number-test bg-primary text-center mb-2 py-2');
            }
        });
    }

    loadSoal('<?=$id_soal?>','<?=$urutan?>');

    // var id_soal_n = '';
    function loadSoal(id_soal,urutan){
        // id_soal_n = id_soal;
        $('#isi-soal').html('<center>Loading...</center>');
        $.ajax({
            url : '<?=base_url()?>mmi/user/soal/replacePage/'+id_soal+'/'+urutan,
            success : function(views){
                $('#isi-soal').html(views);
                generateBox(id_soal);
            }
        })
    }
</script>