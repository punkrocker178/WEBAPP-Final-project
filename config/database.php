<?php
    function getConnection()
    {
        $servername = "localhost";
        $username = "root";
        $password = "";
        $db = "project_rapphim";
        // Create connection
        $conn = new mysqli($servername, $username, $password, $db);
        mysqli_set_charset($conn, "utf8");
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        return $conn;
    }
