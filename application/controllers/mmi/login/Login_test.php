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
    
    public function userLogin()
    {
        
    }

    public function adminLogin()
    {

    }

}

/* End of file Controllername.php */
