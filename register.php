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
            echo null;
        }
        
    }

    if($_POST['func'] == "userIsExist"){
        userIsExist($_POST['email'],$model);
    }

    if(isset($_POST['email']) && isset($_POST['name'])
        && isset($_POST['gender']) && isset($_POST['birthday']) && isset($_POST['sdt'])
        && (strcmp($_POST['passwordRegister'],$_POST['passwordConfirmation'])==0)){

            $birthday =$_POST['birthday'];
            $date = DateTime::createFromFormat('m/d/Y',$birthday)->format('Y-m-d');

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
             echo "<script>$(\"#registerSuccess\").modal()</script>";
             sleep(4);
             echo "<script>window.location.replace(\"http://localhost/WEBAPP-Final-project/index.php\");</script>";
        }else{
            print_r($result);
        }
 
    }else{
        echo "error";
    }
    
?>