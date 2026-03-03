<?php
include('header.php');
?>
<?php
if (isset($_SESSION['user_id'])) {
    $uid = $_SESSION['user_id'];
    $sql = "select * from users where user_id='$uid'";
    $user = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($user);
} else {
    header('location:login.php');
}
if (isset($_POST['btnsend'])) {
    //  echo  "<script>alert('Your message has been sent')</script>";
    $msg = mysqli_real_escape_string($conn, $_POST['message']);
    $sql = "INSERT INTO contact(user_id, message) VALUES ($uid, '$msg')";
    mysqli_query($conn, $sql);
    echo "<script>alert('Your message has been sent'); window.location.href='contact.php';</script>";
    exit;
}

?>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<body>
<section class="contact-section" id="contact">
    <div class="contact-container">
        <div class="contact-header">
            <h2 class="blo">Get In Touch With Café Midori</h2>
            <p class="pi">We’re here to serve you better. Let's connect!</p>
        </div>

        <div class="contact-content">
          
            <div class="contact-info">
                <h3 class="hi">Contact Details</h3>
                <ul class="contact-list">
                    <li class="contact_li"><i class="fas fa-map-marker-alt i"></i> Yangon, Myanma Gon Yi St,<br> L.L.Town Building A3F, Myanmar Tharkayta Industrial Zone</li>
                    <li class="contact_li"><i class="fas fa-phone i"></i> (123) 456-7890</li>
                    <li class="contact_li"><i class="fas fa-envelope i"></i> hello@cafemidori.com</li>
                </ul>
                <div class="social-icons">
                    <a href="https://www.facebook.com/" class="al"><i class="fab fa-facebook-f"></i></a>
                    <a href="https://www.instagram.com/" class="al"><i class="fab fa-instagram"></i></a>
                    <a href="https://www.snapchat.com/" class="al"><i class="fab fa-snapchat-ghost"></i></a>
                    <a href="https://play.google.com/store/games?device=windows" class="al"><i class="fab fa-google-play"></i></a>
                </div>
            </div>

         
            <div class="contact-form">
                <form action="" method="POST" class="input_form">
                    <input type="text" value="<?= $row['name'] ?>" name="name" placeholder="Your Name" required class="input" />
                    <input type="email" value="<?= $row['email'] ?>" name="email" placeholder="Your Email" required class="input" />
                    <textarea name="message" rows="5" placeholder="Your Message" required class="textarea"></textarea>
                    <button type="submit" name="btnsend" class="sub">Send Message</button>
                </form>
            </div>
        </div>

        
        <div class="contact-map">
            <iframe class="iframe"
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d488.8159306445897!2d96.1991!3d16.8054389!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c1ed5491339adb%3A0x995e600e13df7772!2sMetro%20IT%20%26%20Japanese%20Language%20Centre!5e0!3m2!1sen!2smm!4v1720878900000!5m2!1sen!2smm"
                width="100%" height="350" style="border:0;" allowfullscreen="" loading="lazy">
            </iframe>
        </div>
    </div>
</section>
</body>
<?php
include 'footer.php';
?>