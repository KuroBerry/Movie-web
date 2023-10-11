  <!-- Phim mới -->
  <section class="new-movies container">

    <div class="heading">
      <h2 class="heading-title">PHIM MỚI</h2>
      <div class="page-btn">
        <a href="<?= $page_url . '?page=' . $page-1 ?>" class="page-prev">
          <i class='bx bx-skip-previous' ></i>
        </a>

        <div class="page-number"><?= $page ?></div>

        <a href="<?= $page_url . '?page=' . $page+1 ?>" class="page-next">
          <i class='bx bx-skip-next' ></i>
        </a>
        
        
      </div>
    </div>

    <div class="movies-content">

    <?php
      require_once'./PHP/connection.php';

      $data= phim_moi()['data'];

      for($i = ($page*8) - 8; $i < $page * 8; $i++)
      {
        if($i >= sizeof($data))
        {

          break;
        }
        ?>
        <div class="movie-box">
          <img src="./movie/<?= $data[$i]['ID'] ?>/poster.png" class="movie-box-img lazyload" loading="lazy">
          <div class="box-text">
            <h2><?= $data[$i]["ten_phim"]?></h2>
            <span class="movie-type"><?= $data[$i]["ten_quocgia"]?></span>

            <a href="./movie_play.php?id=<?= $data[$i]['ID'] ?>&ep=1" class="watch-btn play-btn">
              <i class='bx bx-play-circle' ></i>
              
            </a>

          </div>
        </div>
      
        <?php
      }
    ?>
    
    </div>

  </section>