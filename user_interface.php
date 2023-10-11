<?php
session_start();
require_once'./PHP/connection.php';

if(isset($_SESSION['ID']) && isset($_SESSION['name']))
{
  $name = $_SESSION['name'];
  $path = explode('/user_in', getCurrentPageURL())[0];
  $avatar = get_avatar( __DIR__. DIRECTORY_SEPARATOR. 'users' .DIRECTORY_SEPARATOR. $_SESSION['ID']);

  if($avatar != '')
  {
    $avatar_path = $path. DIRECTORY_SEPARATOR. 'users' .DIRECTORY_SEPARATOR. $_SESSION['ID']. DIRECTORY_SEPARATOR.$avatar;
  }
  else
  {
    $avatar_path = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPuksIeXJ7lssfJxg3shTub7fzB06fkvhr0rFsn_s&s';
  }

  if(isset($_POST['edit_profile']))
  {
    header('Location: user_profile.php');
  }

  if(isset($_POST['logout']))
  {
    session_destroy();
    header('Location: index.php');
  }

  
}
else
{
  header('Location: index.php');
  die;
}

?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Phim Khong Hay</title>

  <link rel="stylesheet" type="text/css" href="./CSS/user_style.css" />

  <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
</head>

<body>

    <header>
        <div class="web-heading" >
            <a href="index.php" class="logo login-header">
                <h1>Phim <span>Không Hay</span></h1>
            </a>
        </div>
    </header>


    <form method="post" class="container info-container">

        <div class="user-avatar">
            <img src="<?= $avatar_path ?>" alt="" srcset="">
        </div>

        <div class="user-heading">
            <h1>Xin chào <span><?= $name ?></span> </h1>
        </div>


        <div class="line"></div>

        <div class="edit">
          <button name="edit_profile" type="submit">Phim đã thích</button>
        </div>

        <div class="log-out">
            <button name="logout" type="submit">Đăng xuất</button>
        </div>
    </form>
</body>

</html>