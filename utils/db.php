<?php 
    function connectToDatabase() {
        $host = 'localhost';
        $username = 'root';
        $password = '';
        $database = 'app_flowerstore';
    
        $conn = new mysqli($host, $username, $password, $database);
    
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
    
        return $conn;
    }
?>