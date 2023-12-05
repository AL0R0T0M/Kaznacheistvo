<?php
    setcookie('user', $user['FIO'], time() - 3600, "/");

    header('Location: /');
?>