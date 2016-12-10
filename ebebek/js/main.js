var sectionOffset = 0;

function fullpage(){
	/** one page scrolling initialize **/

	$.scrollify({
		sectionName: '.section',
		scrollSpeed: 1000,
		updateHash: false,
		after:function(index, section) {
			console.log(section[index])

			if (section[index].hasClass('form')) {
				$('input[name="name"]').focus();
			}

		}
	});
}

function fileUpload(){
	$('#inputFile').fileupload({
		dropZone: $('#dropzone')
	});
}

function form(){

	/** Validation **/
	var nameRequired = 'Lütfen adınızı ve soyadınızı giriniz';
    var nameMinLength = 'Bu bilgi en az iki karakterden oluşmalıdır';
    var mailRequired = 'Lütfen bir e-posta adresi giriniz';
    var mailVerify = 'Lütfen geçerli bir e-posta adresi giriniz';
    var phoneRequired = 'Lütfen cep telefonu bilgisi giriniz';
    var phoneVerify = 'Lütfen cep telefonu bilgisini kontrol ediniz';
    var birthDateRequired = 'Lütfen doğum tarihinizi giriniz';
    var birthDateInvalid = 'Lütfen doğum tarihinizi kontrol ediniz.';
    var cityRequired = 'Lütfen il bilgisi giriniz.';
    var cityVerify = 'Lütfen il bilgisini kontrol ediniz.';

    $("#form").validate({
        ignore: [':hidden'],
        errorClass : 'error-message',
        rules: {
            name: {
                required: true,
                minlength: 2
            },
            date: {
                required: true,
                minlength: 2
            },
            tel: {
                required: true,
                minlength: 2
            },
            email: {
                required: true,
                email: true
            },
            city: {
                required: true,
                minlength: 2
            }
        },
        messages: {
            name: {
                required: nameRequired,
                minlength: nameMinLength
            },
            date: {
                required: birthDateRequired,
                minlength: birthDateInvalid
            },
            tel: {
                required: phoneRequired,
                minlength: phoneVerify
            },
            email: {
                required: mailRequired,
                email: mailVerify
            },
            city: {
                required: cityRequired,
                minlength: cityVerify
            }
        }
    });


    /** Masked  **/
     $('input[name="date"]').mask('00/00/0000');
     $('input[name="tel"]').mask("0999-999-99-99");

}

$(document).ready(function(){
	fullpage();
	form();
	fileUpload();

	$(document).bind('drop dragover', function (e) {
	    e.preventDefault();
	});
	
})