$(document).ready(function() {
	$('.main-page .wrap .navbar a').smoothScroll({
		frameRate: 1000
	});
	animated();
});

function animated() {
	setTimeout(function() {$('.badge').addClass('animated');}, 300);
	$('.nb-left, .nb-center, .nb-right').addClass('animated');
}