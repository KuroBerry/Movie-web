<?php
require'./PHP/connection.php';

$movie_path = __DIR__;
$avatar_path = explode('/movie', getCurrentPageURL())[0];

if(!isset($_GET['ep']))
{
    header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found", true, 404);
    exit;
}
else
{
    $get_ep = $_GET['ep'];
    $current_path = explode('&ep=', getCurrentPageURL())[0];
}

session_start();
$id_user = '';
$id_movie = '';
$comment = '';
$rate = '';

if(isset($_GET['id'])) {
    $id_movie = $_GET['id'];
}


if($_SERVER["REQUEST_METHOD"] == "POST") {
    if(isset($_SESSION['ID'])) 
    {
        $id_user = $_SESSION['ID'];

        if(isset($_POST['comment']) && isset($_POST['rating'])) {
            $comment = $_POST['comment'];
            $rate = $_POST['rating'];
        }

        if(!empty($id_movie) && !empty($id_user) && !empty($comment)) {
            $result = add_comment($id_movie, $id_user, $comment, $rate);

            if($result['code'] !== 0) {
                echo "<script>alert('{$result['error']}');</script>";
            }
        }
        header('Location: ' . getCurrentPageURL());
        exit;
    } 
    else 
    {
        ?>
        <script>
          alert('Bạn phải đăng nhập để sử dụng tính năng này');
          window.location.href = 'login.php';
        </script>
        <?php
    }
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php
    include "./part_php/header.php";
    
    $data = movieInfo($id_movie)['data'];
    
    $categories_group = $data['the_loai'];

    $categories = explode(",", $categories_group);

    ?>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title><?= $data['ten_phim'] ?></title>

  <link rel="stylesheet" type="text/css" href="./CSS/movie_play.css" />

  <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
</head>

<body>



  <!-- Nội dung của trang trình chiếu -->
  <?php
    include "./part_php/play_part/video_play.php";
    include "./part_php/play_part/episode.php";
    include "./part_php/play_part/movie_content.php";
    include "./part_php/play_part/trailer.php";
    include "./part_php/play_part/comment.php";
  ?>


  
  </div>
    <?php
    include "./part_php/play_part/suggest.php";
    include "./part_php/footer.php";
    ?>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="./Javascript/index.js"></script>

  </div>

</body>

</html>