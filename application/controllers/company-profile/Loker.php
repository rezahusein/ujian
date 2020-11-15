<?php 


defined('BASEPATH') OR exit('No direct script access allowed');

class Loker extends MY_Controller {
    public function __construct()
    {
        parent::__construct();
        $this->validasi->validasiPortofolio();
    }
    public function index()
    {
        $data['title'] = 'Loker MMI'; 
        $this->template->load('company_profile/app/app','company_profile/pages/loker',$data);
    }

    public function jadwalTes()
    {
        $this->db->order_by('id','desc');
        $this->db->join('master_periode','master_periode.id=peserta_periode.id_periode');
        $this->db->select('peserta_periode.*,master_periode.periode_sampai,master_periode.periode_dari');
        $data['periode_aktif'] = @$this->mymodel->selectDataone('peserta_periode',array('id_peserta'=>$this->session->userdata('session_portofolio')['id']));
        $data['title'] = 'Jadwal Tes'; 
        $this->template->load('company_profile/app/app','company_profile/pages/jadwal-tes',$data);
   
    }
    public function sumPeriode(){
        $tanggal = date('Y-m-d');
        if(!empty($_GET['tanggal'])){
         $tanggal = $_GET['tanggal'];
        }
        $this->db->where('status','ENABLE');
        $this->db->where('(periode_dari <="'.$tanggal.'" AND periode_sampai >= "'.$tanggal.'")');
        $this->db->select('COUNT(*) AS sum_periode');
        $periode = $this->mymodel->selectDataone('master_periode',null);
        echo json_encode(array('sum_periode'=>$periode['sum_periode']));
    }
    public function getPerPeriode($offset,$id_load){
        $tanggal = date('Y-m-d');
        if(!empty($_GET['tanggal'])){
         $tanggal = $_GET['tanggal'];
        }
        $this->db->offset($offset);
        $this->db->limit('1');
        $this->db->where('status','ENABLE');
        $this->db->where('(periode_dari <="'.$tanggal.'" AND periode_sampai >= "'.$tanggal.'")');
        $data['periode'] = $this->mymodel->selectDataone('master_periode',null);
        $this->db->select('COUNT(*) AS jumlah_peserta');
        $data['jumlah_peserta'] = @$this->mymodel->selectDataone('peserta_periode',array('id_periode'=>$data['periode']['id']))['jumlah_peserta'];
        $this->db->select('COUNT(*) AS jumlah_soal,SUM(CASE WHEN master_soal.jenis_soal="pg" THEN 1 ELSE 0 END) AS sum_pg,SUM(CASE WHEN master_soal.jenis_soal="essay" THEN 1 ELSE 0 END) AS sum_essay');
        $data['soal'] = @$this->mymodel->selectDataone('master_soal',array('id_periode'=>$data['periode']['id']));
        $this->db->order_by('id','desc');
        $this->db->join('master_periode','master_periode.id=peserta_periode.id_periode');
        $this->db->select('peserta_periode.*,master_periode.periode_sampai,master_periode.periode_dari');
        $data['periode_aktif'] = @$this->mymodel->selectDataone('peserta_periode',array('id_peserta'=>$this->session->userdata('session_portofolio')['id']));
        $view_periode = $this->load->view('company_profile/pages/list-periode',$data,true);
        echo json_encode(array('view_periode'=>$view_periode,'id_load'=>$id_load));
    }
    public function daftarPeriode($id){
        $periode = $this->mymodel->selectDataone('master_periode',array('id'=>$id));
        $user = $this->mymodel->selectDataone('user',array('id'=>$this->session->userdata('session_portofolio')['id']));
        $data = array(
            'id_peserta'=>$user['id'],
            'nama_peserta'=>$user['name'],
            'email_peserta'=>$user['email'],
            'no_telp_peserta'=>$user['no_telp'],
            'alamat_peserta'=>$user['alamat'],
            'kode_peserta'=>$this->template->generateToken(),
            'id_periode'=>$periode['id'],
            'status_ujian'=>'belum ujian',
            'status'=>'ENABLE',
            'selesai_ujian'=>'0'
        );
        $this->mymodel->insertData('peserta_periode',$data);
        $subject = 'Pemberian Kode Token Ujian';
        $isi = 'Kode Token Anda : '.$data['kode_peserta'];
        $email = $data['email_peserta'];
        $this->sendEmail($isi,$subject,$email);
        redirect('company_profile/loker');
    }
}

/* End of file Controllername.php */
