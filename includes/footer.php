		<?php 
			$icon1 = "images/facebook.png";
			$icon2 = "images/instagram.png";

			if($page != "Milkyway Cinema"){
				$icon1 = "../" . $icon1;
				$icon2 = "../" . $icon2;
			}else{
				$icon1 = "./" . $icon1;
				$icon2 = "./" . $icon2;
			}
		?>
		<footer>
			<span class="left">
				Công ty TNHH Rạp Chiếu Phim Ngân Hà ™
			</span>
			<span class="right">
				Liên Hệ
				<div class="icons">
					<span><a href=""><img class="icons" src=<?= $icon1 ?> alt="fb-logo"></a></span>
					<span><a href=""><img class="icons" src=<?= $icon2 ?> alt="insta-logo"></a></span>
				</div>
			</span>
		</footer>
	</body>
</html>