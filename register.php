<?php
    //Đây là chức năng tạo tài khoản người dùng
    include("model/model.php");
    include("includes/header.php");
    if(isset($_POST['userIDRegister']) && isset($_POST['name'])
        && isset($_POST['gender']) && isset($_POST['birth']) && isset($_POST['sdt'])
        && (strcmp($_POST['passwordRegister'],$_POST['passwordConfirmation'])==0)){

            $info = array(
                "email" => $_POST['userIDRegister'],
                "name" => $_POST['name'],
                "gender" => $_POST['gender'],
                "birthdate" => $_POST['birth'],
                "password" =>md5($_POST['passwordRegister']),
                "sdt" => $_POST['sdt'],
                "role_id" => "user" // mặc định là người dùng
            );

            if($info['gender']=="nam"){
                $info['gender'] = 1;
            }else{
                $info['gender'] = 2;
            }
        $model = new model();
        $result = $model->register($info);
        if($result){
            echo "<div style =\"margin : auto; width : 40%\" class=\"alert alert-success\" role =\"alert\">Đăng kí tài khoản thành công</div>";
            sleep(4);
            echo "<script>window.location.replace(\"http://localhost/WEBAPP-Final-project/index.php\");</script>";
        }else{
            print_r($result);
        }
 
    }else{
        echo "error";
    }
    
?>