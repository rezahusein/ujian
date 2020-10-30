<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class PHPMailerAutoload {
    function __construct() {
    	require_once(APPPATH."third_party/phpmailer/PHPMailerAutoload.php");
    }
}