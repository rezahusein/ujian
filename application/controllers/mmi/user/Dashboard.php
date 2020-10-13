<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

    public function view($data)
    {
        $this->load->view('MMI/layouts/app-user',$data);
    }

    public function index()
    {
        $data['title'] = 'Dashboard Peserta';
        $data['page'] = 'MMI/peserta/home';
        
        $this->view($data);
    }

}

/* End of file Controllername.php */
