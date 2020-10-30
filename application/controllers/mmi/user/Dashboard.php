<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
	public function __construct() {
		parent::__construct();
		date_default_timezone_set("Asia/Jakarta");
	}
    public function index()
    {
        $data['title'] = 'Dashboard Peserta'; 
        $data['user'] = $this->mymodel->selectDataone('peserta_periode',array('email_peserta'=>$this->session->userdata('session_mobile')['email'],'kode_peserta'=>$this->session->userdata('session_mobile')['token']));
        $data['periode'] = $this->mymodel->selectDataone('master_periode',array('id'=>$data['user']['id_periode']));
        $this->template->load('MMI/layouts/app-user','MMI/peserta/home',$data);
    }
    public function checkInternet(){

    }

}

/* End of file Controllername.php */
