<?php 
$q = $_GET['q'];
require_once("Database.php");
$db=new DBOperations();
if ($db->Row_Affec($db->Exe_Qry($q))>0)
{
	echo true;
}
else
{
if(strpos($q, 'sin_form') == true)
{
	echo true;
}
else if(strpos($q, 'eng_form') == true)
{
	echo true;
}
else
{
	echo false;
}
}
?>