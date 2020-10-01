var data = [];
var linkName, linkUrl, dateSaved, currentItemLength;
var lastItemLength = 0;
var formElem;

function form(){
	$('.form .link').focus(function (){
		$(this).val('http://');
	});
	$('.form input[name="linkName"]').focus();

	var linkNameRequired, linkNameValid, linkUrlRequired, linkUrlValid;

	linkNameRequired = "Lütfen bu alanı boş bırakmayınız.";
	linkNameValid  = "Lütfen girdiğiniz bilgiyi kontrol ediniz.";
	linkUrlRequired = "Lütfen bu alanı boş bırakmayınız.";
	linkUrlValid = "Lütfen geçerli bir url adresi yazınız";

	$("#addLinkForm").validate({
		ignore: [],
		rules: {
			linkName: {
			    required: true,
			    minlength: 2
			},
			linkUrl: {
			    required: true,
			    url: true
			}
		},
		messages: {
			linkName : {
				required : linkNameRequired,
				minlength: linkNameValid
			},
			linkUrl: {
				required: linkUrlRequired,
				url: linkUrlValid
			}
		}
	});
}


function addLink(){
	$('.form').off('click', '#btnAddLink').on('click', '#btnAddLink', function(){
		if ($("#addLinkForm").valid()) {
			linkName = $('.form input[name="linkName"]').val();
			linkUrl = $('.form input[name="linkUrl"]').val();
			dateSaved = new Date();

			if (lastItemLength > 0) {
				lastItemLength = jQuery.parseJSON(localStorage.getItem("data")).length;
			}

			data.push({ "id" : lastItemLength, "linkName" : linkName , "urlName" : linkUrl, "dateSaved" : dateSaved, "score": "0"});
			localStorage.setItem("data", JSON.stringify(data));

			currentItemLength = jQuery.parseJSON(localStorage.getItem("data")).length;

			if (currentItemLength > lastItemLength) {
				lastItemLength = currentItemLength;
				$.alert({
					title: 'Kayıt Başarılı',
	    			content: '<strong>' + linkName + '</strong>'  + ' isimli link başarılı bir şekilde kaydedilmiştir.',
	    			type: 'green',
	    			columnClass: 'col-md-6 col-md-offset-3',
	    			onClose: function () {
			        	$('.form input').val("");
			        	setTimeout(function() {$('.form input[name="linkName"]').focus();}, 400);
			        }
				});
			}
		}
	});
}

function orderBy(param){
	$('.order-by').on('change', '#orderBySelect', function(){
		if ($(this).val() == "asc") {
			data = _.orderBy(data, 'score', 'asc');
		}
		else if ($(this).val() == "desc"){
			data = _.orderBy(data, 'score', 'desc');
		}

		localStorage.setItem("data", JSON.stringify(data));
		list();

	});

	if (param) {
		data = _.orderBy(data, 'score', param);
		localStorage.setItem("data", JSON.stringify(data));
		list();
	}
}


function voteList(id, score){
	$.each( data, function( i, l ){
		  
	  if (data[i].id == id) {
			data[i].score = score;
			localStorage.setItem("data", JSON.stringify(data));
		}
	});

	if ($('#orderBySelect').val() != null) {
		var orderVal = $('#orderBySelect').val();
		orderBy(orderVal);
	}
	else{
		orderBy('asc');
	}

}

function vote(){
	var id, score;
	
	$('.vote').on('click', '#upVote', function(){
		id = $(this).closest('li').data('id');
		score = $(this).closest('li').attr('data-score');
		score = parseInt(score) + 1;
		$(this).closest('li').attr('data-score', score);
		
		$(this).closest('li').find('.score').html(score);

		
		voteList(id, score);


	});

	$('.vote').on('click', '#downVote', function(){
		id = $(this).closest('li').data('id');
		score = $(this).closest('li').attr('data-score');
		score = parseInt(score) - 1;
		$(this).closest('li').attr('data-score', score);
		
		$(this).closest('li').find('.score').html(score);

		voteList(id, score);

	});
}

function list(){
	$('#resultList').empty();


	for (var i = data.length - 1; i >= 0; i--) {

		if (typeof data[i].score === "undefined") {
			data[i].score = 0;
		}

		$('#resultList').append('<li data-id="'+ data[i].id +'" data-score="'+data[i].score+'">'+
			'<div class="left">'+
				'<span class="indicator-box">'+
					'<div class="point">'+
						'<div class="score">'+data[i].score+'</div>'+
						'<div class="text">POINTS</div>'+
					'</div>'+
				'</span>'+
			'</div>'+
			'<div class="right">'+
				'<p class="link-title"><strong>'+ data[i].linkName +'</strong></p>'+
				'<a href="javascript:;" class="link">'+ data[i].urlName +'</a>'+
				'<div class="vote">'+
					'<a id="upVote" class="left" href="javascript:;"><span class="vote-arrow glyphicon glyphicon-menu-up"></span><span class="vote-text up">Up Vote</span></a>'+
					'<a id="downVote" class="right" href="javascript:;"><span class="vote-arrow glyphicon glyphicon-menu-down"></span><span class="vote-text down">Down Vote</span></a>'+
				'</div>'+
			'</div>'+
		'</li>');
	}

	vote();
}


$(document).ready(function(){
	if (jQuery.parseJSON(localStorage.getItem("data")) != null) {
		lastItemLength = jQuery.parseJSON(localStorage.getItem("data")).length;	
		data = jQuery.parseJSON(localStorage.getItem("data"));
	}
	

	if ($('.form').length) {
		form();
		addLink();
	}

	if ($('#resultList').length) {
		list();
		vote();
		orderBy();
	}
});