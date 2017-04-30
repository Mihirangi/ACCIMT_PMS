<?php
$s = $_GET['s'];
$v = $_GET['v'];
require_once("Database.php");
$db=new DBOperations();
if ($s=="s")
{
	$qry = "SELECT * FROM sin_form WHERE Sin_Frm_Code='$v';";
	$qry2= "SELECT Attach_Desc FROM sin_attachs WHERE Sin_Frm_Code='$v';";
}
else
{
	$qry = "SELECT * FROM eng_form WHERE Eng_Frm_Code='$v';";
	$qry2= "SELECT Attach_Desc FROM eng_attachs WHERE Eng_Frm_Code='$v';";
}
	$user_data=$db->Next_Record($db->Exe_Qry($qry));
	$user_data2=$db->Next_Record($db->Exe_Qry($qry2)); 
	for ($x=0; $x<((count($user_data)/2)); $x++)
	{
		echo $user_data[$x].",!,!,";
	}
		echo $user_data2[0];
?>