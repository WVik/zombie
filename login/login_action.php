<?php
session_start();
include_once '../dbconnect.php';
if(isset($_SESSION['user']))
{
	header("Location: ../");
}


?>
  <?php
	$string = $_POST['string'];

	$namequery = "SELECT * FROM playerdb WHERE string='$string'";
	$nameresult = mysql_query($namequery);
	$names = mysql_fetch_row($nameresult);

	$p1name = explode(" ",$names[2]);
	$p2name = explode(" ",$names[5]);


	// email exist or not
	$querypdb = "SELECT pmobile1,pmobile2 FROM playerdb WHERE string='$string'";
	$resultpdb = mysql_query($querypdb);
	$row = mysql_fetch_row($resultpdb);

	$querygdb = "SELECT * FROM gameboard WHERE string='$string'";
	$resultgdb = mysql_query($querygdb);
	$countpdb = mysql_num_rows($resultpdb); // if email not found then register
	$countgdb = mysql_num_rows($resultgdb);
	if($countpdb != 0){
	 if($countgdb == 0){
	 	$redbox="";
	 	$pl1pos="14";
	 	$pl2pos="74";
	 	$rno=substr($string, -2);
	 	$pl1=$row['0'];
	 	$pl2=$row['1'];



	 mysql_query("INSERT INTO gameboard(string,pl1,pl2,rno,redbox,pl1pos,pl2pos)  VALUES('$string','$pl1','$pl2','$rno','$redbox','$pl1pos','$pl2pos')") or die("error");
			}
			echo $p2name[0];
			$_SESSION['p1name']=$p1name[0];
			$_SESSION['p2name']=$p2name[0];
		header("Location: ../game.php");
		$_SESSION['user']=$string;

	}
	else{
			?>
			<script>alert('Sorry your string has no gameboard. Please ask for a new one if time left.');window.location="./";</script>
			<?php
	}



?>
