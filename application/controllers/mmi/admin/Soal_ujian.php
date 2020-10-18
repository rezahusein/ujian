<?php


defined('BASEPATH') OR exit('No direct script access allowed');

class Soal_ujian extends CI_Controller {

    public function index()
    {
        $data['title'] = 'Soal Ujian'; 
        $this->template->load('MMI/layouts/app','MMI/admin/soal-ujian',$data);
    }

}

/* End of file Controllername.php */
