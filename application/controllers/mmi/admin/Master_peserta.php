
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Master_peserta extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $data['page_name'] = "master_peserta";
        $this->template->load('MMI/layouts/app','MMI/admin/master_peserta/all-master_periode',$data);
    }

    public function json()
    {
        $status = $_GET['status'];
        if($status==''){
            $status = 'ENABLE';
        }
        header('Content-Type: application/json');
        $this->datatables->select('master_periode.id,CONCAT(DATE_FORMAT(periode_dari, "%d %M %Y")," - ",DATE_FORMAT(periode_sampai, "%d %M %Y")) AS periode,master_periode.periode_dari,master_periode.periode_sampai,master_periode.lama_waktu_ujian,persentase_pg,master_periode.persentase_essay,master_periode.status,user.name as created_by');
        $this->datatables->join('user','user.id=master_periode.created_by','left');
        $this->datatables->where('master_periode.status',$status);
        $this->datatables->from('master_periode');

        if($status=="ENABLE"){
                $this->datatables->add_column('view', 
                '<div class="">
            
                    <a class="text-white btn btn-sm btn-info mb-1" onclick="soal($1)">
                    <i class="fas fa-clipboard-list"></i> Soal
                    </a> 
                    
                </div>', 'id');
                

        }else{
        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');

        }
        echo $this->datatables->generate();
    }

    // public function edit($id)
    // {
    //     $data['master_periode'] = $this->mymodel->selectDataone('master_periode',array('id'=>$id));
    //     $data['page_name'] = "master_periode";
    //     $this->template->load('MMI/layouts/app','MMI/admin/master_periode/edit-master_periode',$data);
    // }
    
    public function soal()
    {
        // $data['master_soal'] = $this->mymodel->selectDataone('master_periode',array('id'=>$id));
        $data['page_name'] = "master_soal";
        $this->template->load('MMI/layouts/app','MMI/admin/master_soal/all-master_soal',$data);
    }

    public function status($id,$status)
    {
        $this->mymodel->updateData('master_periode',array('status'=>$status),array('id'=>$id));
        redirect('mmi/admin/Master_periode');
    }


}
?>