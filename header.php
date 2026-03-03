<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Café Midori</title>
    <link rel="stylesheet" href="style1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&family=Quicksand&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="icon" href="img/cafe11.jpg" type="image/x-icon">

    <style>
        .custom-translate select {
            padding: 6px 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            background-color: #f9f9f9;
            font-weight: bold;
            color: #333;
            cursor: pointer;
        }

        .notification-badge {
            position: absolute;
            top: -5px;
            right: -15px;
            background-color: red;
            color: white;
            padding: 2px 6px;
            font-size: 12px;
            border-radius: 50%;
        }

        .notification-badg {
            position: absolute;
            top: 30px;
            right: 90px;
            background-color: red;
            color: white;
            padding: 2px 6px;
            font-size: 12px;
            border-radius: 50%;
        }
    </style>
</head>
<?php $page = basename($_SERVER['PHP_SELF']); ?>



<?php
session_start();
include('DbConnect.php');

if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit();
}

$uid = $_SESSION['user_id'];
$sql = "SELECT * FROM users WHERE user_id = ?";
$stmt = mysqli_prepare($conn, $sql);
mysqli_stmt_bind_param($stmt, 'i', $uid);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);
$user = mysqli_fetch_assoc($result);
?>

<body>

    <nav>

        <img src="img/cafe11.jpg" alt="Logo" class="logo" id="logoRefresh">
        <p class="name"></p>

        <a href="home.php" class="nav_link <?php if ($page == 'home.php') echo 'active'; ?>">Home</a>
        <a href="menu.php" class="nav_link <?php if ($page == 'menu.php') echo 'active'; ?>">Menu</a>
        <?php
        $notification_sql = "SELECT COUNT(*) AS is_new FROM blog WHERE is_new = 1";
        $stmt = $conn->prepare($notification_sql);
        $stmt->execute();
        $result = $stmt->get_result();
        $notification = $result->fetch_assoc();
        $unread_count = $notification['is_new'];
        ?>

        <a href="blog.php" class="nav_link <?php if ($page == 'blog.php') echo 'active'; ?>">
            Blog
            <?php if ($unread_count > 0): ?>
                <span class="notification-badge"><?= $unread_count ?></span>
            <?php endif; ?>
        </a>
        <a href="order.php" class="nav_link <?php if ($page == 'order.php') echo 'active'; ?>">Order</a>
        <a href="contact.php" class="nav_link <?php if ($page == 'contact.php') echo 'active'; ?>">Contact</a>
        <a href="about.php" class="nav_link <?php if ($page == 'about.php') echo 'active'; ?>">About</a>


        <div class="nav-actions">

            <form action="search.php" method="post" class="search_form">
                <input type="text" placeholder="Search..." class=" search-box search-input" name="txtSearchName" />
                <button class="btn-icon search" name="btnsearch" id="search"><i class="fa fa-search"></i></button>
            </form>

            <a href="cart.php">
                <button class="btn-icon cart" name="btncart" id="cart"><i class="fa fa-shopping-cart"></i></button></a>

            <a href="message.php">
                <?php
                $notification_sql = "SELECT COUNT(*) AS unread_count FROM contact WHERE user_id = ? AND status = 'replied' AND is_read_by_user = 0";
                $stmt = $conn->prepare($notification_sql);
                $stmt->bind_param("i", $uid);
                $stmt->execute();
                $result = $stmt->get_result();
                $notification = $result->fetch_assoc();
                $unread_count = $notification['unread_count'];

                $notification_sql1 = "SELECT COUNT(*) AS unread_order_cancel FROM orders WHERE user_id = ? AND order_status = 'cancelled' AND is_read_by_user = 0";
                $stmt1 = $conn->prepare($notification_sql1);
                $stmt1->bind_param("i", $uid);
                $stmt1->execute();
                $result1 = $stmt1->get_result();
                $notification1 = $result1->fetch_assoc();
                $unread_order_cancel = $notification1['unread_order_cancel'];

                $total_unread = $unread_count + $unread_order_cancel;

                ?>
                <button class="btn-icon cart" id="notification-bell">
                    <i class="fa-solid fa-bell"></i>
                    <?php if ($total_unread > 0): ?>
                        <span class="notification-badg"><?= $total_unread ?></span>
                    <?php endif; ?>
                </button>
            </a>


            <a href="" class="navbar">
                <div class="profile-wrapper">
                    <img src="<?= $user['profile'] ?>" alt="" class="profile-img" id="profileToggle" />
                </div>
            </a>
            <div class="dropdown" id="profileDropdown">
                <a href="profile.php" class="pf_link">Profile</a>
                <a href="orderHistory.php" class="pf_link logout">Order History</a>
                <a href="logout.php" class="pf_link logout">Logout</a>
            </div>
        </div>
    </nav>
    <?php if (isset($_SESSION['user_id'])): ?>
        <audio id="bg-music" autoplay loop preload="auto">
            <source src="img/cozy.mp3" type="audio/mpeg">
        </audio>
    <?php endif; ?>

</body>
<script>
    const toggle = document.getElementById('profileToggle');
    const dropdown = document.getElementById('profileDropdown');

    toggle.addEventListener('click', function(e) {
        e.preventDefault(); 
        dropdown.style.display = (dropdown.style.display === 'block') ? 'none' : 'block';
    });
    document.querySelector('.profile-img').addEventListener('click', function() {
        document.querySelector('.dropdown').style.display = 'flex';
    });

   
    document.addEventListener('click', function(e) {
        if (!toggle.contains(e.target) && !dropdown.contains(e.target)) {
            dropdown.style.display = 'none';
        }
    });

    document.getElementById('logoRefresh').addEventListener('click', function() {
        window.location.reload();
    });

    const audio = document.getElementById('bg-music');

  
    window.addEventListener('load', () => {
        const savedTime = localStorage.getItem('bg-music-time');
        if (savedTime) {
            audio.currentTime = parseFloat(savedTime);
        }

        audio.play().catch((err) => {
            console.log("Autoplay blocked:", err);
        });
    });

 
    window.addEventListener('beforeunload', () => {
        localStorage.setItem('bg-music-time', audio.currentTime);
    });

    /* const searchBtn = document.getElementById(" search");
        const searchBox=document.getElementById("searchBox");

        searchBtn.addEventListener("click", ()=> {
        if (searchBox.style.display === "none" || searchBox.style.display === "") {
        searchBox.style.display = "block";
        } else {
        searchBox.style.display = "none";
        }
        });

        // Optional: Close when clicking outside
        document.addEventListener("click", (e) => {
        if (!searchBox.contains(e.target) && !searchBtn.contains(e.target)) {
        searchBox.style.display = "none";
        }
        });*/
</script>

</html>