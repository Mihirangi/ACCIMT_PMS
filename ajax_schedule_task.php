<?php

	$q=$_GET["q"];
	require_once ("phpfncs/Database.php");
$db = new DBOperations("attend_db");

$query1=$db->Exe_Qry("SELECT pdt.sh_des,pdt.date_range FROM shdl_task_tbl as pdt WHERE pdt.sh_no='".$q."'");
	$row=$db->Next_Record($query1);

	
		
		echo 'a'.'|$|'.$row['sh_des'].'|$|'.$row['date_range'].'|$|';
	
?> 
