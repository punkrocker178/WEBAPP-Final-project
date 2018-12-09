<?php
if(isset($_GET['id'])){
  $ID = $_GET['id'];
}else{
  header("http://localhost/WEBAPP-Final-project/index.php");
}
  //View
  include("model/model.php");
  $model = new model();
  $ngayChieu = $model->getAllDate();
  $movie = $model->getMovieByID($ID);
  //Ngày cố định, sẽ làm lại ngày dựa theo thẻ select ở dưới
  $rap = array("RAP01","RAP02","RAP03","RAP04","RAP05","RAP06");
  $page = $movie->name;
  include('includes/header.php');

?>
<!--Current URL -->
<!--<input type="hidden" id="url" value="<?="http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"?>"> -->
<input type="hidden" id="url" value=<?="loadLichChieu.php?id=" .$ID?>>
<input type="hidden" id="videoID" value=<?= $movie->youtubeID?>>
<script type="text/javascript" src="js/youtubeAPI.js"></script>
<p id="txt"></p>
<div class="container" id="movieDetailContainer">
  <div class="row">
    <div class="col-lg-8 col-md-10 col-sm-12" id="player"></div>
    <div class="col-lg-4 col-md-2 col-sm-12">
      <h2>
        <?= $movie->name?>
      </h2>
      <p><span style="font-weight : bold">Thời lượng:</span>
        <?= $movie->duration?> phút</p>
      <p><span style="font-weight : bold">Đạo diễn:</span>
        <?=$movie->director?>
      </p>
      <p><span style="font-weight : bold">Nhà sản xuất:</span>
        <?=$movie->publisher?>
      </p>
      <p><span style="font-weight : bold">Thể loại:</span>
        <?=$movie->category?>
      </p>
      <p><span style="font-weight : bold">Quốc gia:</span>
        <?= $movie->nationality?>
      </p>
      <p><span style="font-weight : bold">Ngày chiếu:</span>
        <?= $movie->date?>
      </p>
    </div>
    <h2 class="col-sm-12">Nội dung phim</h2>
    <p class="col-sm-12">
      <?= $movie->description?>
    </p>
  </div>
  <h2>Lịch Chiếu</h2>

  <select class="form-control col-sm-12 col-md-6 col-lg-3" name="ngayChieu" id="date">
    <!-- <option value="2018-11-12">12/11/2018</option>
    <option value="2018-11-13">13/11/2018</option> -->
    <?php
      foreach($ngayChieu as $date){
        $dateFormat = new DateTime($date);
        echo "<option value=\"$date\">".$dateFormat->format("d/m/Y")."</option>";
      }
    ?>
  </select>
  <?php
  //Control
         include("loadLichChieu.php");
         
   ?>
</div>

<?php
  include('includes/footer.php'); 
?>