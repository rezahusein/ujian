
<section class="section-jadwal-tes-mmi">
    <div class="container">
        <div class="row mt-5">
            <?php
                if(!empty($periode_aktif) && $periode_aktif['periode_sampai'] >= date('Y-m-d')){
            ?>
            <div class="col-md-12">
                <div class="alert alert-warning">
                    <h6><i class="fas fa-info"></i>&nbsp;&nbsp;Mohon Maaf Anda Tidak Dizinkan Untuk Mendaftarkan Jadwal Tes, Dikarenakan Anda Sudah Mengikuti Salah Satu Jadwal Test Yang Ada </h6>
                </div>
            </div>
            <?php
                }
            ?>
            <div class="col-md-7">
                <h2>Jadwal Tes</h2>
            </div>

            <div class="col-md-5">
                <div class="group-calendar d-flex">
                    <button onclick="setTodayDate()" class="btn px-5 mr-2" id="btn-today" style="border: 1px solid #FF9800;background:#FF9800;color:white">
                        Hari Ini
                    </button>
                    <input type="date" id="tanggal-filter" class="form-control " value="<?=date('Y-m-d')?>" onchange="setTanggalPeriode()">
                </div>
            </div>
        </div>

        <div class="row row-periode mt-5" data-aos="fade-up" data-aos-delay="100">
            <div class="col-12 text-center" style="height: 40vh;" id="load-periode">
                <h3 style="line-height: 41vh;color: #bfbfbf;"><i class="fa fa-spin fa-spinner"></i> Load Jadwal Test...</h3>
            </div>
            <div class="row" style="width: 100%" id="list-periode">
                
            </div>
        </div>
    </div>
</section>
        <style>
            .modal .modal-header .close {
                border-radius: 100px;
                color: black;
                font-size: 14px;
                background: none;
                color: black;
                font-size: 20px;
            }
        </style>
        <div class="modal fade" id="modal-daftar-periode">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Syarat & Ketentuan</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-12">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                            </div>
                            <div class="col-md-12 text-right">
                                <input type="checkbox" id="checkbox-agreement" onclick="agreement($(this))"> Saya Setuju
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a class="btn btn-primary" id="btn-daftar-periode" style="cursor: not-allowed;opacity:0.5"><i class="fas fa-edit"></i> Daftar Periode</a>
                    </div>
                </div>
            </div>
        </div>
        <script src="<?= base_url('assets/login')?>/vendor/jquery/jquery-3.2.1.min.js"></script>
        <script>
            var offset = 0;
            var link_daftar = '';
            var sumPeriode = 0;

            var id_load = 0;
            setLoadingPeriodeDefault()
            function setLoadingPeriodeDefault(){
                offset = 0;
                id_load++;
                $('#load-periode').find('h3').html('<i class="fa fa-spin fa-spinner"></i> Load Jadwal Test...');
                $('.row-periode').find('#list-periode').html('');
                    $('#load-periode').fadeIn(500);

                setTimeout(function(){
                    $.ajax({
                        url : '<?=base_url()?>company-profile/loker/sumPeriode?tanggal='+$('#tanggal-filter').val(),
                        success : function(json){
                            jsondata = JSON.parse(json);
                            sumPeriode = jsondata.sum_periode;
                            loadPeriode();
                        }
                    })
                },500);
            }
            function loadPeriode(){
                if(offset < sumPeriode){
                    $.ajax({
                        url: '<?=base_url()?>company-profile/loker/getPerPeriode/'+offset+'/'+id_load+'?tanggal='+$('#tanggal-filter').val(),
                        success : function(json){
                        jsondata = JSON.parse(json);
                        // console.log(views);
                        if(jsondata.id_load == id_load){
                            $('#load-periode').slideUp(500);
                                $('.row-periode').find('#list-periode').append(jsondata.view_periode);
                            setTimeout(function(){
                            $('.last-periode').slideDown(500);
                                $('.last-periode').removeClass('last-periode');
                            },100);
                                // $('.last-periode').css({'margin-top':'0px','opacity':'1','transition':'0.5 ease'});
                                offset++;
                                loadPeriode();
                        }
                        },
                        error : function(){
                            loadPeriode();
                        }
                    });
                }
                else if(offset == 0){

                    $('#load-periode').find('h3').html('Jadwal Test Tidak Tersedia');
                }
            }
            function setTanggalPeriode(){
                if($('#tanggal-filter').val() != '<?=date('Y-m-d')?>'){
                    $('#btn-today').css({'background': 'white','border': '1px solid #FF9800','color':'#FF9800'});
                }
                else{
                    $('#btn-today').css({'border': '1px solid #FF9800','background':'#FF9800','color':'white'});
                }
                setLoadingPeriodeDefault()
            }
            function setTodayDate(){
                $('#btn-today').css({'background': '#FF9800','border': '1px solid #FF9800','color':'white'});
                $('#tanggal-filter').val('<?=date('Y-m-d')?>');
                setLoadingPeriodeDefault()
            }
            function agreement(eleid){
                if(eleid.prop('checked')){
                    $('#btn-daftar-periode').css({'cursor':'pointer','opacity':'1'});
                    $('#btn-daftar-periode').attr('href',link_daftar);
                }else{
                    $('#btn-daftar-periode').css({'cursor':'not-allowed','opacity':'0.5'});
                    $('#btn-daftar-periode').removeAttr('href');
                }
            }
            function daftarPeriode(id){
                link_daftar = '<?=base_url()?>company-profile/loker/daftarPeriode/'+id;
                $('#checkbox-agreement').prop('checked',false);
                $('#btn-daftar-periode').css({'cursor':'not-allowed','opacity':'0.5'});
                $('#btn-daftar-periode').removeAttr('href');
            }
        </script>