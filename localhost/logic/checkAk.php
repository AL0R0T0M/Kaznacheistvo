<?php
    $Login = filter_var(trim($_POST['login']));
    $Password = filter_var(trim($_POST['password']));

    $mysql = new mysqli('localhost', 'root', 'root', 'Priemka');
    $mysql->query("INSERT INTO Autorization (`Login`, `Pass`) VALUES ('$Login', '$Password')");

    $result = $mysql->query("SELECT * FROM `ProfileDB` WHERE `Login` = '$Login' AND `Password` = '$Password'");
    $user = $result->fetch_assoc();
    if(count($user) == 0){
        echo "Такой пользователь не найден! Попробуйте ещё раз <a href='\index.php'>войти в аккаунт</a>";
        exit();
    }

    setcookie('user', $user['Login'], time() + 3600, "/");

    $mysql->close();

    header('Location: \Function.php');
?>