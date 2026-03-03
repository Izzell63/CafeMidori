<?php
include("DbConnect.php");
include('header.php');
?>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<body style="background-color: white;">
    <?php
    $pid = $_GET['id'];
    $sql = "select * from blog where blog_id = $pid";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $count = 0;

    if (isset($_POST['btnHeart']) && isset($_SESSION['user_id'])) {
        $uid = $_SESSION['user_id'];
        $sql1 = "Select * from react where user_id = $uid and blog_id = $pid and type='heart'";
        $return = mysqli_query($conn, $sql1);
        if (mysqli_num_rows($return) == 0) {
            $sql2 = "insert into react (user_id,blog_id,type) values($uid,$pid,'heart')";
            mysqli_query($conn, $sql2);
        }
    }

    $sql3 = "select count(*) as count from react where blog_id = $pid and type='heart'";
    $hdata = mysqli_query($conn, $sql3);
    $row1 = mysqli_fetch_assoc($hdata);
    $count = $row1['count'];

    ?>
    <div class="readmore_cart">
        <div class="read_cart">
            <img src="img/<?= $row['image'] ?>" alt="" class="read_img">
            <br><br>
            <h3 class="read_title"><?= $row['title'] ?></h3>
            <br>
            <p class="read_content"><?= $row['content'] ?></p>
            <br>
            <form action="" method="post" class="heart_form">
                <button class="heart_btn" name="btnHeart"><i class="fa fa-heart"></i></button>
                <p class="heart_count"><?php if ($count > 0) echo $count ?></p>
            </form>
            <p>
                <span class="read_date"> Posted on: <?= date('d M Y, h:i A', strtotime($row['upload_time'])) ?></span>
            </p>
        </div>
    </div>
</body>

<?php
include('footer.php');
?>