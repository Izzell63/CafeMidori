<?php
include("header.php");
?>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<body>

   <div class="slider">
      <div class="slides">
         <img class="slide" src="img/pic1.jpg" alt="Image 1" />
         <img class="slide" src="img/macha.jpg" alt="Image 2" />
         <img class="slide" src="img/macha1.jpg" alt="Image 3" />
         <img class="slide" src="img/macha2.jpg" alt="Image 4" />

         <img class="slide" src="img/macha4.jpg" alt="Image 5" />
         <img class="slide" src="img/bubbleTea2.jpg" alt="Image 6" />
         <img class="slide" src="img/cafe7.jpg" alt="Image 7" />
         <img class="slide" src="img/slide8.jpg" alt="Image 8" />

      </div>
      <button class="prev" onclick="prevSlide()">&#10094;</button>
      <button class="next" onclick="nextSlide()">&#10095;</button>
   </div>
   <br><br>

   <h2 class="cate">OUR CATEGORY</h2>
   <div class="home_container">
      <div class="home_logoCard">
         <a href="coffee.php" class="div_label">
            <i class="fa-solid fa-mug-saucer icon"></i>
            <p class="div_label">Coffee</p>
         </a>
      </div>

      <div class="home_logoCard">
         <a href="drink.php" class="div_label">
            <i class="fa-solid fa-wine-glass icon"></i>
            <p class="div_label">Drinks</p>
         </a>
      </div>

      <div class="home_logoCard">
         <a href="bakery.php" class="div_label">
            <i class="fa-solid fa-cake-candles icon"></i>
            <p class="div_label">Cake</p>
         </a>
      </div>

      <div class="home_logoCard">
         <a href="fastFood.php" class="div_label">
            <i class="fa-solid fa-pizza-slice icon"></i>
            <p class="div_label">Fast Food</p>
         </a>
      </div>
   </div>

   <section class="best-seller-section">
      <h2 class="section-title">Our Best Sellers</h2>
      <div class="best-seller-grid">
         <?php
         $sql = "SELECT p.products_name,p.description,p.products_img, SUM(oi.quantity) 
         FROM order_item oi JOIN products p ON 
         oi.product_id = p.products_id GROUP BY oi.product_id ORDER BY  SUM(oi.quantity)  DESC LIMIT 4";
         $result = $conn->query($sql);
         while ($row = $result->fetch_assoc()) {
         ?>
            <div class="flip-card">
               <div class="flip-card-inner"  style=" border-radius:10px;">
                  <div class="flip-card-front">
                     <img src="img/<?= $row['products_img'] ?>" alt="Caramel Macchiato" class="picture">
                     <h3 class="sellItems"><?= $row['products_name'] ?></h3>
                  </div>
                  <div class="flip-card-back">
                     <h3><?= $row['products_name'] ?></h3><br>
                     <p><?= $row['description'] ?></p>
                  </div>
               </div>
            </div>
         <?php } ?>
   </section>


   <section class="review-section">
      <h2 class="section-title">What Our Customers Say</h2>
      <?php
      $sql = "SELECT r.review_msg, r.rating, r.review_date, u.name, u.profile FROM reviews r JOIN users u ON r.user_id = u.user_id ORDER BY r.review_id DESC LIMIT 4";
      $result = $conn->query($sql);
      if ($result->num_rows > 0) {
         while ($row = $result->fetch_assoc()) {

      ?>
            <div class="review-grid">
               <div class="review-card">
                  <img src="<?= $row['profile'] ?>" alt="" class="review_img">
                  <p class="review-author"><?= $row['name'] ?></p><br>
                  <p class="review-author" style="color: orange; font-weight: bold; font-size: 2rem;"><?= $row['rating'] ?></p><br>
                  <p class="review-text">“<?= $row['review_msg'] ?>”</p>
               </div>

         <?php }
      } ?>
            </div>
   </section>



   <script>
      const slides = document.querySelectorAll(".slides img");
      let SlideIndex = 0;
      let intervalId = null;

      document.addEventListener("DOMContentLoaded", intializeSlider);

      function intializeSlider() {

         if (slides.length > 0) {
            slides[SlideIndex].classList.add("displaySlide");
            intervalId = setInterval(nextSlide, 3000);
         }

      }

      function ShowSlide(index) {

         if (index >= slides.length) {
            SlideIndex = 0;
         } else if (index < 0) {
            SlideIndex = slides.length - 1;
         }

         slides.forEach(slide => {
            slide.classList.remove("displaySlide");
         });
         slides[SlideIndex].classList.add("displaySlide");
      }

      function prevSlide() {
         clearInterval(intervalId);
         SlideIndex--;
         ShowSlide(SlideIndex);
      }

      function nextSlide() {
         SlideIndex++;
         ShowSlide(SlideIndex);

      }
   </script>
</body>
<?php
include("footer.php");
?>