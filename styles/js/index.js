$(document).ready(function(){
	let citiesJson = {};

	// INICIALIZAR LAS CIUDADES
	consultaClima('bogota');

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

	// LIMPIAR DATOS SRCH
	$('#cityText').on('keypress',function(e){
		$('#cities').val('NA');
	});
	$('#cities').on('change',function(e){
		$('#cityText').val('');
	});

	// BUSCAR CIUDAD FORM
	$('#formSearch').submit(function(e){
		var location = '';
		if ($('#cities').val() != 'NA') {
			location = $('#cities').val();
		} else {
			location = $('#cityText').val();
		}
		if(citiesJson[location] == null || citiesJson[location] == undefined){
			consultaClima(location);
		}
		$('#cities').val('NA');
		$('#cityText').val('');
		return false;
	});
	// CONSULTAR CLIMA DE CIUDAD
	function consultaClima(ciudad){
		$.ajax({
			url: 'php/consulta',
			type: 'POST',
			dataType: 'html',
			data: {location: ciudad},
		})
		.done(function(response){
			let resp = jQuery.parseJSON(response);

			let ctJs = resp['location']['city'].replace(/\s+/g, '');
			if(citiesJson[ctJs] == null || citiesJson[ctJs] == undefined){

				citiesJson[ctJs] = resp;
				console.log(citiesJson);
				if($('#card__container .card__content').length){
					$('#firstCard').after(cardClima(resp));
				} else {
					$('#card__container').html(cardClima(resp));
					$('.card__content').attr('id','firstCard');
				}
			}
		})
		.fail(function(response){
			$('#preloader').removeClass('active');
			console.log('Error: ' + response);
		});
	}
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
				<div class="card__content">
					<div class="card__header">
						<div class="card__header-info">
							<h2 class="card__header-temp">${fahrenheit(arr['current_observation']['condition']['temperature'])} <sup>°C</sup></h2>
							<p class="card__header-country">${arr['location']['country']}</p>
							<p class="card__header-city">${arr['location']['city']}</p>
						</div>
						<div class="card__header-icon">
							<i class="fas fa-clouds-sun"></i>
						</div>
					</div>
					<div class="card__map">
						<iframe src="https://maps.google.com/?ll=${arr['location']['lat']},${arr['location']['long']}&z=10&output=embed" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
					</div>
					<div class="card__list">
						<table class="card__list-table">
							<thead>
								<tr>
									<th>Humedad</th>
									<th>Visibilidad</th>
									<th>Viento</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${arr['current_observation']['atmosphere']['humidity']}%</td>
									<td>${nudos(arr['current_observation']['atmosphere']['visibility'])}</td>
									<td>${nudos(arr['current_observation']['wind']['speed'])}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>`;
		return card;
	}
});