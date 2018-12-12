<?php
//Đây là controller load lịch chiếu theo ngày từ DB
//Được gọi từ controller movieDetail.php và ajax
    if (isset($_GET['id'])) {
        $ID = $_GET['id'];
    } else {
        header("http://localhost/WEBAPP-Final-project/index.php");
    }
    //Khởi tạo model , rap nếu được gọi từ ajax jquery
    if (!isset($model) && !isset($rap)) {
        include("model/model.php");
        $model = new model();
        $rap = array("RAP01","RAP02","RAP03","RAP04","RAP05","RAP06");
        $ID = $_GET['id'];
    }

     //Chọn ngày đầu tiên được load từ dữ liệu
    if (isset($_GET['date'])) {
        $date = $_GET['date'];
    } else {// Tiểu xảo
        $date ="2018-11-12";
    }

    for ($i=0;$i<count($rap);$i++) {
        $data = $model->getMovieSchedule($ID, $date, $rap[$i]);
        if ($data<>"No DATA") {
          for($j=0;$j<count($rap);$j++){
            if($rap[$j] == $rap[$i]){
              $lichChieu[$rap[$i]]["GioChieu"][] = $data["GioChieu"];
            }
          }
            $lichChieu[$rap[$i]]["DinhDang"] = $data["DinhDang"];
            $lichChieu[$rap[$i]]["KTG"] = $data["KTG"];
            $lichChieu[$rap[$i]]["MaRap"] = $data["MaRap"];
        }
    }

    include("view/view_phim_suatchieu.php");
    //Sẽ xử lí sau
    // echo json_encode($lichChieu);
