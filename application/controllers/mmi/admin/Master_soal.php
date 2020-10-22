
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
$this->form_validation->set_rules('dt[id_jawaban]', '<strong>Id Jawaban</strong>', 'required');
$this->form_validation->set_rules('dt[id_periode]', '<strong>Id Periode</strong>', 'required');
$this->form_validation->set_rules('dt[urutan_soal]', '<strong>Urutan Soal</strong>', 'required');
	}

		public function store()
		{
			$this->validate();
	    	if ($this->form_validation->run() == FALSE){
				$this->alert->alertdanger(validation_errors());     
	        }else{
	        	$dt = $_POST['dt'];
				$dt['created_at'] = date('Y-m-d H:i:s');
				$dt['status'] = "ENABLE";
				$str = $this->db->insert('master_soal', $dt);
				$last_id = $this->db->insert_id();$this->alert->alertsuccess('Success Send Data');   
					
			}
		}

		public function json()
		{
			$status = $_GET['status'];
			if($status==''){
				$status = 'ENABLE';
			}
			header('Content-Type: application/json');
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

		public function update()
		{
			$this->form_validation->set_error_delimiters('<li>', '</li>');
			
			$this->validate();
			

	    	if ($this->form_validation->run() == FALSE){
				$this->alert->alertdanger(validation_errors());     
	        }else{
				$id = $this->input->post('id', TRUE);		$dt = $_POST['dt'];
					$dt['updated_at'] = date("Y-m-d H:i:s");
					$this->mymodel->updateData('master_soal', $dt , array('id'=>$id));
					$this->alert->alertsuccess('Success Update Data');  }
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