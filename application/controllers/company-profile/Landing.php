<?php


defined('BASEPATH') OR exit('No direct script access allowed');

class Landing extends CI_Controller {

    public function index()
    {
        $data['title'] = 'Home MMI'; 
        $this->template->load('company_profile/app/app','company_profile/pages/index',$data);
    }

 

}

/* End of file Controllername.php */
