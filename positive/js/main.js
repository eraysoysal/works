$(document).ready(function(){
	$.getJSON( "js/data.json", function( data ) {
		var cities = data.cities;
		console.log(cities);
		var branches = data.branches;
		console.log(branches[0]);
		$.each( cities, function( key, city ) {
		  $(".sbox").append($('<option>', { value : city }).text(city)); 
		});
		
		$.each( branches, function( key, branch ) {
		  $(".sample").append(branch.address+"<br>");
		});


		$(function() {
		    new Maplace({
		        locations: [branches[0]],
		        controls_on_map: false
		    }).Load();
		});
	});

	var owl = $("#slider");
      owl.owlCarousel({
        navigation : true,
        singleItem : true,
        transitionStyle : "fade"
      });

    $("#selectbox").select2();
    $('.select2-chosen').text("Şehir Seçiniz");

    
});

$(".mainlist li").click(function() {
	var thisclass = $(this).children('.sublist').attr("class");
	$(this).children('.sublist').addClass("selected");
	if (thisclass == "sublist selected"){
		$(this).children('.sublist').slideToggle();
		$('.mainlist li .sublist').removeClass('selected');
	}
	else{
		$('.mainlist li .selected').slideToggle();
		$('.mainlist li .sublist').removeClass('selected');	
		$(this).children('.sublist').addClass("selected");
		
	}
});

$('.menu-icon').click(function() {
	$('.menulist').slideToggle('slow');
	var iconSelection = $('.menu-icon').attr("class");
	if (iconSelection == "menu-icon selected"){
		$(this).removeClass("selected");
	}
	else{
		$(this).addClass("selected");
	}
});
