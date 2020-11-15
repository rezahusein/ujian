<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Validasi {
	public function __construct()
    {
		$this->CI =& get_instance();
        //Do your magic here
    }
	public function validasiPortofolio(){
        if(empty($this->CI->session->userdata('session_portofolio'))){
            redirect('company-profile/login');
        }
	}
	public function validasiUjian(){
        if(empty($this->CI->session->userdata('session_mobile'))){
            redirect('mmi/login/login-test');
        }
	}
}