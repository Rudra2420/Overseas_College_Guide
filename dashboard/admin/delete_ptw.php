<?php
session_start();
include_once('../../database/dbconn.php');
include_once('../../database/function.php');

$ID = $_REQUEST['ptw_id'];

$delqry = "DELETE FROM part_time_work WHERE ptw_id='$ID' ";
$delexe = mysqli_query($conn, $delqry);

if(!$delexe)
{
    echo"<script>alert('Something Went Wrong user not deleted...');</script>";
}
else{
    echo"<script>alert('Data is deleted successfully..');</script?>";
}
header('location:manage_ptw.php')
?>