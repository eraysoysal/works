$(document).ready(function(){
	$.getJSON( "js/data.json", function( data ) {
		var cities = data.cities;
		var branches = data.branches;
		$.each( cities, function( key, city ) {
		  $(".sample").append(city);
		});
		$(".sample").append("<br><br>");
		$.each( branches, function( key, branch ) {
		  $(".sample").append(branch.address+"<br>");
		});
	});

	var owl = $("#slider");
      owl.owlCarousel({
        navigation : true,
        singleItem : true,
        transitionStyle : "fade"
      });
});

$(".mainlist li").click(function() {
  $(".sublist").show( "slow" );
  $('.mainlist li').removeClass();
  $(this).addClass("selected");
});

