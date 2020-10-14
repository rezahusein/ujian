 <?php
 	class Coreflow extends CI_Controller {

    public function index()
    {
    	if(!empty($this->session->userdata('id'))){
    		redirect('mmi/admin/dashboard');
    	}
    	else{
    		redirect('login');
    	}
    }

}
 ?>