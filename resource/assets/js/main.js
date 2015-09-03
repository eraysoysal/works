function advancedSearchShow(){
	$('.checkWrap .link a').click(function(){
		if ($(this).parent().hasClass('show')) {
			$(this).parent().next('ul').stop(true,true).slideUp(500);
			$(this).parent().removeClass('show');
		}
		else{
			$(this).parent().next('ul').stop(true,true).slideDown(500);
			$(this).parent().addClass('show');	
		}
	});
}

$(document).ready(function(){
	advancedSearchShow();
});
