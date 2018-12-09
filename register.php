<?php
    //Đây là chức năng tạo tài khoản người dùng
    include("model/model.php");
    $model = new model();
    function userIsExist($email,$model){
        $user = $model->getUserByEmail($email);
        if(isset($user)){
            echo json_encode($user);
            exit;
        }else{
            echo json_encode(null);
            exit;
        }       
    }

    if(isset($_POST['func'])){
        $function = $_POST['func'];
    }else{
        $function ="";
    }

    if($function == "userIsExist"){
        userIsExist($_POST['email'],$model);
    }else if(isset($_POST['email']) && isset($_POST['name'])
        && isset($_POST['gender']) && isset($_POST['sdt'])
        && (strcmp($_POST['passwordRegister'],$_POST['passwordConfirmation'])==0)){

            if(isset($_POST['birthday'])){
                $date =$_POST['birthday'];
            }else if(isset($_POST['fb_birthday'])){
                $birthday =$_POST['fb_birthday'];
                $date = DateTime::createFromFormat('m/d/Y',$birthday)->format('Y-m-d');
            }
        
            $info = array(
                "email" => $_POST['email'],
                "name" => $_POST['name'],
                "gender" => $_POST['gender'],
                "birthdate" => $date,
                "password" =>md5($_POST['passwordRegister']),
                "sdt" => $_POST['sdt'],
                "role_id" => "user" // mặc định là người dùng
            );

            if($info['gender']=="nam" || $info['gender'] == "male"){
                $info['gender'] = 1;
            }else{
                $info['gender'] = 2;
            }
        $result = $model->register($info);
        if($result == true){
            //  echo "<script>$(\"#registerSuccess\").modal()</script>";
            //  sleep(3);
            //  echo "<script>window.location.replace(\"http://localhost/WEBAPP-Final-project/index.php\");</script>";
            echo json_encode(true);
        }else{
            echo json_encode(false);
        }
 
    }
?>