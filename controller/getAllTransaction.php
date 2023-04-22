<?php 
    require_once 'utils/db.php';

    function getAllTransaction() {
        $con = connectToDatabase();
        $sql = "select * from transaction t join ms_flower mf on t.flower_id = mf.flower_id join ms_customer mc on t.customer_id = mc.customer_id order by t.transaction_date desc";
        return $con->query($sql);
    }
?>