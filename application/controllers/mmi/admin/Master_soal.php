
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	class Master_soal extends MY_Controller {

		public function __construct()
		{
			parent::__construct();
		}

		public function index()
		{
			$data['page_name'] = "master_soal";
			$this->template->load('MMI/layouts/app','MMI/admin/master_soal/all-master_soal',$data);
		}

		public function uploadImage(){
			if(!empty($_FILES['file']['name'])){
				if(!empty($this->input->post('file_old'))){
					unlink(FCPATH . $this->input->post('file_old'));
				}
				$data = array('filename'=>$this->upload_file('file')['message']['dir']);
				$data_temporary = array(
					'dokumen'=>$data['filename'],
					'created_at'=>date('Y-m-d H:i:s'),
					'created_by'=>$this->session->userdata('id'),
					'is_active'=>"0",
					'created_by_name'=>$this->session->userdata('name')
				);
				$this->mymodel->insertData('file_temporary',$data_temporary);
				echo json_encode($data);
			}
		}
		public function reset_image(){
			if(!empty($this->input->post('image_old'))){
				$this->mymodel->deleteData('file_temporary',array('dokumen'=>$this->input->post('image_old')));
				unlink(FCPATH . $this->input->post('image_old'));
			}
		}

		public function create()
		{
			$data['page_name'] = "master_soal";
			$this->template->load('MMI/layouts/app','MMI/admin/master_soal/add-master_soal',$data);
		}


		public function validate()
		{
			$this->form_validation->set_error_delimiters('<li>', '</li>');
	$this->form_validation->set_rules('dt[image]', '<strong>Image</strong>', 'required');
$this->form_validation->set_rules('dt[deskripsi]', '<strong>Deskripsi</strong>', 'required');
$this->form_validation->set_rules('dt[jenis_soal]', '<strong>Jenis Soal</strong>', 'required');
// $this->form_validation->set_rules('dt[id_jawaban]', '<strong>Id Jawaban</strong>', 'required');
// $this->form_validation->set_rules('dt[id_periode]', '<strong>Id Periode</strong>', 'required');
// $this->form_validation->set_rules('dt[urutan_soal]', '<strong>Urutan Soal</strong>', 'required');
	}

		public function store()
		{
			$this->validate();
	    	if ($this->form_validation->run() == FALSE){
				$this->alert->alertdanger(validation_errors());     
	        }else{
	        	$this->db->select('COUNT(*) AS jumlah');
	        	$master_soal = $this->mymodel->selectDataone('master_soal',array('id_periode'=>$_GET['id_periode']));
	        	$dt = $_POST['dt'];
	        	$jawaban = $_POST['jawaban'];
	        	// print_r($jawaban);
	        	$this->mymodel->updateData('file_temporary',array('is_active'=>'1'),array('dokumen'=>$dt['image']));
				$dt['created_at'] = date('Y-m-d H:i:s');
				$dt['status'] = "ENABLE";
				$dt['urutan_soal'] = $master_soal['jumlah']+1;
				$dt['id_periode'] = @$_GET['id_periode'];
				$str = $this->db->insert('master_soal', $dt);
				$id_soal = $this->db->insert_id();
				if($dt['jenis_soal'] == 'pg'){
					$id_isi_jawaban = 0;
					foreach($jawaban['keyword'] as $k => $key){
						$data_jawaban = array(
							'id_soal'=>$id_soal,
							'keyword'=>$key,
							'image'=>$jawaban['image'][$k],
							'deskripsi'=>$jawaban['deskripsi'][$k],
							'jenis_jawaban'=>$jawaban['jenis_jawaban'][$k],
							'status'=>'ENABLE',
							'created_at'=>date('Y-m-d H:i:s')
						);
						$this->mymodel->insertData('master_jawaban_pg',$data_jawaban);
						$id_jawaban = $this->db->insert_id();
						if($jawaban['jenis_jawaban'][$k] == 'gambar'){
							$this->mymodel->updateData('file_temporary',array('is_active'=>'1'),array('dokumen'=>$jawaban['image'][$k]));
						}
						if($jawaban['isi_jawaban'] == $key){
							$id_isi_jawaban = $id_jawaban;
						}
					}
					$this->mymodel->updateData('master_soal',array('id_jawaban'=>$id_isi_jawaban),array('id'=>$id_soal));
				}
				$this->alert->alertsuccess('Success Send Data');   
					
			}
		}

		public function update()
		{
			$this->form_validation->set_error_delimiters('<li>', '</li>');
			
			$this->validate();
			

	    	if ($this->form_validation->run() == FALSE){
				$this->alert->alertdanger(validation_errors());     
	        }else{
				$id = $this->input->post('id', TRUE);	
				$id_soal = $id;	
				$dt = $_POST['dt'];
				$jawaban = $_POST['jawaban'];
	        	// print_r($jawaban);
	        	$this->mymodel->updateData('file_temporary',array('is_active'=>'1'),array('dokumen'=>$dt['image']));
					$dt['updated_at'] = date("Y-m-d H:i:s");
					$this->mymodel->updateData('master_soal', $dt , array('id'=>$id));
					$this->mymodel->deleteData('master_jawaban_pg',array('id_soal'=>$id));
					if($dt['jenis_soal'] == 'pg'){
					$id_isi_jawaban = 0;
					foreach($jawaban['keyword'] as $k => $key){
						$data_jawaban = array(
							'id_soal'=>$id_soal,
							'keyword'=>$key,
							'image'=>$jawaban['image'][$k],
							'deskripsi'=>$jawaban['deskripsi'][$k],
							'jenis_jawaban'=>$jawaban['jenis_jawaban'][$k],
							'status'=>'ENABLE',
							'created_at'=>date('Y-m-d H:i:s')
						);
						$this->mymodel->insertData('master_jawaban_pg',$data_jawaban);
						$id_jawaban = $this->db->insert_id();
						if($jawaban['jenis_jawaban'][$k] == 'gambar'){
							$this->mymodel->updateData('file_temporary',array('is_active'=>'1'),array('dokumen'=>$jawaban['image'][$k]));
						}
						if($jawaban['isi_jawaban'] == $key){
							$id_isi_jawaban = $id_jawaban;
						}
					}
					$this->mymodel->updateData('master_soal',array('id_jawaban'=>$id_isi_jawaban),array('id'=>$id_soal));
				}
				else{
					foreach($jawaban['keyword'] as $k => $key){
						if(!empty($jawaban['image'][$k])){
							$this->mymodel->deleteData('file_temporary',array('dokumen'=>$jawaban['image'][$k]));
							unlink(FCPATH . $jawaban['image'][$k]);
						}
					}
				}
					$this->alert->alertsuccess('Success Update Data');  }
		}

		public function json()
		{
			$status = $_GET['status'];
			if($status==''){
				$status = 'ENABLE';
			}
			header('Content-Type: application/json');
			if(!empty($_GET['id_periode'])){
				$this->datatables->where('id_periode',$_GET['id_periode']);
			}
	        $this->datatables->select('id,image,deskripsi,jenis_soal,id_jawaban,id_periode,urutan_soal,status');
	        $this->datatables->where('status',$status);
	        $this->datatables->from('master_soal');
	        if($status=="ENABLE"){
				$this->datatables->add_column('view', '
				<div class="">
					<a class="btn btn-sm btn-warning" onclick="edit($1)">
						<i class="fas fa-edit"></i> Edit 
					</a>
				</div>', 'id');

	    	}else{
	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-warning" onclick="edit($1)"><i class="fas fa-edit"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Hapus</button></div>', 'id');

	    	}
	        echo $this->datatables->generate();
		}
		public function edit($id)
		{
			$data['master_soal'] = $this->mymodel->selectDataone('master_soal',array('id'=>$id));$data['page_name'] = "master_soal";
			$this->template->load('MMI/layouts/app','MMI/admin/master_soal/edit-master_soal',$data);
		}


		public function delete()
		{
				$id = $this->input->post('id', TRUE);$this->alert->alertdanger('Success Delete Data');     
		}

		public function status($id,$status)
		{
			$this->mymodel->updateData('master_soal',array('status'=>$status),array('id'=>$id));
			redirect('master/Master_soal');
		}


	}
?>