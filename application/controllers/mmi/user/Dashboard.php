<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
    public function index()
    {
        $data['title'] = 'Dashboard Peserta'; 
        $this->template->load('MMI/layouts/app-user','MMI/peserta/home',$data);
    }

}

/* End of file Controllername.php */
