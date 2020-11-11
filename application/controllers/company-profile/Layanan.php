<?php


defined('BASEPATH') OR exit('No direct script access allowed');

class Layanan extends CI_Controller {

    public function index()
    {
        $data['title'] = 'Layanan'; 
        $this->template->load('company_profile/app/app','company_profile/pages/layanan',$data);
    }

 

}

/* End of file Controllername.php */
