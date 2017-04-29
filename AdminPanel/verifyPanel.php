<?php

include "functions.php";

function masterconnect(){

global $dbcon;
$dbcon = mysqli_connect('localhost', 'root', 'Cjay7531', 'tanoalife') or die ('Database connection failed');
}

function loginconnect(){

global $dbconL;
$dbconL = mysqli_connect('localhost', 'root', 'Cjay7531', 'tanoalife');
}

function Rconconnect(){

global $rcon;
$rcon = new \Nizarii\ArmaRConClass\ARC('103.193.80.90', 2309, 'GIG22TanoaLife');
}

global $DBHost;
$DBHost = 'localhost';
global $DBUser;
$DBUser = 'root';
global $DBPass;
$DBPass = 'Cjay7531';
global $DBName;
$DBName = 'tanoalife';

global $RconHost;
$RconHost = '103.193.80.90';
global $RconPort;
$RconPort = 2309;
global $RconPass;
$RconPass = 'GIG22TanoaLife';

global $maxCop;
$maxCop = 7;
global $maxMedic;
$maxMedic = 5;
global $maxAdmin;
$maxAdmin = 5;
global $maxDonator;
$maxDonator = 5;

global $apiUser;
$apiUser = 'default';
global $apiPass;
$apiPass = 'password';
global $apiEnable;
$apiEnable = 1;

?>
