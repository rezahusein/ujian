
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	class Peserta_periode extends MY_Controller {

		public function __construct()
		{
			parent::__construct();
		}

		public function index()
		{
			$data['page_name'] = "peserta_periode";
			$this->template->load('template/template','master/peserta_periode/all-peserta_periode',$data);
		}

		public function create()
		{
			$data['page_name'] = "peserta_periode";
			$this->template->load('template/template','master/peserta_periode/add-peserta_periode',$data);
		}


		public function validate()
		{
			$this->form_validation->set_error_delimiters('<li>', '</li>');
	$this->form_validation->set_rules('dt[nama_peserta]', '<strong>Nama Peserta</strong>', 'required');
$this->form_validation->set_rules('dt[email_peserta]', '<strong>Email Peserta</strong>', 'required');
$this->form_validation->set_rules('dt[no_telp_peserta]', '<strong>No Telp Peserta</strong>', 'required');
$this->form_validation->set_rules('dt[alamat_peserta]', '<strong>Alamat Peserta</strong>', 'required');
	}

		public function store()
		{
			$this->validate();
	    	if ($this->form_validation->run() == FALSE){
				$this->alert->alertdanger(validation_errors());     
	        }else{
	        	$dt = $_POST['dt'];
	        	$dt['kode'] = $this->template->generateToken();
	        	$subject = 'Pemberian Kode Token Ujian';
	        	$isi = 'Kode Token Anda : '.$dt['kode'];
	        	$email = $dt['email_peserta'];
	        	$this->sendEmail($isi,$subject,$email);
	        	$dt['id_periode'] = $_GET['id_periode'];
				$dt['created_at'] = date('Y-m-d H:i:s');
				$dt['status'] = "ENABLE";
				$str = $this->db->insert('peserta_periode', $dt);
				$last_id = $this->db->insert_id();
				$this->alert->alertsuccess('Success Send Data');   
			}
		}

		public function json()
		{
			$status = $_GET['status'];
			if($status==''){
				$status = 'ENABLE';
			}
			header('Content-Type: application/json');
	        $this->datatables->select('id,nama_peserta,email_peserta,no_telp_peserta,alamat_peserta,kode_peserta,id_periode,status_ujian,waktu_mulai_ujian,total_nilai,nilai_pg,nilai_essay,status');
	        $this->datatables->where('status',$status);
	        $this->datatables->from('peserta_periode');
	        if($status=="ENABLE"){
	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'id');

	    	}else{
	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');

	    	}
	        echo $this->datatables->generate();
		}
		public function edit($id)
		{
			$data['peserta_periode'] = $this->mymodel->selectDataone('peserta_periode',array('id'=>$id));$data['page_name'] = "peserta_periode";
			$this->template->load('template/template','master/peserta_periode/edit-peserta_periode',$data);
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
					$this->mymodel->updateData('peserta_periode', $dt , array('id'=>$id));
					$this->alert->alertsuccess('Success Update Data');  }
		}

		public function delete()
		{
				$id = $this->input->post('id', TRUE);$this->alert->alertdanger('Success Delete Data');     
		}

		public function status($id,$status)
		{
			$this->mymodel->updateData('peserta_periode',array('status'=>$status),array('id'=>$id));
			redirect('master/Peserta_periode');
		}


	}
?>