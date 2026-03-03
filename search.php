<?php
include("DbConnect.php");
include("header.php");
?>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<body style="margin-top: 180px;">

<div class="area">
<?php
if (isset($_POST['btnsearch'])) {
    $search = trim($_POST['txtSearchName'] ?? '');

    if ($search === '') {
        echo "<p style='color: white; text-align: center;'>Please enter something to search.</p>";
    } else {
        $sql = "SELECT * FROM products 
                JOIN categories ON products.categories_id = categories.categories_id 
                WHERE products_name LIKE CONCAT(?, '%') 
                   OR price LIKE CONCAT(?, '%') 
                   OR categories_name LIKE CONCAT(?, '%')";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sss", $search, $search, $search);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                ?>
                <div class="menu_cart" style="position: relative;">
                    <form action="cart.php" method="POST" class="cart-form">
                        <input type="hidden" name="product_id" value="<?= htmlspecialchars($row['products_id']) ?>">

                        <img src="img/<?= htmlspecialchars($row['products_img']) ?>" alt="" class="menu_image">
                        <p class="category"><?= htmlspecialchars($row['categories_name']) ?></p>
                        <h3 class="menu_title"><?= htmlspecialchars($row['products_name']) ?></h3>
                        <p class="price"><?= htmlspecialchars($row['price']) ?> <span class="currency">MMK</span></p>

                        <div class="price_quantity">
                            <label for="quantity_<?= $row['products_id'] ?>" class="quantity_label">Qty:</label>
                            <input type="number" id="quantity_<?= $row['products_id'] ?>" class="quantity_input" name="quantity" min="1" value="1">
                        </div>

                        <button type="submit" class="cart-icon-btn"><i class="fa fa-shopping-cart"></i></button>
                    </form>
                </div>
                <?php
            }
        } else {
            echo "<p style='color: white; text-align: center;'>No products found.</p>";
        }

        $stmt->close();
    }
}
?>
</div>

</body>

<?php include("footer.php"); ?>
