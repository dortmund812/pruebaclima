$(document).ready(function(){
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
});