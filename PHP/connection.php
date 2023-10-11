<?php

    //Import PHPMailer classes into the global namespace
    //These must be at the top of your script, not inside a function
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\SMTP;
    use PHPMailer\PHPMailer\Exception;
    
    //Load Composer's autoloader
    require 'vendor/autoload.php';

    function connection()
    {
        $server = 'localhost';
        $user = 'root';
        $password = '';
        $databasename = 'cuoi_ky';

        $conn = new mysqli($server, $user, $password, $databasename);

        if ($conn->connect_error) {
            die("cant connect to database, error" . $conn->connect_error);
        }
        return $conn;
    }

    function getCurrentPageURL() {
        $pageURL = 'http';

        if (!empty($_SERVER['HTTPS'])) 
        {
            if ($_SERVER['HTTPS'] == 'on') 
            {
                $pageURL .= "s";
            }
        }

        $pageURL .= "://";

        if ($_SERVER["SERVER_PORT"] != "80") 
        {
            $pageURL .= $_SERVER["SERVER_NAME"] . ":" . $_SERVER["SERVER_PORT"] . $_SERVER["REQUEST_URI"];
        } 

        else 
        {
            $pageURL .= $_SERVER["SERVER_NAME"] . $_SERVER["REQUEST_URI"];
        }
        return $pageURL;
    }

    function phim_moi()
    {
        $conn = connection();

        $sql = "SELECT * FROM danhsach_phim,quoc_gia WHERE danhsach_phim.ma_quoc_gia = quoc_gia.id_quocgia ORDER BY danhsach_phim.ID DESC";

        $result = $conn -> query($sql);

        $data = array();

        for($i = 0; $i < $result -> num_rows; $i ++)
        {
            $row = $result -> fetch_assoc();
            $data[] = $row;
        }

        return array('code' => 0, 'data' => $data);
    }

    function phim_bo()
    {
        $conn = connection();

        $sql = "SELECT * FROM danhsach_phim,quoc_gia 
                WHERE danhsach_phim.ma_quoc_gia = quoc_gia.id_quocgia
                AND danhsach_phim.de_muc LIKE '%phim_bo%'
                ORDER BY danhsach_phim.ID DESC";

        $result = $conn -> query($sql);

        $data = array();

        for($i = 0; $i < $result -> num_rows; $i ++)
        {
            $row = $result -> fetch_assoc();
            $data[] = $row;
        }

        return array('code' => 0, 'data' => $data);
    }

    function phim_le()
    {
        $conn = connection();

        $sql = "SELECT * FROM danhsach_phim,quoc_gia 
                WHERE danhsach_phim.ma_quoc_gia = quoc_gia.id_quocgia
                AND danhsach_phim.de_muc LIKE '%phim_le%'
                ORDER BY danhsach_phim.ID DESC";

        $result = $conn -> query($sql);

        $data = array();

        for($i = 0; $i < $result -> num_rows; $i ++)
        {
            $row = $result -> fetch_assoc();
            $data[] = $row;
        }

        return array('code' => 0, 'data' => $data);
    }

    function phim_truyen_hinh()
    {
        $conn = connection();

        $sql = "SELECT * FROM danhsach_phim,quoc_gia 
                WHERE danhsach_phim.ma_quoc_gia = quoc_gia.id_quocgia
                AND danhsach_phim.de_muc LIKE '%truyen_hinh%'
                ORDER BY danhsach_phim.ID DESC";

        $result = $conn -> query($sql);

        $data = array();

        for($i = 0; $i < $result -> num_rows; $i ++)
        {
            $row = $result -> fetch_assoc();
            $data[] = $row;
        }

        return array('code' => 0, 'data' => $data);
    }

    function phim_chieu_rap()
    {
        $conn = connection();

        $sql = "SELECT * FROM danhsach_phim,quoc_gia 
                WHERE danhsach_phim.ma_quoc_gia = quoc_gia.id_quocgia
                AND danhsach_phim.de_muc LIKE '%chieu_rap%'
                ORDER BY danhsach_phim.ID DESC";

        $result = $conn -> query($sql);

        $data = array();

        for($i = 0; $i < $result -> num_rows; $i ++)
        {
            $row = $result -> fetch_assoc();
            $data[] = $row;
        }

        return array('code' => 0, 'data' => $data);
    }

    function vn_to_str ($str)
    {

    $unicode = array(

    'a'=>'á|à|ả|ã|ạ|ă|ắ|ặ|ằ|ẳ|ẵ|â|ấ|ầ|ẩ|ẫ|ậ',

    'd'=>'đ',

    'e'=>'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',

    'i'=>'í|ì|ỉ|ĩ|ị',

    'o'=>'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',

    'u'=>'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',

    'y'=>'ý|ỳ|ỷ|ỹ|ỵ',

    'A'=>'Á|À|Ả|Ã|Ạ|Ă|Ắ|Ặ|Ằ|Ẳ|Ẵ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ',

    'D'=>'Đ',

    'E'=>'É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ',

    'I'=>'Í|Ì|Ỉ|Ĩ|Ị',

    'O'=>'Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ',

    'U'=>'Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự',

    'Y'=>'Ý|Ỳ|Ỷ|Ỹ|Ỵ',

    );

    foreach($unicode as $nonUnicode=>$uni){

    $str = preg_replace("/($uni)/i", $nonUnicode, $str);

    }
    $str = str_replace(' ','_',$str);

    return $str;

    }

    function tim_kiem($key)
    {
        $data = phim_moi()['data'];
        $result = array();


        foreach ($data as $d)
        {
            if (strpos(strtolower(vn_to_str($d["ten_phim"])), strtolower(vn_to_str($key))) !== false) {
                $result[] = $d;
            }

        }

        return $result;
    }

    function movieInfo($id)
    {
        $id = (int)$id;
        $sql = "SELECT * FROM danhsach_phim WHERE ID = ?";
        $conn = connection();

        $stm = $conn -> prepare($sql);
        $stm -> bind_param('i', $id);

        if(!$stm -> execute())
        {
            return array('code' => 1, 'message' => "There an error occured, please try again later");
        }

        $result = $stm -> get_result();
        return array('code' => 0, 'data' => $result->fetch_assoc());
    }

    function actor_display($actor_group)
    {
        $actor = explode(",",$actor_group);
        $data = array();

        foreach ($actor as $a)
        {
            $sql = "SELECT * FROM dien_vien WHERE ten_dien_vien = ?";
            $conn = connection();

            $stm = $conn -> prepare($sql);
            $stm -> bind_param('s', $a);

            if(!$stm -> execute())
            {
                return array('code' => 1, 'message' => "There an error occured, please try again later");
            }

            $result = $stm -> get_result();

            if($result -> num_rows == 1)
            {
                $data[] = $result->fetch_assoc();
            }

            else
            {
                $id = 1;
                $sql = 'SELECT * FROM dien_vien WHERE ID = ?';
                $conn = connection();

                $stm = $conn -> prepare($sql);
                $stm -> bind_param('i', $id);

                if(!$stm -> execute())
                {
                    return array('code' => 1, 'message' => "There's an error occured, please try again later");
                }

                $result = $stm -> get_result();
                $data[] = $result->fetch_assoc();
            }
            
        }

        return $data;
    }

    function rate_display($score_string)
    {
        $score = floatval($score_string);

        $int_score = (int)$score/1;
        
        if($int_score < $score && $score < $int_score + 1)
        {
            for($i = 1; $i <= $int_score; $i++)
            {
                ?>
                    <i class="bx bxs-star"></i>
                <?php
            }

            ?>
                <i class="bx bxs-star-half"></i>
            <?php
            
            for($i = $int_score + 2; $i <= 10; $i++)
            {
                ?>
                    <i class="bx bx-star"></i>
                <?php
            }
        }
        else
        {
            for($i = 1; $i <= $int_score; $i++)
            {
                ?>
                    <i class="bx bxs-star"></i>
                <?php
            }

            for($i = $int_score + 1; $i <= 10; $i++)
            {
                ?>
                    <i class="bx bx-star"></i>
                <?php
            }
        }
    }

    function suggest($main_category)
    {
        $data = phim_moi()['data'];
        $result = array();


        foreach ($data as $d)
        {
            if(sizeof($result) == 8)
            {
                break;
            }
            if (str_contains($d['the_loai'], $main_category) == true) {
                $result[] = $d;
            }
        }

        return $result;
    }
    
    function like_movie($user_id, $movie_id)
    {
        $result = array();
        $conn = connection();
        $sql = "UPDATE users SET liked_movies = CONCAT(liked_movies, ',', ?) WHERE id = ?";

        $stm = $conn->prepare($sql);
        $stm->bind_param('ss', $movie_id, $user_id);

        if (!$stm->execute()) {
            return array('code' => 1, 'error' => 'Có lỗi trong lúc thực thi, vui lòng liên hệ với admin sau');
        } 

        return array('code' => 0, 'error' => 'Đã thêm phim vào mục yêu thích của bạn');
        
    }


    function get_avatar($dir)
    {
        $files = scandir($dir);

        foreach($files as $file) {
            // loại bỏ "." và ".."
            if($file !== '.' && $file !== '..' && $file =='avatar.jpg' || $file == 'avatar.png' || $file == 'avatar.jpeg') {
                // $path = $dir.DIRECTORY_SEPARATOR.$file;
                return $file;
            }
        }
    }

    function comment($id_phim)
    {
        $id_phim = (int)$id_phim;
        $sql = "SELECT * FROM binh_luan,users WHERE id_phim = ?
                AND binh_luan.id_user = users.ID";

        $conn = connection();

        $stm = $conn -> prepare($sql);
        $stm -> bind_param("i", $id_phim);

        if(!$stm -> execute())
        {
            return array("code" => 1, "message" => "There an error occured, please try again later");
        }

        $data = array();

        $result = $stm -> get_result();

        for($i = 0; $i < $result -> num_rows; $i ++)
        {
            $row = $result -> fetch_assoc();

            unset($row['email']);
            unset($row['password']);
            unset($row['id_binh_luan']);
            unset($row['ID']);

            $data[] = $row;
        }
        return $data;
    }

    function add_comment($id_movie, $id_user, $noi_dung, $rate)
    {
        $conn = connection();
        
        $sql = "INSERT INTO binh_luan(id_phim, id_user, noi_dung, rate) values(?,?,?,?)";

        $stm = $conn -> prepare($sql);
        $stm -> bind_param('ssss', $id_movie, $id_user, $noi_dung, $rate);

        if(!$stm -> execute())
        {
            return array('code' => 2, 'error' => 'An error occured. Please try again later');
        }


        return array('code' => 0, 'error' => 'Đăng bình luận thành công');
    }
    function isEmailExist($email)
    {
        $sql = "SELECT username FROM users WHERE email = ?";
        $conn = connection();

        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $email);

        if (!$stm->execute()) {
            return null;
        }

        $result = $stm->get_result();

        if ($result->num_rows >= 1) {
            return true;
        }

        return false;
    }

    function sendActivationEmail($email, $token, $link)
    {
        //Create an instance; passing `true` enables exceptions
        $mail = new PHPMailer(true);
        
        try {
            //Server settings
            // $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
            $mail->isSMTP();                                            //Send using SMTP
            $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
            $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
            $mail->Username   = 'languyenquocthinh0509@gmail.com';                     //SMTP username
            $mail->Password   = 'tcoxswzbavjgvnsk';                             //SMTP password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
            $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
        
            //Recipients
            $mail->setFrom('languyenquocthinh0509@gmail.com', 'PHIM KHONG HAY');
            $mail->addAddress($email, 'Customer');     //Add a recipient
            // $mail->addAddress('ellen@example.com');               //Name is optional
            // $mail->addReplyTo('info@example.com', 'Information');
            // $mail->addCC('cc@example.com');
            // $mail->addBCC('bcc@example.com');
        
            //Attachments
            // $mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
            // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name
        
            //Content
            $mail->isHTML(true);                                  //Set email format to HTML
            $mail->Subject = 'Activate your account';
            $mail->Body    = "Click <a href = '$link/activate.php?email=$email&token=$token'>here</a> to activate your account";
            //$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
        
            $mail->send();
            return true;
        } catch (Exception $e) {
            return false;
        }
    }

    function login($email, $password)
    {
        $conn = connection();
        $sql = "SELECT * FROM users where email = ?";

        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $email);

        if (!$stm->execute()) {
            return array('code' => 1, 'error' => 'Cannot execute command');
        }

        // Nếu như sql chạy thành công
        $result = $stm->get_result();

        if ($result->num_rows == 0) {
            return array('code' => 1, 'error' => 'Tài khoản không tồn tại');
        }
        
        $acc = $result->fetch_assoc();

        if (!password_verify($password, $acc['password'])) {
            return array('code' => 2, 'error' => 'Mật khẩu không đúng');
        }
        elseif($acc['activated'] == 0){
            return array('code' => 3, 'error' => 'Tài khoản của bạn chưa được kích hoạt');
        } 
        else {
            return array('code' => 0, 'acc' => $acc);
        }
    }

    function register($username, $email, $password, $link)
    {

        if(isEmailExist($email))
        {
            return array('code' => 1, 'error' => 'Tài khoản đã tồn tại');
        }

        $conn = connection();

        $hash_password = password_hash($password, PASSWORD_DEFAULT);
        $rand = random_int(0, 1000);
        $token = md5($username . '+' . $rand);
        
        $sql = "INSERT INTO users(username, email, password, activate_token) values(?,?,?,?)";

        $stm = $conn -> prepare($sql);
        $stm -> bind_param('ssss', $username, $email, $hash_password, $token);

        if(!$stm -> execute())
        {
            return array('code' => 2, 'error' => 'An error occured. Please try again later');
        }

        $reset_token = '';
        $exp = '0';
        $sql = "INSERT INTO reset_token(email, token, expire_on) values(?,?,?)";

        $stm = $conn -> prepare($sql);
        $stm -> bind_param('sss',$email,$reset_token, $exp);

        if(!$stm -> execute())
        {
            return array('code' => 2, 'error' => 'An error occured. Please try again later');
        }

        sendActivationEmail($email, $token, $link);
        return array('code' => 0, 'error' => 'Tài khoản của bạn đã được đăng ký thành công, hãy kiểm tra mail để kích hoạt tài khoản.');
    }

    function updateActivateToken($email, $token)
    {
        $conn = connection();
        $sql = "SELECT username from users where email = ? and activate_token = ? AND activated = 0";
        $stm = $conn -> prepare($sql);
        $stm -> bind_param('ss', $email, $token);

        if(!$stm -> execute())
        {
            return array('code' => 1, 'error' => 'An error occured, please try again later');
        }

        $result = $stm -> get_result();

        if($result -> num_rows == 0)
        {
            return array('code' => 2, 'error' => 'Email của bạn chưa được đăng ký hoặc tài khoản của bạn đã được kích hoạt');
        }

        $sql = "UPDATE  users set activated = 1, activate_token = '' where email = ?";
        $stm = $conn -> prepare($sql);
        $stm -> bind_param('s', $email);

        if(!$stm -> execute())
        {
            return array('code' => 1, 'error' => 'An error occured, please try again later');
        }

        $sql = "SELECT ID from users where email = ? AND activated = 1";
        $stm = $conn -> prepare($sql);
        $stm -> bind_param('s', $email);

        if(!$stm -> execute())
        {
            return array('code' => 1, 'error' => 'An error occured, please try again later');
        }

        $result = $stm -> get_result();

        if($result -> num_rows == 0)
        {
            return array('code' => 3, 'error' => 'Có lỗi, hãy liên hệ admin để được giải quyết');
        }

        $data = $result-> fetch_assoc();

        mkdir('./users/' . $data['ID']);
        return array('code' => 0, 'error' => 'Tài khoản của bạn đã được kích hoạt thành công', 'data' => $data);
    }

    function takeTokentoReset($email)
    {
        $conn = connection();
        $sql = "SELECT * FROM reset_token where email = ? and token = '' ";

        $stm = $conn->prepare($sql);
        $stm->bind_param('s', $email);

        if (!$stm->execute()) {
            return array('code' => 2, 'error' => 'An error occured, please try again');
        }
        $result = $stm->get_result();

        if ($result->num_rows == 0) {
            return array('code' => 1, 'error' => 'Tài khoản không tồn tại hoặc là bạn chưa nhận được Mail thôn báo');
        }

        $acc = $result->fetch_assoc();
        //tao mat khau moi
        //
        $rand = random_int(0, 1000);
        $new_token = md5($acc['username']. '+' . $rand);

        $sql = "UPDATE reset_token SET token = ? where email = ?";
        $stm = $conn -> prepare($sql);
        $stm -> bind_param('ss', $new_token, $email);

        if (!$stm->execute()) 
        {
            return array('code' => 2, 'error' => 'An error occured, please try again');
        }

        return array('code' => 0, 'newToken' => $new_token, 'error' => "Please check your email to change your password");
        
    }

    function sendResetpasswordEmails($email, $token, $link)
    {
        //Create an instance; passing `true` enables exceptions
        $mail = new PHPMailer(true);
        
        try {
            //Server settings
            // $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
            $mail->isSMTP();                                            //Send using SMTP
            $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
            $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
            $mail->Username   = 'languyenquocthinh0509@gmail.com';                     //SMTP username
            $mail->Password   = 'tcoxswzbavjgvnsk';                             //SMTP password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
            $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
        
            //Recipients
            $mail->setFrom('languyenquocthinh0509@gmail.com', 'PHIM KHONG HAY');
            $mail->addAddress($email, 'Customer');     //Add a recipient
            // $mail->addAddress('ellen@example.com');               //Name is optional
            // $mail->addReplyTo('info@example.com', 'Information');
            // $mail->addCC('cc@example.com');
            // $mail->addBCC('bcc@example.com');
        
            //Attachments
            // $mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
            // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name
        
            //Content
            $mail->isHTML(true);                                  //Set email format to HTML
            $mail->Subject = 'Reset password';
            $mail->Body    = "Click <a href = '$link/reset_password.php?email=$email&token=$token'>here</a> to reset your password";
            //$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
        
            $mail->send();
            return true;
        } catch (Exception $e) {
            return false;
        }
    }

    function resetPassword($email, $token, $newPassword)
    {
        $conn = connection();
        $sql = "SELECT * from reset_token where email = ? and token = ?";
        $stm = $conn -> prepare($sql);
        $stm -> bind_param('ss', $email, $token);

        if(!$stm -> execute())
        {
            return array('code' => 1, 'error' => 'An error occured, please try again later');
        }

        $result = $stm -> get_result();

        if($result -> num_rows == 0)
        {
            return array('code' => 2, 'error' => 'Tài khoản email của bạn không tồn tại');
        }

        $password = password_hash($newPassword, PASSWORD_DEFAULT);
        
        $sql = "UPDATE  users set  password = ? where email = ?";
        $stm = $conn -> prepare($sql);
        $stm -> bind_param('ss',$password, $email);

        if(!$stm -> execute())
        {
            return array('code' => 1, 'error' => 'An error occured, please try again later');
        }

        $sql = "UPDATE reset_token set  token = '' where email = ?";
        $stm = $conn -> prepare($sql);
        $stm -> bind_param('s', $email);

        if(!$stm -> execute())
        {
            return array('code' => 1, 'error' => 'An error occured, please try again later');
        }

        return array('code' => 0, 'error' => 'You have successfully change your password');
    }
    
?>
