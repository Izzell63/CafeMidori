<?php
ob_start();
include("DbConnect.php");
include("header.php");


if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if (isset($_POST['adjust_quantity_id'])) {
        $product_id = $_POST['adjust_quantity_id'];

        if (isset($_SESSION['cart'][$product_id])) {
            if (isset($_POST['increase_quantity'])) {
                $_SESSION['cart'][$product_id]['quantity']++;
            }

            if (isset($_POST['decrease_quantity'])) {
                $_SESSION['cart'][$product_id]['quantity']--;

                if ($_SESSION['cart'][$product_id]['quantity'] < 1) {
                    unset($_SESSION['cart'][$product_id]);
                }
            }
        }

        header("Location: cart.php");
        exit;
    }

  
    if (isset($_POST['update_cart'])) {
        foreach ($_POST['quantities'] as $product_id => $quantity) {
            if ($quantity <= 0) {
                unset($_SESSION['cart'][$product_id]);
            } else {
                $_SESSION['cart'][$product_id]['quantity'] = $quantity;
            }
        }
        header("Location: cart.php");
        exit;
    }

    
    if (isset($_POST['remove_item'])) {
        $remove_id = $_POST['remove_item'];
        unset($_SESSION['cart'][$remove_id]);
        header("Location: cart.php");
        exit;
    }

    if (isset($_POST['product_id'])) {
        $product_id = (int)$_POST['product_id'];
        $quantity = (int)$_POST['quantity'];

        if ($product_id > 0 && $quantity > 0) {
            $stmt = $conn->prepare("SELECT products_id, products_name, price, products_img FROM products WHERE products_id = ?");
            $stmt->bind_param("i", $product_id);
            $stmt->execute();
            $result = $stmt->get_result();

            if ($product = $result->fetch_assoc()) {
                $cart_item = [
                    'id' => $product['products_id'],
                    'name' => $product['products_name'],
                    'price' => $product['price'],
                    'img' => $product['products_img'],
                    'quantity' => $quantity
                ];

                if (!isset($_SESSION['cart'])) {
                    $_SESSION['cart'] = [];
                }

                if (isset($_SESSION['cart'][$product_id])) {
                    $_SESSION['cart'][$product_id]['quantity'] += $quantity;
                } else {
                    $_SESSION['cart'][$product_id] = $cart_item;
                }
            }

            $stmt->close();
        }

        header("Location: cart.php");
        exit;
    }
}
?>

<!DOCTYPE html>
<html>

<head>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin-top: 60px;
        }

        table {
            width: 80%;
            margin: 50px auto;
            border-collapse: collapse;
            background-color: white;
            color: black;
        }

        th,
        td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }

        img {
            width: 50px;
        }

        .btnIncdec {
            padding: 5px 10px;
            margin: 0 2px;
            background-color: rgb(121, 255, 154);
            border: none;
            color: black;
            color: black;
            font-weight: bold;
            cursor: pointer;
        }

        .remove {
            background-color: red;
            color: white;
            padding: 5px 10px;
            border: none;
        }

        .uodate,
        .checkout-btn,
        .continue {
            padding: 10px 20px;
            margin: 20px auto;
            display: block;
            background-color: green;
            color: white;
            border: none;
            cursor: pointer;
        }

        .continue:hover {
            background-color: black;
            color: whitesmoke;
        }

        .continue {
            background-color: yellow;
            color: black;
            padding: 10px 20px;
            margin: 20px auto;
            display: block;
            font-weight: bold;
        }
    </style>
</head>

<body>

    <h2 style="text-align:center; margin-top:120px;color:#8aff97;text-decoration:underline">🛒 Your Shopping Cart</h2>

    <?php if (!empty($_SESSION['cart'])): ?>
        <form method="post" action="cart.php">
            <table>
                <tr>
                    <th>Image</th>
                    <th>Item</th>
                    <th>Unit Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Action</th>
                </tr>
                <?php
                $grand_total = 0;
                foreach ($_SESSION['cart'] as $item):
                    $total = $item['price'] * $item['quantity'];
                    $grand_total += $total;
                ?>
                    <tr>
                        <td><img src="img/<?= $item['img'] ?>" alt="<?= $item['name'] ?>"></td>
                        <td style="text-align:left;"><?= $item['name'] ?></td>
                        <td><?= $item['price'] ?> MMK</td>
                        <td>
                            <form method="post" action="cart.php" style="display:inline-flex; align-items:center; gap:5px;">
                                <input type="hidden" name="adjust_quantity_id" value="<?= $item['id'] ?>">
                                <button type="submit" name="decrease_quantity" class="btnIncdec">−</button>
                                <input type="text" name="display_quantity" value="<?= $item['quantity'] ?>" readonly style="width: 30px; text-align: center; border: none;">
                                <button type="submit" name="increase_quantity" class="btnIncdec">+</button>
                            </form>
                        </td>
                        <td><?= $total ?> MMK</td>
                        <td>
                            <form method="post" style="display:inline;">
                                <button type="submit" name="remove_item" value="<?= $item['id'] ?>" onclick="return confirm('Remove this item?')" class="remove">Remove</button>
                            </form>
                        </td>
                    </tr>
                <?php endforeach; ?>
                <tr>
                    <td colspan="4"><strong>Grand Total</strong></td>
                    <td colspan="2"><strong><?= $grand_total ?> MMK</strong></td>
                </tr>
            </table>
        </form>

        <form action="checkout.php" method="post">
            <button type="submit" class="checkout-btn">Proceed to Checkout</button>
        </form>

        <form action="menu.php" method="post">
            <button type="submit" class="continue">Continue Shopping</button>
        </form>

    <?php else: ?>
        <p style="text-align:center; margin-top: 100px; font-size: 1.5rem; color: #afff99;">Your cart is empty 😢</p>
    <?php endif; ?>

</body>

</html>

<?php include("footer.php"); ?>
<?php
ob_end_flush();
?>
