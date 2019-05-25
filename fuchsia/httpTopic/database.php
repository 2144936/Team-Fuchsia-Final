<?php
//database connection
$db_host = 'localhost';
$db_name = 'httpmultiplechoice';
$db_user = 'root';
$db_pass = '';

//create mysqli object
$mysqli = new mysqli($db_host, $db_user,$db_pass,$db_name);

 if($mysqli->connect_error){
 	printf("Connect failed: %s\n", $mysqli->connect_error);
 	exit();
}
