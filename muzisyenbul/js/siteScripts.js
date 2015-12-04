// nav-menu accordion type scripts
(function ($) {
    $(document).ready(function () {

        $("li.has-sub>a").on('click', function () {

            if ($(window).width() <= 1024) {

                var element = $(this).parent('li');
                if (element.hasClass("opened")) {

                    element.removeClass("opened");
                    if ("li.opened>a") {
                        $(this).find("span.glyphicon").removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
                    }

                    element.find("li").removeClass("opened");
                    element.find("ul").slideUp(500);

                    return false;
                }

                else {
                    element.addClass("opened");

                    $(this).find("span.glyphicon").removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up");
                    element.children('ul').slideDown(500);
                    element.siblings('li').children('ul').slideUp(500);
                    element.siblings('li').removeClass('opened');
                    element.siblings('li').find('li').removeClass('opened');
                    element.siblings('li').find("span.glyphicon").removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
                    element.siblings('li').find('ul').slideUp(500);

                    return false;
                }

            }

        });

    });
})(jQuery);

function NavMenuArrows() {

    if ($(window).width() <= 1024) {
        // tablet ve mobilde menüde saða doðru duran oklarý aþaðý yöne çevirmek için
        $("#nav-menu span.glyphicon-chevron-right").removeClass("glyphicon-chevron-right").addClass("glyphicon-chevron-down");

    }


    else {
        $("#nav-menu span.glyphicon-chevron-down").removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-right");
        $("#nav-menu span.glyphicon-chevron-up").removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-right");
        $("#nav-menu ul").removeAttr('style');
    }

}

function filterAccordionInit(){
    $('.filter-wrap > li > .filter-group-title:not(.active)').next('ul').hide();
    $('.filter-group-title').click(function(){
        if($(this).hasClass('active')){
            $(this).next('ul').slideUp();
            $(this).removeClass('active');
        }
        else{
            $(this).next('ul').slideDown();
            $(this).addClass('active');
        }
    });
}

function contentAccordeon(elem){
    if($(elem).hasClass('active')){
        $(elem).next('.accordeon-list').slideUp();
        $(elem).removeClass('active');
    }
    else{
        $(elem).next('.accordeon-list').slideDown();
        $(elem).addClass('active');   
    }
}

function musicianDiscovery(){
    $('.choose-personel-group .elem a').click(function(){
        if (!$(this).hasClass('active')) {
            $('.choose-personel-group .elem a').removeClass('active');
            $(this).addClass('active');
        }
    });
}

function howToWorkDiscovery(elem){
    if($('#howToWork').hasClass('animated')){
        elem.removeClass('animated');
        elem.closest('.container-fluid').siblings('#howToWorkContent').slideUp('slow');
        elem.find('.glyphicon').removeClass('glyphicon-chevron-up');
        elem.find('.glyphicon').addClass('glyphicon-chevron-down');
    }
    else{
        elem.addClass('animated');
        elem.closest('.container-fluid').siblings('#howToWorkContent').slideDown('slow');
        elem.find('.glyphicon').removeClass('glyphicon-chevron-down');
        elem.find('.glyphicon').addClass('glyphicon-chevron-up');
    }
}

function registerFormTabMenu(){
    $('.links a').click(function(){
        var contentID = '#' + $(this).attr('data-href');
        $(contentID).parent().find('.register-content').hide();
        $(contentID).fadeIn(300);
    });
}

$(document).ready(function () {
    filterAccordionInit();
    musicianDiscovery();
    registerFormTabMenu();

    $('#howToWork').click(function(){
        howToWorkDiscovery($(this));
    });

    $('.register .links a').click(function(){
        $('.register .links a').removeClass('active');
        $(this).addClass('active');
    });

    $(function () {
        NavMenuArrows();
    });

    $('.accordeon-elem').click(function(){
        contentAccordeon($(this));
    });


    /** NAV MENU BUTTON TOGGLE **/
    $("#nav-menu-button").click(function () {
        "use strict";

        $("#nav-menu").toggleClass("show-menu");
        $("#nav-menu-button").toggleClass("show-menu");
    });

    $(window).resize(function () {

        NavMenuArrows();

    });

    $('.input-search').focus(function(){
        $('.main-search-overlay').show();
    });

    $('.main-search-overlay').click(function(){
        $(this).hide();
    });
});

$(document).keyup(function(e) {
    if (e.keyCode == 27) {
        $('.main-search-overlay').hide();
        $('.input-search').blur();
    }
});

/** BEGIN BACK TO TOP **/
$(function () {
    $("#back-top").hide();
});


$(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('#back-top').fadeIn();
        } else {
            $('#back-top').fadeOut();
        }
    });

    $('#back-top a').click(function () {
        $('body,html').animate({
            scrollTop: 0
        }, 200);
        return false;
    });
});
/** END BACK TO TOP **/

