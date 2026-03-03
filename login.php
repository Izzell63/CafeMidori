<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Café Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="style.css">
</head>
<?php
include('DbConnect.php');
session_start();
?>

<body>
    <?php
    if (isset($_POST['btnlog'])) {
        $email = $_POST['email'];
        $pwd = $_POST['pwd'];

    
        $sql = "SELECT * FROM users WHERE email = '$email'";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0) {
            $user = mysqli_fetch_assoc($result);

  
            if ($user['password'] === $pwd) {
                if ($user['status'] === 'active') {
                    $_SESSION['user_id'] = $user['user_id'];
                    header('location:home.php');
                    exit();
                } else {
                    echo "<script>alert('Your account is Banned!');</script>";
                }
            } else {
                echo "<script>alert('Incorrect password. Try again.');</script>";
            }
        } else {
            echo "<script>alert('Email account does not exist.');</script>";
        }
    }
    ?>

    <div class="login-card">
        <h2 class="welcome">Welcome Back ☕</h2>
        <form action="" method="post">
            <input type="text" name="email" placeholder="Email" required class="email_text_log">
            <input type="password" name="pwd" placeholder="Password" required class="pwd">
            <button type="submit" class="btn" name="btnlog">Login</button>
            <a href="" class="forget">Forgot password?</a>
            <br>
            <hr><br>
            <a href="Register.php" class="acc">Don’t have an account? Sign Up</a>
        </form>
    </div>
</body>

</html>