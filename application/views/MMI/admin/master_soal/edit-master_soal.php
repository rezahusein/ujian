
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0 text-dark">Edit Soal</h1> 
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Periode Ujian</a></li>
                <li class="breadcrumb-item"><a href="#">Data Soal</a></li>
                <li class="breadcrumb-item active">Create Soal</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->

   
    </section>
    <!-- Main content -->
    <section class="content">
    <form method="POST" action="<?= base_url('mmi/admin/Master_soal/update?id_periode='.@$_GET['id_periode']) ?>" id="upload-create">
      <input type="hidden" name="id" value="<?=$master_soal['id']?>">
      <div class="row">
        <div class="col">
          <div class="card">
            <!-- /.box-header -->
            <div class="card-header">
              <h5 class="card-title">
                  Edit Soal
              </h5>
            </div>
            <div class="card-body">
                <div class="show_error"></div>
                <div class="form-group">
                  <?php
                  if(!empty($master_soal['image'])){
                    ?>
                 <img class="example-image-soal" src="<?=base_url().$master_soal['image']?>" style="width: 200px;height: 200px" alt="">
                    <?php
                  }
                  else{
                  ?>
                 <img class="example-image-soal" src="<?=base_url()?>assets/images/no-image-available.png" style="width: 200px;height: 200px" alt="">
                 <?php
               }
                 ?> 
                </div>
                <div class="form-group">
                      <label for="form-image">Gambar</label>
                      <input type="file" name="" class="form-control change-image-soal" id="form-image" placeholder="Masukan Image" name="dokumen_image">
                      <input type="hidden" value="<?=@$master_soal['image']?>" class="image-soal" name="dt[image]">
                      <div class="alert-upload">
                      </div>
                      <?php
                      $status_file = 0;
                        if(!empty($master_soal['image'])){
                              $cekFile = $this->mymodel->selectDataone('master_soal',array('image'=>$master_soal['image'],'id!='=>$master_soal['id']));
                              if(!empty($cekFile)){
                                  $status_file = 1;
                              }
                        }
                      ?>
                      <input type="hidden" class="status-file" value="<?=$status_file?>">
                  </div>
                    <div class="form-group example-voice-soal" >
                       <?php
                  if(!empty($master_soal['voice'])){
                    ?>
                 <audio controls><source src="<?=base_url().$master_soal['voice']?>" type="audio/ogg"></audio>
                    <?php
                  }
                  else{
                  ?>
                 <img class="example-image-soal" src="<?=base_url()?>assets/images/no-voice-available.png" style="width: 200px;height: 200px" alt="">
                 <?php
               }
                 ?> 
                </div>
                  <div class="form-group">
                      <label for="form-image">Suara</label>
                      <input type="file" accept="audio/*" name="" class="form-control change-voice-soal" id="form-image" placeholder="Masukan Image">
                      <input type="hidden" class="voice-soal" name="dt[voice]">
                      <div class="alert-upload">
                      </div>
                      <?php
                      $status_file = 0;
                        if(!empty($master_soal['voice'])){
                              $cekFile = $this->mymodel->selectDataone('master_soal',array('voice'=>$master_soal['voice'],'id!='=>$master_soal['id']));
                              if(!empty($cekFile)){
                                  $status_file = 1;
                              }
                        }
                      ?>
                      <input type="hidden" class="status-file" value="<?=$status_file?>">
                  </div>
                  <script>  
var element_image='';
                    $(document).on('change','.change-voice-soal',function(e){
                      // alert('asdas');
                      // readURL(this);
                      element_image = $(this);
                      // var number = $('#'+this.id).attr('data-number');
                      // var idfield = this.id;
                      // var fileold = './'+$("#text_"+number).val();
                        if($(this).val()){
                        $(this).siblings('.alert-upload').html('<i class="fa fa-spin fa-spinner"></i> Loading');
                      e.preventDefault();
                      var link="<?= base_url('mmi/admin/master_soal/uploadImage/') ?>"+$(this).siblings('.status-file').val();
                      var form_data = new FormData();  
                      form_data.append("file", $(this).prop("files")[0]);  
                      form_data.append("image_old", $('.image-soal').val());  
                      // form_data.append("fileold", fileold);  
                      $.ajax({
                        url: link,
                        type: 'POST',
                        processData: false, // important
                        contentType: false, // important
                        // dataType : 'script',
                        data: form_data,
                        success: function(response){
                        // alert('berhasil');
                        var json_res = JSON.parse(response);
                        $('.example-voice-soal').html('<audio controls><source src="<?=base_url()?>'+json_res.filename+'" type="audio/ogg"></audio>');
                        element_image.siblings('.alert-upload').html('<label class="label label-success"><i class="fa fa-check"></i> Berhasil Upload</label>');
                        element_image.siblings('.voice-soal').val(json_res.filename);
                        element_image.siblings('.status-file').val('0');
                          // element_image.val(response);
                        },
                        error: function(xhr, textStatus, errorThrown) {
                          element_image.siblings('.alert-upload').html('<label class="label label-danger"><i class="fa fa-remove"></i> Tidak Berhasil Upload</label>');
                        }
                      });
                    }
                    else{
                      if($(this).siblings('.status-file').val() == '0'){
                      var form_data = new FormData();  
                      form_data.append("image_old",$(this).siblings('.voice-soal').val()); 
                            $.ajax({
                              url: "<?=base_url()?>mmi/admin/master_soal/reset_image",
                              type : 'POST',
                              processData: false, // important
                              contentType: false, // important
                              // dataType : 'script',
                              data: form_data,
                              success : function(){
                            
                      $(this).siblings('.voice-soal').val('');
                      $('.example-voice-soal').html('<img src="<?=base_url()?>assets/images/no-voice-available.png" style="width: 200px;height: 200px" alt="">');
                        element_image.siblings('.alert-upload').html('');
                              },
                              error : function(){
                              }
                            });
                          }
                          else{
                            $(this).siblings('.voice-soal').val('');
                      $('.example-voice-soal').html('<img src="<?=base_url()?>assets/images/no-voice-available.png" style="width: 200px;height: 200px" alt="">');
                        element_image.siblings('.alert-upload').html('');
                        $(this).siblings('.status-file').val('0');
                          }
                    }
                    });
                  </script>
                  <div class="form-group">
                      <label for="form-deskripsi">Deskripsi</label>
                      <textarea name="dt[deskripsi]" class="form-control textarea-tiny"><?=@$master_soal['deskripsi']?></textarea>
                  </div><div class="form-group">
                      <label for="form-jenis_soal">Jenis Soal</label>
                      <select name="dt[jenis_soal]" onchange="setJawaban($(this))" class="form-control">
                        <option value="pg" <?=($master_soal['jenis_soal'] == 'pg')?"selected":""?>>Pilihan Ganda</option>
                        <option value="essay"  <?=($master_soal['jenis_soal'] == 'essay')?"selected":""?>>Essay</option>
                      </select>
                  </div>
                  <script>
                    var element_image='';
                     $(document).on('change','.change-image-soal',function(e){
                      // alert('asdas');
                      // readURL(this);
                      element_image = $(this);
                      // var number = $('#'+this.id).attr('data-number');
                      // var idfield = this.id;
                      // var fileold = './'+$("#text_"+number).val();
                        if($(this).val()){
                        $(this).siblings('.alert-upload').html('<i class="fa fa-spin fa-spinner"></i> Loading');
                      e.preventDefault();
                      var link="<?= base_url('mmi/admin/master_soal/uploadImage/') ?>"+$(this).siblings('.status-file').val();
                      var form_data = new FormData();  
                      form_data.append("file", $(this).prop("files")[0]);  
                      form_data.append("image_old", $('.image-soal').val());  
                      // form_data.append("fileold", fileold);  
                      $.ajax({
                        url: link,
                        type: 'POST',
                        processData: false, // important
                        contentType: false, // important
                        // dataType : 'script',
                        data: form_data,
                        success: function(response){
                        // alert('berhasil');
                        var json_res = JSON.parse(response);
                        $('.example-image-soal').attr('src','<?=base_url()?>'+json_res.filename);
                        element_image.siblings('.alert-upload').html('<label class="label label-success"><i class="fa fa-check"></i> Berhasil Upload</label>');
                        element_image.siblings('.image-soal').val(json_res.filename);
                        response element_image.siblings('.status-file').val('0');
                          // element_image.val(response);
                        },
                        error: function(xhr, textStatus, errorThrown) {
                          element_image.siblings('.alert-upload').html('<label class="label label-danger"><i class="fa fa-remove"></i> Tidak Berhasil Upload</label>');
                        }
                      });
                    }
                    else{
                      if($(this).siblings('.status-file').val() == '0'){
                      var form_data = new FormData();  
                      form_data.append("image_old",element_image.siblings('.image-soal').val()); 
                            $.ajax({
                              url: "<?=base_url()?>mmi/admin/master_soal/reset_image",
                              type : 'POST',
                              processData: false, // important
                              contentType: false, // important
                              // dataType : 'script',
                              data: form_data,
                              success : function(){
                        $('.example-image-soal').attr('src','<?=base_url()?>assets/images/no-image-available.png');
                        element_image.siblings('.image-soal').val('');
                        element_image.siblings('.alert-upload').html('');
                              },
                              error : function(){
                              }
                            });
                          }
                          else{
                            $('.example-image-soal').attr('src','<?=base_url()?>assets/images/no-image-available.png');
                        element_image.siblings('.image-soal').val('');
                        element_image.siblings('.alert-upload').html('');
                        $(this).siblings('.status-file').val('0');
                          }
                    }
                    });
                    function setJawaban(eleid){
                      if(eleid.val() == 'pg'){
                        $('#pilihan-ganda').slideDown();
                      }
                      else{
                        $('#pilihan-ganda').slideUp();
                      }
                    } 
                  </script>
                  <div id="pilihan-ganda" <?=($master_soal['jenis_soal'] == 'essay')?'style="display: none"':""?>>
                    <div class="row">
                      <div class="col-12 mb-2">
                        <button onclick="addSoal()" class="btn btn-primary btn-sm float-right" type="button"><i class="fa fa-plus"></i> Tambah Jawaban</button>
                        <?php

                            $huruf = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
                        ?>
                        <script>
                          var huruf = '<?=$huruf?>';
                          function addSoal(){
                            var htmls = '<tr>'+
                            '<input type="hidden"  name="jawaban[keyword][]" class="input-keyword-jawaban">'+
                                  '<td style="width: 100px"><input type="radio" class="input-keyword" name="jawaban[isi_jawaban]"></td>'+
                                  '<td style="width: 100px" class="keyword-jawaban"></td>'+
                                  '<td>'+
                                    '<select onchange="setFormatJawaban($(this))" name="jawaban[jenis_jawaban][]" class="form-control jenis-jawaban">'+
                                      '<option value="deskripsi">Deskripsi</option>'+  
                                      '<option value="gambar">Gambar</option> '+ 
                                    '</select>'+
                                 ' </td>'+
                                  '<td class="isi-jawaban">'+
                                  '<div class="jawaban-deskripsi">'+
                                    '<textarea class="form-control" name="jawaban[deskripsi][]"></textarea>'+
                                    '</div>'+
                                    '<div class="jawaban-image" style="display:none">'+
                                    '<img style="width:200px;height:200px" src="<?=base_url()?>assets/images/no-image-available.png" class="example-image-jawaban"><br><input type="file" class="change-image-jawaban"><br><div class="alert-upload"></div><input type="hidden" class="image-jawaban" name="jawaban[image][]"><input type="hidden" class="status-file" value="0">'+
                                    '</div>'+
                                  '</td>'+
                                  '<td class="kolom-aksi">'+
                                    '<button type="button" class="btn btn-danger btn-sm" onclick="removeJawaban($(this))"><i class="fa fa-times"></i></button>'+
                                  '</td>'+
                                '</tr>';
                            $('#list-jawaban-pg').find('tbody').append(htmls);
                            incrementKeyword();
                          }
                          var eleids = '';
                          function removeJawaban(eleid){
                            eleids = eleid;
                            // eleid.closest('tr').find('.kolom-aksi').html('<i class="fa fa-spin fa-spinner"></i> Loading..');
                            // console.log(eleid.closest('tr').find('.isi-jawaban').find('.image-jawaban').val());
                            var gambar = eleid.closest('tr').find('.isi-jawaban').find('.image-jawaban').val();
                            // alert(gambar);
                            if(eleid.closest('tr').find('.jenis-jawaban').val() == 'gambar' && (gambar)){
                      //         alert();
                            var form_data = new FormData();  
                      form_data.append("image_old", eleid.closest('tr').find('.isi-jawaban').find('.image-jawaban').val()); 
                            $.ajax({
                              url: "<?=base_url()?>mmi/admin/master_soal/reset_image",
                              type : 'POST',
                              processData: false, // important
                              contentType: false, // important
                              // dataType : 'script',
                              data: form_data,
                              success : function(){
                            eleids.closest('tr').remove();
                            incrementKeyword();
                              },
                              error : function(){
                                 eleids.closest('tr').find('.kolom-aksi').html('<button type="button" class="btn btn-danger btn-sm" onclick="removeJawaban($(this))"><i class="fa fa-times"></i></button>');
                              }
                            });
                          }
                          else{
                            // alert('bukan gambar');
                            eleids.closest('tr').remove();
                            incrementKeyword();
                          }
                          }
                          function incrementKeyword(){
                            var f = -1;
                            $('#list-jawaban-pg').find('tr').each(function(){
                              $(this).find('.input-keyword').val(huruf[f]);
                              $(this).find('.keyword-jawaban').html(huruf[f]);
                              $(this).find('.input-keyword-jawaban').val(huruf[f]);
                              f++;
                            });
                          }
                        </script>
                      </div>
                      <div class="col-12">
                        <table class="table table-bordered" id="list-jawaban-pg">
                          <thead class="bg-primary">
                            <tr>
                              <th>Jawaban</th>
                              <th>Keyword</th>
                              <th>Jenis Jawaban</th>
                              <th>Isi Jawaban</th>
                              <th>#</th>
                            </tr>
                          </thead>
                          <tbody>
                            <?php
                            $master_jawaban = $this->mymodel->selectWhere('master_jawaban_pg',array('id_soal'=>$master_soal['id'],'status'=>'ENABLE'));
                            if(empty($master_jawaban)){    
                              for($d = 0;$d<4;$d++){
                                ?>
                                <tr>
                                  <input type="hidden" name="jawaban[keyword][]" class="input-keyword-jawaban" value="<?=$huruf[$d]?>">
                                  <td style="width: 100px"><input class="input-keyword" type="radio" name="jawaban[isi_jawaban]" value="<?=$huruf[$d]?>"></td> 
                                  <td style="width: 100px" class="keyword-jawaban"><?=$huruf[$d]?></td>
                                  <td>
                                    <select onchange="setFormatJawaban($(this))" name="jawaban[jenis_jawaban][]" class="form-control jenis-jawaban">
                                      <option value="deskripsi">Deskripsi</option>  
                                      <option value="gambar">Gambar</option>  
                                    </select>
                                  </td>
                                  <td class="isi-jawaban">
                                    <div class="jawaban-deskripsi">
                                    <textarea class="form-control" name="jawaban[deskripsi][]"></textarea>
                                  </div>
                                  <div class="jawaban-image" style="display: none">
                                      <img style="width:200px;height:200px" src="<?=base_url()?>assets/images/no-image-available.png" class="example-image-jawaban"><br><input type="file" class="change-image-jawaban"><br><div class="alert-upload"></div><input type="hidden" class="image-jawaban" name="jawaban[image][]"><input type="hidden" class="status-file" value="0">
                                  </div>
                                  </td>
                                  <td class="kolom-aksi">
                                    <button type="button" class="btn btn-danger btn-sm" onclick="removeJawaban($(this))"><i class="fa fa-times"></i></button>
                                  </td>
                                </tr>
                                <?php
                              }
                            }
                            else{
                              foreach($master_jawaban as $mj){
                                ?>
                                <tr>
                                  <input type="hidden" name="jawaban[keyword][]" class="input-keyword-jawaban" value="<?=$mj['keyword']?>">
                                  <td style="width: 100px"><input class="input-keyword" type="radio" name="jawaban[isi_jawaban]" value="<?=$mj['keyword']?>" <?=($master_soal['id_jawaban'] == $mj['id'])?"checked":""?>></td> 
                                  <td style="width: 100px" class="keyword-jawaban"><?=$mj['keyword']?></td>
                                  <td>
                                    <select onchange="setFormatJawaban($(this))" name="jawaban[jenis_jawaban][]" class="form-control jenis-jawaban">
                                      <option value="deskripsi" <?=($mj['jenis_jawaban'] == 'deskripsi')?"selected":""?>>Deskripsi</option>  
                                      <option value="gambar" <?=($mj['jenis_jawaban'] == 'gambar')?"selected":""?>>Gambar</option>  
                                    </select>
                                  </td>
                                  <td class="isi-jawaban">
                                    <div class="jawaban-deskripsi" <?=($mj['jenis_jawaban'] != 'deskripsi')?"style='display:none'":""?>>
                                    <textarea class="form-control" name="jawaban[deskripsi][]"><?=$mj['deskripsi']?></textarea>
                                  </div>
                                  <div class="jawaban-image"  <?=($mj['jenis_jawaban'] != 'gambar')?"style='display:none'":""?>>
                                      <img style="width:200px;height:200px"src="<?=base_url().((!empty($mj['image']))?$mj['image']:'assets/images/no-image-available.png')?>" class="example-image-jawaban"><br><input type="file" class="change-image-jawaban"><br><div class="alert-upload"></div><input type="hidden" class="image-jawaban" name="jawaban[image][]" value="<?=$mj['image']?>">
                      <?php
                      $status_file = 0;
                        if(!empty($mj['image'])){
                              $cekFile = $this->mymodel->selectDataone('master_jawaban_pg',array('image'=>$mj['image'],'id!='=>$mj['id']));
                              if(!empty($cekFile)){
                                  $status_file = 1;
                              }
                        }
                      ?>
                      <input type="hidden" class="status-file" value="<?=$status_file?>">
                                  </div>
                                  </td>
                                  <td class="kolom-aksi">
                                    <button type="button" class="btn btn-danger btn-sm" onclick="removeJawaban($(this))"><i class="fa fa-times"></i></button>
                                  </td>
                                </tr>
                                <?php
                              }
                            }
                            ?>
                          </tbody>
                        </table>
                        <script>
                          function setFormatJawaban(eleid){
                            if(eleid.val()  == 'deskripsi'){
                              eleid.closest('tr').find('.jawaban-deskripsi').fadeIn();
                              eleid.closest('tr').find('.jawaban-image').fadeOut();
                              eleid.closest('tr').find('.jawaban-image').find('img').attr('src','<?=base_url()?>assets/images/no-image-available.png');
                              var form_data = new FormData();  
                              form_data.append("image_old", eleid.closest('tr').find('.isi-jawaban').find('.image-jawaban').val()); 
                            $.ajax({
                              url: "<?=base_url()?>mmi/admin/master_soal/reset_image",
                              type : 'POST',
                              processData: false, // important
                              contentType: false, // important
                              // dataType : 'script',
                              data: form_data,
                              success : function(){

                            eleid.closest('tr').find('.isi-jawaban').find('.image-jawaban').val('');
                            eleid.closest('tr').find('.isi-jawaban').find('.change-image-jawaban').val('');
                            eleid.closest('tr').find('.isi-jawaban').find('.alert-upload').html('');
                              },
                              error : function(){
                              }
                            });

                            }
                            else{
                              eleid.closest('tr').find('.jawaban-deskripsi').fadeOut();
                              eleid.closest('tr').find('.jawaban-image').fadeIn();
                            }
                          }
                           var element_image='';
                    $(document).on('change','.change-image-jawaban',function(e){
                      // alert('asdas');
                      // readURL(this);
                      element_image = $(this);
                      // var number = $('#'+this.id).attr('data-number');
                      // var idfield = this.id;
                      // var fileold = './'+$("#text_"+number).val();
                      if($(this).val()){
                        $(this).siblings('.alert-upload').html('<i class="fa fa-spin fa-spinner"></i> Loading');
                      e.preventDefault();
                      var link="<?= base_url('mmi/admin/master_soal/uploadImage/') ?>"+element_image.siblings('.status-file').val('0');;
                      var form_data = new FormData();  
                      form_data.append("file", $(this).prop("files")[0]);  
                      form_data.append("image_old", $(this).siblings('.image-jawaban').val());  
                      // form_data.append("fileold", fileold);  
                      $.ajax({
                        url: link,
                        type: 'POST',
                        processData: false, // important
                        contentType: false, // important
                        // dataType : 'script',
                        data: form_data,
                        success: function(response){
                          var json_res = JSON.parse(response);
                        // alert('berhasil');
                        element_image.siblings('.example-image-jawaban').attr('src','<?=base_url()?>'+json_res.filename);
                        element_image.siblings('.alert-upload').html('<label class="label label-success"><i class="fa fa-check"></i> Berhasil Upload</label>');
                        element_image.siblings('.image-jawaban').val(json_res.filename);
                        element_image.siblings('.status-file').val('0');
                          // element_image.val(response);
                        },
                        error: function(xhr, textStatus, errorThrown) {
                          element_image.siblings('.alert-upload').html('<label class="label label-danger"><i class="fa fa-remove"></i> Tidak Berhasil Upload</label>');
                        }
                      });
                    }
                    else{
                      if($(this).siblings('.status-file').val() == '0'){
                      var form_data = new FormData();  
                      form_data.append("image_old",element_image.siblings('.image-jawaban').val()); 
                            $.ajax({
                              url: "<?=base_url()?>mmi/admin/master_soal/reset_image",
                              type : 'POST',
                              processData: false, // important
                              contentType: false, // important
                              // dataType : 'script',
                              data: form_data,
                              success : function(){
                        element_image.siblings('.example-image-jawaban').attr('src','<?=base_url()?>assets/images/no-image-available.png');
                        element_image.siblings('.image-jawaban').val('');
                        element_image.siblings('.alert-upload').html('');
                              },
                              error : function(){
                              }
                            });
                          }
                          else{
                            element_image.siblings('.example-image-jawaban').attr('src','<?=base_url()?>assets/images/no-image-available.png');
                        element_image.siblings('.image-jawaban').val('');
                        element_image.siblings('.alert-upload').html('');
                        $(this).siblings('.status-file').val('0');
                          }
                    }
                    });
                        </script>
                      </div>
                    </div>    
                  </div>
                  <div id="essay" style="display: none">
                    
                  </div>
                  <!-- <div class="form-group">
                      <label for="form-id_jawaban">Id Jawaban</label>
                      <input type="text" class="form-control" id="form-id_jawaban" placeholder="Masukan Id Jawaban" name="dt[id_jawaban]">
                  </div><div class="form-group">
                      <label for="form-id_periode">Id Periode</label>
                      <input type="text" class="form-control" id="form-id_periode" placeholder="Masukan Id Periode" name="dt[id_periode]">
                  </div><div class="form-group">
                      <label for="form-urutan_soal">Urutan Soal</label>
                      <input type="text" class="form-control" id="form-urutan_soal" placeholder="Masukan Urutan Soal" name="dt[urutan_soal]">
                  </div> -->
                </div>
            <div class="card-footer">
                <button type="submit" onclick="tinyMCE.triggerSave(true,true);" class="btn btn-primary btn-send float-right ml-2" ><i class="fa fa-save"></i> Save</button>
                <button type="reset" class="btn btn-danger float-right"><i class="fa fa-refresh"></i> Reset</button>
             
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
      </form>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <script type="text/javascript">
      $("#upload-create").submit(function(){
            var form = $(this);
            var mydata = new FormData(this);
            $.ajax({
                type: "POST",
                url: form.attr("action"),
                data: mydata,
                cache: false,
                contentType: false,
                processData: false,
                beforeSend : function(){
                    $(".btn-send").addClass("disabled").html("<i class='la la-spinner la-spin'></i>  Processing...").attr('disabled',true);
                    form.find(".show_error").slideUp().html("");
                },
                success: function(response, textStatus, xhr) {
                    // alert(mydata);
                   var str = response;
                    if (str.indexOf("success") != -1){
                        form.find(".show_error").hide().html(response).slideDown("fast");
                        setTimeout(function(){ 
                           window.location.href = "<?= base_url('mmi/admin/Master_soal?id_periode='.$_GET['id_periode']) ?>";
                        }, 1000);
                        $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);


                    }else{
                        form.find(".show_error").hide().html(response).slideDown("fast");
                        $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);
                        
                    }
                },
                error: function(xhr, textStatus, errorThrown) {
                  console.log(xhr);
                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);
                    form.find(".show_error").hide().html(xhr).slideDown("fast");

                }
            });
            return false;
    
        });
      tinymce.init({
  selector: '.textarea-tiny',
  plugins: 'print preview paste importcss searchreplace autolink autosave save directionality code visualblocks visualchars fullscreen image link media template codesample table charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists wordcount imagetools textpattern noneditable help charmap quickbars emoticons',
  imagetools_cors_hosts: ['picsum.photos'],
  menubar: 'file edit view insert format tools table help',
  toolbar: 'undo redo | bold italic underline strikethrough | fontselect fontsizeselect formatselect | alignleft aligncenter alignright alignjustify | outdent indent |  numlist bullist | forecolor backcolor removeformat | pagebreak | charmap emoticons | fullscreen  preview save print | insertfile image media template link anchor codesample | ltr rtl',
  toolbar_sticky: true,
  autosave_ask_before_unload: true,
  autosave_interval: "30s",
  autosave_prefix: "{path}{query}-{id}-",
  autosave_restore_when_empty: false,
  autosave_retention: "2m",
  image_advtab: true,
  content_css: [
    '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
    '//www.tiny.cloud/css/codepen.min.css'
  ],
  link_list: [
    { title: 'My page 1', value: 'http://www.tinymce.com' },
    { title: 'My page 2', value: 'http://www.moxiecode.com' }
  ],
  image_list: [
    { title: 'My page 1', value: 'http://www.tinymce.com' },
    { title: 'My page 2', value: 'http://www.moxiecode.com' }
  ],
  image_class_list: [
    { title: 'None', value: '' },
    { title: 'Some class', value: 'class-name' }
  ],
  importcss_append: true,
  height: 400,
  file_picker_callback: function (callback, value, meta) {
    /* Provide file and text for the link dialog */
    if (meta.filetype === 'file') {
      callback('https://www.google.com/logos/google.jpg', { text: 'My text' });
    }

    /* Provide image and alt text for the image dialog */
    if (meta.filetype === 'image') {
      callback('https://www.google.com/logos/google.jpg', { alt: 'My alt text' });
    }

    /* Provide alternative source and posted for the media dialog */
    if (meta.filetype === 'media') {
      callback('movie.mp4', { source2: 'alt.ogg', poster: 'https://www.google.com/logos/google.jpg' });
    }
  },
  templates: [
        { title: 'New Table', description: 'creates a new table', content: '<div class="mceTmpl"><table width="98%%"  border="0" cellspacing="0" cellpadding="0"><tr><th scope="col"> </th><th scope="col"> </th></tr><tr><td> </td><td> </td></tr></table></div>' },
    { title: 'Starting my story', description: 'A cure for writers block', content: 'Once upon a time...' },
    { title: 'New list with dates', description: 'New List with dates', content: '<div class="mceTmpl"><span class="cdate">cdate</span><br /><span class="mdate">mdate</span><h2>My List</h2><ul><li></li><li></li></ul></div>' }
  ],
  template_cdate_format: '[Date Created (CDATE): %m/%d/%Y : %H:%M:%S]',
  template_mdate_format: '[Date Modified (MDATE): %m/%d/%Y : %H:%M:%S]',
  height: 600,
  image_caption: true,
  quickbars_selection_toolbar: 'bold italic | quicklink h2 h3 blockquote quickimage quicktable',
  noneditable_noneditable_class: "mceNonEditable",
  toolbar_drawer: 'sliding',
  contextmenu: "link image imagetools table",
 });
  </script>