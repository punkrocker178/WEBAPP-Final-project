<?php
    function getConnection(){
        $servername = "localhost";
        $username = "root";
        $password = "Hieuminecraft178";
        $db = "project_rapphim";
        // Create connection
        $conn = new mysqli($servername, $username, $password, $db);

        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        return $conn;
    }
?>
