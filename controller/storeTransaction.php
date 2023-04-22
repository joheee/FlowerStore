<?php
    function storeTransaction($con, $customer_id) {
        if(isset($_SESSION['flower_cart'])) {
            foreach($_SESSION['flower_cart'] as $f) insertOrUpdateTransaction($con, $f['flower_id'], $customer_id, $f['flower_ammount']);
            unset($_SESSION['flower_cart']);
            session_destroy();
        }
    }
    
    function insertOrUpdateTransaction($con, $flower_id, $customer_id, $ammount) {
        $findTransactionQuery = sprintf("select * from transaction where flower_id = '%d' and customer_id = '%d'", $flower_id, $customer_id);
        $findTranscation = $con->query($findTransactionQuery);
        if($findTranscation->num_rows == 0) {
            $InsertTransactionQuery = sprintf("INSERT INTO `transaction` (`transaction_id`, `flower_id`, `customer_id`, `ammount`, `transaction_date`) VALUES (NULL, '%d', '%d', '%d', current_timestamp());",$flower_id, $customer_id, $ammount);
            $con->query($InsertTransactionQuery);
        } else {
            $updateTransactionQuery = sprintf("UPDATE `transaction` SET ammount = ammount + %d, transaction_date=CURRENT_TIMESTAMP() WHERE flower_id = '%d' and customer_id = '%d'",$ammount,$flower_id,$customer_id);
            $con->query($updateTransactionQuery);
        }
    }
?>