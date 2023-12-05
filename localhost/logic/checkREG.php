<?php
    $Login = filter_var(trim($_POST['login']));
    $Password = filter_var(trim($_POST['password']));
    $FIO = filter_var(trim($_POST['FIO']));
    $Otdel = filter_var(trim($_POST['otdel']));

    $mysql = new mysqli('localhost', 'root', 'root', 'Priemka');
    $mysql->query("INSERT INTO ProfileDB (`Login`, `Password`, `FIO`, `Otdel`) VALUES ('$Login', '$Password', '$FIO', '$Otdel')");
    
    $mysql->close();

    header('Location: \index.php');
?>