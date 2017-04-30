<?php
$pg=$_GET['p'];
@session_start();
 $_SESSION['datapg']=$pg;
 echo true;
?>