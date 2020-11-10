<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Soal extends CI_Controller {

	public function __construct() {
		parent::__construct();
		date_default_timezone_set("Asia/Jakarta");
	}
	public function selesaiTest($id_peserta){
		$data_status = array(
			'selesai_ujian'=>'1',
			'status_ujian'=>'menunggu hasil',
			'waktu_selesai_ujian'=>date('Y-m-d H:i:s')
		);
		$this->db->update('peserta_periode',$data_status,array('id'=>$id_peserta));
		redirect('mmi/user/dashboard');	
	}
    public function index()
    {
        $data['title'] = 'Soal Ujian'; 
        $data['user'] = $this->mymodel->selectDataone('peserta_periode',array('email_peserta'=>$this->session->userdata('session_mobile')['email'],'kode_peserta'=>$this->session->userdata('session_mobile')['token']));
        $data['periode'] = $this->mymodel->selectDataone('master_periode',array('id'=>$data['user']['id_periode']));
        $this->db->select('id');
        $this->db->order_by('urutan_soal','asc');
        $data['soal_essay'] = $this->mymodel->selectWhere('master_soal',array('jenis_soal'=>'essay','id_periode'=>$data['periode']['id']));
        $this->db->select('id'); 
        $this->db->order_by('urutan_soal','asc');
        $data['soal_pg'] = $this->mymodel->selectWhere('master_soal',array('jenis_soal'=>'pg','id_periode'=>$data['periode']['id']));
        $this->db->select('id_soal,jenis_soal,jawaban_essay'); 
        $jawaban = $this->mymodel->selectWhere('peserta_jawaban',array('id_peserta_periode'=>$data['user']['id']));
        $jawaban_array = array();
		
		foreach($jawaban as $jwb){
        	if($jwb['jenis_soal'] == 'essay'){
        		if(!empty($jwb['jawaban_essay'])){
        			$jawaban_array[] = $jwb['id_soal'];
        		}
        	}
        	else{
        		$jawaban_array[] = $jwb['id_soal'];
        	}
		}
		
		$data['jawaban'] = $jawaban_array; 
		$mulai_ujian = date('Y-m-d H:i:s');
		
        if(!empty($data['user']['waktu_mulai_ujian'])){
        	$mulai_ujian = $data['user']['waktu_mulai_ujian'];
        }
        else{
        	$this->db->update('peserta_periode',array('waktu_mulai_ujian'=>$mulai_ujian,'status_ujian'=>'sedang ujian'),array('id'=>$data['user']['id']));
		}
		
        $data['expired_date'] = date('M d, Y H:i:s',strtotime('+'.$data['periode']['lama_waktu_ujian'].' minutes',strtotime($mulai_ujian)));
        // echo $data['expired_date'];
		$this->template->load('MMI/layouts/app-user','MMI/peserta/soal-ujian',$data);
		
    }
    public function loadSoal($id_soal,$urutan){
    	$user = $this->mymodel->selectDataone('peserta_periode',array('email_peserta'=>$this->session->userdata('session_mobile')['email'],'kode_peserta'=>$this->session->userdata('session_mobile')['token']));
    	$data['soal'] = $this->mymodel->selectDataone('master_soal',array('id'=>$id_soal));
    	$data['jawaban'] = $this->mymodel->selectDataone('peserta_jawaban',array('id_soal'=>$id_soal,'id_peserta_periode'=>$user['id']));
    	$data['urutan'] = $urutan;
    	$this->db->order_by('urutan_soal','desc');
    	$data['last_pg'] = $this->mymodel->selectDataone('master_soal',array('id_periode'=>$user['id_periode'],'jenis_soal'=>'pg'));
    	$this->db->order_by('urutan_soal','asc');
    	$data['first_essay'] = $this->mymodel->selectDataone('master_soal',array('id_periode'=>$user['id_periode'],'jenis_soal'=>'essay'));
    	$this->db->order_by('urutan_soal','asc');
    	$data['after'] = $this->mymodel->selectDataone('master_soal',array('urutan_soal>'=>$data['soal']['urutan_soal'],'id_periode'=>$user['id_periode'],'jenis_soal'=>$data['soal']['jenis_soal'])); 
    	$this->db->order_by('urutan_soal','desc');
    	$data['before'] = $this->mymodel->selectDataone('master_soal',array('urutan_soal<'=>$data['soal']['urutan_soal'],'id_periode'=>$user['id_periode'],'jenis_soal'=>$data['soal']['jenis_soal'])); 
    	$data['jawaban_pg'] = $this->mymodel->selectWhere('master_jawaban_pg',array('id_soal'=>$id_soal));
    	$this->load->view('mmi/peserta/list-soal',$data);
	}
	
    public function replacePage($id_soal,$urutan){
    	$user = $this->mymodel->selectDataone('peserta_periode',array('email_peserta'=>$this->session->userdata('session_mobile')['email'],'kode_peserta'=>$this->session->userdata('session_mobile')['token']));
    	$this->db->update('peserta_periode',array('id_soal_terakhir'=>$id_soal),array('email_peserta'=>$this->session->userdata('session_mobile')['email'],'kode_peserta'=>$this->session->userdata('session_mobile')['token']));
		
		$this->loadSoal($id_soal,$urutan); 
    }
    public function answerePage($id_soal){
    	$post = $this->input->post();
    	$user = $this->mymodel->selectDataone('peserta_periode',array('email_peserta'=>$this->session->userdata('session_mobile')['email'],'kode_peserta'=>$this->session->userdata('session_mobile')['token']));
    	$soal = $this->mymodel->selectDataone('master_soal',array('id'=>$id_soal));
    	$periode = $this->mymodel->selectDataone('master_periode',array('id'=>$soal['id_periode']));
    	$cekJawaban = $this->mymodel->selectDataone('peserta_jawaban',array('id_soal'=>$id_soal,'id_peserta_periode'=>$user['id']));
    	$data_jawaban = array(
    		'id_soal'=>$id_soal,
    		'jenis_soal'=>$soal['jenis_soal'],
    		'id_peserta_periode'=>$user['id'],
    		'id_periode'=>$user['id_periode']
    	);
    	if($soal['jenis_soal'] == 'pg'){
    		$data_jawaban['id_jawaban_pg'] = $post['jawaban'];
    		if($soal['id_jawaban'] == $post['jawaban']){
    			$data_jawaban['is_true'] = '1';
    		}
    	}
    	else{
    		$data_jawaban['jawaban_essay'] = $post['jawaban'];
    	}
    	if(empty($cekJawaban)){
    		$this->mymodel->insertData('peserta_jawaban',$data_jawaban);
    	}
    	else{
    		$this->db->update('peserta_jawaban',$data_jawaban,array('id'=>$cekJawaban['id']));	
    	}
    	if($soal['jenis_soal'] == 'pg'){
	    	$this->db->select('COUNT(*) AS jumlah');
	    	$countJawaban = $this->mymodel->selectDataone('peserta_jawaban',array('id_peserta_periode'=>$user['id'],'jenis_soal'=>'pg','is_true'=>'1'))['jumlah'];
	    	$this->db->select('COUNT(*) AS jumlah');
	    	$countSoal = $this->mymodel->selectDataone('master_soal',array('id_periode'=>$periode['id'],'jenis_soal'=>'pg'))['jumlah'];
	    	$nilai_pg = $countJawaban / $countSoal * 100;
	    	$total_nilai = $nilai_pg * $periode['persentase_pg'] / 100; 
	    	$this->db->update('peserta_periode',array('nilai_pg'=>$nilai_pg,'total_nilai'=>$total_nilai),array('id'=>$user['id']));
    	}
    }


}

/* End of file Controllername.php */
