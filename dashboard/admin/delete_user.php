<?php
session_start();
include_once('../../database/dbconn.php');
include_once('../../database/function.php');

$ID = $_REQUEST['id'];

$delqry = "DELETE FROM users WHERE uid='$ID' ";
$delexe = mysqli_query($conn, $delqry);

if(!$delexe)
{
    echo"<script>alert('Something Went Wrong user not deleted...');</script>";
}
else{
    echo"<script>alert('User is deleted successfully..');</script?>";
}
header('location:manage_user.php')
?>