<?php
    require_once('./PHP/connection.php');

    $error = '';
    $email = '';
    $link = explode('/f', getCurrentPageURL())[0];

    if (isset($_POST['email'])) {
        $email = $_POST['email'];

        if (empty($email)) {
            $error = 'Hãy nhập email của bạn';
        }
        else if (filter_var($email, FILTER_VALIDATE_EMAIL) == false) {
            $error = 'Địa chỉ email không hợp lện';
        }
        else {
            $result = takeTokentoReset($email);
            if($result['code'] == 1)
            {
                $error = $result['error'];
            }
            
            elseif($result['code'] == 2)
            {
                $error = $result['error'];
            }

            //found
            else
            {
                ?>
                <script>
                    alert('<?= $result['error']; ?>');
                    window.location.href = 'login.php';
                </script>
                <?php
                sendResetpasswordEmails($email, $result['newToken'], $link);
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

        <div class="line"></div>

        <div class="input-title">
          <h4>Hãy nhập email của bạn:</h4>
          <input name="email" type="email" placeholder="Email" autocomplete="off">
        </div>
        
        <p class="regis-message" >Bạn đã nhớ lại mật khẩu? <a href="login.php">Đăng nhập</a> tại đây.</p>

        <?php
          if (!empty($error)) {
              echo "<div class='error-message'>$error</div>";
          }
        ?>

        <button type="submit">Đổi mật khẩu</button>
    </form>
</body>

</html>