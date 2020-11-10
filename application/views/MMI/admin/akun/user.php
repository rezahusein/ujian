
<link rel="stylesheet" href="<?= base_url('MMI-assets/')?>plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="<?= base_url('MMI-assets/')?>plugins/datatables-responsive/css/responsive.bootstrap4.min.css">  <!-- Content Wrapper. Contains page content -->

  <div class="content-wrapper">

    <!-- Content Header (Page header) -->

    <section class="content-header">
        <div class="row mb-2"> 
          <div class="col-sm-6">
            <h1>

              Akun <?=(!empty($_GET['role']))?"Peserta":"Pengelola"?>

            </h1> 
          </div>
          <div class="col-sm-6"> 
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Akun</a></li>
                <li class="breadcrumb-item active"><?=(!empty($_GET['role']))?"Peserta":"Pengelola"?></li>
              </ol>
          </div>
        </div>

    </section>



    <!-- Main content -->

    <section class="content">

      <div class="row">

        <div class="col-12">

          <div class="card">

            <div class="card-header">
                <div class="row">
                    <div class="col-12"> 
                        <button class="btn btn-primary btn-flat float-right" data-toggle="modal" data-target="#addsite" onclick="reseterror()"><i class="fa fa-plus"></i> Add Akun <?=(!empty($_GET['role']))?"Peserta":"Pengelola"?></button>
                    </div> 
                </div>

            </div>

            <!-- /.box-header -->

            <div class="card-body">

              <?php if($this->session->flashdata('message')!=""){ ?>

              <div class="alert alert-<?= @$this->session->flashdata('class') ?>">

                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>

                <?php echo $this->session->flashdata('message') ?>

              </div>

              <?php } ?>

              

              <div class="show_error"></div>

            	<div id="mydiv"></div>

            </div>

            <!-- /.box-body -->

          </div>    

          <!-- /.box -->



          <!-- /.box -->

        </div>

        <!-- /.col -->

      </div>

      <!-- /.row -->

    </section>

    <!-- /.content -->

  </div>

  <!-- /.content-wrapper -->



<!-- modal review -->

<div class="modal fade" id="addsite" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">

	<div class="modal-dialog" role="document" style="z-index: 9999">

	    <div class="modal-content">

	      <div class="modal-header">

	        <h4 class="modal-title" id="myModalLabel">Add New Akun <?=(!empty($_GET['role']))?"Peserta":"Pengelola"?> </h4>

          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

	      </div>

      	<form action="<?= base_url('mmi/admin/akun/store') ?>" id="upload" enctype="multipart/form-data">

	      <div class="modal-body">

	      	<div class="show_error"></div>

	        <small>Username</small>

	        <input name="dt[nip]" type="text" class="form-control" />

          <small>Email</small>

          <input name="dt[email]" type="email" class="form-control" />

	        <small>Password</small>

	        <input name="dt[password]" type="password" class="form-control" />

          <small>Confirm Password</small>

          <input name="password_confirmation_field" type="password" class="form-control" placeholder="" />



	        <small>Name</small>

	        <input name="dt[name]" type="text" class="form-control" />

          <?php
            if(empty($_GET['role'])){
          ?>
	        <small>Role</small>

	        <select class="form-control" name="dt[role_id]">

	        	<?php 

	        	$res =  $this->mymodel->selectData('role');

	        	foreach ($res as $role) {
                if($role['role'] != 'Peserta'){
	        	 ?>

	        	<option value="<?= $role['id'] ?>"><?= $role['role'] ?></option>

	        	<?php 
          } 
            }
          ?>

	        </select>	
          <?php
            }
          ?>


	        <small>Description</small>

	        <textarea class="form-control" name="dt[desc]"></textarea>

	      </div>

	      <div class="modal-footer">

	        <button type="submit" class="btn btn-primary" id="send-btn"><i class="fa fa-save"></i> Simpan</button>

	      </div>

	      </form>

	  </div>

	</div>

</div>





<div class="modal fade" id="editsite" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">

	<div class="modal-dialog" role="document" style="z-index: 9999">

	    <div class="modal-content">

	      <div class="modal-header">

	        <h4 class="modal-title" id="myModalLabel">Edit Akun <?=(!empty($_GET['role']))?"Peserta":"Pengelola"?> </h4>

          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

	      </div>

      	<form action="<?= base_url('mmi/admin/akun/update') ?>" id="uploads" enctype="multipart/form-data">

	      <div class="modal-body" id="data-update">

	      	

	      </div>

	      <div class="modal-footer">

	        <button type="submit" class="btn btn-primary" id="send-btns"><i class="fa fa-save"></i> Simpan</button>

	      </div>

	      </form>

	  </div>

	</div>

</div>



	<!-- end modal review -->



	<script type="text/javascript">



		function reseterror() {

			// body...

			$('.show_error').html("");

		}

  function loaddatas() {

        $("#mydiv").html("");



      var html = '<table class="table table-condensed table-hover table-bordered" id="mytable">'+

	             '<thead>'+

	             '  <tr>'+

	             '    <th style="width:40px;">No</th>'+

               '    <th>Username</th>'+

               '    <th>Name</th>'+

	             '    <th style="width:100px;">Role</th>'+

	             '    <th>Description</th>'+

	             '    <th style="width:150px;">Edit/Delete</th>'+

	             '  </tr>'+

	             '</thead>'+

	             '<tbody>'+

	             '  '+

	             '</tbody>'+

	            '</table>';

        $("#mydiv").html(html);



        loaddata();

  }





		function loaddata() {

		var t = $("#mytable").dataTable({

		  initComplete: function() {

		    var api = this.api();

		    $('#mytable_filter input')

		    .off('.DT')

		    .on('keyup.DT', function(e) {

		      if (e.keyCode == 13) {

		        api.search(this.value).draw();

		      }

		    });

		  },

		  oLanguage: {

		    sProcessing: "loading..."

		  },

		  processing: true,

		  serverSide: true,

		  ajax: {"url": "<?= base_url('mmi/admin/akun/json?role='.@$_GET['role']) ?>/", "type": "POST"},

		    columns: [

		      {"data": "id","orderable": false},

          {"data": "nip"},

          {"data": "name"},

		      {"data": "role"},

		      {"data": "desc"},

		      {   "data": "view",

		      "orderable": false

		      }

		    ],

		  order: [[0, 'asc']],

		  columnDefs : [

		  ],

		   rowCallback: function(row, data, iDisplayIndex) {

                    var info = this.fnPagingInfo();

                    var page = info.iPage;

                    var length = info.iLength;

                    var index = page * length + (iDisplayIndex + 1);

                    $('td:eq(0)', row).html(index);

                }

		});

		}



    loaddatas();

	

     $("#upload").submit(function(){

        var mydata = new FormData(this);

        var form = $(this);

        $.ajax({

            type: "POST",

            url: form.attr("action"),

            data: mydata,

            cache: false,

            contentType: false,

            processData: false,

            beforeSend : function(){

                $("#send-btn").addClass("disabled").html("<i class='fa fa-spinner fa-spin'></i>  Processing...").attr('disabled',true);

                form.find(".show_error").slideUp().html("");



            },

            success: function(response, textStatus, xhr) {

                // alert(mydata);

               var str = response;

                if (str.indexOf("Success Send Data") != -1){

                    form.find(".show_error").hide().html(response).slideDown("fast");

                    $("#send-btn").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled',false);

                    loaddatas();

                    // document.getElementById('upload').reset();

                     $('#upload')[0].reset();

                    $("#addsite").modal('hide');

            

                }else{

                    form.find(".show_error").hide().html(response).slideDown("fast");

                    $("#send-btn").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled',false);

                }

            },

            error: function(xhr, textStatus, errorThrown) {

            console.log(xhr);

            }

        });

        return false;

        });





            // body...

        $('#loadingDiv2').hide().ajaxStart( function() {

        $(this).show();  // show Loading Div

        } ).ajaxStop ( function(){

          $(this).hide(); // hide loading div

        });



     function edit(id) {

     	$("#editsite").modal('show');

     	$("#data-update").load('<?= base_url('mmi/admin/akun/edit') ?>/'+id);

     }





     $("#uploads").submit(function(){

        var mydata = new FormData(this);

        var form = $(this);

        $.ajax({

            type: "POST",

            url: form.attr("action"),

            data: mydata,

            cache: false,

            contentType: false,

            processData: false,

            beforeSend : function(){

                $("#send-btns").addClass("disabled").html("<i class='fa fa-spinner fa-spin'></i>  Processing...").attr('disabled',true);

                form.find(".show_error").slideUp().html("");



            },

            success: function(response, textStatus, xhr) {

                // alert(mydata);

               var str = response;

                if (str.indexOf("Success") != -1){

                    form.find(".show_error").hide().html(response).slideDown("fast");

                    $("#send-btns").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled',false);

                    loaddatas();

                    // document.getElementById('upload').reset();

                     $('#uploads')[0].reset();

                    $("#editsite").modal('hide');

            

                }else{

                    form.find(".show_error").hide().html(response).slideDown("fast");

                    $("#send-btns").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled',false);

                }

            },

            error: function(xhr, textStatus, errorThrown) {

            console.log(xhr);

            }

        });

        return false;

        });



     function hapus(id) {



     	var url = "<?= base_url('mmi/admin/akun/delete') ?>/"+id;

     	if (confirm('Are you sure delete this data ?')) {

			window.location.href = url;

		} else {

		    return false

		}

     }

	</script>