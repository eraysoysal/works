function menuAnimate(){
	if ($('header').hasClass('animated')) {
		$('header').removeClass('animated');
	}
	else{
		$('header').addClass('animated');	
	}
}

function scrollBarInit(){
	if ($('.los-altos-menu-wrapper').length) {
		$('.los-altos-menu-wrapper').mCustomScrollbar({
			theme: "minimal-dark"
		});
	}
}

function initMaplace(){
	var maplace = new Maplace({
		locations: [{
	        lat: 41.032193, 
	        lon: 28.978129,
	        zoom: 19
	    }],
	    map_div: '#gmap'
	}).Load();
}

$(document).ready(function(){
	scrollBarInit();
	initMaplace();

	$('.menu-right .icon-link').click(function(){
		menuAnimate();
	});
});