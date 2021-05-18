<?php 
// LIMPIAR LOS DATOS INGRESADOS
function limpiarDatos($datos){
	$datos = trim($datos);
	$datos = stripcslashes($datos);
	$datos = htmlspecialchars($datos);
	return $datos;
}
// OBTENER UN NUMERO ENTERO
function numero($id){
	return (int)limpiarDatos($id);
}
// CREA EL FORMATO DE LA FECHA
function fecha($fecha){
	$timestamp = strtotime($fecha);
	$meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];
	$dia = date('d', $timestamp);
	$mes = date('m', $timestamp) - 1;
	$year = date('Y', $timestamp);

	$fecha = $dia . '/' . $meses[$mes] . '/' . $year;

	return $fecha;
}