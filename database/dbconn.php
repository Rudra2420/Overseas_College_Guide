<?php  

$severname = 'localhost';
$username  = 'root';
$password  = '';
$database  = 'overseas';

$conn	=	mysqli_connect($severname, $username, $password, $database);

if (!$conn) {
	die("Database connection is failed:".mysqli_connect_error()." ".mysqli_connect_errno());
}

?>