<?php
session_start();
require_once'./PHP/connection.php';

$error='';
$email = '';
$pasword = '';

if(isset($_SESSION['ID']))
{
  header('Location: index.php');
  exit();
}
if (isset($_POST['email']) && isset($_POST['password'])) {
  $email = $_POST['email'];
  $password = $_POST['password'];

  if (empty($email)) {
    $error = 'Hãy nhập email của bạn';
  } else if (empty($password)) {
    $error = 'Hãy nhập mật khẩu của bạn';
  } else if (strlen($password) < 6) {
    $error = 'Mật khảu phải có ít nhất 6 kí tự';
  } 
  else
  {
    $data = login($email, $password);
        
    if ($data['code'] == 0) 
    {
        $_SESSION['ID'] = $data['acc']['ID'];
        $_SESSION['name'] = $data['acc']['username'];

        header('Location: index.php');
        exit();

    } else {
        $error = $data['error'];
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
          <h1 class="title" >Đăng nhập</h1>
        </div>

        <div class="line"></div>

        <div class="input-title">
          <h4>Email</h4>
          <input name="email" type="email" placeholder="Email" autocomplete="off">
        </div>
        
        <div class="input-title">
          <h4>Mật khẩu</h4>
          <input name="password" type="password" name="password" placeholder="Mật khẩu">
        </div>
        
        <p class="regis-message" >Bạn chưa có tài khoản? <a href="register.php">Đăng ký</a> tại đây.</p>
        <p class="regis-message" ><a href="forget.php">Quên mật khẩu?</a></p>

        <?php
          if (!empty($error)) {
              echo "<div class='error-message'>$error</div>";
          }
        ?>

        <button type="submit">Đăng nhập</button>
    </form>

</body>

</html>