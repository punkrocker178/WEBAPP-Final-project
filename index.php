<?php
    $page = "Milkyway Cinema";
    include("model/model.php");
	include('includes/header.php');

?>
<main>
	<div class="banner">
		<div id="slide1" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ul class="carousel-indicators">
				<li data-target="#slide1" data-slide-to="0" class="active"></li>
				<li data-target="#slide1" data-slide-to="1"></li>
				<li data-target="#slide1" data-slide-to="2"></li>
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
			<a class="carousel-control-prev" href="#slide1" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a>
			<a class="carousel-control-next" href="#slide1" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div>
	<section class="dang-chieu">
		<div class="container">
			<h2>Phim Đang Chiếu</h2>
			<div class="row">
				<?php
                        $model = new model();
						$movies = $model->getMovies();
						// print_r($movies);
						$hidden = "";
                         for ($i=0;$i<count($movies);$i++) {
                            $id = $movies[$i]->movieID;
                            $name = $movies[$i]->name;
                        	$description = $movies[$i]->description;
                            $duration = $movies[$i]->duration;
                            $image = $movies[$i]->image;
                            $link = "movieDetail.php?id=".$id; 
							if($i>5){
								$hidden = "phim-hidden";
							}
					?>
						 	<div class="phim <?=$hidden?> col-lg-4 col-md-6 col-xs-6">
								<a href="<?= $link?>"><img class="img-fluid rounded" src="<?= $image ?>"></a>
								<button type="button" class="butt btn btn-success">Mua Vé</button>
						 		<h4>
						 			<?= $name ?>
						 		</h4>
						 	</div>
							<!-- END PHIM -->
				<?php
                        }
                ?>
				
			</div>
			<div id="allMoviesBtn" class="float-right btn btn-primary">Xem Thêm</div>
			<!-- END ROW -->
		</div>
		<!-- END CONTAINER -->
	</section>
	<section>
		<div class="container">
			<h2 style="margin-top: 2em">Tin tức</h2>
			<div class="row">
				<article class="col-md-6">
					<a href="">Bộ mặt thật của ác quỷ ma sơ Valak</a>
					<img src="News/bonnie.jpg" alt="bonnie aarons" class="img-thumbnail">
					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Aenean efficitur posuere nisi vitae aliquam. Vestibulum pharetra eu metus id semper.
						Nulla facilisi. Morbi volutpat ut ante vitae consectetur. Vivamus faucibus libero purus, sit amet tempor tortor
						laoreet sit amet.
						Sed tincidunt diam sit amet tortor iaculis efficitur. Praesent ex lacus, mollis vel felis at, viverra tincidunt
						tellus.
					</p>
				</article>
				<article class="col-md-6">
					<a href="">Annabelle lung linh trên mxh</a>
					<img src="News/annabelle.png" alt="filter meme" class="img-thumbnail">
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
						quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
						Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur
						sint occaecat cupidatat non proident,
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
				Nulla facilisi. Morbi volutpat ut ante vitae consectetur. Vivamus faucibus libero purus, sit amet tempor tortor
				laoreet sit amet.
				Sed tincidunt diam sit amet tortor iaculis efficitur. Praesent ex lacus, mollis vel felis at, viverra tincidunt
				tellus.
				Proin imperdiet, augue sit amet laoreet rutrum, lectus orci congue ligula, in sollicitudin lectus ligula sit amet
				nunc.
				In viverra rutrum volutpat. Aliquam erat volutpat. Aliquam a maximus ex, eu accumsan mauris.
				Nulla at est magna. Nunc pharetra odio a odio posuere, et viverra ante lacinia.
				Nam fermentum mattis metus, eget vestibulum ante ultricies at. Quisque blandit dictum tortor pellentesque gravida.
				Vestibulum mollis dolor vitae ante scelerisque vulputate.
				Ut ut blandit mauris, et facilisis turpis. Nam ut dictum eros.
				Mauris luctus eget nibh sit amet ullamcorper. Vestibulum ac sem risus.
				Cras et leo pretium, scelerisque est at, condimentum tellus. Maecenas gravida tristique consectetur.
				Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
				Nam porta risus id felis accumsan consequat in eu massa.
				Nam feugiat eros non libero vehicula commodo quis id leo.
				Donec sodales fermentum est eu tempor. Integer vitae rhoncus ligula. Mauris rutrum lacinia luctus.
				Donec pretium sit amet lectus in convallis. Phasellus mi ipsum, mattis id ornare eu, gravida ut mauris.
				Integer viverra tristique maximus. Cras bibendum dolor ex, sit amet egestas lectus placerat at. Nulla quis orci
				justo. Aliquam nec ligula nec diam dictum commodo mollis porttitor orci. Donec diam felis, cursus eu dignissim at,
				venenatis ac elit. Fusce sit amet blandit odio, at congue ipsum.
				Suspendisse ut sodales orci. Suspendisse et dignissim nisi, id lacinia felis.
				Nullam accumsan ex purus, vitae convallis nibh tincidunt semper. Nunc enim dolor, blandit faucibus risus et,
				aliquam egestas ex. Nam iaculis efficitur odio, non mattis turpis volutpat vitae.
				Nulla posuere finibus posuere. Maecenas suscipit, orci ut malesuada cursus, mauris odio feugiat enim, vitae
				dignissim urna sem vel sem.</p>
		</div>
	</section>
</main>
<?php
    include('includes/footer.php');
?>

