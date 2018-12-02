$(document).ready(function () {


	$(".phim").mouseover(function () {
		$(this).children("button").css("display", "block");
	});

	$(".phim").mouseleave(function () {
		$(".butt").css("display", "none");
	});

	$(".butt").click(function(){
		alert("CLICKED");
	})

	$("#date").change(function(){
		var selectedDate = $("#date").val();
		var stringURL = $("#url").val().split("?id=");
		var ID = stringURL[1];
		$.ajax({
			url : $("#url").val(),
			dataType : 'json',
			data: "date= "+selectedDate,
			success : function(data){
				$(".table-responsive").remove();
				console.log(data);
				
				$.each(data,function(rap,value){
					console.log(data[rap]["GioChieu"]);
					var table = "<div class=\"table-responsive\" id=\""+rap+"\">"
					+ "<table class=\"table\"><thead><tr><th>"+data[rap]["DinhDang"]+" - "+data[rap]["MaRap"]
					+ "</th></tr><tr><td><a href=\"datVe.php?id="+ID+"?date="+selectedDate+"\">"
					+ data[rap]["DinhDang"]+"</a></td></tr></thead></table></div>";
					$("#movieDetailContainer").append(table);
				});
			},
			error : function(e){
				console.log(e);
			}
		});
	})


});