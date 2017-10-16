$(document).ready(function () {
	$(document).on("scroll", onScroll);
	tabMenu();

	$('a[href^="#"]').on('click', function (e) {
		e.preventDefault();
		$(document).off("scroll");

		$('a').each(function () {
			$(this).removeClass('navactive');
		})
		$(this).addClass('navactive');

		var target = this.hash;
		$target = $(target);
		$('html, body').stop().animate({
			'scrollTop': $target.offset().top+2
		}, 500, 'swing', function () {
			window.location.hash = target;
			$(document).on("scroll", onScroll);
		});
	});
});

function onScroll(event){
	var scrollPosition = $(document).scrollTop();
	$('.nav li a').each(function () {
		var currentLink = $(this);
		var refElement = $(currentLink.attr("href"));
		if (refElement.position().top <= scrollPosition && refElement.position().top + refElement.height() > scrollPosition) {
			$('ul.nav li a').removeClass("navactive");
			currentLink.addClass("navactive");
		}
		else{
			currentLink.removeClass("navactive");
		}
	});
};

function tabMenu(){

	var $filter = $('.js-filter');
	var $activeElem = $('.js-filter.active');
	var $activeContent = $activeElem.data('filter');
	var $portfolioItem = $('.js-portfolio-item-wrapper');

	$portfolioItem.removeClass('active').hide();
	$($activeContent).addClass('active').fadeIn(1000);


	$(document).on('click', '.js-filter', function(){
		$('.js-filter').removeClass('active');
		$(this).addClass('active');

		$activeElem = $('.js-filter.active');
	 	$activeContent = $activeElem.data('filter');

	 	$portfolioItem.removeClass('active').hide();
	 	$($activeContent).addClass('active').fadeIn(700);

	});


}