<?php
    session_start();
    include("model/model.php");
    $user = new model();
    if(isset($_POST['userID']) && isset($_POST['password'])){
        $username = $_POST['userID'];
        $password = $_POST['password'];
    
        if($user->login($username,$password)){
            $_SESSION['username'] = $_POST['userID'];
            $_SESSION['loggedIn'] = true;
        }else{
            echo "<script>$(\"#loginFailure\").modal()</script>";
        }
    }else if(isset($_POST['userFB'])){
        $user = $_POST['userFB'];
        $_SESSION['username'] = $user['email'];
        $_SESSION['loggedIn'] = true;
    }

    if($_SESSION['loggedIn'] == true){
        echo json_encode(true);
    }else{
        echo json_encode(false);
    }
    
?>