<?php
    include 'controller/getAllFlower.php';
    include 'controller/storeCustomer.php';
    session_start();
    $res = getAllFlower();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | FlowerStore</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <div class="navbar-container padding-x-default default-glass">
        <a href="home.php" class="default-title default-a-tag">
            Flower Store
        </a>
        <div class="navbar-inner-flex">
            <a href="transaction.php" class="default-a-tag">Checkout History</a>
            <a href="customer.php" class="default-a-tag">Customer Detail</a>
        </div>
    </div>

    <div class="card-container padding-card-container">

        <?php
            if($_SERVER['REQUEST_METHOD'] == 'POST') {

                if(isset($_POST['clear_cart'])){
                    unset($_SESSION['flower_cart']);
                    session_destroy();
                }

                if(isset($_POST['checkout'])){
                    if(!empty($_POST['customer_name'])){
                        $name = $_POST['customer_name'];
                        storeCustomer($name);
                    } else {
                        ?>
                            <script>
                                alert('customer name must be filled!')
                            </script>
                        <?php
                    }
                }

                if(isset($_POST['flower_id'])) {
                    if(!isset($_SESSION['flower_cart'])) {
                        $_SESSION['flower_cart'] = array(
                            $_POST['flower_id'] => array(
                                'flower_id' => $_POST['flower_id'],
                                'flower_image' => $_POST['flower_image'],
                                'flower_title' => $_POST['flower_title'],
                                'flower_price' => $_POST['flower_price'],
                                'flower_desc' => $_POST['flower_desc'],
                                'flower_ammount' => 1
                            )
                        );
                    } else {
                        if(isset($_SESSION['flower_cart'][$_POST['flower_id']])){
                            $_SESSION['flower_cart'][$_POST['flower_id']]['flower_ammount']++;
                        } else {
                            $_SESSION['flower_cart'][$_POST['flower_id']] =  array(
                                'flower_id' => $_POST['flower_id'],
                                'flower_image' => $_POST['flower_image'],
                                'flower_title' => $_POST['flower_title'],
                                'flower_price' => $_POST['flower_price'],
                                'flower_desc' => $_POST['flower_desc'],
                                'flower_ammount' => 1
                            );
                        }
                    }
                }
            }
        ?>

        <?php while($flower = $res->fetch_assoc()) {?>
            <div class="card-item border-radius-default">
                <form class="card-item-inner" method="post" action="">
                    <img class="card-item-image" src="<?php echo $flower['flower_image']; ?>" alt="<?php echo $flower['flower_title']; ?>">
                    <div class="padding-default card-item-text-container">
                        <div class=""><?php echo $flower['flower_title']; ?></div>
                        <div class=""><?php echo $flower['flower_price']; ?></div>

                        <input hidden type="text" name="flower_id" value="<?php echo $flower['flower_id']; ?>">
                        <input hidden type="text" name="flower_image" value="<?php echo $flower['flower_image']; ?>">
                        <input hidden type="text" name="flower_title" value="<?php echo $flower['flower_title']; ?>">
                        <input hidden type="text" name="flower_price" value="<?php echo $flower['flower_price']; ?>">
                        <input hidden type="text" name="flower_desc" value="<?php echo $flower['flower_desc']; ?>">
                        <button class="button-default-primary" type="submit">buy</button>
                    </div>
                </form>
            </div>
        <?php }?>
    
    </div>

    <?php 
        if(isset($_SESSION['flower_cart'])){ 
        $totalPrice = 0;
    ?>
        <div class="checkout-item-container padding-default border-radius-default default-glass">
            <?php foreach($_SESSION['flower_cart'] as $f) {?>
                <div class="checkout-item padding-default border-radius-default default-glass">
                    <div class="checkout-item-inner-fill">
                        <img class="checkout-item-image border-radius-default" src="<?php echo $f['flower_image'] ?>" alt="<?php echo $f['flower_title'] ?>">
                        <div class=""><?php echo $f['flower_title'] ?></div>
                    </div>
                    <div class="checkout-item-inner-fill">
                        <div class=""><?php echo $f['flower_ammount'] * $f['flower_price'] ?></div>
                        <div class=""><?php echo $f['flower_ammount'] ?></div>
                    </div>
                    <?php 
                        $totalPrice += $f['flower_ammount'] * $f['flower_price'];
                    ?>
                </div>
                <?php }?>
            <div class="">Total price: <?php echo $totalPrice ?></div>
            <form method="post" class="checkout-item-inner-container">
                <input type="text" name="customer_name" class="input-styling" placeholder="enter your name">
                <div class="checkout-item-button-container">
                    <button name="clear_cart" class="button-default-primary" style="width:100%;" >clear cart</button>
                    <button name="checkout" class="button-default-primary" style="width:100%;" >checkout</button>
                </div>
            </form>
        </div>
    <?php } ?>
</body>

</html>