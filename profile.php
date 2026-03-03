<?php
session_start();
include('DbConnect.php');

if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit();
}

$uid = $_SESSION['user_id'];
$success = "";
$error = "";

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['update'])) {
    $username = trim($_POST['username']);
    $email = trim($_POST['email']);
    $password = $_POST['password'];
    $cpassword = $_POST['cpassword'];

    if (!empty($password) && $password !== $cpassword) {
        $error = "Passwords do not match.";
    } else {
        $profilePath = null;

        if (!empty($_FILES['profile']['name'])) {
            $targetDir = "img/";
            if (!is_dir($targetDir)) mkdir($targetDir, 0777, true);
            $filename = time() . "_" . basename($_FILES["profile"]["name"]);
            $targetFile = $targetDir . $filename;

            if (move_uploaded_file($_FILES["profile"]["tmp_name"], $targetFile)) {
                $profilePath = $targetFile;
            }
        }

        if (!$error) {
            if (!empty($password)) {
                if ($profilePath) {
                    $sql = "UPDATE users SET name=?, email=?, password=?, cpassword=?, profile=? WHERE user_id=?";
                    $stmt = $conn->prepare($sql);
                    $stmt->bind_param('sssssi', $username, $email, $password, $cpassword, $profilePath, $uid);
                } else {
                    $sql = "UPDATE users SET name=?, email=?, password=?, cpassword=? WHERE user_id=?";
                    $stmt = $conn->prepare($sql);
                    $stmt->bind_param('ssssi', $username, $email, $password, $cpassword, $uid);
                }
            } else {
                if ($profilePath) {
                    $sql = "UPDATE users SET name=?, email=?, profile=? WHERE user_id=?";
                    $stmt = $conn->prepare($sql);
                    $stmt->bind_param('sssi', $username, $email, $profilePath, $uid);
                } else {
                    $sql = "UPDATE users SET name=?, email=? WHERE user_id=?";
                    $stmt = $conn->prepare($sql);
                    $stmt->bind_param('ssi', $username, $email, $uid);
                }
            }

            $stmt->execute();
            $success = "Profile updated successfully!";
        }
    }
}


$sql = "SELECT * FROM users WHERE user_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param('i', $uid);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>My Profile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href="img/cafe11.jpg" type="image/x-icon">
<style>
body {
       background-color: #708043; 
    font-family: 'Segoe UI', sans-serif;
}
.profile-card {
    max-width: 380px;
    margin: 40px auto;
    background: #ffffffff; 
    padding: 20px;
    border-radius: 12px;
    box-shadow: 0 6px 12px rgba(0,0,0,0.08);
    border: 1px solid #d4e7ce;
}
h2 {
    color: #24461cff; 
    font-size: 1.5rem;
}
.image-preview img {
    width: 120px;
    height: 120px;
    object-fit: cover;
    border-radius: 50%;
    border: 3px solid #c7e1b4;
}
.btn-primary {
    background-color: #5d8144; 
    border-color: #5d8144;
    font-size: 0.9rem;
    padding: 8px 12px;
    color: #fff;
}
.btn-primary:hover {
    background-color: #4e6e3a; 
    border-color: #4e6e3a;
}
.btn-secondary {
    background-color: #a9c7a3; 
    border-color: #a9c7a3;
    color: #3d4f37;
    font-size: 0.85rem;
    padding: 6px 10px;
}
.btn-secondary:hover {
    background-color: #90b88a; 
    border-color: #90b88a;
}
.form-control {
    border-radius: 8px;
    border-color: #bcd9af;
    font-size: 0.9rem;
    padding: 6px 10px;
}
label {
    font-size: 0.85rem;
    color: #24461cff;
}
.alert {
    font-size: 0.85rem;
    padding: 6px 10px;
}
input[type="file"] {
    display: none;
}
.custom-file-upload {
    cursor: pointer;
    padding: 4px 10px;
    font-size: 0.8rem;
    border-radius: 6px;
    display: inline-block;
    background-color: #dbe1c1ff;
    color: #3d4f37;
    border: 1px solid #ced3a7ff;
    transition: background-color 0.2s ease;
}
.custom-file-upload:hover {
    background-color: #d0d4aaff;
}
</style>
</head>

<body>

<div class="profile-card">
    <h2 class="text-center mb-3">🌱 My Profile</h2>

    <?php if ($success): ?>
        <div class="alert alert-success"><?= htmlspecialchars($success) ?></div>
    <?php elseif ($error): ?>
        <div class="alert alert-danger"><?= htmlspecialchars($error) ?></div>
    <?php endif; ?>

    <form action="" method="POST" enctype="multipart/form-data" id="profileForm">
        <div class="text-center mb-2 image-preview">
            <img id="preview" src="<?= htmlspecialchars($user['profile'] ?? 'img/default.png') ?>" alt="Profile">
        </div>

        <div class="mb-3 text-center">
            <label class="custom-file-upload">
                <input type="file" name="profile" accept="image/*" onchange="previewImage(event)">
                Choose File
            </label>
        </div>

        <div class="mb-2">
            <label for="username" class="form-label">Full Name</label>
            <input type="text" name="username" id="username" value="<?= htmlspecialchars($user['name']) ?>" required class="form-control">
        </div>

        <div class="mb-2">
            <label for="email" class="form-label">Email</label>
            <input type="email" name="email" id="email" value="<?= htmlspecialchars($user['email']) ?>" required class="form-control">
        </div>

        <div class="mb-2">
            <label for="password" class="form-label">New Password</label>
            <input type="password" name="password" id="password" placeholder="Leave blank to keep current" class="form-control">
        </div>

        <div class="mb-3">
            <label for="cpassword" class="form-label">Confirm New Password</label>
            <input type="password" name="cpassword" id="cpassword" placeholder="Confirm new password" class="form-control">
        </div>

        <div class="d-grid gap-2">
            <button type="submit" name="update" class="btn btn-primary">🍵 Update Profile</button>
            <button type="button" onclick="resetForm()" class="btn btn-secondary">Clear</button>
            <a href="home.php" class="btn btn-link text-decoration-none">← Back to Home</a>
        </div>
    </form>
</div>

<script>
function previewImage(event) {
    const reader = new FileReader();
    reader.onload = () => document.getElementById('preview').src = reader.result;
    reader.readAsDataURL(event.target.files[0]);
}

function resetForm() {
    const form = document.getElementById('profileForm');
    form.reset();
    document.getElementById('preview').src = "<?= htmlspecialchars($user['profile'] ?? 'img/default.png') ?>";
}
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
