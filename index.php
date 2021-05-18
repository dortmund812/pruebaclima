<?php
require_once 'config/config.php';
require_once 'config/functions.php';
require_once 'config/conexion.php';
require_once 'config/registro.php';

$con = new conexion();
$conexion = $con->conexion();
if (!$conexion) {
	header('Location: '.RUTA.'config/error/500');
	die();
}
$registro = new registro();
$ciudades = $registro->ciudades();

include_once 'views/index.view.php';