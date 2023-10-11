<!-- Noi dung phim -->
<div class="about-movie container">
<h2><?=$data['ten_phim'] ?></h2>
<p><?=$data['chi_tiet'] ?></p>

<!-- Dien vien -->
<h2 class="cast-heading">Diễn Viên</h2>

<div class="cast">

<?php
$actor = actor_display($data['dien_vien']);

foreach ($actor as $a)
{
    ?>

    <div class="cast-box">
        <img src="<?= $a['anh_dien_vien'] ?>" alt="" class="cast-img lazyload" loading="lazy">
        <span class="cast-title"><?= $a['ten_dien_vien'] ?></span>
    
    </div>
    <?php
}
?>

</div>

</div>
