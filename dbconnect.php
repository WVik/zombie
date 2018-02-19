<?php

$con=mysql_connect("localhost:3307","root","") or die("error in connection");

mysql_select_db("zombie",$con) or die("error in database");

?>
