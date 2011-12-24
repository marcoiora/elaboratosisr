<?php
ini_set("soap.wsdl_cache_enabled", "0");

$client = new SoapClient("http://127.0.0.1:8080/ShirtShop/Servizi/wsdl.do");


$service = $_GET['service'];

if ($service == 'getNuoviOrdini') {
	$data = $_GET['data'];
	$data = explode('/', $data);
	try {
		$xmldata = $client->getNuoviOrdini("$data[2]-$data[1]-$data[0]T00:00:00");
		echo json_encode($xmldata);

	}
	catch (SoapFault $e) {
		var_dump($e);
	}
}


?>