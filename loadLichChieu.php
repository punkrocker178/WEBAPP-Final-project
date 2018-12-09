<?php
//Đây là controller load lịch chiếu theo ngày từ DB
//Được gọi từ controller movieDetail.php và ajax
    if(isset($_GET['id'])){
        $ID = $_GET['id'];
    }else{
        header("http://localhost/WEBAPP-Final-project/index.php");
    }
    //Khởi tạo model , rap nếu được gọi từ ajax jquery
    if(!isset($model) && !isset($rap)){
        include("model/model.php");
        $model = new model();
        $rap = array("RAP01","RAP02","RAP03","RAP04","RAP05","RAP06");
        $ID = $_GET['id'];
    }

        

     //Ngày cố định, sẽ làm lại ngày dựa theo thẻ select ở dưới
    if(isset($_GET['date'])){
        $date = $_GET['date'];
    }else{
        $date ="2018-11-12";
    }

    for($i=0;$i<count($rap);$i++){
        $data = $model->getMovieSchedule($ID,$date,$rap[$i]);
        if($data<>"No DATA"){
            $lichChieu[$rap[$i]] = $data;
          }
    }

    include("view/view_phim_suatchieu.php");
    //Sẽ xử lí sau
    // echo json_encode($lichChieu);
?>