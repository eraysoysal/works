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

function tabletGalleryPopup(){
	if($('#losAltosGallery').length){
		$('#losAltosGallery').magnificPopup({
			type: 'image',
			delegate: 'a',
			gallery:{
				enabled: true
			}
		});
	}
}

$(document).ready(function(){
	initMaplace();

	$('#overlay').click(function(){
		$('header').removeClass('animated');
	});

	$('#losAltosGallery .gallery-item').click(function(e){
		e.preventDefault();
	});

	var isMobile = {
		Android: function() {
			return navigator.userAgent.match(/Android/i);
		},
		BlackBerry: function() {
			return navigator.userAgent.match(/BlackBerry/i);
		},
		iOS: function() {
			return navigator.userAgent.match(/iPhone|iPad|iPod/i);
		},
		Opera: function() {
			return navigator.userAgent.match(/Opera Mini/i);
		},
		Windows: function() {
			return navigator.userAgent.match(/IEMobile/i);
		},
		all: function() {
			return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
		}
	};

	var mobileWindowHeight = $(window).height();
	var mobileWindowWidth = $(window).width();
	var mobileBodyHeight = $('body').outerHeight();
	
	$('.menu-right .icon-link').click(function(){
		menuAnimate();
		if (isMobile.all()) {
			if ($('header').hasClass('animated')) {
				$("body, .content:not('#main-content')").css({'height': mobileWindowHeight, 'overflow':'hidden', 'position':'relative'});
			}
			else{
				$("body, .content:not('#main-content')").css({'height': 'auto', 'overflow':'auto', 'position':'static'});
			}
		}
	});

	if (isMobile.all()) {
		if(mobileWindowWidth < 480){
			$('body').addClass('mobile');
		}
		else if(mobileWindowWidth < 769){
			$('body').addClass('tablet');
		}

		if(480 < mobileWindowWidth && mobileWindowWidth < 769){
			tabletGalleryPopup();
		}

		$('.content.main-content').css('height', mobileWindowHeight - 30);
		$('.menu-left').css('height', mobileWindowHeight);
	}
	else{
		scrollBarInit();
		sliderInit();
	}
});