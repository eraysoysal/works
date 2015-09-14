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

function tboxTitleAnimate(){
	$('.form .tBox').keypress(function() {
	 	$(this).siblings('.tBoxTitle').fadeIn(300);
	});
	$('.form .tBox').blur(function(){
		if(!$(this).val().length > 0){
	 		$(this).siblings('.tBoxTitle').fadeOut(300);
		}
	});
}

function validation(){
	$("form").validate({
		ignore: [],
		rules: {
			username: {
				required: true,
				minlength: 2
			},
			password: {
				required: true,
				minlength: 2
			}
		},
		messages: {
			username: {
				required: firstNameRequired,
				minlength: firstNameMinLength
			},
			password: {
				required: lastNameRequired,
				minlength: lastNameMinLength
			}
		}
	});
}

$(document).ready(function(){
	advancedSearchShow();
	selectBoxInıt();
	tboxTitleAnimate();
	validation();
});
