<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Alert extends CI_Controller  {

	protected $CI;

	public function __construct()
	{	
		$this->CI =& get_instance();
	}
	public function alertsuccess($status=null)
	{
		# code...
		echo '<div class="alert alert-success ks-solid ks-active-border" role="alert">';
		echo '	<button type="button" class="close" data-dismiss="alert" aria-label="Close">';
		echo '		<span aria-hidden="true" class="fa fa-close"></span>';
		echo '	</button>';
		echo '		<center>';
		echo "		$status";
		echo '		</center>';
		echo '</div>';
	}

	public function alertdanger($error=null)
	{
		# code...
		echo '<div class="alert alert-danger ks-solid ks-active-border" role="alert">';
		echo '	<button type="button" class="close" data-dismiss="alert" aria-label="Close">';
		echo '		<span aria-hidden="true" class="fa fa-close"></span>';
		echo '	</button>';
		echo '		<center>';
		if($error==null){
        	echo "		Something Error";
		}else{
        	echo "			$error";
		}
		
		echo '		</center>';
		echo '</div>';
	}

}
