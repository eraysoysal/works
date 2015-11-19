function menuAnimate(){
	if ($('header').hasClass('animated')) {
		$('header').removeClass('animated');
	}
	else{
		$('header').addClass('animated');	
	}
}

$(document).ready(function(){
	$('.menu-right .icon-link').click(function(){
		menuAnimate();
	});
});