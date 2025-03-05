<?php
    $Login = filter_var(trim($_POST['login']));
    $Password = filter_var(trim($_POST['password']));

    $mysql = new mysqli('MySQL-8.2', 'root', '', 'Priemka');
    $mysql->query("INSERT INTO Autorization (`Login`, `Pass`) VALUES ('$Login', '$Password')");

    $result = $mysql->query("SELECT * FROM `ProfileDB` WHERE `Login` = '$Login' AND `Password` = '$Password'");
    $user = $result->fetch_assoc();
    if(count($user) == 0){
        echo "<p style='font-size: 30px;'>Такой пользователь не найден! Попробуйте ещё раз <a href='\index.php'>войти в аккаунт</a></p>";
        exit();
    }
    
    setcookie('FIO', $user['FIO'], time() + 3600, "/");
    setcookie('Otdel', $user['Otdel'], time() + 3600, "/");
    setcookie('WhoIS', $user['WhoIS'], time() + 3600, "/");

    $mysql->close();

    header('Location: \Function.php');
?>