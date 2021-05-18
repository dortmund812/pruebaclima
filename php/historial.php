<?php 
require_once '../config/config.php';
require_once '../config/conexion.php';
require_once '../config/functions.php';
require_once '../config/registro.php';

$con = new conexion();
$conexion = $con->conexion();
if (!$conexion) {
	header('Location: '.RUTA.'config/error/500');
	die();
}
$registro = new registro();
$regClima = $registro->historialClima();
$salida = array();

foreach ($regClima as $value) {
	$fechaCrea = array('fechacrea'=>$value['fechacrea']);
	$fechaCrea = substr(json_encode($fechaCrea), 1, strlen(json_encode($fechaCrea)));

	$value['contenido'] = substr($value['contenido'], 0, -1);
	$value['contenido'] .= ',' . $fechaCrea;
	$valJson = json_decode($value['contenido']);
	array_push($salida, $valJson);
}

echo json_encode($salida);