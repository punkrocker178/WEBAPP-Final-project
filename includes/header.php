<!DOCTYPE html>
<html>
	<head>
		<?php

			$css = "styles/style.css";
			$javascript = "js/functions.js";
			$icon = "images/logo.png";

			if($fileDir=="WEBAPP-Final-project"){
					$fileDir = "pages/";
			}else if($fileDir=="pages"){
					$fileDir = "./";
			}

			if($page != "Milkyway Cinema"){
				$css = "../" . $css;
				$javascript = "../" . $javascript;
				$icon = "../" . $icon;
				

			}else if($page =="Milkyway Cinema"){
				$css = "./" . $css;
				$javascript = "./" . $javascript;
				$icon = "./" . $icon;
				
			}
			echo $fileDir;
		?>
		<title><?php echo $page ?></title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- Liên kết với file CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href=<?= $css?> >
		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
		<script src =<?= $javascript?> ></script>
		<!-- Font lấy từ Google Fonts -->
		<link href="https://fonts.googleapis.com/css?family=Oswald:400,600&amp;subset=vietnamese" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	</head>
	<body>
		<header>
			<img class="logo" src =<?= $icon?> >
			<!-- Navigation bar/Thanh menu -->
			<nav class="navbar navbar-expand-md navbar-dark">
				<!-- Toggler/collapsibe Button -->
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
				</button>
				<!-- Navbar links -->
				<div class="collapse navbar-collapse" id="collapsibleNavbar">
					<ul class="navbar-nav">
						<li class="nav-item">
							<a class="nav-link" href=
							<?php
								if(basename($_SERVER['REQUEST_URI'])=="index.php"){
									echo "index.php";
								}else
							 		echo $fileDir . "index.php";
							 	?> >TRANG CHỦ</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">PHIM</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">LỊCH CHIẾU</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href=
							<?php
								if(basename($_SERVER['REQUEST_URI'])=="rap.php"){
									echo "rap.php";
								}else
							 		echo $fileDir . "rap.php";
							 	?> >RẠP & GIÁ Vé</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">TIN TỨC</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">KHUYẾN MÃI</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href=<?php
								if(basename($_SERVER['REQUEST_URI'])=="gioithieu.php"){
									echo "gioithieu.php";
								}else
							 		echo $fileDir . "gioithieu.php";
							 	?> >GIỚI THIỆU</a>
						</li>
					</ul>
				</div>
			</nav>
			<div class="signUp">
				<a data-toggle="modal" href ="#registerModal">Đăng Kí</a>
				<a data-toggle="modal" href ="#loginModal">Đăng Nhập</a>
			</div>
		</header>