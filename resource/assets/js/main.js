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

function selectBoxInıt(){
	$('.notice-count select').select2({
		minimumResultsForSearch: -1
	});
	$('.tBoxWrap select').select2({
		minimumResultsForSearch: -1,
		placeholder: "placeholder"
	});
}

$(document).ready(function(){
	advancedSearchShow();
	selectBoxInıt();
});
