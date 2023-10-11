<?php
session_start();
require_once'./PHP/connection.php';

if(isset($_SESSION['ID']))
{
  header("Location: index.php");
}


$error='';
$username = '';
$email = '';
$password = '';
$password_confirm = '';
$link = explode('/re',getCurrentPageURL())[0];

if (isset($_POST['username']) && isset($_POST['email']) && isset($_POST['password']) && isset($_POST['password_confirm'])) {
  
  $username = $_POST['username'];
  $email = $_POST['email'];
  $password = $_POST['password'];
  $password_confirm = $_POST['password_confirm'];

  if(empty($username))
  {
    $error = 'Hãy nhập Username của bạn';
  }
  else if(empty($email))
  {
    $error = 'Hãy nhập Email của bạn';
  }
  else if (filter_var($email, FILTER_VALIDATE_EMAIL) == false) {
    $error = 'Địa chỉ Email của bạn không hợp lệ';
  }
  else if(empty($password))
  {
    $error = 'Hãy nhập Mật khẩu của bạn';
  }
  else if(empty($password_confirm))
  {
    $error = 'Hãy nhập mật khẩu lần 2 của bạn';
  }
  else if(empty($email))
  {
    $error = 'Hãy nhập Email của bạn';
  }
  else if (strlen($password) < 6) {
    $error = 'Mật khẩu phải có ít nhất 6 kí tự';
  }
  else if ($password != $password_confirm) {
      $error = 'Mật khẩu KHÔNG trùng khớp';
  }

  else {

    $result = register($username, $email, $password, $link);

    if($result['code'] == 0)
    {
      ?>
      <script>
        alert('<?= $result['error']; ?>');
        window.location.href = 'login.php';
      </script>
      <?php
    }
    elseif($result['code'] == 1)
    {
        $error = $result['error'];
    }
    else
    {
        $error = $result['error'];
    } 
  }
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
          <a href="index.php" class="logo login-header">
              <h1>Phim <span>Không Hay</span></h1>
          </a>
        </div>
    </header>

    <form  method="POST" class="login-form" action="">

        <div class="login-heading">
          <h1 class="title" >Đăng ký</h1>
        </div>

        <div class="line"></div>

        <div class="input-title">
          <h4>Username</h4>
          <input name="username" type="text" placeholder="Username" autocomplete="off">
        </div>
        
        <div class="input-title">
          <h4>Email</h4>
          <input name="email" type="email" placeholder="Email" autocomplete="off">
        </div>
      
        <div class="input-title">
          <h4>Mật khẩu</h4>
          <input name="password" type="password" name="password" placeholder="Mật khẩu">
        </div>
        
                
        <div class="input-title">
          <h4>Nhập lại mật khẩu</h4>
          <input name="password_confirm" type="password" placeholder="Hãy nhập lại mật khẩu" autocomplete="off">
        </div>

        <p class="regis-message" >Bạn đã có tài khoản? <a href="login.php">Đăng nhập</a> tại đây.</p>

        <?php
          if (!empty($error)) {
              echo "<div class='error-message'>$error</div>";
          }
        ?>

        <button type="submit">Đăng nhập</button>
    </form>

</body>

</html>