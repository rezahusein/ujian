<?php


defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    public function index()
    {
        $data['title'] = 'Login MMI'; 
        $this->template->load('company_profile/app/app','company_profile/pages/login',$data);
    }

    public function register()
    {
        $data['title'] = 'Register MMI'; 
        $this->template->load('company_profile/app/app','company_profile/pages/register',$data);
  
    }

}

/* End of file Controllername.php */
