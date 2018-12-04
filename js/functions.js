$(document).ready(function () {


	$(".phim").mouseover(function () {
		$(this).children("button").css("display", "block");
	});

	$(".phim").mouseleave(function () {
		$(".butt").css("display", "none");
	});

	$(".butt").click(function () {
		alert("CLICKED");
	});

	//AJAX khi đổi ngày chiếu
	$("#date").change(function () {
		var selectedDate = $("#date").val();
		var stringURL = $("#url").val().split("?id=");
		var ID = stringURL[1];
		$.ajax({
			url: $("#url").val(),
			dataType: 'json',
			data: "date= " + selectedDate,
			success: function (data) {
				$(".table-responsive").remove();
				console.log(data);

				$.each(data, function (rap, value) {
					console.log(data[rap]["GioChieu"]);
					var table = "<div class=\"table-responsive\" id=\"" + rap + "\">" +
						"<table class=\"table\"><thead><tr><th>" + data[rap]["DinhDang"] + " - " + data[rap]["MaRap"] +
						"</th></tr><tr><td><a href=\"datVe.php?id=" + ID + "?date=" + selectedDate + "\">" +
						data[rap]["DinhDang"] + "</a></td></tr></thead></table></div>";
					$("#movieDetailContainer").append(table);
				});
			},
			error: function (e) {
				console.log(e);
			}
		});
	});

	//Kiểm tra số lượng vé >0
	$("#continueBtn").click(function () {
		if ($("#numTicket").val() <= 0) {
			alert("Số lượng vé phải lớn hơn 0");
			return;
		} else {
			$("#numOfTicketsModal").modal('hide');
			//Khi chọn 1 ghế
			$(".ghe").click(function () {
				//re-selected - chọn lại 
				var numTicket = parseInt($("#numTicket").val());
				if ($(this).css('background-color') == 'rgb(79, 80, 81)') {
					$(this).css('background-color', '#dee2e6');
					$(this).css('color','#212529');
					numTicket += 1;
					$("#numTicket").val(numTicket);
				} else if($(this).css('background-color') == 'rgb(222, 226, 230)' && numTicket>0){ // selected - chọn mới
					$(this).css('background-color', 'rgb(79, 80, 81)');
					$(this).css('color','white');
					numTicket -= 1;		
					$("#numTicket").val(numTicket);				
				}else{
					alert("Qua so luong ve");
				}
				console.log(numTicket);

			});
		}
	})

});