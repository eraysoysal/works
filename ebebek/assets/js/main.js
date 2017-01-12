var sectionOffset = 0;

function fullpage(){
	/** one page scrolling initialize **/

	$.scrollify({
		sectionName: '.section',
		scrollSpeed: 1000,
		updateHash: false,
        standardScrollElements: '#section6',
        interstitialSection: 'footer',
		after:function(index, section) {
			if (section[index].hasClass('form')) {
				$('input[name="name"]').focus();
			}

		}
	});
}

function fileUpload(){
	$('#inputFile').fileupload({
		dropZone: $('#dropzone'),
        dataType: 'json',
        url: '/main/uploadProject',
        done: function (e, data) {
            $.each(data.result.files, function (index, file) {
                var fileName = file.name;
                var pic = file.pic;
                $('#inputFile').val(fileName);
            });
        },
        progressall: function (e, data) {
            var progress = parseInt(data.loaded / data.total * 100, 10);
            $('.progress').show();
            $('.progress .bar').css(
                'width',
                progress + '%'
            );        
        }

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

    $("#formApply").validate({
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
        },
        submitHandler: function(){
            
            var form = $("#formApply");
            var postData = form.serialize();

            $.ajax({
                url      : form.attr('action'),
                type     : "POST",
                data     : postData,
                dataType : "json",
                cache    : false,
                success  : function(returnData){
                    
                    if (returnData.error == true){
                        $(that).jAlert(returnData.msg, "fatal", 'errboxid');
                    } else {
                        handleLoginSection();
                        handleAddressSection();
                    }
                }
            });  
            return false;
        }
    });

    /** Apply Button Click **/
    $(document).on('click', '.apply-button', function(){
        $.scrollify.update();
    })


    /** Masked  **/
     $('input[name="date"]').mask('00/00/0000');
     $('input[name="tel"]').mask("0999-999-99-99");

}




$(document).ready(function(){
	form();
	if ($(window).width() > 1200) {
        console.log('windowWidth : ', $(window).width());
        fullpage();
        fileUpload();
        $(window).resize(function(){
            $.scrollify.update();
        });
    }



	$(document).bind('drop dragover', function (e, data) {
	    e.preventDefault();

        var dropZone = $('#dropzone'),
            timeout = window.dropZoneTimeout;
        if (!timeout) {
            dropZone.addClass('in');
        } else {
            clearTimeout(timeout);
        }
        var found = false,
            node = e.target;
        do {
            if (node === dropZone[0]) {
                found = true;
                break;
            }
            node = node.parentNode;
        } while (node != null);
        if (found) {
            dropZone.addClass('hover');
        } else {
            dropZone.removeClass('hover');
        }
        window.dropZoneTimeout = setTimeout(function () {
            window.dropZoneTimeout = null;
            dropZone.removeClass('in hover');
        }, 100);
    });	

})