
<!-- Episode display -->
<div class="episode container">

    <?php
    $dir = $movie_path .DIRECTORY_SEPARATOR. "movie" .DIRECTORY_SEPARATOR. $data['ID'];
    $files = scandir($dir);

    foreach($files as $file) {
        // loại bỏ "." và ".."
        if($file !== '.' && $file !== '..' && str_contains($file, 'mp4')) {
            // $path = $dir.DIRECTORY_SEPARATOR.$file;

            $pattern = "/\d+/"; // biểu thức chính quy để tìm số trong chuỗi
            preg_match($pattern, $file, $matches);
            $ep = $matches[0];

            if($get_ep == $ep)
            {
                ?>
                    <a href="<?= $current_path . "&ep=" .$ep ?>" class="chosen-episode" id="chosen">Tập <?= $ep?></a>
                <?php
            }
            else
            {
                ?>
                    <a href="<?= $current_path . "&ep=" .$ep ?>" class="unchosen-episode">Tập <?= $ep?></a>
                <?php
            }

        }
    }
    ?>
</div>
