<?php
include_once '../dbconnect.php';
$a = $_POST['name1'];
$b = $_POST['string1'];
$c = $_POST['collegename1'];
$d = $_POST['mobile1'];
$e = $_POST['name2'];
//$f = $_POST['string2'];
$g = $_POST['collegename2'];
$h = $_POST['mobile2'];
$valid="yes";




	$queryforstring = "SELECT valid FROM string WHERE string='$b'";
	$resultforstring = mysql_query($queryforstring);	
	$countforstring = mysql_num_rows($resultforstring); // if string found then register
	$result=mysql_fetch_row($resultforstring);
	echo $result[0];
	if($result[0]!="yes"){
			$valid="no";
			echo $valid;
		}
	

	
	if($countforstring!=0){
		
		if($valid=='no'){
			?>
			<script>alert('Sorry String already Registered');window.location="./";</script>
			<?php
		}




		else{

		if(mysql_query("INSERT INTO playerdb(string,pname1,collegename1,pmobile1,pname2,collegename2,pmobile2)  VALUES('$b','$a','$c','$d','$e','$g','$h')"))
		{	
			mysql_query("UPDATE string SET valid='no' WHERE string='$b'") or die("error in what i wanted to see.");

			?>			
			<script>alert('successfully registered ');window.location="./";</script>
			<?php
		}
		else
		{
			?>
			<script>alert('error while registering your gameboard...');window.location="./";</script>
			<?php
		}
		}		
	}
	else{
			?>
			<script>alert(' Invalid String Entered.');window.location="./";</script>
			<?php
	}
	?>