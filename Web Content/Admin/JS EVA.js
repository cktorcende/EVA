
$(document).ready(function() {
	$(".menu-icon").on("click", function(){
		$("nav ul").toggleClass("showing");
	});
});


$(window).on("scroll", function(){
	if($(window).scrollTop()){
		$('nav').addClass('black');
	}
	else{
		$("nav").removeClass('black');
	}
});

$(document).ready(function() {

    $('tr').click(function() {
        var href = $(this).find("a").attr("href");
        if(href) {
            window.location = href;
            
            
        }
    });
   

});
