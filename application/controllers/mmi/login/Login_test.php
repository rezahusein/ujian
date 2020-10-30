<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_test extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        //Do your magic here
    }
    public function index()
    {
        $data['title'] = 'Login MMI Test'; 
        $this->template->load('MMI/layouts/login-layouts','MMI/login/login',$data);
    }
    public function act_login()
    {
            $username = $this->input->post('email');
            $password = $this->input->post('token');
            $pass = $password;
            $session     = $this->mymodel->selectDataone('peserta_periode',array('email_peserta'=>$username,'kode_peserta'=>$password,'status'=>'ENABLE'));
            if (!empty($session)) {
                $data_session = array(
                    'id'=>$session['id'],
                    'email'=>$session['email_peserta'],
                    'token'=>$session['kode_peserta'],
                    'name'=>$session['nama_peserta']
                );
                $this->session->set_userdata('session_mobile', $data_session);
                echo "oke";
                return TRUE;
            } else {
                $this->alert->alertdanger('Check again your username and password');
                return FALSE;
            }
    }
    
    public function userLogin()
    {
        
    }

    public function adminLogin()
    {

    }

}

/* End of file Controllername.php */
