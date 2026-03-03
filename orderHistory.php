<?php
include("DbConnect.php");
include("header.php");

if (!isset($_SESSION['user_id'])) {
    echo "<p style='color:white; text-align:center; margin-top:100px;'>Please log in to view your orders.</p>";
    include("footer.php");
    exit;
}

$user_id = $_SESSION['user_id'];

$sql = "
    SELECT o.order_id, u.name, u.email, o.user_address, o.user_phone, o.order_status, o.order_date, o.cancel_reason,
           p.products_name, p.price, oi.quantity
    FROM orders o
    JOIN order_item oi ON o.order_id = oi.orders_id
    JOIN products p ON oi.product_id = p.products_id
    JOIN users u ON o.user_id = u.user_id
    WHERE o.user_id = ? AND o.order_status IN ('Delivered', 'cancelled')
    ORDER BY o.order_id DESC
";

$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $user_id);
$stmt->execute();
$result = $stmt->get_result();

$orders = [];
while ($row = $result->fetch_assoc()) {
    $orders[$row['order_id']]['info'] = [
        'name' => $row['name'],
        'email' => $row['email'],
        'address' => $row['user_address'],
        'phone' => $row['user_phone'],
        'status' => $row['order_status'],
        'order_date' => $row['order_date'],
        'cancel_reason' => $row['cancel_reason'] 
    ];
    $orders[$row['order_id']]['items'][] = [
        'name' => $row['products_name'],
        'price' => $row['price'],
        'quantity' => $row['quantity']
    ];
}

$stmt->close();
?>

<!DOCTYPE html>
<html>

<head>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin-top: 50px;
            font-size: 20px;
        }

        .orde {
            background: white;
            color: black;
            margin: 30px auto;
            padding: 20px;
            width: 80%;
            border-radius: 10px;
        }

        .order h3 {
            margin-top: 0;
        }

        table {
            width: 100%;
            margin-top: 10px;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 5px;
            text-align: center;
        }

        .section-title {
            text-align: center;
            margin-top: 120px;
            font-size: 30px;
            color: #afff99;
        }

        .status-pending {
            color: red;
            font-weight: bold;
        }

        .status-preparing {
            color: #d36f00;
            font-weight: bold;
        }

        .status-ready {
            color: blue;
            font-weight: bold;
        }

        .status-delivered {
            color: green;
            font-weight: bold;
        }

        .status-cancelled {
            color: rgb(182, 0, 109);
            font-weight: bold;
        }
    </style>
</head>

<body>

    <h2 class="section-title">📦 Your Past Orders</h2>
    <?php if (empty($orders)): ?>
        <p style="text-align:center; font-size: 2rem; color: #afff99;">You have no past orders.</p>
    <?php else: ?>
        <?php foreach ($orders as $order_id => $order): ?>
            <div class="orde">
                <?php
                $status = strtolower($order['info']['status']);
                $status_class = "status-" . htmlspecialchars($status);
                ?>
                 <p style="font-family: 'Courier New', Courier, monospace;font-weight:bold;"><strong>Order ID:</strong> <?= $order_id ?></p>
                <p><strong>Order Status:</strong> <span class="<?= $status_class ?>"><?= htmlspecialchars(ucfirst($status)) ?></span></p>
                <?php if ($status === 'cancelled' && !empty($order['info']['cancel_reason'])): ?>
                    <p><strong>Cancel Reason:</strong> <?= htmlspecialchars($order['info']['cancel_reason']) ?></p>
                <?php endif; ?>
                <p><strong>Placed on:</strong> <?= $order['info']['order_date'] ?></p>
                <table>
                    <thead>
                        <tr>
                            <th>Item</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $subtotal = 0; ?>
                        <?php foreach ($order['items'] as $item): ?>
                            <?php
                            $item_total = $item['price'] * $item['quantity'];
                            $subtotal += $item_total;
                            ?>
                            <tr>
                                <td><?= htmlspecialchars($item['name']) ?></td>
                                <td><?= $item['price'] ?> MMK</td>
                                <td><?= $item['quantity'] ?></td>
                                <td><?= $item_total ?> MMK</td>
                            </tr>
                        <?php endforeach; ?>
                        <tr>
                            <td colspan="3"><strong>Subtotal</strong></td>
                            <td><strong><?= $subtotal ?> MMK</strong></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        <?php endforeach; ?>
    <?php endif; ?>

</body>
</html>

<?php include("footer.php"); ?>
