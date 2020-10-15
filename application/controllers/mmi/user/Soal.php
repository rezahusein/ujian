<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Soal extends CI_Controller {

    public function index()
    {
        $data['title'] = 'Soal Ujian'; 
        $this->template->load('MMI/layouts/app-user','MMI/peserta/soal-ujian',$data);
    }

}

/* End of file Controllername.php */
