<?php
    require_once './PHP/connection.php';
    session_start();
    session_destroy();

    echo __DIR__;
?>
