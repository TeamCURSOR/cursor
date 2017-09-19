
function nav_menu_toggle() {
    $x=$('.m_nav');    
    $x.toggleClass("responsive");       
}

var $window = $(window);

$(document).ready(function(){
    $("p").click(function(){
        $("p").toggleClass("blue");
    });
});

$(window).on('scroll', function() {
    $topOffset = $(this).scrollTop();
 
    if($topOffset>70)
    {
    	// $m_nav.className='llol';
    	
    	$('.menu').addClass("hb-menu");
    	$('.m_nav').addClass("hb-nav");
    }
    else{
    	$('.menu').removeClass("hb-menu");	
    	$('.m_nav').removeClass("hb-nav");
    }
});

