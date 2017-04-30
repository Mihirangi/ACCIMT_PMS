
 <?php
	$q=$_GET["q"];


require_once ("phpfncs/Database.php");
$db = new DBOperations("attend_db");
	

	$sql=$db->Exe_Qry("SELECT description, short_name FROM pr_type WHERE pr_type_no= '".$q."'");
	$row=$db->Next_Record($sql);
		echo 'a'.'|$|'.$row['description'].'|$|'.$row['short_name'].'|$|';


?> 
