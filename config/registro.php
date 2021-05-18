<?php 
class registro {
	// DATOS HISTORIAL CLIMA
	public function historialClima(){
		$con = new conexion();
		$conexion = $con->conexion();
		$statement = $conexion->prepare("SELECT DISTINCT contenido, fechacrea FROM historial ORDER BY id DESC");
		$statement->execute();
		return $statement->fetchAll();
	}
	// DATOS CIUDADES
	public function ciudades(){
		$con = new conexion();
		$conexion = $con->conexion();
		$statement = $conexion->prepare("SELECT valor, nombre FROM ciudades ORDER BY id");
		$statement->execute();
		return $statement->fetchAll();
	}
	// INSERTAR REGISTRO
	public function insertRegistro($contenido){
		$con = new conexion();
		$conexion = $con->conexion();
		$statement = $conexion->prepare("INSERT INTO historial (contenido) VALUES(:contenido)");
		$statement->execute(array(':contenido' => $contenido));
		return $statement->rowCount();
	}
}