<?php
//controller
include("model/model.php");
include('includes/header.php');
  if (!isset($_GET['date'])&&!isset($_GET['id'])&&isset($_GET['gio_chieu'])&&isset($_GET['rap'])) {
      header("http://localhost/WEBAPP-Final-project/index.php");
  }
  $ID = $_GET['id'];
  $date = $_GET['date'];
  $rap = $_GET['rap'];
  $gio_chieu = $_GET['gio_chieu'];

$model = new model();
$gheArray = $model->getAllGheByRap($rap);
$gheID = array();
for($i=0;$i<count($gheArray);$i++){
    $gheID[$i] = $gheArray[$i]->gheID;
}
sort($gheID,SORT_NATURAL);
//print_r($gheID);

//view
echo "<script>$(\"#numOfTicketsModal\").modal({ show : true , backdrop : \"static\", keyboard : false} )</script>";
echo "<div class=\"container\">";
echo "<div class=\"table-responsive col-md-8 col-sm-12\">";
echo "<table class=\"table table-bordered table-sm\">";
echo "<thead>";
echo "<tr>";
echo"<th colspan=10>SCREEN</th>";
echo "</tr>";
echo "</thead>";
$row = "";
$tmp = "";
for($i=0;$i<count($gheID);$i++){
    if($i%10==0){
        $row = $row."<tr>".$tmp."</tr>";
        $tmp = "";
    }
    $tmp = $tmp."<td><div class=\"ghe\">".$gheID[$i]."</div></td>";
}
echo $row;
echo "</table>";
echo "</div>";
echo "</div>";
?>