$(document).ready(function(){
	let citiesJson = {};

	// TOGGLE MENU
	$('#openMenu').on('click',function(e){
		let menu = $('.card__nav');
		menu.height(menu[0].scrollHeight);
		$('.icon-resp').addClass('active');
	});
	$('#closeMenu').on('click',function(e){
		let menu = $('.card__nav');
		menu.height('2rem');
		$('.icon-resp').removeClass('active');
	});

	// CONSULTAR CLIMA DE CIUDADES
	$.ajax({
		url: '../php/historial',
		type: 'POST',
		dataType: 'html',
		// data: {location: ciudad},
	})
	.done(function(response){
		let resp = jQuery.parseJSON(response);
		for (var i = 0; i < resp.length; i++) {
			if (i==0) {
				$('#card__container').html(cardClima(resp[i]));
				$('.card__list').attr('id','firstCard');
			} else {
				$('#firstCard').after(cardClima(resp[i]));
			}
		}
	})
	.fail(function(response){
		$('#preloader').removeClass('active');
		console.log('Error: ' + response);
	});
	// CONVERTIR DE FARENHEIT A CELCIUS
	function fahrenheit(faren){
		return dosDecimales((faren - 32)*5/9);
	}
	// CONVERTIR DE FARENHEIT A CELCIUS
	function nudos(nudo){
		return dosDecimales(nudo * 1.852);
	}
	// DOS DECIMALES
	function dosDecimales(n) {
		let t=n.toString();
		let regex=/(\d*.\d{0,1})/;
		return t.match(regex)[0];
	}
	// REDOUN
	function redNum(num){
		return Math.round(num);
	}
	// CARD CLIMA
	function cardClima(arr){
		let card = `
				<div class="card__list">
					<!-- INFORMACION DE TEMPERATURA Y CIUDAD -->
					<div class="card__list-clima">
						<h2 class="card__header-temp">${fahrenheit(arr['current_observation']['condition']['temperature'])} <sup>°C</sup></h2>
						<p class="card__header-country">${arr['location']['country']}</p>
						<p class="card__header-city">${arr['location']['city']}</p>
					</div>
					<!-- ICONO -->
					<div class="cad__list-icon">
						<i class="fas fa-clouds-sun"></i>
						<span>${arr['fechacrea']}</span>
					</div>
					<!-- DESCRIPCIONES DE CONDICION -->
					<div class="card__list-table">
						<!-- HUMEDAD -->
						<div class="card__list-descr">
							<span class="card__list-title">Humedad</span>
							<span class="card__list-info">${arr['current_observation']['atmosphere']['humidity']}%</span>
						</div>
						<div class="card__list-descr">
							<span class="card__list-title">Visibilidad</span>
							<span class="card__list-info">${nudos(arr['current_observation']['atmosphere']['visibility'])}<sub>Km</sub></span>
						</div>
						<div class="card__list-descr">
							<span class="card__list-title">Presión</span>
							<span class="card__list-info">80%</span>
						</div>
						<div class="card__list-descr">
							<span class="card__list-title">Viento</span>
							<span class="card__list-info">${nudos(arr['current_observation']['wind']['speed'])}<sub>Km/h</sub></span>
						</div>
						<div class="card__list-descr">
							<span class="card__list-title">Amanecer</span>
							<span class="card__list-info">80%</span>
						</div>
						<div class="card__list-descr">
							<span class="card__list-title">Atardecer</span>
							<span class="card__list-info">80%</span>
						</div>
						<div class="card__list-descr">
							<span class="card__list-title">Longitud</span>
							<span class="card__list-info">${arr['location']['long']}</span>
						</div>
						<div class="card__list-descr">
							<span class="card__list-title">Latitud</span>
							<span class="card__list-info">${arr['location']['lat']}</span>
						</div>
					</div>
				</div>`;
		return card;
	}
});