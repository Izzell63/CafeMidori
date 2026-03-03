<?php
include("DbConnect.php");
include("header.php");

$update_sql = "UPDATE blog SET is_new = 0 WHERE is_new = 1";
$conn->query($update_sql);
?>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<h2 class="blog-title">From the Midori Journal</h2>
<p class="blog-intro">Brewed stories, café secrets, and everything matcha.</p>

<div class="blog-posts">
    <?php
    $sql = "SELECT * FROM blog ORDER BY upload_time DESC";
    $result = mysqli_query($conn, $sql);
    while ($row = mysqli_fetch_assoc($result)) { ?>
        <div class="blog-post">
            <img src="img/<?= htmlspecialchars($row['image']) ?>" alt="Blog Image" class="blog-post-image">
            <p class="blog-post-title"><?= htmlspecialchars($row['title']) ?></p><br>
            <p class="blog-post-intro"><?= nl2br(htmlspecialchars($row['content'])) ?></p>
            <a href="readmore.php?id=<?= $row['blog_id'] ?>" class="readmore">Read More →</a>
        </div>
    <?php }
    ?>
</div>

<?php include("footer.php"); ?>
