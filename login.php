<?php
    session_start();
    include("model/model.php");
    $user = new model();
    if(isset($_POST['userID']) && isset($_POST['password'])){
        $username = $_POST['userID'];
        $password = $_POST['password'];
    
        if($user->login($username,$password)){
            $_SESSION['username'] = $_POST['userID'];
            header("Location: http://localhost/WEBAPP-Final-project/index.php");
            echo 
            exit;
        }else{
            echo "<script>alert(\"Wrong username or password\")</script>";
        }
    }else if(isset($_POST['userFB'])){
        $user = $_POST['userFB'];
        $_SESSION['username'] = $user['email'];
    }
    
?>