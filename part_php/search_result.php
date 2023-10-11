  <!-- Phim mới -->
  <section class="new-movies container">

    <div class="heading seacrh-heading">
      <h2 class="heading-title">KẾT QUẢ TÌM KIẾM CỦA "<span class="key-search"> <?=$key ?> </span>"</h2>
      <div class="page-btn">
        <a href="#" class="page-prev">
          <i class='bx bx-skip-previous' ></i>
        </a>

        <div class="page-number">3</div>

        <a href="#" class="page-next">
          <i class='bx bx-skip-next' ></i>
        </a>
        
        
      </div>
    </div>

    <div class="movies-content">

    <?php
      require_once'./PHP/connection.php';

      $data = tim_kiem($key);

      if(sizeof($data) == 0)
      {
        ?>

        <div class="error-container">
          <h2 class="error">Không tìm thấy phim <span class="key-search"> <?=$key ?> </span></h2>
        </div>

        <?php
      }
      else
      {
        if(sizeof($data) < 4)
        {
          foreach($data as $d)
          {
            ?>

            <div class="movie-box under4">
              <img src="./movie/<?= $d['ID'] ?>/poster.png" class="movie-box-img lazyload" loading="lazy">
              <div class="box-text">
                <h2><?= $d["ten_phim"]?></h2>
                <span class="movie-type"><?= $d["ten_quocgia"]?></span>

                <a href="./movie_play.php?id=<?= $d['ID'] ?>&ep=1" class="watch-btn play-btn">
                  <i class='bx bx-play-circle' ></i>
                  
                </a>

              </div>
            </div>
          
            <?php
          }
        }
        else
        {
          foreach($data as $d)
          {
            ?>

            <div class="movie-box">
              <img src="./movie/<?= $d['ID'] ?>/poster.png" class="movie-box-img">
              <div class="box-text">
                <h2><?= $d["ten_phim"]?></h2>
                <span class="movie-type"><?= $d["ten_quocgia"]?></span>

                <a href="./movie_play.php?id=<?= $d['ID'] ?>&ep=1" class="watch-btn play-btn">
                  <i class='bx bx-play-circle' ></i>
                  
                </a>

              </div>
            </div>
          
            <?php
          }
        }
      }
    ?>

    </div>
  </section>