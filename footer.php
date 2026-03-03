 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<footer class="site-footer">
    <div class="footer-content">
        <div class="footer-brand">
            <h3 class="cafename">Café Midori</h3>
            <p>Serving warmth, one cup at a time.</p><br><br>
            <?php
            $user = $_SESSION['user_id'];
                if (isset($_POST['review_submit'])) {
                    $review_msg = $_POST['review_msg'];
                    $rating = $_POST['rating'];
                    $sql = "INSERT INTO reviews (user_id, review_msg, rating) VALUES ('$user', '$review_msg', '$rating')";
                    $result = mysqli_query($conn, $sql);
                    if ($result) {
                        echo "<script>alert('Thank you for your review!')</script>";
                    } else {
                        echo "<p class='review_msg'>Sorry, there was an error submitting your review.</p>";
                    }
                }
            ?>

            <form action="" method="POST">

                <label for="review_msg">Your Review:</label><br>
                <textarea id="review_msg" name="review_msg" rows="2" cols="20" placeholder="write your review here ..." required class="review"></textarea><br>

                <label for="rating">Rating:</label>
                <select id="rating" name="rating">
                    <option value="★★★★★">★★★★★ (5)</option>
                    <option value="★★★★☆">★★★★☆ (4)</option>
                    <option value="★★★☆☆">★★★☆☆ (3)</option>
                    <option value="★★☆☆☆">★★☆☆☆ (2)</option>
                    <option value="★☆☆☆☆">★☆☆☆☆ (1)</option>
                </select><br><br><br>

                <input type="submit" name="review_submit" value="Submit Review" class="review_submit">
            </form>

        </div>

        <div class="footer-links">
            <h4>Quick Links</h4>
            <ul class="ul">
                <li class="li"><a href="home.php" class="a">Home</a></li>
                <li class="li"><a href="menu.php" class="a">Menu</a></li>
                <li class="li"><a href="blog.php" class="a">Blog</a></li>
                <li class="li"><a href="order.php" class="a">Order</a></li>
                <li class="li"><a href="contact.php" class="a">Contact</a></li>
                <li class="li"><a href="about.php" class="a">About</a></li>
            </ul>
        </div>

        <div class="footer-contact">
            <h4 class="contactUs">Contact Us</h4>
            <p class="p">Email: hello@cafemidori.com</p>
            <p class="p">Phone: (123) 456-7890</p>
            <p class="p"> Yangon, Myanma Gon Yi St,<br> L.L.Town Building A3F, Myanmar Tharkayta Industrial Zone</p>
        </div>
    </div>

    <div class="footer-social">
        <h4 class="follow">Follow Us</h4>
        <div class="social-icon">
            <a href="https://www.facebook.com/" target="_blank" class="blank"><i class="fab fa-facebook fb"></i></a>
            <a href="https://www.instagram.com/" target="_blank" class="blank"><i class="fab fa-instagram ig"></i></a>
            <a href="https://twitter.com/" target="_blank" class="blank"><i class="fab fa-twitter twi"></i></a>
            <a href="https://www.snapchat.com/" target="_blank" class="blank"><i class="fab fa-snapchat-ghost snap"></i></a>
            <a href="https://play.google.com/store/games?device=windows" target="_blank" class="blank"><i class="fab fa-google-play play"></i></a>
            <a href="https://www.apple.com/app-store/" target="_blank" class="blank"><i class="fa-brands fa-apple apple"></i></a>
        </div>
    </div>

    <div class="footer-bottom">
        <p>&copy; 2025 Café Midori. All rights reserved.</p>
    </div>
</footer>