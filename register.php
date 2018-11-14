<?php
    include("model/model.php");
    if(isset($_POST['userIDRegister']) && isset($_POST['name'])
        && isset($_POST['gender']) && isset($_POST['birth']) 
        && (strcmp($_POST['passwordRegister'],$_POST['passwordConfirmation'])==0)){

            $info = array(
                "email" => $_POST['userIDRegister'],
                "name" => $_POST['name'],
                "gender" => $_POST['gender'],
                "birthdate" => $_POST['birth'],
                "password" =>md5($_POST['passwordRegister'])
            );

            if($info['gender']=="nam"){
                $info['gender'] = 1;
            }else{
                $info['gender'] = 2;
            }
            print_r($info);
        $model = new model();
        $result = $model->register($info);
        if($result){
            
            echo "Registration Success!";
        }else{
            print_r($result);
        }
 
    }else{
        echo "error";
    }
    
?>