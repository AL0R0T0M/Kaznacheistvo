<?php
    $FIO = filter_var(trim($_POST['FIO']));
    
    $LanDocs = filter_var(trim($_POST['LanDocs']));
    $Kasper = filter_var(trim($_POST['Kasper']));
    $Konsultant = filter_var(trim($_POST['Konsultant']));
    $Chromium = filter_var(trim($_POST['Chromium']));
    $NetAgent = filter_var(trim($_POST['NetAgent']));
    $Office = filter_var(trim($_POST['Office']));
    $KriptoPro = filter_var(trim($_POST['KriptoPro']));
    $Plugins = filter_var(trim($_POST['Plugins']));
    $SecretNet = filter_var(trim($_POST['SecretNet']));
    $Spark = filter_var(trim($_POST['Spark']));
    $AdobeReader = filter_var(trim($_POST['AdobeReader']));
    $zip = filter_var(trim($_POST['7-zip']));

    if($LanDocs){
        $LanDocs = 1;
    }else{
        $LanDocs = 0;
    }

    if($Kasper){
        $Kasper = 1;
    }else{
        $Kasper = 0;
    }

    if($Konsultant){
        $Konsultant = 1;
    }else{
        $Konsultant = 0;
    }

    if($Chromium){
        $Chromium = 1;
    }else{
        $Chromium = 0;
    }

    if($NetAgent){
        $NetAgent = 1;
    }else{
        $NetAgent = 0;
    }

    if($Office){
        $Office = 1;
    }else{
        $Office = 0;
    }

    if($KriptoPro){
        $KriptoPro = 1;
    }else{
        $KriptoPro = 0;
    }

    if($Plugins){
        $Plugins = 1;
    }else{
        $Plugins = 0;
    }

    if($SecretNet){
        $SecretNet = 1;
    }else{
        $SecretNet = 0;
    }
    if($Spark){
        $Spark = 1;
    }else{
        $Spark = 0;
    }

    if($AdobeReader){
        $AdobeReader = 1;
    }else{
        $AdobeReader = 0;
    }

    if($zip){
        $zip = 1;
    }else{
        $zip = 0;
    }

    $mysql = new mysqli('localhost', 'root', 'root', 'Priemka');
    $mysql->query("INSERT INTO Priem (FIO, LanDocs, Kasper, Konsultant, Chromium, NetAgent, Office, KriptoPro, `Plugins`, SecretNet, Spark, AdobeReader, `7-zip`) VALUES ('$FIO', '$LanDocs', '$Kasper', '$Konsultant', '$Chromium', '$NetAgent', '$Office', '$KriptoPro', '$Plugins', '$SecretNet', '$Spark', '$AdobeReader', '$zip')");
    
    $mysql->close();

    header('Location: \Function.php');
?>