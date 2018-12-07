<?php
include("model/model.php");
include('includes/header.php');
  if (!isset($_POST['veMovieID'])&&!isset($_POST['veDate'])&&isset($_POST['gia'])&&isset($_POST['veRap']) && isset($_POST['veKTG']) && isset($_POST['veMaGhe'])) {
    header("http://localhost/WEBAPP-Final-project/index.php");
}

$info["veID"] = "VE".mt_rand(1000000,mt_getrandmax());
$info["movieID"] = $_POST['veMovieID'];
$info["date"] = $_POST['veDate'];
$info["rap"] = $_POST['veRap'];
$info["gia"] = $_POST['gia'];
$info["ktg"] = $_POST['veKTG'];
$maGhe = $_POST['veMaGhe'];

$maGheArr = preg_split("[,]",$maGhe);

$model = new model();
$movie = $model->getMovieByID($info["movieID"]);
for($i=0;$i<count($maGheArr);$i++){
  $info["maGhe"] = $maGheArr[$i];
  $result = $model->veGiaoDich($info);
}
?>
<div class="container">
  <?php
if($result == true){
?>
  <div class="alert alert-success col-md-3 col-lg-4 col-sm-12 alert-msg" role="alert">
    Đặt vé thành công!
  </div>
  <div class="ve col-md-6 col-lg-8 col-sm-12">
    <h2>
      <?= $movie->name ?>
    </h2>
    <p><span style="font-weight : bold">Mã Vé: </span>
      <?= $info["veID"] ?>
    </p>
    <p><span style="font-weight : bold">Ghế: </span>
      <?= implode(" ",$maGheArr) ?>
    </p>
    <p>
      <span style="font-weight : bold">Rạp: </span>
      <?= $info['rap']?>
      <span style="font-weight : bold"> | Ngày: </span>
      <?= $info['date']?>
    </p>
    <p> <span style="font-weight : bold">Giá Vé: </span>
      <?= number_format($info['gia'])?> VNĐ</p>
  </div>
  <?php
}else{
?>
  <div class="alert alert-success col-md-3 col-lg-4 col-sm-12 alert-msg" role="alert">
    Đặt vé thất bại!
  </div>
  <?php
}
?>
</div>