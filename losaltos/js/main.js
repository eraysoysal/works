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

$(document).ready(function(){
	scrollBarInit();

	$('.menu-right .icon-link').click(function(){
		menuAnimate();
	});
});