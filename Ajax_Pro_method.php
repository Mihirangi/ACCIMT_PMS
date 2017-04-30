 
<?php

	$q=$_GET["q"];
	require_once ("phpfncs/Database.php");
$db = new DBOperations("attend_db");

$query1=$db->Exe_Qry("SELECT pm.description FROM procurement_method_tbl AS pm WHERE pm.pro_id = '".$q."'");
	$row=$db->Next_Record($query1);

	
		
		echo $row['description'];
	
?> 

