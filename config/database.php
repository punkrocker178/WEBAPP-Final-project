<?php
    function getConnection(){
        $servername = "localhost";
        $username = "root";
        $password = "";
        $db = "rap_phim";
        // Create connection
        $conn = new mysqli($servername, $username, $password, $db);

        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        return $conn;
    }
?>
