<?php
include("model/model.php");
$model = new model();
if(isset($_POST['movieName']) && isset($_POST['duration']) && isset($_POST['director']) && isset($_POST['nsx']) && isset($_POST['actor'])
    && isset($_POST['category']) && isset($_POST['quocGia']) && isset($_POST['ngayChieu']) && isset($_POST['videoID']) 
    && isset($_POST['filePathHidden']) && isset($_POST['date']) && isset($_POST['ktg']) && $_POST['rap'] && isset($_POST['noiDung'])){

    //Phim
    $movie = array("name" => $_POST['movieName'], "duration" => $_POST['duration'], "director" => $_POST['director'], "actor" => $_POST['actor'],
            "nsx" => $_POST['nsx'], "category" => $_POST['category'], "quocGia" => $_POST['quocGia'], "ngayChieu" => $_POST['ngayChieu'],
            "filePath" => $_POST['filePathHidden'], "ma_nhan" =>"C16", "ngon_ngu" => "Tiếng Anh có phụ đề Tiếng Việt", "noiDung" => $_POST['noiDung']);
    $movie['movieID'] = "P".mt_rand(100000000,999999999);
    $today = date("Y-m-d");
    if($movie['ngayChieu']<= $today){
        $movie['tinhTrang'] = "Công Chiếu";
    }else {
        $movie['tinhTrang'] = "Sắp Chiếu";
    }
    $urlArr = explode("?v=",$_POST['videoID']);
    $movie['videoID'] = $urlArr[1];
    // print_r($movie);

    //Lịch chiếu của phim
    $lichChieu = array("date" => $_POST['date'],"ktg" =>$_POST['ktg']);
    $lichChieu['ma_ktg'] = "KTG".mt_rand(1000000,9999999);
    $rapArr = $_POST['rap'];

    //Query
    $result = $model->insertMovie($movie);
    if($result == true){
        $resultKTG = $model->insertKTG($lichChieu);
        if($resultKTG == true){
            $lichChieu['movieID'] = $movie['movieID'];
            foreach($rapArr as $rap){
                $lichChieu['ma_rap'] = $rap;
                $resultLichChieu = $model->insertLichChieu($lichChieu);
            }
        }
        header("Location: http://localhost/WEBAPP-Final-project/index.php");
    }else{
        echo "Insert ERROR";
    }
}
?>