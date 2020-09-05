<?php
$query = "SELECT COLUMN_NAME,COLUMN_KEY FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='".$this->db->database."' AND TABLE_NAME='".$table."' AND COLUMN_KEY = 'PRI'";
$pri = $this->mymodel->selectWithQuery($query);
$primary = $pri[0]['COLUMN_NAME'];
$c = ucfirst(str_replace(".php", "", $controller));
$string = "
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	class ".$c." extends MY_Controller {
			public function __construct()
			{
				parent::__construct();
		}
		public function index()
		{
				\$data['page_name'] = \"".$table."\";
				\$this->template->load('template/template','master/".$table."/all-".$table."',\$data);
		}";
if($form_type=="page"){
	$string .=	"
			public function create()
			{
				\$data['page_name'] = \"".$table."\";
				\$this->template->load('template/template','master/".$table."/add-".$table."',\$data);
		}";
}else{
	$string .=	"
			public function create()
			{
				\$this->load->view('master/".$table."/add-".$table."');
		}";
}
$string .=	"
		public function validate()
		{
				\$this->form_validation->set_error_delimiters('<li>', '</li>');
		";
		foreach ($show as $key => $value) {
			$string .=	"\$this->form_validation->set_rules('dt[".$value."]', '<strong>".$this->template->label($value)."</strong>', 'required');\n";
		}
$string .="	}
		public function store()
		{
				\$this->validate();
		    	if (\$this->form_validation->run() == FALSE){
					\$this->alert->alertdanger(validation_errors());     
	        }else{
		        	\$dt = \$this->input->post('dt');
					\$dt['created_at'] = date('Y-m-d H:i:s');
					\$dt['status'] = \"ENABLE\";
					\$str = \$this->mymodel->insertData('".$table."', \$dt);
					\$last_id = \$this->db->insert_id();";
	if($file==true){	
	$string .="	    if (!empty(\$_FILES['file']['name'])){
			        	\$directory = 'webfile/';
						\$filename = \$_FILES['file']['name'];
						\$allowed_types = 'gif|jpg|png';
						\$max_size = '2000';
						\$result = \$this->uploadfile->upload('file',\$filename,\$directory,\$allowed_types, \$max_size);
						if(\$result['alert'] == 'success'){

							\$data = array(
								'id' => '',
								'name'=> \$result['message']['name'],
								'mime'=> \$result['message']['mime'],
								'dir'=> \$result['message']['dir'],
								'table'=> '".$table."',
								'table_id'=> \$last_id,
								'status'=>'ENABLE',
								'created_at'=>date('Y-m-d H:i:s')
						 );
							\$str = \$this->mymodel->insertData('file', \$data);
							\$this->alert->alertsuccess('Success Send Data');  
					}else{
						\$this->alert->alertdanger(\$result['message']);
					}


					
				}else{
						\$data = array(
					   				'id' => '',
					   				'name'=> '',
					   				'mime'=> '',
					   				'dir'=> '',
					   				'table'=> '".$table."',
					   				'table_id'=> \$last_id,
					   				'status'=>'ENABLE',
					   				'created_at'=>date('Y-m-d H:i:s')
				   	 		);
					   	\$str = \$this->mymodel->insertData('file', \$data);
						\$this->alert->alertsuccess('Success Send Data');
					}
					 ";
}else{
$string	.= "		\$this->alert->alertsuccess('Success Send Data');";
}
$string .=	"   

			}
		}
		public function json()
		{
				\$status = \$_GET['status'];
				if(\$status==''){
					\$status = 'ENABLE';
			}
			header('Content-Type: application/json');
	        ";
	        $select = "";
	        foreach ($show as $key => $value) {
		        	$select.= $value.",";
	        }

 $string .= "\$this->".$form_table."->select('".$primary.",".$select."status');";
 $string .= "
	        \$this->".$form_table."->where('status',\$status);
	        \$this->".$form_table."->from('".$table."');
	        if(\$status==\"ENABLE\"){
		        \$this->".$form_table."->add_column('view', '<div class=\"btn-group\"><button type=\"button\" class=\"btn btn-sm btn-primary\" onclick=\"edit(\$1)\"><i class=\"fa fa-pencil\"></i> Edit</button></div>', '".$primary."');
	    	}else{
		        \$this->".$form_table."->add_column('view', '<div class=\"btn-group\"><button type=\"button\" class=\"btn btn-sm btn-primary\" onclick=\"edit(\$1)\"><i class=\"fa fa-pencil\"></i> Edit</button><button type=\"button\" onclick=\"hapus(\$1)\" class=\"btn btn-sm btn-danger\"><i class=\"fa fa-trash-o\"></i> Hapus</button></div>', '".$primary."');
	    	}
	        echo \$this->".$form_table."->generate();
		}";
if($form_type=="page"){
$string .=	"
			public function edit(\$id)
			{
				\$data['".$table."'] = \$this->mymodel->selectDataone('".$table."',array('".$primary."'=>\$id));";
	if($file==true){	
$string.=	"	\$data['file'] = \$this->mymodel->selectDataone('file',array('table_id'=>\$id,'table'=>'".$table."'));";
}
$string.="		\$data['page_name'] = \"".$table."\";
				\$this->template->load('template/template','master/".$table."/edit-".$table."',\$data);
			}";
}else{
$string .=	"
			public function edit(\$id)
			{
				\$data['".$table."'] = \$this->mymodel->selectDataone('".$table."',array('".$primary."'=>\$id));";
	if($file==true){	
$string.=		"\$data['file'] = \$this->mymodel->selectDataone('file',array('table_id'=>\$id,'table'=>'".$table."'));";
}
$string.="		\$data['page_name'] = \"".$table."\";
				\$this->load->view('master/".$table."/edit-".$table."',\$data);
			}";
}
$string .=	"
		public function update()
		{
				\$this->form_validation->set_error_delimiters('<li>', '</li>');

				\$this->validate();

		    	if (\$this->form_validation->run() == FALSE){
					\$this->alert->alertdanger(validation_errors());     
	        }else{
					\$id = \$this->input->post('".$primary."', TRUE);";
	if($file==true){	
$string.=		"
		        	if (!empty(\$_FILES['file']['name'])){
		        		\$directory = 'webfile/';
						\$filename = \$_FILES['file']['name'];
						\$allowed_types = 'gif|jpg|png';
						\$max_size = '2000';
						\$result = \$this->uploadfile->upload('file',\$filename,\$directory,\$allowed_types, \$max_size);

						if(\$result['alert'] == 'success'){
						
							\$data = array(
								'name'=> \$result['message']['name'],
								'mime'=> \$result['message']['mime'],
								'dir'=> \$result['message']['dir'],
								'table'=> '".$table."',
								'table_id'=> \$id,
								'updated_at'=>date('Y-m-d H:i:s')
							);
							\$file = \$this->mymodel->selectDataone('file',array('table_id'=>\$id,'table'=>'".$table."'));
							@unlink(\$file['dir']);
							if(\$file==\"\"){
								\$this->mymodel->insertData('file', \$data);
							}else{
								\$this->mymodel->updateData('file', \$data , array('id'=>\$file['id']));
							}

							\$dt = \$this->input->post('dt');
							\$dt['updated_at'] = date(\"Y-m-d H:i:s\");
							\$str =  \$this->mymodel->updateData('".$table."', \$dt , array('".$primary."'=>\$id));
							if(\$str==true){
								\$this->alert->alertsuccess('Success Send Data');
							}else{
								\$this->alert->alertdanger('Something error in system');
							}

						}else{
							\$this->alert->alertdanger(\$result['message']);
						}

				}else{
						\$dt = \$this->input->post('dt');
						\$dt['updated_at'] = date(\"Y-m-d H:i:s\");
						\$str = \$this->mymodel->updateData('".$table."', \$dt , array('".$primary."'=>\$id));
						if(\$str==true){
							\$this->alert->alertsuccess('Success Send Data');
					}else{
							\$this->alert->alertdanger('Something error in system');
					} 
				}";
}else{
		$string.= "		\$dt = \$this->input->post('dt');
						\$dt['updated_at'] = date(\"Y-m-d H:i:s\");
						\$str = \$this->mymodel->updateData('".$table."', \$dt , array('".$primary."'=>\$id));
						if(\$str==true){
							\$this->alert->alertsuccess('Success Send Data');
					}else{
							\$this->alert->alertdanger('Something error in system');
					}  ";
}
$string.=	"}
		}
		public function delete()
		{
					\$id = \$this->input->post('".$primary."', TRUE);";
	if($file==true){	
	$string.=	"\$file = \$this->mymodel->selectDataone('file',array('table_id'=>\$id,'table'=>'".$table."'));
					@unlink(\$file['dir']);
					\$this->mymodel->deleteData('file',  array('table_id'=>\$id,'table'=>'".$table."'));
					\$str = \$this->mymodel->deleteData('".$table."',  array('".$primary."'=>\$id));
					return \$str;
					";
}else{
	$string.=	"
					\$str = \$this->mymodel->deleteData('".$table."',  array('".$primary."'=>\$id));
					 return \$str;
				";
} 
$string.=	"
		}
		public function status(\$id,\$status)
		{
				\$this->mymodel->updateData('".$table."',array('status'=>\$status),array('".$primary."'=>\$id));

				redirect('master/".$c."');
		}
	}
?>";
		$this->template->createFile($string, $path);
?>