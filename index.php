<?php 
	$page = "Milkyway Cinema";
	$fileDir = basename(__DIR__);
	echo basename(__DIR__);

	include 'includes/header.php';

?> 
		<main>
			<!-- Login Modal -->
			<div class="modal fade" id="loginModal">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Đăng Nhập</h4>
						</div>
						<form action="http://127.0.0.1/test.php" method="post" onsubmit="">
							<div class="modal-body">
								<div class="form-group">
									<label for="userID">Email</label>
									<input type="email" class="form-control" name="userID" id="userID" required>
								</div>
								<div class="form-group">
									<label for="passWord">Mật khẩu</label>
									<input type="password" class="form-control" name="password" id="password" required>
								</div>
								<a href="#">Quên mật khẩu?</a>
							</div>
							<div class="modal-footer">
								<button class="btn btn-success col-sm-12" type="submit">Đăng Nhập</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- Register Modal -->
			<div class="modal fade" id="registerModal">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Đăng Ký</h4>
						</div>
						<form action="http://127.0.0.1/test.php" method="post" onsubmit="">
							<div class="modal-body">
								<div class="form-group">
									<label for="userID">Email</label>
									<input type="email" class="form-control" name="userIDRegister" id="userIDRegister" required>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-sm-9">
											<label for="name">Họ tên</label>
											<input type="text" class="form-control" name="name" id="name" required>
										</div>
										<div class="col-sm-3">
											<label for="gender">Giới tính</label>
											<select name="gender" id="gender" class="form-control" required>
												<option value="nam">Nam</option>
												<option value="nu">Nữ</option>
											</select>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="birth">Ngày sinh</label>
									<input type="date" id ="birth" class="form-control" required>
								</div>
								<div class="form-group">
									<label for="passWord">Mật khẩu</label>
									<input type="password" class="form-control" name="passwordRegister" id="passwordRegister" required>
								</div>
								<div class="form-group">
									<label for="passWord">Xác nhận mật khẩu</label>
									<input type="password" class="form-control" name="passwordConfirmation" id="passwordConfirmation" required>
								</div>
								
							</div>
							<div class="modal-footer">
								<button class="btn btn-success col-sm-12" type="submit">Đăng Ký</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="container chonPhim">
				<form action="http://127.0.0.1/test.php" method="post">
					<div class="row">
						<div class="col-md-4">
							<label for="movie">Chọn Phim</label>
							<select name="movie" id="movie">
								<option value="The Nun">The Nun</option>
								<option value="Annabelle">Annabelle</option>
								<option value="Annabelle2">Annabelle2</option>
							</select>
						</div>
						<div class="col-md-4">
							<label for="cinema">Chọn Rạp</label>
							<select name="cinema" id="cinema">
								<option value="Rạp 1">Rạp 1</option>
								<option value="Rạp 2">Rạp 2</option>
								<option value="Rạp 3">Rạp 3</option>
							</select>
						</div>
						<div class="col-md-4">
							<label for="date">Chọn Ngày</label>
							<select name="date" id="date">
								<option value="nay">Hôm nay</option>
								<option value="mai">Ngày mai</option>
								<option value="mot">Ngày mốt</option>
							</select>
						</div>
					</div>
					<div class="row">
						<button type="submit" class="mua-ve btn btn-success">Mua Vé</button>
					</div>
					
				</form>
			</div>
			<!-- <div class="banner">
				<img class ="banner" src="images/cinema/dolby1.jpg">
			</div> -->
			<div class="banner">
				<div id="demo" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ul class="carousel-indicators">
						<li data-target="#demo" data-slide-to="0" class="active"></li>
						<li data-target="#demo" data-slide-to="1"></li>
						<li data-target="#demo" data-slide-to="2"></li>
					</ul>
					<!-- The slideshow -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="images/cinema/dolbyResized.jpg" alt="Dolby 1">
						</div>
						<div class="carousel-item">
							<img src="images/cinema/dolby_cinema2.png" alt="Dolby 2">
						</div>
						<div class="carousel-item">
							<img src="images/cinema/rap.jpg" alt="rap">
						</div>
					</div>
					<!-- Left and right controls -->
					<a class="carousel-control-prev" href="#demo" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a>
					<a class="carousel-control-next" href="#demo" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>
				</div>
			</div>
			<section class="dang-chieu">
				<div class="container">
					<h2>Phim Đang Chiếu</h2>
					<div class="row">
						<div class="phim col-md-4 col-sm-6">
							<a href=""><img class="img-fluid rounded" src="images/movie/AvengersResized.jpg"></a>
							<button type="button" class="butt btn btn-success">Mua Vé</button>
							<h4>Avengers:Infinity War</h4>
						</div>
						<div class="phim col-md-4 col-sm-6">
							<a href=""><img class="img-fluid rounded" src="images/movie/solo.jpg"></a>
							<button type="button" class="butt btn btn-success">Mua Vé</button>
							<h4>Avengers:Infinity War</h4>
						</div>
						<div class="phim col-md-4 col-sm-6">
							<a href=""><img class="img-fluid rounded" src="images/movie/wreckitralph2.jpg"></a>
							<button type="button" class="butt btn btn-success">Mua Vé</button>
							<h4>Avengers:Infinity War</h4>
						</div>
						<div class="phim col-md-4 col-sm-6">
							<a href=""><img class="img-fluid rounded" src="images/movie/predator.jpg"></a>
							<button type="button" class="butt btn btn-success">Mua Vé</button>
							<h4>Avengers:Infinity War</h4>
						</div>
						<div class="phim col-md-4 col-sm-6">
							<a href=""><img class="img-fluid rounded" src="images/movie/the nun.jpg"></a>
							<button type="button" class="butt btn btn-success">Mua Vé</button>
							<h4>Avengers:Infinity War</h4>
						</div>
						<div class="phim col-md-4 col-sm-6">
							<a href=""><img class="img-fluid rounded" src="images/movie/the_greatestshowman.jpg"></a>
							<button type="button" class="butt btn btn-success">Mua Vé</button>
							<h4>Avengers:Infinity War</h4>
						</div>
					</div>
				</div>
			</section>
			<section>
				<div class="container">
					<h2>Tin tức</h2>
					<div class="row">
						<article class="col-md-6">
							<a href="">Bộ mặt thật của ác quỷ ma sơ Valak</a>
							<img src="News/bonnie.jpg" alt="bonnie aarons" class="img-thumbnail">
							<p>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Aenean efficitur posuere nisi vitae aliquam. Vestibulum pharetra eu metus id semper.
								Nulla facilisi. Morbi volutpat ut ante vitae consectetur. Vivamus faucibus libero purus, sit amet tempor tortor laoreet sit amet.
								Sed tincidunt diam sit amet tortor iaculis efficitur. Praesent ex lacus, mollis vel felis at, viverra tincidunt tellus.
							</p>
						</article>
						<article class="col-md-6">
							<a href="">Annabelle lung linh trên mxh</a>
							<img src="News/annabelle.png" alt="filter meme" class="img-thumbnail">
							<p>
								Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
								quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
								Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
							sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
						</article>
					</div>
				</div>
			</section>
			<section>
				<div class="container">
					<h2>Khuyến Mãi</h2>
				</div>
			</section>
			<section>
				<div class="container">
					<h2>Giới thiệu</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Aenean efficitur posuere nisi vitae aliquam. Vestibulum pharetra eu metus id semper.
						Nulla facilisi. Morbi volutpat ut ante vitae consectetur. Vivamus faucibus libero purus, sit amet tempor tortor laoreet sit amet.
						Sed tincidunt diam sit amet tortor iaculis efficitur. Praesent ex lacus, mollis vel felis at, viverra tincidunt tellus.
						Proin imperdiet, augue sit amet laoreet rutrum, lectus orci congue ligula, in sollicitudin lectus ligula sit amet nunc.
						In viverra rutrum volutpat. Aliquam erat volutpat. Aliquam a maximus ex, eu accumsan mauris.
						Nulla at est magna. Nunc pharetra odio a odio posuere, et viverra ante lacinia.
						Nam fermentum mattis metus, eget vestibulum ante ultricies at. Quisque blandit dictum tortor pellentesque gravida. Vestibulum mollis dolor vitae ante scelerisque vulputate.
						Ut ut blandit mauris, et facilisis turpis. Nam ut dictum eros.
						Mauris luctus eget nibh sit amet ullamcorper. Vestibulum ac sem risus.
						Cras et leo pretium, scelerisque est at, condimentum tellus. Maecenas gravida tristique consectetur.
						Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
						Nam porta risus id felis accumsan consequat in eu massa.
						Nam feugiat eros non libero vehicula commodo quis id leo.
						Donec sodales fermentum est eu tempor. Integer vitae rhoncus ligula. Mauris rutrum lacinia luctus.
						Donec pretium sit amet lectus in convallis. Phasellus mi ipsum, mattis id ornare eu, gravida ut mauris.
						Integer viverra tristique maximus. Cras bibendum dolor ex, sit amet egestas lectus placerat at. Nulla quis orci justo. Aliquam nec ligula nec diam dictum commodo mollis porttitor orci. Donec diam felis, cursus eu dignissim at, venenatis ac elit. Fusce sit amet blandit odio, at congue ipsum.
						Suspendisse ut sodales orci. Suspendisse et dignissim nisi, id lacinia felis.
						Nullam accumsan ex purus, vitae convallis nibh tincidunt semper. Nunc enim dolor, blandit faucibus risus et, aliquam egestas ex. Nam iaculis efficitur odio, non mattis turpis volutpat vitae.
					Nulla posuere finibus posuere. Maecenas suscipit, orci ut malesuada cursus, mauris odio feugiat enim, vitae dignissim urna sem vel sem.</p>
				</div>
			</section>
		</main>
<?php
	include 'includes/footer.php';
?>