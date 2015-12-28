function sliderInit(){
	if ($('#slider').length) {
		$('#slider').owlCarousel({
			singleItem: true,
			autoPlay: 7000,
			stopOnHover: true,
			navigation: true,
			navigationText: ['',''],
			pagination: false
		});
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

$(document).ready(function(){
	sliderInit();
	honeyCombInfoWindow();
});