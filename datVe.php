<?php
//Đây là chức năng hiển thị chỗ ngồi còn trống và lựa chọn chỗ ngồi để đặt vé
//controller
$page = "Đặt Vé";
include("model/model.php");
include('includes/header.php');
  if (!isset($_GET['date'])&&!isset($_GET['id'])&&isset($_GET['gio_chieu'])&&isset($_GET['rap']) && isset($_GET['ktg'])) {
      header("http://localhost/WEBAPP-Final-project/index.php");
  }
  if(!isset($_SESSION['username'])){
      echo "<script>$(\"#loginPrerequisite\").modal()</script>";
  }else{
    echo "<script>$(\"#numOfTicketsModal\").modal({ show : true , backdrop : \"static\", keyboard : false} )</script>";
  }
  $ID = $_GET['id'];
  $date = $_GET['date'];
  $rap = $_GET['rap'];
  $gio_chieu = $_GET['gio_chieu'];
  $ktg = $_GET['ktg'];

  $info = array('rap' => $rap, 'date' => $date, 'ktg'=> $ktg);

$model = new model();
$gheArray = $model->getAllGheByRap($rap);
$gheOccupied = $model->loadOccupiedGhe($info);
$movie = $model->getMovieByID($ID);
$gheID = array();
for($i=0;$i<count($gheArray);$i++){
    $gheID[$i] = $gheArray[$i]->gheID;
}
sort($gheID,SORT_NATURAL);
if(isset($gheOccupied)){
    sort($gheOccupied,SORT_NATURAL);
}


//Kiểm tra trạng thái của ghế
function getStatus($gheID,$flag,$gheOccupied){
    $arr = array();
    $arr['status'] = "CTC";
    $arr['flag'] = $flag;
    for($j=$flag;$j<count($gheOccupied);$j++){
        if($gheID == $gheOccupied[$j]){
            $status = "GDB";
            $arr['status'] = "GDB";
            $arr['flag'] = $j;
            return $arr;
        }
    }
    return $arr;
}
//print_r($gheID);

//view - lười nên để echo
echo "<div class=\"container\">";
echo "<div  tabindex = '1' class=\"alert alert-danger error-msg col-sm-12 col-md-4 col-lg-3\" role =\"alert\"></div>";
echo "<div class=\"row\">";
echo "<div class=\"table-responsive col-md-8 col-sm-12\">";
echo "<table class=\"table table-bordered table-sm\">";
echo "<thead>";
echo "<tr>";
echo"<th colspan=10>SCREEN</th>";
echo "</tr>";
echo "</thead>";
$row = "";$tmp = "";$loaiGhe= "";
$arr  = array('status' => "CTC", 'flag' =>0);
for($i=0;$i<count($gheID);$i++){
    if(isset($gheOccupied)){
        $arr = getStatus($gheID[$i],$arr['flag'],$gheOccupied);
    }

    if($i%10==0){
        $row = $row."<tr>".$tmp."</tr>";
        $tmp = "";
    }
    if($arr['status'] == "CTC"){
        if($gheArray[$i]->maLoai == "BT"){
            $loaiGhe = "ghe-bt";
        }else if($gheArray[$i]->maLoai == "VIP"){
            $loaiGhe = "ghe-vip";
        }else if($gheArray[$i]->maLoai == "SW"){
            $loaiGhe = "ghe-sweet";
        }
    }else{
        $loaiGhe = "";
    }

    $tmp = $tmp."<td><div class=\"ghe-" .$arr['status'] ." ". $loaiGhe . "\">".$gheID[$i]."</div></td>";
    if($i == count($gheID)-1){
        $row = $row."<tr>".$tmp."</tr>";
        break;
    }
}
echo $row;
echo "</table>";
echo "<div class=\"row\">".
    "<div class=\"col-sm-8 ghe-info\">".
    "<div class = \"col-sm-4 block ghe-bt\">Ghế thường</div>".
    "<div class = \"col-sm-4 block ghe-vip\">Ghế VIP</div>".
    "<div class = \"col-sm-4 block ghe-sweet\">Ghế Sweetbox</div>".
    "<div class = \"col-sm-4 block ghe-GDB\">Ghế đã bán</div>".
    "</div>".
    "</div>";//End row
echo "</div>";
echo "<div class=\"col-md-4 col-sm-12 info-box\">".
        "<form id=\"target\" action=\"veDB.php\" method = \"POST\">".
        "<input name=\"veMovieID\" value=\"$ID\" type=\"hidden\">".
        "<input name=\"veDate\" value=\"$date\" type=\"hidden\">".
        "<input id=\"totalGia\" name=\"gia\" value=\"\" type=\"hidden\">".
        "<input name=\"veRap\" value=\"$rap\" type=\"hidden\">".
        "<input name=\"veKTG\" value=\"$ktg\" type=\"hidden\">".
        "<input id=\"maGhe\" name=\"veMaGhe\" value=\"\" type=\"hidden\">".
        "<img class=\"img-fluid rounded\" height = 50% src = \"$movie->image\" >".
        "<h2>$movie->name</h2><p><span style = \"font-weight : bold\">Rạp: </span>$rap</p>".
        "<p><span style = \"font-weight : bold\">Độ tuổi phù hợp: </span>$movie->rated</p>".
        "<p><span style = \"font-weight : bold\">Giờ chiếu: </span>$gio_chieu | $date</p>".
        "<span style = \"font-weight : bold\">Ghế chọn: </span><span id=\"gheChon\"></span>".
        "<p><span style = \"font-weight : bold\">Tổng cộng:</span></p>".
        "<p id = \"total\"></p>".
        "<button id =\"thanhToan\" style=\"display : block\" type=\"submit\" class = \"btn btn-success\">Thanh Toán</button>".
        "</form></div>";

// End row
echo "</div>";
//End container
echo "</div>";
?>

<?php
include("includes/footer.php");
?>
