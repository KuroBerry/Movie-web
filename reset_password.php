<?php

    require_once('./PHP/connection.php');

    $error = '';
    $email = '';
    $pass = '';
    $pass_confirm = '';

    if(isset($_GET['token']) && isset($_GET['email']))
    {
        $email_from_form = $_GET['email'];
        $token = $_GET['token'];    

        if(filter_var($email_from_form, FILTER_SANITIZE_EMAIL) == false)
        {
            $error = 'Địa chỉ email không hợp lệ';
        }
        elseif(strlen($token) != 32)
        {
            $error = 'Mã token không hợp lệ';
        }
        else
        {
            if (isset($_POST['email']) && isset($_POST['password']) &&
                isset($_POST['password_confirm'])) {
                $email = $_POST['email'];
                $pass = $_POST['password'];
                $pass_confirm = $_POST['password_confirm'];

                if (empty($email)) {
                    $error = 'Hãy nhập địa chỉ email của bạn';
                }
                else if (filter_var($email, FILTER_VALIDATE_EMAIL) == false) {
                    $error = 'Địa chỉ email không hợp lệ';
                }
                else if (empty($pass)) {
                    $error = 'Hãy nhập mật khẩu của bạn';
                }
                else if (strlen($pass) < 6) {
                    $error = 'Mật khẩu phải có ít nhất 6 kí tự';
                }
                else if ($pass != $pass_confirm) {
                    $error = 'Mật khẩu không trùng khớp, hãy nhập lại mật khẩu';
                }
                else {
                    $result = resetPassword($email, $token, $pass_confirm);
                     ?>
                        <script>
                            alert('<?= $result['error']; ?>');
                            window.location.href = 'login.php';
                        </script>
                    <?php
                }
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
          <h1 class="title" >Tạo mật khẩu mới</h1>
        </div>

        <div class="line"></div>

        <div class="input-title">
          <h4>Email:</h4>
          <input readonly value='<?= $email_from_form ?>' name="email" id="email" type="text" class="form-control" placeholder="Email address">
        </div>

        <div class="input-title">
          <h4>Mật khẩu</h4>
          <input name="password" type="text" placeholder="Mật khẩu" autocomplete="off">
        </div>
        
        <div class="input-title">
          <h4>Mật khẩu</h4>
          <input name="password_confirm" type="password" name="password" placeholder="Nhập lại mật khẩu">
        </div>

        <?php
          if (!empty($error)) {
              echo "<div class='error-message'>$error</div>";
          }
        ?>

        <button type="submit">Thay đổi mật khẩu</button>
    </form>

</body>

</html>