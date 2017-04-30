

 <?php

	$q=$_GET["q"];

require_once ("phpfncs/Database.php");
$db = new DBOperations("attend_db");

	
	$sql=$db->Exe_Qry("SELECT pdt.usage_nm, pdt.usg_descrip FROM usage_dtls_tbl AS pdt WHERE pdt.usage_no = '".$q."'");
	$row=$db->Next_Record($sql);

	
		echo 'a'.'|$|'.$row['usage_nm'].'|$|'.$row['usg_descrip'].'|$|';
	
?> 
