<?php
session_start();
if(isset($_SESSION['user'])=="")
{
	header("Location: ./");
}
$string=$_SESSION['user'];
echo $string;
include_once './dbconnect.php';
if(isset($_POST['redbox'])){

$redbox = $_POST['redbox'];
//echo $redbox;
mysql_query("UPDATE gameboard SET redbox='$redbox' WHERE string='$string'") or die("error in query");
}
if(isset($_POST['pl1pos'])){

$pl1pos = $_POST['pl1pos'];
//echo $redbox;
mysql_query("UPDATE gameboard SET pl1pos='$pl1pos' WHERE string='$string'") or die("error in query");
}
if(isset($_POST['pl2pos'])){

$pl2pos = $_POST['pl2pos'];
//echo $redbox;
mysql_query("UPDATE gameboard SET pl2pos='$pl2pos' WHERE string='$string'") or die("error in query");
}
if(isset($_POST['turn'])){

$turn = $_POST['turn'];
//echo $redbox;
mysql_query("UPDATE gameboard SET turn='$turn' WHERE string='$string'") or die("error in query");
}