var slider;
function sliderInit(){
	if ($('#slider').length) {
		slider = $('#slider').owlCarousel({
			singleItem: true,
			autoPlay: 7000,
			paginationSpeed: 400,
			stopOnHover: true,
			navigation: true,
			navigationText: ['',''],
			pagination: false
		}).data('owlCarousel');
	}
}

function honeyCombInfoWindow(){
	if ($('.honey-comb').length) {
		$('.honey-comb').hover(function(){
			$(this).find('.description-box').stop(true,true).fadeIn(400);
		},function(){
			$(this).find('.description-box').stop(true,true).hide();
		});
	}
}

function selectboxInit(){
	if ($('.selectbox').length) {
		$('.selectbox').on('change', function(){
			$(this).addClass('has-value');
		});
	}
}

$(document).ready(function(){
	sliderInit();
	honeyCombInfoWindow();
	selectboxInit();
});

$(document.documentElement).keyup(function(event) {
    if (event.keyCode == 37) {
        slider.prev();
    } else if (event.keyCode == 39) {
        slider.next();
    }
});