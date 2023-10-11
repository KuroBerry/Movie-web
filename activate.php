<?php

  require_once'./PHP/connection.php';
  if(isset($_GET['email']) && isset($_GET['token']))
  {
    $error = '';
    $email = $_GET['email'];
    $token = $_GET['token'];

    if(filter_var($email, FILTER_VALIDATE_EMAIL) == false)
    {
      $error = 'Tài khoản không hợp lệ';
    }
    elseif(strlen($token) != 32)
    {
      $error = 'Mã token không hợp lệ';
    }
    else{
      $result = updateActivateToken($email, $token);
      // var_dump($result);
      if($result['code'] == 0)
      {
        $error = $result['error'];
      }
      else
      {
        $error = $result['error'];
      }
    }
  }
  else
  {
    $error = 'Invalid activation url';
  }

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Phim Khong Hay</title>

  <link rel="stylesheet" type="text/css" href="./CSS/login_style.css" />

  <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
</head>

<body>

    <header>
        <div class="web-heading" >
          <a href="../index.php" class="logo login-header">
              <h1>Phim <span>Không Hay</span></h1>
          </a>
        </div>
    </header>

    <div class="activate-message">


    <h4>Kích hoạt tài khoản</h4>

            
    <div class="line-active"></div>

    <p><?=$error ?> </p>

    <button onclick="location.href='./login.php' ">Đăng nhập</button>

    </div>
</body>

</html>