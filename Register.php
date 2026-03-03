<?php
session_start();
include('DbConnect.php');

if (isset($_POST['signUp'])) {
  $username = $_POST['name'];
  $email = $_POST['email'];
  $pwd = $_POST['password'];
  $cpwd = $_POST['Compassword'];
  $flag1 = $_POST['flag1'];
  $flag2 = $_POST['flag2'];
  $flag3 = $_POST['flag3'];

  if ($pwd !== $cpwd) {
    echo "<script>alert('Passwords do not match.'); window.history.back();</script>";
    exit();
  }

  $flags = [$flag1, $flag2, $flag3];
  $counts = array_count_values($flags);
  arsort($counts);
  $flagColor = array_key_first($counts);

  $drink = match ($flagColor) {
    'green' => 'Matcha Latte',
    'red' => 'Strawberry Latte',
    'black' => 'Chocolate Latte',
    default => '',
  };

  $sql = "SELECT email FROM users WHERE email = ?";
  $stmt = mysqli_prepare($conn, $sql);
  mysqli_stmt_bind_param($stmt, 's', $email);
  mysqli_stmt_execute($stmt);
  mysqli_stmt_store_result($stmt);

  if (mysqli_stmt_num_rows($stmt) > 0) {
    echo "<script>alert('Email already exists'); window.history.back();</script>";
    exit();
  }

  $uploadDir = 'img/';
  if (!is_dir($uploadDir)) {
    mkdir($uploadDir, 0777, true);
  }

  $uploadPath = '';
  if (isset($_FILES['profile']) && $_FILES['profile']['error'] === UPLOAD_ERR_OK) {
    $imageName = basename($_FILES['profile']['name']);
    $imageTmp = $_FILES['profile']['tmp_name'];
    $uploadPath = $uploadDir . uniqid() . '_' . $imageName;

    if (!move_uploaded_file($imageTmp, $uploadPath)) {
      echo "<script>alert('Image upload failed.'); window.history.back();</script>";
      exit();
    }
  } else {
    echo "<script>alert('No image selected or upload error.'); window.history.back();</script>";
    exit();
  }

  $sql2 = "INSERT INTO users (name, email, password,cpassword, profile, drinks) VALUES (?, ?, ?, ?, ?,?)";
  $stmt2 = mysqli_prepare($conn, $sql2);
  mysqli_stmt_bind_param($stmt2, 'ssssss', $username, $email, $pwd, $cpwd, $uploadPath, $drink);

  if (mysqli_stmt_execute($stmt2)) {
    echo "<script>
      alert('Account created! You get a free $drink 🎁');
      window.location.href = 'login.php';
    </script>";
    exit();
  } else {
    echo "<script>alert('Registration failed. Please try again later.'); window.history.back();</script>";
    exit();
  }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Café Register</title>
  <link rel="stylesheet" href="style.css">
</head>

<body>
  <div class="regi_card">
    <h2 class="reg_title">Café Registration</h2>
    <form action="" method="POST" enctype="multipart/form-data">
      <div class="image-preview">
        <img id="preview" src="img/profilesample.jpg" alt="" class="img">
        <input type="file" name="profile" accept="image/*" onchange="previewImage(event)" required class="choose">
      </div>

      <input type="text" name="name" placeholder="Full Name" required class="input_name">
      <input type="email" name="email" placeholder="Email" required class="input_email">
      <input type="password" name="password" placeholder="Password" required class="input_pwd">
      <input type="password" name="Compassword" placeholder="Comfirm Password" required class="input_pwd">


      <div class="quiz" style="display: none;">
  
        <label for="flag1">1. How do you handle challenges?</label><br><br>
        <select name="flag1" required>
          <option value="green">- Stay calm and find a peaceful solution
          </option>
          <option value="red">- Face them head-on, full of energy!
          </option>
          <option value="black">- Analyze the situation before making a move
          </option>
        </select>
        <br><br>

        <label for="flag2">2. What best describes your friendships?</label><br><br>
        <select name="flag2" required>
          <option value="green">- - I’m the thoughtful and caring friend
          </option>
          <option value="red">- - I bring excitement and spontaneity
          </option>
          <option value="black">- - I connect deeply with a few close friends
          </option>
        </select>
        <br><br>

        <label for="flag3">3. How do you make decisions?</label><br><br>
        <select name="flag3" required>
          <option value="green">- - Go with the flow and trust my instincts
          </option>
          <option value="red">- - Follow my passions without hesitation!
          </option>
          <option value="black">- - Think through every possibility before acting
          </option>
        </select>
        <br><br>
      </div>

      <button type="submit" class="submi" name="signUp" style="display: none;">Sign Up</button>

      <button type="button" class="submit">Start Personality Test</button>
      <button type="reset" class="clear">Clear</button>
      <br><br>
      <hr><br>
      <a href="login.php" class="acc">Already have an account? Login</a>
    </form>
  </div>

  <script>
    function previewImage(event) {
      const reader = new FileReader();
      reader.onload = function() {
        document.getElementById('preview').src = reader.result;
      };
      reader.readAsDataURL(event.target.files[0]);
    }
    const quizSection = document.querySelector('.quiz');
    quizSection.style.display = 'none'; 
    const btn = document.querySelector('.submi');
    document.querySelector('.submit').addEventListener('click', function() {
      quizSection.style.display = 'block'; 
      this.style.display = 'none'; 
      btn.style.display = 'inline'; 
    });
  </script>
</body>

</html>