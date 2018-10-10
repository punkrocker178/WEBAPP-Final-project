$(document).ready(function(){

	$(".phim").mouseover(function(){
		$(this).children("button").css("display","block");
	});

	$(".phim").mouseleave(function(){
		$(".btn").css("display","none");
	});
});