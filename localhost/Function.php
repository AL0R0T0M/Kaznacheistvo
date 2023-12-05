<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test</title>
    <link rel="stylesheet" href="Style/style.css">
    <link rel="shortcut icon" href="Images/icon.png" type="image/x-icon">
</head>

<body>
    <?php
        if($_COOKIE['user'] != ''){
            $alert = '<script>alert("Вы успешно вошли в аккаунт!")</script>';
            echo $alert;
        }
    ?>
    <p class="zagolovok">Приём пользователя</p>
    <a href="logic/exit.php" class="logout">выйти</a>
    <form class="Forma" action="logic/check.php" method="post" id="form">
        <div class="prof">
            <div class="iconProfile">
                <img src="Images/profile.png" alt="profileIcon" class="Profile">
            </div>
            <div class="fio">
                <input type="text" name="FIO" id="FIO" placeholder="ФИО">
            </div>
        </div>
        <div class="selector">
            <div class="stroka">
                <P>LanDocs</P>
                <input type="checkbox" placeholder="LanDocs" name="LanDocs">
                <P>Kasper</P>
                <input type="checkbox" placeholder="Kasper" name="Kasper">
                <P>Konsultant</P>
                <input type="checkbox" placeholder="Konsultant" name="Konsultant">
            </div>
            <div class="stroka">
                <P>Chromium</P>
                <input type="checkbox" placeholder="Chromium" name="Chromium">
                <P>NetAgent</P>
                <input type="checkbox" placeholder="NetAgent" name="NetAgent">
                <P>Office</P>
                <input type="checkbox" placeholder="Office" name="Office">
            </div>
            <div class="stroka">
                <P>KriptoPro</P>
                <input type="checkbox" placeholder="KriptoPro" name="KriptoPro">
                <P>Plugins</P>
                <input type="checkbox" placeholder="Plugins" name="Plugins">
                <P>SecretNet</P>
                <input type="checkbox" placeholder="SecretNet" name="SecretNet">
            </div>
            <div class="stroka">
                <P>Spark</P>
                <input type="checkbox" placeholder="Spark" name="Spark">
                <p>AdobeReader</p>
                <input type="checkbox" name="AdobeReader">
                <p>7-zip</p>
                <input type="checkbox" name="7-zip" id="">
            </div>
        </div>
        <input type="submit" class="button"></input>
    </form>
    <!-- <script src="script.js"></script> -->
    <!-- <a href="test.html">TEST</a> -->
</body>

</html>