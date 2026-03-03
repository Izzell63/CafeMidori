<?php
session_start();
include("DbConnect.php");
include("header.php");

if (empty($_SESSION['cart'])) {
    header("Location: cart.php");
    exit;
}


if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['place_order'])) {
    $phone = $_POST['customer_phone'];
    $address = $_POST['customer_address'];
    $region = $_POST['region'];
    $total_price = 0;

    foreach ($_SESSION['cart'] as $item) {
        $total_price += $item['price'] * $item['quantity'];
    }
    $user = $_SESSION['user_id'];

    $stmt = $conn->prepare("INSERT INTO orders (user_id,user_phone, user_address, region_id, total_price) VALUES (?, ?, ?,?, ?)");
    $stmt->bind_param("issid", $user, $phone, $address,$region,  $total_price);
    $stmt->execute();
    $order_id = $stmt->insert_id;

   
    $item_stmt = $conn->prepare("INSERT INTO order_item(user_id,orders_id, product_id, quantity, price) VALUES (?, ?, ?, ?,?)");
    foreach ($_SESSION['cart'] as $item) {
        $item_stmt->bind_param("iiiid", $user, $order_id, $item['id'], $item['quantity'], $item['price']);
        $item_stmt->execute();
    }
    unset($_SESSION['cart']);
    $success_message = "✅ Order placed successfully!";
}
?>

<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .checkout-container {
            width: 60%;
            margin: auto;
            margin-top: 100px;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
        }

        label {
            display: block;
            margin-top: 10px;
        }

        input,
        textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
        }

        .input_title{
              width: 30%;
            padding: 8px;
            margin-top: 5px;
        }

        .submit-btn {
            margin-top: 20px;
            padding: 10px 20px;
            background: green;
            color: white;
            border: none;
            cursor: pointer;
        }

        .success {
            color: green;
            text-align: center;
            margin-top: 20px;
            font-size: 1.2rem;
        }
    </style>
</head>

<body>

    <div class="checkout-container">
        <h2>Confirm Your Order</h2>

        <?php if (!empty($success_message)): ?>
            <p class="success"><?= $success_message ?></p>
        <?php else: ?>
            <form method="post" action="">

                <label>Phone:</label>
                <input type="text" name="customer_phone" required>

                <label>Region:</label>
                <select name="region" required class="input_title">
                    <option value="">Select Region</option>
                    <?php
                    $cat_query = "SELECT * FROM region";
                    $cat_result = mysqli_query($conn, $cat_query);
                    while ($cat = mysqli_fetch_assoc($cat_result)) {
                        echo '<option value="' . $cat['region_id'] . '">' . htmlspecialchars($cat['region']) . '</option>';
                    }
                    ?>
                </select>

                <label>Address:</label>
                <textarea name="customer_address" required></textarea>

                <h3>Order Summary</h3><br>
                <ul>
                    <?php foreach ($_SESSION['cart'] as $item): ?>
                        <li style="background-color: #91ffaf; padding:10px;font-size:1.2rem; font-family:Verdana, Geneva, Tahoma, sans-serif"><?= $item['name'] ?> x <?= $item['quantity'] ?> = <?= $item['price'] * $item['quantity'] ?> MMK</li>
                    <?php endforeach; ?>
                </ul>
                <?php
                $grand_total = 0;
                foreach ($_SESSION['cart'] as $item):
                    $total = $item['price'] * $item['quantity'];
                    $grand_total += $total;
                ?>
                <?php endforeach; ?>
                <div>
                    <br>
                    <p style="color:black;font-size:1.2rem;text-shadow: 4px 4px 9px black;font-weight:bold">Grand Total: <?= $grand_total ?> MMK</p>
                </div>
                <button type="submit" name="place_order" class="submit-btn">Place Order</button>
            </form>
        <?php endif; ?>
    </div>

</body>

</html>

<?php include("footer.php"); ?>