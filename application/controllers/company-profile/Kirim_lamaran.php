<?php


defined('BASEPATH') OR exit('No direct script access allowed');

class Kirim_lamaran extends CI_Controller {

    public function index()
    {
        $data['title'] = 'Kirim Lamaran MMI'; 
        $this->template->load('company_profile/app/app','company_profile/pages/kirim-lamaran',$data);
    }

 

}

/* End of file Controllername.php */
