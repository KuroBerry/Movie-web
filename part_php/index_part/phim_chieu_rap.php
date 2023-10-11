<!-- Theater -->

<?php

require_once'./PHP/connection.php';

$data = phim_chieu_rap()['data'];

// var_dump($data);

?>

<section id="theater" class="theater container">

  <div class="heading-theater">
    <div class="swiper-btn">
      <div class="swiper-button-prev"></div>
    </div>
    <h2 class="heading-title">PHIM CHIẾU RẠP</h2>
    <div class="swiper-btn">
      <div class="swiper-button-next"></div>
    </div>
  </div>

  <div class="swiper theater-content">
    <!-- Noi dung phim -->
    <div class="swiper-wrapper">

    <?php
      foreach ($data as $d)
      {
        ?>

        <div class="swiper-slide">
          <div class="movie-box">
            <img src="./movie/<?= $d['ID'] ?>/poster.png" class="movie-box-img lazyload" loading="lazy">
            <div class="box-text">
              <h2><?= $d['ten_phim'] ?></h2>
              <span class="movie-type"><?= $d['ten_quocgia'] ?></span>

              <a href="movie_play.php?id=<?= $d['ID'] ?>&ep=1" class="watch-btn play-btn">
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