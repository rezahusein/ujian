<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Email extends CI_Controller {

    public function index()
    {
        $this->load->view('MMI/layouts/email-layouts');
    } 
    public function emailResultTest()
    {
        $this->load->view('MMI/layouts/email-notif');
    }
    public function emailVerify()
    {
        $this->load->view('MMI/layouts/email-verify');
    }

}

/* End of file Controllername.php */
