<?php
$pg=$_GET['p'];
 session_start();
 $_SESSION['procdatapg']=$pg;
 echo true;
?>