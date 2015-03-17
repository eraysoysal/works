$(document).ready(function(){
	$.getJSON( "js/data.json", function( data ) {
		var cities = data.cities;
		var branches = data.branches;
		var locationA = [];
		var locationI = [];

		$.each( cities, function( key, city ) {
		  $(".sbox").append($('<option>', { value : city }).text(city)); 
		});
		
		$.each( branches, function( key, branch ) {
			branch['html'] = '<div class="customTooltip"><span class="title">' + branch.title + '</span>' 
				+ '<span class="address">' + branch.address + '</span>'
				+ '<span> Telefon' + '</span>'
				+ '<span class="phone">' + branch.phone + '</span>';
			branch['icon'] = '../img/marker.png';
		 	if (branch.city =="Ankara") {
		 		locationA.push(branch);
		 	};
		 	if (branch.city =="İstanbul") {
		 		locationI.push(branch);
		 	};
		});
		var maplace = new Maplace({
		    locations: branches,
		    map_div: '#gmap',
		    controls_div: '#controls-tabs',
		    controls_type: 'list',
		    controls_on_map: false
		}).Load();

		$('.selectbox').change(function(){
			var value = $( ".selectbox option:selected" ).val();
			var location;
			if(value == "Ankara"){
				location = locationA;
			}
			if(value == "İstanbul"){
				location = locationI;
			}
			if(value == "allcities"){
				location = branches;
			}
			maplace.SetLocations(location);
			maplace.Load();
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
