<?php
    require_once 'utils/db.php';

    function getAllFlower() {
        $con = connectToDatabase();
        $sql = "select * from ms_flower";
        return $con->query($sql);
    }
?>