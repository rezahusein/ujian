<?php 


defined('BASEPATH') OR exit('No direct script access allowed');

class Loker extends CI_Controller {

    public function index()
    {
        $data['title'] = 'Loker MMI'; 
        $this->template->load('company_profile/app/app','company_profile/pages/loker',$data);
    }

    public function jadwalTes()
    {
        $data['title'] = 'Jadwal Tes'; 
        $this->template->load('company_profile/app/app','company_profile/pages/jadwal-tes',$data);
   
    }

}

/* End of file Controllername.php */
