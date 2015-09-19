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
		placeholder: "Select Industry" /*Bu satırda değişiklik mevcut.*/
	});
	$('.mobile-menu select').select2({
		minimumResultsForSearch: -1,
		placeholder: "Navigation" /*Bu satırda değişiklik mevcut.*/
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
				required: 'Lütfen kullanıcı adınızı giriniz',
				minlength: 'Kullanıcı adınız en az 2 karakterden oluşmalıdır'
			},
			password: {
				required: 'Lütfen şifrenizi giriniz',
				minlength: 'Şifreniz en az 2 karakterden oluşmalıdır'
			}
		},
		submitHandler: function(form) {
			/*Yeni Eklendi 16.09.2015*/
            form.submit();
        }
	});
}

$(document).ready(function(){
	advancedSearchShow();
	selectBoxInıt();
	tboxTitleAnimate();
	validation();

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

	if (isMobile.all()) {
		$('.pagination a').each(function() {
			if ($(this).css('display') == 'none') {
				$(this).parent().hide();
			}
			if($(this).attr('class') == 'page-button selected'){
				$(this).parent().show();
				$(this).css('display', 'inline-block');
			}
		});
	}

	
});
