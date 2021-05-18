<!DOCTYPE html>
<html lang="es">
<head>
	<!-- META -->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- LINK -->
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	<link rel="stylesheet" href="<?php echo RUTA; ?>styles/css/informacion.css">
	<!-- TITLE -->
	<title>Información | <?php echo TITULO; ?></title>
</head>
<body>
	<div class="container">
		<!-- MENU -->
		<section class="card__search">
			<div class="card__nav">
				<div class="icon-resp">
					<i class="fas fa-bars" id="openMenu"></i>
				</div>
				<a href="<?php echo RUTA; ?>" class="card__nav-link">Buscar</a>
				<a href="<?php echo RUTA; ?>/SI/historial" class="card__nav-link">Historial</a>
				<a href="#" class="card__nav-link active">Información</a>
				<!-- CLOSE MENU -->
				<div class="icon-resp">
					<i class="fas fa-times" id="closeMenu"></i>
				</div>
			</div>
		</section>
		<!-- CONTENIDO -->
		<section class="informacion" id="informacion">
			<h2>Prueba con PHP</h2>
			<p>Este proyecto de prueba para la consulta de clima e historial por ciudades fue desarrollado en su totalidad por el desarrollador: Carlos David Garcia Lopez implementando las siguientes tecnologias.</p>
			<ul>
				<li>PHP</li>
				<li>HTML5</li>
				<li>CSS3</li>
				<li>JavaScript</li>
				<li>JQuerry</li>
				<li>Ajax</li>
				<li>MySQL</li>
				<li>Yahoo Weather API</li>
			</ul>
			<p>Brindando una interfaz para el uso del usuario con la capaciad de consultar las condiciones climaticas y metereologicas de una ciudad mediante un listado previamente registrado o tambien mediante la consulta del nombre de la ciudad deseada.</p>
			<p>Esta es la versión 1.0 de este proyecto y no se descarta la ampliación y mejora de los modulos del sistema, su uso es abierto a cualquier usuario tomando las medidas para que se su uso no sea de forma ilicita o infringiendo normas del software y sus tecnologias. <a target="_blank" href="https://developer.yahoo.com/weather/documentation.html#terms">Terminos de Yahoo Weather API</a></p>

			<br>

			<h2>Yahoo Weather API</h2>
			<p>La fuente RSS del tiempo le permite obtener información meteorológica actualizada para su ubicación. Puede guardar este feed en My Yahoo! o su agregador de feeds favorito, o incorpore los datos RSS en su propio sitio web o aplicación cliente. La fuente RSS del tiempo es una fuente generada dinámicamente según la ubicación, latitud y longitud o woeid.</p>
			<a href="https://developer.yahoo.com/weather/documentation.html">Yahoo Weather API</a>
		</section>
		<!-- FOOTER -->
		<footer>
			Carlos David García López | Prueba técnica
		</footer>
	</div>

	<!-- ============================================================================= -->
	<!-- ========================= CARLOS DAVID GARCIA LOPEZ ========================= -->
	<!-- ================================ PHP - MYSQL ================================ -->
	<!-- ================================ VERSION 1.0 ================================ -->
	<!-- ============================ www.mipaginaweb.com ============================ -->
	<!-- ============================================================================= -->
	
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="<?php echo RUTA; ?>styles/js/informacion.js"></script>
</body>
</html>