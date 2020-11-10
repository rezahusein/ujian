
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	class Peserta_periode extends MY_Controller {

		public function __construct()
		{
			parent::__construct();
		}

		public function index()
		{
			$data['page_name'] = "peserta_periode";
			$this->template->load('MMI/layouts/app','MMI/admin/master_peserta/peserta_periode/all-peserta_periode',$data);
		}

		public function create()
		{
			$data['page_name'] = "peserta_periode";
			$this->template->load('MMI/layouts/app','MMI/admin/master_peserta/peserta_periode/add-peserta_periode',$data);
		}


		public function validate()
		{
			$this->form_validation->set_error_delimiters('<li>', '</li>');
	$this->form_validation->set_rules('dt[nama_peserta]', '<strong>Nama Peserta</strong>', 'required');
$this->form_validation->set_rules('dt[email_peserta]', '<strong>Email Peserta</strong>', 'required');
$this->form_validation->set_rules('dt[no_telp_peserta]', '<strong>No Telp Peserta</strong>', 'required');
$this->form_validation->set_rules('dt[alamat_peserta]', '<strong>Alamat Peserta</strong>', 'required');
	}

		public function store()
		{
			$this->validate();
	    	if ($this->form_validation->run() == FALSE){
				$this->alert->alertdanger(validation_errors());     
	        }else{
	        	$dt = $_POST['dt'];
	        	$dt['kode_peserta'] = $this->template->generateToken();
	        	$subject = 'Pemberian Kode Token Ujian';
	        	$isi = 'Kode Token Anda : '.$dt['kode_peserta'];
	        	$email = $dt['email_peserta'];
	        	$this->sendEmail($isi,$subject,$email);
	        	$dt['id_periode'] = $_GET['id_periode'];
				$dt['created_at'] = date('Y-m-d H:i:s');
				$dt['status'] = "ENABLE";
				$str = $this->db->insert('peserta_periode', $dt);
				$last_id = $this->db->insert_id();
				$this->alert->alertsuccess('Success Send Data');   
			}
		}

		public function json_ujian_peserta(){
			header('Content-Type: application/json');
	        $this->datatables->select('CONCAT(master_soal.urutan_soal,". ",master_soal.deskripsi) as urutan_soal,master_soal.id,master_soal.deskripsi,master_soal.image,master_soal.voice,master_soal.image,master_soal.id_jawaban,peserta_jawaban.is_true,peserta_jawaban.jawaban_essay,peserta_jawaban.id as id_peserta_jawaban');
	        $this->datatables->where('master_soal.status','ENABLE');
	        $this->datatables->join('peserta_jawaban','peserta_jawaban.id_soal=master_soal.id AND peserta_jawaban.id_peserta_periode="'.$_GET['id_peserta'].'"','LEFT');
	        $this->datatables->where('master_soal.jenis_soal',$_GET['tipe_soal']);
	        $this->datatables->where('master_soal.id_periode',$_GET['id_periode']);
	        $this->datatables->from('master_soal');
	        echo $this->datatables->generate();
		}
		public function loadReportNilai($id_user){
			$data['user'] = $this->mymodel->selectDataone('peserta_periode',array('id'=>$id_user));
			$data['periode'] = $this->mymodel->selectDataone('master_periode',array('id'=>$data['user']['id_periode']));
			$this->db->select('COUNT(*) AS jumlah_soal,SUM(CASE WHEN peserta_jawaban.id IS NOT NULL THEN 1 ELSE 0 END) AS jawaban_benar,SUM(CASE WHEN peserta_jawaban.id IS NULL THEN 1 ELSE 0 END) AS jawaban_salah');
			$this->db->join('peserta_jawaban','peserta_jawaban.id_soal=master_soal.id AND peserta_jawaban.is_true="1" AND peserta_jawaban.id_peserta_periode="'.$id_user.'"','LEFT');
			$data['essay'] = $this->mymodel->selectDataone('master_soal',array('master_soal.jenis_soal'=>'essay','master_soal.id_periode'=>$data['user']['id_periode']));
			$this->db->select('COUNT(*) AS jumlah_soal,SUM(CASE WHEN peserta_jawaban.id IS NOT NULL THEN 1 ELSE 0 END) AS jawaban_benar,SUM(CASE WHEN peserta_jawaban.id IS NULL THEN 1 ELSE 0 END) AS jawaban_salah');
			$this->db->join('peserta_jawaban','peserta_jawaban.id_soal=master_soal.id AND peserta_jawaban.id_jawaban_pg=master_soal.id_jawaban AND peserta_jawaban.id_peserta_periode="'.$id_user.'"','LEFT');
			$data['pg'] = $this->mymodel->selectDataone('master_soal',array('master_soal.jenis_soal'=>'pg','master_soal.id_periode'=>$data['user']['id_periode']));
			$this->load->view('mmi/admin/master_peserta/peserta_periode/report-nilai',$data);
		}
		public function getJawabanSoal($id,$id_user){
			$soal = $this->mymodel->selectDataone('master_soal',array('id'=>$id));
			$jawaban = $this->mymodel->selectWhere('master_jawaban_pg',array('id_soal'=>$id));
			$jawaban_peserta = $this->mymodel->selectDataone('peserta_jawaban',array('id_soal'=>$id,'id_peserta_periode'=>$id_user));
			foreach($jawaban as $jwb){
					$icon_soal = '';
					$color_soal = '';
					if($jwb['id'] == $soal['id_jawaban']){
						$icon_soal = '<i class="fas fa-check" style="color:white;position:absolute;right:60px;'.(($jwb['jenis_jawaban'] == 'image')?"margin-top:18px":"margin-top:4px").'"></i>';
						$color_soal = 'bg-success';
					}
					if($jawaban_peserta['id_jawaban_pg'] == $jwb['id']){
						$icon_soal = '<i class="fas fa-times" style="color:white;position:absolute;right:60px;'.(($jwb['jenis_jawaban'] == 'image')?"margin-top:18px":"margin-top:4px").'"></i>';
						$color_soal = 'bg-danger';
					}
				  if($jwb['jenis_jawaban'] == 'deskripsi'){
                        ?>
                        <div class="form-group <?=$color_soal?> row" style="padding: 5px">
	                        		<?=$icon_soal?>
	                        	<div class="col-xs-1">	
	                         		<?=$jwb['keyword']?>.
	                        	</div>
	                        	<div class="col-10">
	                        		<?=$jwb['deskripsi']?>	
	                        	</div>	
                        </div>
                        <?php
                                }
                                else{
                                    ?>
                        <div class="form-group <?=$color_soal?> row" style="padding: 5px">
                        			<?=$icon_soal?>
                                <div class="col-xs-1">
                                	 <?=$jwb['keyword']?>.
                                </div>   
                                <div class="col-10">
                                    <img src="<?=base_url().$jwb['image']?>" style="width: 50px;height: 50px">   
                                </div> 
                        </div>
                        <?php
                                }
				}
		}
	    public function konfirmasiNilai($id_user){
	        $user = $this->mymodel->selectDataone('peserta_periode',array('id'=>$id_user));
			$periode = $this->mymodel->selectDataone('master_periode',array('id'=>$user['id_periode']));
			$this->db->select('SUM(CASE WHEN master_soal.jenis_soal = "essay" THEN 1 ELSE 0 END) AS jumlah_essay,SUM(CASE WHEN master_soal.jenis_soal = "pg" THEN 1 ELSE 0 END) AS jumlah_pg');
			$count_soal = $this->mymodel->selectDataone('master_soal',array('id_periode'=>$user['id_periode']));
			$this->db->select('COUNT(*) AS jumlah');
			$nilai = $this->mymodel->selectDataone('peserta_jawaban',array('is_true'=>'1','id_peserta_periode'=>$id_user,'jenis_soal'=>'essay'));
			$this->db->select('COUNT(*) AS jumlah');
			$this->db->join('master_soal','master_soal.id=peserta_jawaban.id_soal AND master_soal.id_jawaban=peserta_jawaban.id_jawaban_pg');
			$pg = $this->mymodel->selectDataone('peserta_jawaban',array('peserta_jawaban.id_peserta_periode'=>$id_user,'peserta_jawaban.jenis_soal'=>'pg'));
			$n_pg = $pg['jumlah'] / $count_soal['jumlah_pg'] * 100;
			$nilai_pg = $n_pg * $periode['persentase_pg'] / 100;
			$nilai_essay = $nilai['jumlah'] / $count_soal['jumlah_essay'] * 100;
			$persentase =  $nilai_essay * $periode['persentase_essay'] / 100;
			$total_nilai = $nilai_pg + $persentase;
			if($total_nilai >= $periode['standar_nilai']){
				$kelulusan = 'lulus';
			}
			else{
				$kelulusan = 'tidak lulus';
			}
			$this->db->update('peserta_periode',array('kelulusan'=>$kelulusan,'status_ujian'=>'selesai','nilai_pg'=>$n_pg,'nilai_essay'=>$nilai_essay,'total_nilai'=>$total_nilai),array('id'=>$id_user));
			redirect('mmi/admin/peserta_periode?id_periode='.$periode['id']);
	    }
		public function setNilaiEssay($id_soal,$hasil_jawaban,$id_user){
			$user = $this->mymodel->selectDataone('peserta_periode',array('id'=>$id_user));
			$soal = $this->mymodel->selectDataone('master_soal',array('id'=>$id_soal));
			$periode = $this->mymodel->selectDataone('master_periode',array('id'=>$soal['id_periode']));
			$this->db->select('SUM(CASE WHEN master_soal.jenis_soal = "essay" THEN 1 ELSE 0 END) AS jumlah_essay,SUM(CASE WHEN master_soal.jenis_soal = "pg" THEN 1 ELSE 0 END) AS jumlah_pg');
			$count_soal = $this->mymodel->selectDataone('master_soal',array('id_periode'=>$soal['id_periode']));
			$cekJawaban = $this->mymodel->selectDataone('peserta_jawaban',array('id_peserta_periode'=>$id_user,'id_soal'=>$id_soal));
			if(!empty($cekJawaban)){
				$this->db->update('peserta_jawaban',array('is_true'=>$hasil_jawaban),array('id_peserta_periode'=>$id_user,'id_soal'=>$id_soal));
			}
			$this->db->select('COUNT(*) AS jumlah');
			$nilai = $this->mymodel->selectDataone('peserta_jawaban',array('is_true'=>'1','id_peserta_periode'=>$id_user,'jenis_soal'=>'essay'));
			$this->db->select('COUNT(*) AS jumlah');
			$this->db->join('master_soal','master_soal.id=peserta_jawaban.id_soal AND master_soal.id_jawaban=peserta_jawaban.id_jawaban_pg');
			$pg = $this->mymodel->selectDataone('peserta_jawaban',array('peserta_jawaban.id_peserta_periode'=>$id_user,'peserta_jawaban.jenis_soal'=>'pg'));
			$n_pg = $pg['jumlah'] / $count_soal['jumlah_pg'] * 100;
			$nilai_pg = $n_pg * $periode['persentase_pg'] / 100;
			$nilai_essay = $nilai['jumlah'] / $count_soal['jumlah_essay'] * 100;
			$persentase =  $nilai_essay * $periode['persentase_essay'] / 100;
			$total_nilai = $nilai_pg + $persentase;
			$this->db->update('peserta_periode',array('nilai_pg'=>$n_pg,'nilai_essay'=>$nilai_essay,'total_nilai'=>$total_nilai),array('id'=>$id_user));
		}
		public function json()
		{
			$status = $_GET['status'];
			if($status==''){
				$status = 'ENABLE';
			}
			header('Content-Type: application/json');
	        $this->datatables->select('DATE_ADD(waktu_mulai_ujian, INTERVAL 2 HOUR) AS waktu_expired,id,nama_peserta,email_peserta,no_telp_peserta,alamat_peserta,kode_peserta,id_periode,status_ujian,waktu_mulai_ujian,total_nilai,nilai_pg,nilai_essay,status,kode_peserta,kelulusan,total_nilai');
	        $this->datatables->where('status',$status);
	        $this->datatables->from('peserta_periode');
	        if($status=="ENABLE"){
			$this->datatables->add_column('view', '
				<div class="btn-group">
				<button type="button" class="btn btn-sm btn-warning" onclick="edit($1)">
					<i class="fa fa-edit"></i> Edit
				</button>
				
				</div>', 'id');

	    	}else{
	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-warning mr-2" onclick="edit($1)"><i class="fa fa-edit"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Hapus</button></div>', 'id');

	    	}
	        echo $this->datatables->generate();
		}
		public function edit($id)
		{
			$data['peserta_periode'] = $this->mymodel->selectDataone('peserta_periode',array('id'=>$id));$data['page_name'] = "peserta_periode";
			$this->template->load('MMI/layouts/app','mmi/admin/master_peserta/peserta_periode/edit-peserta_periode',$data);
		}

		public function setNilai($id){
			$data['page_name'] = 'peserta_periode';
			$data['user'] = $this->mymodel->selectDataone('peserta_periode',array('id'=>$id));
			// echo "asds";
			$this->template->load('MMI/layouts/app','mmi/admin/master_peserta/peserta_periode/set-nilai-peserta-periode',$data);
		}

		public function update()
		{
			$this->form_validation->set_error_delimiters('<li>', '</li>');
			
			$this->validate();
			

	    	if ($this->form_validation->run() == FALSE){
				$this->alert->alertdanger(validation_errors());     
	        }else{
				$id = $this->input->post('id', TRUE);		$dt = $_POST['dt'];
					$dt['updated_at'] = date("Y-m-d H:i:s");
					$this->mymodel->updateData('peserta_periode', $dt , array('id'=>$id));
					$this->alert->alertsuccess('Success Update Data');  }
		}

		public function delete()
		{
				$id = $this->input->post('id', TRUE);$this->alert->alertdanger('Success Delete Data');     
		}

		public function status($id,$status)
		{
			$this->mymodel->updateData('peserta_periode',array('status'=>$status),array('id'=>$id));
			redirect('mmi/admin/Peserta_periode');
		}


	}
?>