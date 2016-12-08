var sectionOffset = 0;

function fullpage(){
	$('#mainPage').fullpage({
        scrollingSpeed: 1000,
        onLeave: function(index, nextIndex, direction){
		
        },
        afterRender: function(){
        	$('.section').each(function(){
        		$(this).attr('data-offset', sectionOffset)
        		sectionOffset = $(this).height() + sectionOffset;
        	})
        }
    });
}

$(document).ready(function(){
	fullpage();

	
})