<?php
$s = $_GET['s'];
$f = $_GET['f'];
require_once("Database.php");
$db=new DBOperations("attend_db");
if ($s=="s")
{
	$sql="SELECT Attach_Desc FROM sin_attachs WHERE Sin_Frm_Code = '$f';";
}
else
{
	$sql="SELECT Attach_Desc FROM eng_attachs WHERE Eng_Frm_Code = '$f';";
}
$val=$db->Next_Record($db->Exe_Qry($sql));
echo $val[0];
?>