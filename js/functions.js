$(document).ready(function () {
	var selectedGhe = new Array();

	$("#allMoviesBtn").click(function(){
		$(".phim-hidden").css('display','block');
		$(this).css('display','none');
	})

	$(".phim").mouseover(function () {
		$(this).children("button").css("display", "block");
	});

	$(".phim").mouseleave(function () {
		$(".butt").css("display", "none");
	});

	$(".butt").click(function () {
		alert("CLICKED");
	});

	$(".error-msg").click(function () {
		$(".error-msg").fadeOut(1500, function () {
			$(".error-msg").css('display', 'none');
		})
	});

	$(".alert").click(function () {
		$(".alert").fadeOut(1500, function () {
			$(".alert").css('display', 'none');
		})
	});

	//Người dùng Login
	$("#loginBtn").click(function () {
		$.post("login.php", {
			userID: $("#userID").val(),
			password: $("#password").val()
		}, function (data) {
			console.log(data);
			if (data == true) {
				$("#loginModal").modal("hide");
				setTimeout(function () {
					window.location = "http://localhost/WEBAPP-Final-project/index.php";
				}, 2000);
				$("#loginSuccess").modal();
			}
		}, "json");
	});

	//Người dùng Đăng kí tài khoản
	$("#registerBtn").click(function () {
		var password = $("#passwordRegister").val();
		var passwordConfirm = $("#passwordConfirmation").val();
		$.post("register.php", {
			email: $("#email").val(),
			name: $("#name").val(),
			birthday: $("#birth").val(),
			gender: $("#gender").val(),
			sdt: $("#sdt").val(),
			passwordRegister: password,
			passwordConfirmation: passwordConfirm
		}, function (data) {
			console.log(data);
			if (data == true) {
				$("#registerModal").modal('hide');
				setTimeout(function () {
					window.location = "http://localhost/WEBAPP-Final-project/index.php";
				}, 2000);
				$("#registerSuccess").modal();
			}
		},"json");
	})


	//AJAX khi đổi ngày chiếu
	$("#date").change(function () {
		var selectedDate = $("#date").val();
		var stringURL = $("#url").val().split("?id=");
		var ID = stringURL[1];
		 $.get("loadLichChieu.php",{date : selectedDate, id : ID},function(data){
			 console.log(data);
			 $(".table").remove();
			 $(".container").append(data);
		 });
		
		// $.ajax({
		// 	url: $("#url").val(),
		// 	data: "date= " + selectedDate,
		// 	// success: function (data) {
		// 	// 	$(".table-responsive").remove();
		// 	// 	console.log(data);

		// 	// 	$.each(data, function (rap, value) {
		// 	// 		console.log(data[rap]["GioChieu"]);
		// 	// 		var table = "<div class=\"table-responsive\" id=\"" + rap + "\">" +
		// 	// 			"<table class=\"table\"><thead><tr><th>" + data[rap]["DinhDang"] + " - " + data[rap]["MaRap"] +
		// 	// 			"</th></tr><tr><td><a href=\"datVe.php?id=" + ID + "?date=" + selectedDate + "\">" +
		// 	// 			data[rap]["DinhDang"] + "</a></td></tr></thead></table></div>";
		// 	// 		$("#movieDetailContainer").append(table);
		// 	// 	});
		// 	// },
		// 	error: function (e) {
		// 		console.log(e);
		// 	}
		// });
	});

	//Kiểm tra số lượng vé >0
	$("#continueBtn").click(function () {
		var numTicket = parseInt($("#numTicket").val());
		var total = 70000 * numTicket;
		$("#total").text(new Intl.NumberFormat().format(total) + " VNĐ");
		if (numTicket <= 0) {
			alert("Số lượng vé phải lớn hơn 0");
			return;
		} else {
			$("#numOfTicketsModal").modal('hide');
			//Khi chọn 1 ghế
			$(".ghe-CTC").click(function () {
				//Un-select - bỏ chọn
				if ($(this).css('filter') == 'brightness(0.5)') {
					$(this).css('filter', 'none');
					// Sai 
					selectedGhe.pop();
					$("#gheChon").text(selectedGhe.toString());
					//fade out transition 
					$(".error-msg").fadeOut(1000, function () {
						$(".error-msg").css('display', 'none');
					});
					numTicket += 1;
					$("#numTicket").val(numTicket);

				} else if ($(this).css('filter') == 'none' && numTicket > 0) { // Selected - chọn mới

					$(this).css('filter', 'brightness(0.5)');
					selectedGhe.push($(this).text());
					$("#gheChon").text(selectedGhe.toString());

					numTicket -= 1;
					$("#numTicket").val(numTicket);

				} else if (numTicket <= 0) { // Báo lỗi khi chọn quá số vé cho phép
					$(".error-msg").text("Bạn đã đặt quá số lượng vé");
					$(".error-msg").fadeIn(1000, function () {
						$(".error-msg").css('display', 'block');
					})
				}
				$("#thanhToan").click(function () {
					if (numTicket > 0) { // Chưa đủ vé mà thanh toán
						$(".error-msg").text("Bạn chưa chọn đủ số ghế!");
						$(".error-msg").fadeIn(1000, function () {
							$(".error-msg").css('display', 'block');
						});
					} else {
						console.log(selectedGhe);
						$("#maGhe").val(selectedGhe);
						$("#totalGia").val(total);
						$("#thanhToan").submit(function (event) {
							event.preventDefault();
						});
					}
				});
			});
		}
	});

});