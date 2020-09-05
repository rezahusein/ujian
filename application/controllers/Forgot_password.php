<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Forgot_password extends MY_Controller {

	public function index()
	{
		  $this->load->view('login/forgot-password');
	}

	public function proceed()
	{
		$email = $this->input->post('email');

		$query = $this->mmodel->selectWhere('user',['email'=>$email])->row();


		if ($query) {
			$token = $this->template->sonEncode($query->id.date("Ymdhis")); 
			$data['data'] = $query;
			$data['token'] = $token;

			$this->mmodel->updateData("user",['token'=>$token],['id'=>$query->id]);

			$message = $this->load->view('login/forgot-password-email-template', $data,true);
			$email = $this->template->sendEmail($email,"Reset Password",$message);
			if ($email) {
				$this->alert->alertsuccess('Success, check your inbox to reset your password');
			} else {
				$this->alert->alertdanger('Failed, please try again');
			}
		} else {
			$this->alert->alertdanger('Email not found, please check your email correctly');
		}

	}
}

/* End of file forgot_passoword.php */
/* Location: ./application/controllers/forgot_passoword.php */