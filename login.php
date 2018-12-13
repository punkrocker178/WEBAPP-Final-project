<?php
    session_start();
    include("model/model.php");

    function isStaff($email,$user){
        $account = $user->getAccountByEmail($email);
        if($account['role_id']== "staf"){
            return true;
        }else{
            return false;
        }
    }

    $user = new model();
    $_SESSION['loggedIn'] = false;
    $_SESSION['staff'] = false;
    if(isset($_POST['userID']) && isset($_POST['password'])){
        $username = $_POST['userID'];
        $password = $_POST['password'];
    
        if($user->login($username,$password)){
            $_SESSION['staff'] = isStaff($username,$user);
            $_SESSION['username'] = $_POST['userID'];
            $_SESSION['loggedIn'] = true;
        }
    }else if(isset($_POST['userFB'])){
        $userFB = $_POST['userFB'];
        $_SESSION['username'] = $userFB['email'];
        $_SESSION['loggedIn'] = true;
        $_SESSION['staff'] = isStaff($userFB['email'],$user);
    }

    if($_SESSION['loggedIn'] == true){
        echo json_encode(true);
    }else{
        echo json_encode(false);
    }
    
?>