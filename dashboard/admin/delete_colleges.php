<?php
session_start();
include_once('../../database/dbconn.php');
include_once('../../database/function.php');

$clgid = $_REQUEST['clgid'];

$delqry = "DELETE FROM colleges WHERE clg_id='$clgid' ";
$delexe = mysqli_query($conn, $delqry);

if(!$delexe)
{
    echo"<script>alert('Something Went Wrong user not deleted...');</script>";
}
else{
    echo"<script>alert('College is deleted successfully..');</script?>";
}
header('location:manage_colleges.php')
?>