<?php 
require_once '../config/config.php';
require_once '../config/functions.php';
require_once '../config/conexion.php';
require_once '../config/registro.php';

$con = new conexion();
$conexion = $con->conexion();
if (!$conexion) {
	header('Location: '.RUTA.'config/error/500');
	die();
}
$registro = new registro();

if (isset($_POST['location'])) {
	$location = limpiarDatos($_POST['location']);

	function buildBaseString($baseURI, $method, $params) {
	    $r = array();
	    ksort($params);
	    foreach($params as $key => $value) {
	        $r[] = "$key=" . rawurlencode($value);
	    }
	    return $method . "&" . rawurlencode($baseURI) . '&' . rawurlencode(implode('&', $r));
	}

	function buildAuthorizationHeader($oauth) {
	    $r = 'Authorization: OAuth ';
	    $values = array();
	    foreach($oauth as $key=>$value) {
	        $values[] = "$key=\"" . rawurlencode($value) . "\"";
	    }
	    $r .= implode(', ', $values);
	    return $r;
	}

	$url = 'https://weather-ydn-yql.media.yahoo.com/forecastrss';
	$app_id = 'pELFXMMd';
	$consumer_key = 'dj0yJmk9RWJnRGc4a1Rhd3hZJmQ9WVdrOWNFVk1SbGhOVFdRbWNHbzlNQT09JnM9Y29uc3VtZXJzZWNyZXQmc3Y9MCZ4PTU5';
	$consumer_secret = 'f1547949cfb506b52f3504f192d328388455f738';

	$query = array(
	    'location' => $location,
	    'format' => 'json',
	);

	$oauth = array(
	    'oauth_consumer_key' => $consumer_key,
	    'oauth_nonce' => uniqid(mt_rand(1, 1000)),
	    'oauth_signature_method' => 'HMAC-SHA1',
	    'oauth_timestamp' => time(),
	    'oauth_version' => '1.0'
	);

	$base_info = buildBaseString($url, 'GET', array_merge($query, $oauth));
	$composite_key = rawurlencode($consumer_secret) . '&';
	$oauth_signature = base64_encode(hash_hmac('sha1', $base_info, $composite_key, true));
	$oauth['oauth_signature'] = $oauth_signature;

	$header = array(
	    buildAuthorizationHeader($oauth),
	    'X-Yahoo-App-Id: ' . $app_id
	);
	$options = array(
	    CURLOPT_HTTPHEADER => $header,
	    CURLOPT_HEADER => false,
	    CURLOPT_URL => $url . '?' . http_build_query($query),
	    CURLOPT_RETURNTRANSFER => true,
	    CURLOPT_SSL_VERIFYPEER => false
	);

	$ch = curl_init();
	curl_setopt_array($ch, $options);
	$response = curl_exec($ch);
	curl_close($ch);

	$registro->insertRegistro($response);
	echo $response;
}