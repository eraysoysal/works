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
		$('.los-altos-menu-wrapper').mCustomScrollbar(
{			theme: "minimal-dark"
		});
	}
}

function initMaplace(){
	if($('#gmap').length){
			var maplace = new Maplace({
			locations: [{
		        lat: 41.032193, 
		        lon: 28.978129,
		        zoom: 19
		    }],
		    map_div: '#gmap'
		}).Load();
	}
}

function sliderInit(){
	if($('#losAltosGallery').length){
		var slider = $('#losAltosGallery');
		slider.owlCarousel({
			items: 1,
			singleItem: true,
			autoPlay: false,
			stopOnHover: true,
			navigation: true,
			navigationText: ["",""],
			pagination: false
		});

	}
}

$(document).ready(function(){
	scrollBarInit();
	initMaplace();
	sliderInit();

	$('.menu-right .icon-link').click(function(){
		menuAnimate();
	});
});