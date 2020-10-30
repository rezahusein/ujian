
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	class Master_periode extends MY_Controller {

		public function __construct()
		{
			parent::__construct();
		}

		public function index()
		{
			$data['page_name'] = "master_periode";
			$this->template->load('MMI/layouts/app','MMI/admin/master_periode/all-master_periode',$data);
		}

		public function create()
		{
			$data['page_name'] = "master_periode";
			$this->template->load('MMI/layouts/app','MMI/admin/master_periode/add-master_periode',$data);
		}


		public function validate()
		{
			$this->form_validation->set_error_delimiters('<li>', '</li>');
	$this->form_validation->set_rules('dt[periode_dari]', '<strong>Periode Dari</strong>', 'required');
$this->form_validation->set_rules('dt[periode_sampai]', '<strong>Periode Sampai</strong>', 'required');
$this->form_validation->set_rules('dt[lama_waktu_ujian]', '<strong>Lama Waktu Ujian</strong>', 'required');
$this->form_validation->set_rules('dt[persentase_pg]', '<strong>Persentase Pg</strong>', 'required');
$this->form_validation->set_rules('dt[persentase_essay]', '<strong>Persentase Essay</strong>', 'required');
// $this->form_validation->set_rules('dt[created_by]', '<strong>Created By</strong>', 'required');
	}

		public function store()
		{
			$this->validate();
	    	if ($this->form_validation->run() == FALSE){
				$this->alert->alertdanger(validation_errors());     
	        }else{
	        	$dt = $_POST['dt'];
				$dt['created_at'] = date('Y-m-d H:i:s');
				$dt['created_by'] = $this->session->userdata('id');
				$dt['status'] = "ENABLE";
				$str = $this->db->insert('master_periode', $dt);
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
	        $this->datatables->select('master_periode.standar_nilai,master_periode.id,CONCAT(DATE_FORMAT(periode_dari, "%d %M %Y")," - ",DATE_FORMAT(periode_sampai, "%d %M %Y")) AS periode,master_periode.periode_dari,master_periode.periode_sampai,master_periode.lama_waktu_ujian,persentase_pg,master_periode.persentase_essay,master_periode.status,user.name as created_by,(SELECT COUNT(*) FROM master_soal WHERE master_soal.id_periode=master_periode.id) AS jumlah_soal,(SELECT COUNT(*) FROM master_soal WHERE master_soal.id_periode=master_periode.id AND master_soal.jenis_soal="pg") AS jumlah_soal_pg,(SELECT COUNT(*) FROM master_soal WHERE master_soal.id_periode=master_periode.id AND master_soal.jenis_soal="essay") AS jumlah_soal_essay,(SELECT COUNT(*) FROM peserta_periode WHERE peserta_periode.id_periode=master_periode.id) AS jumlah_peserta,(SELECT COUNT(*) FROM peserta_periode WHERE peserta_periode.id_periode=master_periode.id AND peserta_periode.status_ujian = "belum ujian") AS peserta_belum_ujian,(SELECT COUNT(*) FROM peserta_periode WHERE peserta_periode.id_periode=master_periode.id AND peserta_periode.status_ujian = "sedang ujian") AS peserta_sedang_ujian,(SELECT COUNT(*) FROM peserta_periode WHERE peserta_periode.id_periode=master_periode.id AND peserta_periode.status_ujian = "menunggu hasil") AS peserta_menunggu_hasil,(SELECT COUNT(*) FROM peserta_periode WHERE peserta_periode.id_periode=master_periode.id AND peserta_periode.status_ujian = "selesai ujian") AS peserta_selesai_ujian');
	        $this->datatables->join('user','user.id=master_periode.created_by','left');
	        $this->datatables->where('master_periode.status',$status);
	        $this->datatables->from('master_periode');
	        if($status=="ENABLE"){
					$this->datatables->add_column('view', 
					'<div class="">
					<a class="btn btn-sm btn-warning mb-1" onclick="edit($1)">
						<i class="fas fa-edit"></i> Edit 
					</a> 
					<a class="text-white btn btn-sm btn-success mb-1" onclick="" data-toggle="tooltip" data-placement="top" title="Preview Soal Ujian">
						<i class="fas fa-eye"></i> Preview 
					</a> 
					<a class="text-white btn btn-sm btn-danger mb-1" href="'.base_url('MMI/admin/master_periode/status/').'$1/DISABLE">
					<i class="fas fa-ban"></i> Disable
					</a> 

					<a class="text-white btn btn-sm btn-info mb-1" onclick="soal($1)">
					<i class="fas fa-clipboard-list"></i> Soal
					</a> 
						
					</div>', 'id');
					

	    	}else{
	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><a class="text-white btn btn-sm btn-success" href="'.base_url('MMI/admin/master_periode/status/').'$1/ENABLE">
					<i class="fas fa-check"></i> Enable
					</a> <button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');

	    	}
	        echo $this->datatables->generate();
		}

		public function json_peserta()
		{
			$status = $_GET['status'];
			if($status==''){
				$status = 'ENABLE';
			}
			header('Content-Type: application/json');
	        $this->datatables->select('master_periode.standar_nilai,master_periode.id,CONCAT(DATE_FORMAT(periode_dari, "%d %M %Y")," - ",DATE_FORMAT(periode_sampai, "%d %M %Y")) AS periode,master_periode.periode_dari,master_periode.periode_sampai,master_periode.lama_waktu_ujian,persentase_pg,master_periode.persentase_essay,master_periode.status,user.name as created_by,(SELECT COUNT(*) FROM master_soal WHERE master_soal.id_periode=master_periode.id) AS jumlah_soal,(SELECT COUNT(*) FROM master_soal WHERE master_soal.id_periode=master_periode.id AND master_soal.jenis_soal="pg") AS jumlah_soal_pg,(SELECT COUNT(*) FROM master_soal WHERE master_soal.id_periode=master_periode.id AND master_soal.jenis_soal="essay") AS jumlah_soal_essay,(SELECT COUNT(*) FROM peserta_periode WHERE peserta_periode.id_periode=master_periode.id) AS jumlah_peserta,(SELECT COUNT(*) FROM peserta_periode WHERE peserta_periode.id_periode=master_periode.id AND peserta_periode.status_ujian = "belum ujian") AS peserta_belum_ujian,(SELECT COUNT(*) FROM peserta_periode WHERE peserta_periode.id_periode=master_periode.id AND peserta_periode.status_ujian = "sedang ujian") AS peserta_sedang_ujian,(SELECT COUNT(*) FROM peserta_periode WHERE peserta_periode.id_periode=master_periode.id AND peserta_periode.status_ujian = "menunggu hasil") AS peserta_menunggu_hasil,(SELECT COUNT(*) FROM peserta_periode WHERE peserta_periode.id_periode=master_periode.id AND peserta_periode.status_ujian = "selesai ujian") AS peserta_selesai_ujian');
	        $this->datatables->join('user','user.id=master_periode.created_by','left');
	        $this->datatables->where('master_periode.status',$status);
	        $this->datatables->from('master_periode');
	        if($status=="ENABLE"){
					$this->datatables->add_column('view', 
					'
					<a class="text-white btn btn-sm btn-info mb-1" onclick="soal($1)">
					<i class="fas fa-users"></i> Peserta
					</a> 
						
					</div>', 'id');
					

	    	}else{
	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><a class="text-white btn btn-sm btn-success" href="'.base_url('MMI/admin/master_periode/status/').'$1/ENABLE">
					<i class="fas fa-check"></i> Enable
					</a> <button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');

	    	}
	        echo $this->datatables->generate();
		}

		public function edit($id)
		{
			$data['master_periode'] = $this->mymodel->selectDataone('master_periode',array('id'=>$id));
			$data['page_name'] = "master_periode";
			$this->template->load('MMI/layouts/app','MMI/admin/master_periode/edit-master_periode',$data);
		}
		
		public function soal()
		{
			// $data['master_soal'] = $this->mymodel->selectDataone('master_periode',array('id'=>$id));
			$data['page_name'] = "master_soal";
			$this->template->load('MMI/layouts/app','MMI/admin/master_soal/all-master_soal',$data);
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
				$dt['created_by'] = $this->session->userdata('id');
					$this->mymodel->updateData('master_periode', $dt , array('id'=>$id));
					$this->alert->alertsuccess('Success Update Data');  }
		}

		public function delete()
		{
				$id = $this->input->post('id', TRUE);$this->alert->alertdanger('Success Delete Data');     
		}

		public function status($id,$status)
		{
			$this->mymodel->updateData('master_periode',array('status'=>$status),array('id'=>$id));
			redirect('mmi/admin/Master_periode');
		}


	}
?>