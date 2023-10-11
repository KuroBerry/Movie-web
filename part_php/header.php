<?php
session_start();
require_once'./PHP/connection.php';
?>

<header>
<div class="nav container">
    <!-- Logo -->
    <a href="index.php" class="logo">
    <h1>Phim <span>Không Hay</span></h1>
    </a>

    <!-- Thanh tim kiem -->
    <form class="search-form" action="search.php" method="get">
        <div class="search-box">
            <input type="search" name="search_key" id="search-input" placeholder="Tìm kiếm phim" autocomplete="off"/>
            <i class="bx bx-search"></i>
        </div>
    </form>

    <?php
        if(isset($_SESSION['ID']))
        {
            $avatar = get_avatar('./users/' . $_SESSION['ID']);
            $img_src = './users/' . $_SESSION['ID'] ."/".$avatar;

            if($avatar == '')
            {
                $img_src ='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPuksIeXJ7lssfJxg3shTub7fzB06fkvhr0rFsn_s&s';
            }

            ?>
                <a href="user_interface.php" class="user"> <img class="user-img" src="<?= $img_src ?>" alt=""> </a>
            <?php
        }
        else
        {
            ?>
                <div class="login-btn user">
                    <a href="login.php">Đăng nhập</a>
                </div>
            <?php
        }
    ?>
    <!-- Avatar người dùng -->
    <!-- <a href="" class="user"> <img class="user-img" src="https://via.placeholder.com/50" alt=""> </a> -->

    <!-- Nếu như chưa đăng nhập -->
    

    <!-- Thanh cong cu -->
    <div class="navbar">
    <a href="index.php" class="nav-link">
        <i class="bx bx-home"></i>
        <span class="nav-title">
        <h4>Trang chủ</h4>
        </span>
    </a>
    <a href="index.php?movie=phimbo" class="nav-link">
        <i class="bx bx-video"></i>
        <span class="nav-title">
        <h4>Phim bộ</h4>
        </span>
    </a>
    <a href="index.php?movie=phimle" class="nav-link">
        <i class="bx bx-movie-play"></i>
        <span class="nav-title">
        <h4>Phim lẻ</h4>
        </span>
    </a>
    <a href="index.php?movie=phimtruyenhinh" class="nav-link">
        <i class="bx bxs-tv"></i>
        <span class="nav-title">
        <h4>Truyền hình</h4>
        </span>
    </a>
    </div>
</div>
</header>
