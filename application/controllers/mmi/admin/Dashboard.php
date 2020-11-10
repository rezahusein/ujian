<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

    public function index()
    {
        $data['title'] = 'Dashboard'; 
        $this->template->load('MMI/layouts/app','MMI/admin/index',$data);
    }
    public function getPerPeriode($offset){
    	$this->db->order_by('periode_sampai','desc');
    	$this->db->offset($offset);
    	$this->db->limit('1');
    	$periode = $this->mymodel->selectDataone('master_periode',null);
    	if(!empty($periode)){
	    	$this->db->join('master_periode','peserta_periode.id_periode=master_periode.id');
			$this->db->select('COUNT(*) AS jumlah_peserta,SUM(CASE WHEN peserta_periode.kelulusan="lulus" THEN 1 ELSE 0 END) AS peserta_lulus,SUM(CASE WHEN peserta_periode.kelulusan="tidak lulus" THEN 1 ELSE 0 END) AS peserta_tidak_lulus,SUM(CASE WHEN peserta_periode.status_ujian="belum ujian" AND master_periode.periode_sampai < "'.date('Y-m-d').'" THEN 1 ELSE 0 END) AS peserta_tidak_mengikuti_ujian');
	  		$peserta = $this->mymodel->selectDataone('peserta_periode',array('peserta_periode.id_periode'=>$periode['id']));
	  		$data = array(
	  			'category'=>date('d M',strtotime($periode['periode_dari'])).' - '.date('d M Y',strtotime($periode['periode_sampai'])),
	  			'jumlah_peserta'=>$peserta['jumlah_peserta'],
	  			'peserta_lulus'=>$peserta['peserta_lulus'],
	  			'peserta_tidak_lulus'=>$peserta['peserta_tidak_lulus'],
	  			'peserta_tidak_mengikuti_ujian'=>$peserta['peserta_tidak_mengikuti_ujian']
	  		);
  			echo json_encode($data);
  		}
  		else{
  			echo 'empty';
  		}
    }
    public function messageTransaction(){
        $data['title'] = 'Message'; 
        $this->template->load('MMI/layouts/app','MMI/admin/message-transaction',$data);
    }

}

/* End of file Controllername.php */
