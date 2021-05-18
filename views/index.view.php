<!DOCTYPE html>
<html lang="es">
<head>
	<!-- META -->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- LINK -->
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	<link rel="stylesheet" href="<?php echo RUTA; ?>styles/css/index.css">
	<!-- TITLE -->
	<title>Clima | <?php echo TITULO; ?></title>
</head>
<body>
	<div class="container">
		<!-- MENBU -->
		<section class="card__search">
			<div class="card__nav">
				<div class="icon-resp">
					<i class="fas fa-bars" id="openMenu"></i>
				</div>
				<a href="#" class="card__nav-link active">Buscar</a>
				<a href="<?php echo RUTA; ?>SI/historial" class="card__nav-link">Historial</a>
				<a href="<?php echo RUTA; ?>SI/informacion" class="card__nav-link">Información</a>
				<!-- BUSCAR CIUDAD -->
				<form action="" method="POST" id="formSearch" class="formSearch">
					<!-- BUSCAR CIUDAD -->
					<select name="cities" id="cities">
						<option value="NA" selected="true">Seleccionar</option>
						<?php foreach ($ciudades as $ciudad):?>
							<?php echo '<option value="'.$ciudad['valor'].'">'.$ciudad['nombre'].'</option>' ?>
						<?php endforeach; ?>
					</select>
					<input type="text" name="cityText" id="cityText" placeholder="Buscar Ciudad" autocomplete="off">
					<!-- ENVIAR FORMULARIO -->
					<input type="submit" value="Buscar" id="search-city">

					<div class="icon-resp">
						<i class="fas fa-times" id="closeMenu"></i>
					</div>
				</form>
			</div>
		</section>
		<section class="clima" id="clima">
			<!-- CLIMA CARD CONTAINER -->
			<div class="card__container" id="card__container">
				<!-- CARDS -->
			</div>
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
	<script src="<?php echo RUTA; ?>styles/js/index.js"></script>
</body>
</html>