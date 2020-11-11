<?php


defined('BASEPATH') OR exit('No direct script access allowed');

class Kontak extends CI_Controller {

    public function index()
    {
        $data['title'] = 'Home MMI'; 
        $this->template->load('company_profile/app/app','company_profile/pages/kontak',$data);
    }

 

}

/* End of file Controllername.php */
