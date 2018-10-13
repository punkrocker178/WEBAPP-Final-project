$(document).ready(function(){


	$(".phim").mouseover(function(){
		$(this).children("button").css("display","block");
	});

	$(".phim").mouseleave(function(){
		$(".butt").css("display","none");
	});


});