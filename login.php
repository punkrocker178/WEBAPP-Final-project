<?php
    session_start();
    include("model/model.php");

    if(isset($_POST['userID']) && isset($_POST['password'])){
        $username = $_POST['userID'];
        $password = $_POST['password'];
        $user = new model();
        if($user->login($username,$password)){
            $_SESSION['username'] = $_POST['userID'];
            header("Location: http://localhost/WEBAPP-Final-project/index.php");
            exit;
        }else{
            echo "<script>alert(\"Wrong username or password\")</script>";
        }
    }else{
        echo "ERROR";
    }

    

?>