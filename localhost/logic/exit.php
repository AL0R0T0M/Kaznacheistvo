<?php
    setcookie('FIO', $user['FIO'], time() - 3600, "/");
    setcookie('Otdel', $user['Otdel'], time() - 3600, "/");
    setcookie('WhoIS', $user['WhoIS'], time() - 3600, "/");
    setcookie('session', 1, time() - 10, "/");
    setcookie('excellent', '2', time() - 10, "/");
    header('Location: /');
?>