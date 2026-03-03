<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

include('DbConnect.php');
include('header.php');

$uid = $_SESSION['user_id'];


$update_stmt = $conn->prepare("UPDATE contact SET is_read_by_user = 1 WHERE user_id = ? AND status = 'replied'");
if (!$update_stmt) { die("Prepare failed: " . $conn->error); }
$update_stmt->bind_param("i", $uid);
$update_stmt->execute();
$update_stmt->close();


$stmt = $conn->prepare("SELECT message, reply_message, contact_date FROM contact WHERE user_id = ? AND status = 'replied' ORDER BY contact_date DESC");
if (!$stmt) { die("Prepare failed: " . $conn->error); }
$stmt->bind_param("i", $uid);
$stmt->execute();
$messages = $stmt->get_result();
$stmt->close();


$order_stmt = $conn->prepare("UPDATE orders SET is_read_by_user = 1 WHERE user_id = ? AND order_status = 'cancelled'");
if (!$order_stmt) { die("Prepare failed: " . $conn->error); }
$order_stmt->bind_param("i", $uid);
$order_stmt->execute();
$order_stmt->close();


$cancel_stmt = $conn->prepare("SELECT order_id, cancel_reason, order_date FROM orders WHERE user_id = ? AND order_status = 'cancelled' ORDER BY order_date DESC");
if (!$cancel_stmt) { die("Prepare failed: " . $conn->error); }
$cancel_stmt->bind_param("i", $uid);
$cancel_stmt->execute();
$cancelled = $cancel_stmt->get_result();
$cancel_stmt->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Your Messages & Orders</title>
<style>
body {
    margin: 0;
    padding: 0;
     font-family: 'Playfair Display', serif, 'Quicksand', sans-serif;
    background-color: #708043;
}
h2 {
    text-align: center;
    margin-top: 40px;
    color: #f1ff95ff;
     margin-top: 90px;
}
.container {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    max-width: 1200px;
    margin: 20px auto;
    padding: 0 10px;
    margin-top: 30px;
}
.section {
    flex: 1 1 48%;
    background: #fff;
    border-radius: 8px;
    padding: 15px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}
.section h3 {
    margin-top: 0;
    text-align: center;
    color: #4a6735;
}
.message-box {
    border: 1px solid #ccc;
    padding: 10px;
    margin: 10px 0;
    background: #fafafa;
    border-radius: 6px;
}
.reply {
    background: #e6f9e6;
    padding: 8px;
    margin-top: 6px;
    border-left: 4px solid #4caf50;
    border-radius: 4px;
}
.cancel {
    background: #fff0f0;
    border-left: 4px solid red;
}
.no-messages {
    text-align: center;
    margin-top: 20px;
    color: #888;
}
@media(max-width: 768px) {
    .section {
        flex: 1 1 100%;
    }
}
</style>
</head>

<body>

<h2>Your Messages & Orders</h2>

<div class="container">

    <!-- Left Section -->
    <div class="section">
        <h3>🚫 Cancelled Orders</h3>
        <?php if ($cancelled->num_rows > 0): ?>
            <?php while ($cancel = $cancelled->fetch_assoc()): ?>
            <div class="message-box cancel">
                <strong>Order ID: <?= htmlspecialchars($cancel['order_id']) ?></strong>
                <div class="reply">
                    <strong>Reason:</strong>
                    <p><?= nl2br(htmlspecialchars($cancel['cancel_reason'])) ?></p>
                    <small><i>Cancelled on <?= htmlspecialchars($cancel['order_date']) ?></i></small>
                </div>
            </div>
            <?php endwhile; ?>
        <?php else: ?>
            <div class="no-messages">✅ No cancelled orders yet.</div>
        <?php endif; ?>
    </div>

    <div class="section">
        <h3>💬 Messages & Replies</h3>
        <?php if ($messages->num_rows > 0): ?>
            <?php while ($row = $messages->fetch_assoc()): ?>
            <div class="message-box">
                <strong>Your Message:</strong>
                <p><?= nl2br(htmlspecialchars($row['message'])) ?></p>
                <div class="reply">
                    <strong>Admin Reply:</strong>
                    <p><?= nl2br(htmlspecialchars($row['reply_message'])) ?></p>
                    <small><i>Replied on <?= htmlspecialchars($row['contact_date']) ?></i></small>
                </div>
            </div>
            <?php endwhile; ?>
        <?php else: ?>
            <div class="no-messages">✨ You have no replies yet.</div>
        <?php endif; ?>
    </div>

</div>

</body>
</html>

<?php include('footer.php'); ?>
