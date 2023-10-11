<?php
  $suggest = suggest($categories[0]);
?>

<!-- Suggest -->
  <section id="theater" class="theater container">

    <div class="heading-theater">
      <div class="swiper-btn">
        <div class="swiper-button-prev"></div>
      </div>
      <h2 class="heading-title">PHIM CÙNG THỂ LOẠI</h2>     
      <div class="swiper-btn">
        <div class="swiper-button-next"></div>
      </div>
    </div>

    <div class="swiper theater-content">
      
      <!-- Noi dung phim -->
      <div class="swiper-wrapper">
      <?php
        foreach($suggest as $s)
        {
          ?>

            <div class="swiper-slide">
            <div class="movie-box">
              <img src="./movie/<?= $s['ID'] ?>/poster.png" class="movie-box-img lazyload" loading="lazy">
              <div class="box-text">
                <h2><?= $s['ten_phim'] ?></h2>
                <span class="movie-type"><?= $s['ten_quocgia'] ?></span>

                <a href="movie_play.php?id=<?= $s['ID'] ?>&ep=1" class="watch-btn play-btn">
                  <i class='bx bx-play-circle' ></i>
                
                </a>

              </div>
            </div>
          </div>

          <?php
        }
      ?>

      </div>
    </div>
  </section>