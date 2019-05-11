<!DOCTYPE html>
<?php
$servername="localhost";
$username = "root";
$password = "";
$dbname = "websitequiz";
try{
	$conn = mysqli_connect($servername, $username, $password, $dbname);
	//echo ("successfully");}
	catch(MysQli_Sql_Exceptiom $ex)
	{
		echo("error");

	}   
	if(isset($_POST['submit'])){
		$http=$_POST['http'] ;
		$query="INSERT INTO `qsn`(`qsn`) VALUES ($http)";
		
	}
?>
<html>
<head>
<meta charset = "utf-8">
<title> Quizzer Website</title>
</head>

<body>
	<form action="" method="post">
		<table align="center">
			<tr>
				<td>What is HTTP?</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="radio" name="http" value="hypertextProtocol">HyperText Transfer Protocol</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="radio" name="http" value="hypercole">HyperText Transfer Protocole</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="radio" name="http" value="hypertiles">HyperText Tiles Protocol</td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="submit"></td>
				<td><input type="submit" name="check" value="check result"></td>
			</tr>
		</table>
	</form>
</body>
</html>