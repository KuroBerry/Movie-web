<!-- Phần trình chiếu phim -->
<div class="play-container container">
<!-- Background -->
<img src="./movie/<?= $data['ID'] ?>/background.png" alt="" class="play-img lazyload" loading="lazy">

<div class="play-text">
    <h2><?=$data['ten_phim'] ?></h2>

    <div class="rating">
    <?php
    rate_display($data['rate']);
    ?>

    <h3 class="rate-score"> <?=$data['rate'] ?> /10</h3>

    </div>

    <div class="tags">
    <?php

    foreach ($categories as $c)
    {
        ?>
        <span><?= $c ?></span>
        <?php
    }

    ?>
    </div>
    
    <div class="watch-btn play-video-btn">
    <i class='bx bx-play-circle play-movie' ></i>
    </div>

</div>

<div class="video-container">

    <div class="video-box">
    <!-- Video -->
    <video id="myvideo" src="./movie/<?= $data['ID'] ?>/tap<?= $get_ep ?>.mp4" controls></video>
    
    <!-- Close video -->
    <i class='bx bx-x close-video' ></i>

</div>


</div>

</div>
