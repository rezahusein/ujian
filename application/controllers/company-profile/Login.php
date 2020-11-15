<?php


defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    public function index()
    {
        $data['title'] = 'Login MMI'; 
        $this->template->load('company_profile/app/app','company_profile/pages/login',$data);
    }
    public function logout(){
        $this->session->unset_userdata('session_portofolio');
        redirect('company-profile/login');
    }
    public function prosesLogin()
    {
        $email = $this->input->post('email');
        $password = $this->input->post('password');
        $pass = md5($password);
        $session     = $this->mymodel->selectDataone('user',array('email'=>$email,'password'=>$pass,'status'=>'ENABLE','role_id'=>'21'));
        if (!empty($session)) {
            $data_session = array(
                'id'=>$session['id'],
                'email'=>$session['email_peserta'],
                'name'=>$session['nama_peserta']
            );
            $this->session->set_userdata('session_portofolio', $data_session);
            echo "oke";
            return TRUE;
        } else {
            $this->alert->alertdanger('Check again your username and password');
            return FALSE;
        }
    }
    public function cekEmail(){
        $post = $this->input->post();
        $cekEmail = $this->mymodel->selectWhere('user',array('email'=>$post['email']),array('status'=>'ENABLE'));
        echo json_encode(array('status_email'=>count($cekEmail)));
    }
    public function prosesRegister(){
        $data = $this->input->post('dt');
        $data['nip'] = $data['email'];
        $data['role_id'] = '21';
        $data['role_name'] = 'Peserta';
        $data['role_slug'] = 'peserta';
        $data['status'] = 'ENABLE';
        $data['created_at'] = date('Y-m-d H:i:s');
        if($data['password'] == $data['re_password']){
        $data['password'] = md5($data['password']);
            unset($data['re_password']);
            if($this->mymodel->insertData('user',$data)){
                 echo "oke";
                 $this->session->set_flashdata('alert-berhasil-register','<div class="alert alert-success"><center>Akun Anda Telah Terbuat. Silahkan Login Derngan Akun Anda</center></div>');
                return TRUE;
            }
            else{
                $this->alert->alertdanger('Ada Kesalahan Di Data Anda');
                return FALSE;
            }
        }
        else{
            $this->alert->alertdanger('Password Tidak Sama');
            return FALSE;
        }
    }

    public function register()
    {
        $data['title'] = 'Register MMI'; 
        $this->template->load('company_profile/app/app','company_profile/pages/register',$data);
  
    }

}

/* End of file Controllername.php */
