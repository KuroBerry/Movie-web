
<!-- Phần bình luận -->
<div class="comment container">

    <div class="comment-heading">
    <h2>
        Bình luận
    </h2>
    </div>

    <div class="form-container">
    <form  method="POST" action="">
        <div class="comment-input-container">
            <input
            class="comment-input"
            type="text"
            name="comment"
            placeholder="Viết bình luận của bạn"
            autocomplete="off"
        /> 
        </div> 

        <div class="rating-comment">
            <input type="number" class = 'rate' name="rating" hidden>
            <i class='bx bx-star star' style="--i: 0;"></i>
            <i class='bx bx-star star' style="--i: 1;"></i>
            <i class='bx bx-star star' style="--i: 2;"></i>
            <i class='bx bx-star star' style="--i: 3;"></i>
            <i class='bx bx-star star' style="--i: 4;"></i>
            <i class='bx bx-star star' style="--i: 5;"></i>
            <i class='bx bx-star star' style="--i: 6;"></i>
            <i class='bx bx-star star' style="--i: 7;"></i>
            <i class='bx bx-star star' style="--i: 8;"></i>
            <i class='bx bx-star star' style="--i: 9;"></i>
        </div>

        <button type="submit" class="submit-btn">Đăng</button>
    </form>
    </div>

    <div class="line"></div>

    <ul class="comment-list">
        
    <?php
        $data = comment($data['ID']);   

        foreach ($data as $d)
        {
            $avatar_name= get_avatar($movie_path. DIRECTORY_SEPARATOR. 'users' . DIRECTORY_SEPARATOR . $d['id_user']);
            $user_avatar_path = $avatar_path. DIRECTORY_SEPARATOR. 'users' . DIRECTORY_SEPARATOR . $d['id_user'] . DIRECTORY_SEPARATOR . $avatar_name;
            ?>

            <li class="comment">
                <div class="comment-avatar">
                    <img src="<?= $user_avatar_path  ?>" alt="Avatar" loading="lazy">
                </div>
                
                <div class="comment-content">
                    <h3 class="comment-author"><?=$d['username'] ?></h3>
                    <p class="comment-text"><?=$d['noi_dung'] ?> </p>

                    <div class="user-rate">
                        <?= rate_display($d['rate']); ?>
                    </div>
                </div>

                
            </li>

            <?php
        }
    ?>

    </ul>

</div>

