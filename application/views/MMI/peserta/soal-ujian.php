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
                        <h5 class="modal-title" id="exampleModalLongTitle">Nomer Soal Ujian </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row" style="height: 230px;overflow-y:scroll">
                        <?php 
                            for($i =1; $i <= 40;$i++){
                        ?>
                        <div class="col-3">
                                
                            <a href="#" data-dismiss="modal">
                                <div class="number-test bg-primary text-center mb-2 py-2 ">
                                    <?= $i ?>
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
        <div class="col-md-9">
            <div class="info-box p-5 d-block">
                <div class="img-position d-flex  mb-3">
                     <img src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22200%22%20height%3D%22200%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20200%20200%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_175273ea65c%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_175273ea65c%22%3E%3Crect%20width%3D%22200%22%20height%3D%22200%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2274.421875%22%20y%3D%22104.5%22%3E200x200%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="">
                </div>

                <div class="test-pg-content d-flex">
                    <span class="number-of-test">1. &nbsp; </span>
                    <div class="test-content">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing consectetur. Odio molestiae excepturi maxime quasi! Temporibus ea voluptatem, quidem nisi vel ? </p>
                    </div>
                </div>

                <div class="result-pg">
                    <div class="form">
                        <div class="form-group">
                            <input type="radio" name="" value="" id="k"> A. lorem ipsum
                        </div>
                        <div class="form-group">
                            <input type="radio" name=""> B. dolor sit amet
                        </div>
                        <div class="form-group">
                            <input type="radio" name=""> C. consectetur ipsum
                        </div>
                        <div class="form-group">
                            <input type="radio" name=""> D. adipisicing ipsum
                        </div>
                    </div>
                </div>

                <div class="button-next mb-4">
                    <button type="button" class="btn btn-success float-right px-5">N E X T <i class="fas fa-chevron-circle-right"></i></button>
                </div>
            </div>
         </div>
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
