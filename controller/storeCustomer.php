<?php 
    require_once 'utils/db.php';
    require_once 'storeTransaction.php';

    function storeCustomer($name) {
        $con = connectToDatabase();
        $findCustomerQuery = sprintf("select * from ms_customer where customer_name = '%s'",$name);
        $findCustomer = $con->query($findCustomerQuery);
        if($findCustomer->num_rows == 0) {
            $insertCustomerQuery = sprintf("INSERT INTO `ms_customer` (`customer_id`, `customer_name`) VALUES (NULL, '%s');", $name);
            $insertCustomer = $con->query($insertCustomerQuery);
            if($insertCustomer) {
                $customer_id = $con->insert_id;
                storeTransaction($con,$customer_id);
            } else {
                var_dump($con->error);
            }
        } else {
            $findCustomerResult = $findCustomer->fetch_assoc();
            $customer_id = $findCustomerResult['customer_id'];
            storeTransaction($con,$customer_id);
        }
    }
?>