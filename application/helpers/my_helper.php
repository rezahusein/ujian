<?php 

function curUrl(){
    $CI =& get_instance();
    $url ='';
    if(strtolower($CI->router->fetch_method()) == 'index'){
        $url  = $CI->router->fetch_directory().$CI->router->fetch_class();
    } else{
        $url  = $CI->router->fetch_directory().$CI->router->fetch_class().'/'.$CI->router->fetch_method();
    }
    $url = strtolower($url);
    return $url;
}

function curCname(){
    $CI =& get_instance();
    $url ='';
    $url  = $CI->router->fetch_directory().$CI->router->fetch_class();
    $url = strtolower($url);
    return $url;
}

function dump_variable($data)
{
    echo '<pre>' . var_export($data, true) . '</pre>';
}
function bulan_indo($m){
    $month = array('Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember');
    return $month[($m-1)];
} 
function hari_indo($h_name){
    $h_name = strtolower($h_name);
    $day = array('mon'=>'Senin','tue'=>'Selasa','wed'=>'Rabu','thu'=>'Kamis','fri'=>'Jumat','sat'=>'Sabtu','sun'=>'Minggu');
    return $day[$h_name];
} 
// public function direktori()
	// {
		// $ci = get_class_methods($this);
		// print_r($ci);
	// }
 ?>
