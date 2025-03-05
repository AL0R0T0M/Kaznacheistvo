<?php
    $Login = filter_var(trim($_POST['login']));
    $Password = filter_var(trim($_POST['password']));
    $FIO = filter_var(trim($_POST['FIO']));
    $Otdel = filter_var(trim($_POST['otdel']));

    $mysql = new mysqli('MySQL-8.2', 'root', '', 'Priemka');

    $result = $mysql->query("SELECT * FROM `ProfileDB` WHERE `Login` = '$Login' AND `Password` = '$Password'");
    $user = $result->fetch_assoc();
    if(count($user) != 0){
        echo "<p style='font-size: 30px;'>Такой пользователь уже существует! <a href='\index.php'>войти в аккаунт</a>.</p>";
        exit();
    }

    $mysql->query("INSERT INTO ProfileDB (`Login`, `Password`, `FIO`, `Otdel`) VALUES ('$Login', '$Password', '$FIO', '$Otdel')");
    

    $mysql->close();

    header('Location: \index.php');
?>