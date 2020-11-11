<?php 


defined('BASEPATH') OR exit('No direct script access allowed');

class Profile_perusahaan extends CI_Controller {

    public function index()
    {
        $data['title'] = 'Profile Perusahaan MMI'; 
        $this->template->load('company_profile/app/app','company_profile/pages/profile-perusahaan',$data);
    }

  

}

/* End of file Controllername.php */
