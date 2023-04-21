<?php
    include 'controller/getAllCustomer.php';
    session_start();
    $res = getAllCustomer();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer | FlowerStore</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
        
    <div class="navbar-container padding-x-default default-glass">
        <a href="/home.php" class="default-title default-a-tag">
            Flower Store
        </a>
        <div class="navbar-inner-flex">
        </div>
    </div>

    <div class="table-customer-container">
        <table id="customers">
            <tr>
                <th>Customer ID</th>
                <th>Customer Name</th>
            </tr>

            <?php while($cus = $res->fetch_assoc()) { ?>
            <tr>
                <td><?php echo $cus['customer_id'] ?></td>
                <td><?php echo $cus['customer_name'] ?></td>
            </tr>
            <?php } ?>
        </table>
    </div>

</body>
</html>