<?php
    require_once 'utils/db.php';

    function getAllCustomer() {
        $con = connectToDatabase();
        $sql = "select * from ms_customer";
        return $con->query($sql);
    }
?>