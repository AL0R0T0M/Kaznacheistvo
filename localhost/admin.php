
<?php
    $mysql = new mysqli('MySQL-8.2', 'root', '', 'Priemka');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Панель Администратора</title>
    <link rel="stylesheet" href="styleH.css">
    <link rel="shortcut icon" href="Images/icon.png" type="image/x-icon">
</head>

<body>
    <?php
        $sql = mysqli_query($mysql, 'SELECT * FROM `Priem`');
        while ($result = mysqli_fetch_array($sql)) {
            echo "<div class='okno'>{$result['WhoIS']}: {$result['Otdel']}: {$result['FIO']}: {$result['LanDocs']}: {$result['Kasper']}: {$result['Konsultant']}: {$result['Chromium']}: {$result['NetAgent']}: {$result['Office']}: {$result['KriptoPro']}: {$result['Plugins']}: {$result['SecretNet']}: {$result['Spark']}: {$result['AdobeReader']}: {$result['7-zip']}<div/><br>";
        }
    ?>
    <button type="button" name="delete" id="delete" class="knopka" onclick="<?php $sql = mysqli_query($mysql, 'SELECT * FROM `Priem`'); ?>">Удалить всё</button>
</body>
</html>

