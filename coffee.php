<?php
include("DbConnect.php");
include("header.php");


$records_per_page = 6;
$current_page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
if ($current_page <= 0) $current_page = 1;

$offset = ($current_page - 1) * $records_per_page;


$total_result = mysqli_query($conn, "SELECT COUNT(*) AS total FROM products WHERE categories_id = 1");
$total_row = mysqli_fetch_assoc($total_result);
$total_records = $total_row['total'];
$total_pages = ceil($total_records / $records_per_page);

$currentFile = basename($_SERVER['PHP_SELF']);
?>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<div class="page-container">
    <div class="sidebar">
        <h1 class="menubar">Our Menu</h1><br><br>
        <a href="coffee.php" class="menu_link <?php if ($currentFile == 'coffee.php') echo 'active'; ?>">Coffee</a>
        <a href="drink.php" class="menu_link <?php if ($currentFile == 'drink.php') echo 'active'; ?>">Drinks</a>
        <a href="bakery.php" class="menu_link <?php if ($currentFile == 'bakery.php') echo 'active'; ?>">Bakery</a>
        <a href="fastFood.php" class="menu_link <?php if ($currentFile == 'fastFood.php') echo 'active'; ?>">Fast Food</a>
        <a href="breakfast.php" class="menu_link <?php if ($currentFile == 'breakfast.php') echo 'active'; ?>">Breakfast</a>
        <a href="healthy.php" class="menu_link <?php if ($currentFile == 'healthy.php') echo 'active'; ?>">Healthy</a>
        <a href="comboSet.php" class="menu_link <?php if ($currentFile == 'comboSet.php') echo 'active'; ?>">Combo Set</a>
    </div>

    <div class="area">
        <?php
        $sql = "SELECT * FROM products 
                INNER JOIN categories ON products.categories_id = categories.categories_id  where products.categories_id = 1
                LIMIT $offset, $records_per_page;";
        $result = mysqli_query($conn, $sql);

        while ($row = mysqli_fetch_assoc($result)) { ?>
            <div class="menu_cart" style="position: relative;">
                <form action="cart.php" method="POST" class="cart-form">
                    <input type="hidden" name="product_id" value="<?= $row['products_id'] ?>">

                    <img src="img/<?= $row['products_img'] ?>" alt="" class="menu_image">
                    <p class="category"><?= $row['categories_name'] ?></p>
                    <h3 class="menu_title"><?= $row['products_name'] ?></h3>
                    <p class="price"><?= $row['price'] ?> <span class="currency">MMK</span></p>

                    <div class="price_quantity">
                        <label for="quantity_<?= $row['products_id'] ?>" class="quantity_label">Qty:</label>
                        <input type="number" id="quantity_<?= $row['products_id'] ?>" class="quantity_input" name="quantity" min="1" value="1">
                    </div>

                    <button type="submit" class="cart-icon-btn"><i class="fa fa-shopping-cart"></i></button>
                </form>
            </div>
        <?php } ?>
    </div>
</div>

<div class="pagination">
    <?php if ($current_page > 1): ?>
        <a href="?page=<?= $current_page - 1 ?>">&laquo; Prev</a>
    <?php endif; ?>

    <?php for ($i = 1; $i <= $total_pages; $i++): ?>
        <?php if ($i == $current_page): ?>
            <strong><?= $i ?></strong>
        <?php else: ?>
            <a href="?page=<?= $i ?>"><?= $i ?></a>
        <?php endif; ?>
    <?php endfor; ?>

    <?php if ($current_page < $total_pages): ?>
        <a href="?page=<?= $current_page + 1 ?>">Next &raquo;</a>
    <?php endif; ?>
</div>

<?php include("footer.php"); ?>
