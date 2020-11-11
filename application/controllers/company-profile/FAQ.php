<?php


defined('BASEPATH') OR exit('No direct script access allowed');

class FAQ extends CI_Controller {

    public function index()
    {
        $data['title'] = 'FAQ MMI'; 
        $this->template->load('company_profile/app/app','company_profile/pages/faq',$data);
    }

 

}

/* End of file Controllername.php */
