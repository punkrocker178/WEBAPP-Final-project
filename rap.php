<?php
	$page = "Rạp & Giá vé";
	$fileDir = basename(__DIR__);
	echo basename(__DIR__);
	include('includes/header.php');
?>
<main>
	<div class="container">
		<h2>2D</h2>
		<div class="row">
			<p>Người lớn</p>
			<p>100.000vnd</p>
		</div>
		<h2>3D</h2>
		<div class="row">
			<p>Người lớn</p>
			<p>120.000vnd</p>
		</div>
		<h2>4DX</h2>
		<div class="row">
			<p>Người lớn</p>
			<p>200.000vnd</p>
		</div>
	</div>
</main>
<?php
	include('./includes/footer.php');
?>