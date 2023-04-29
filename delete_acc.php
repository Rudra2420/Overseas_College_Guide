<?php
session_start();
include_once('database/dbconn.php');
include_once('database/function.php');

$accid = $_REQUEST['accid'];

$delqry = "DELETE FROM accommodation WHERE acc_id='$accid' ";
$delexe = mysqli_query($conn, $delqry);

if(!$delexe)
{
    echo"<script>alert('Something Went Wrong user not deleted...');</script>";
}
else{
    echo"<script>alert('College is deleted successfully..');</script?>";
}
header('location:manage_acc.php')
?>