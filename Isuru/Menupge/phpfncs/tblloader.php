<?php
$p = $_GET['p'];
$q = $_GET['q'];
$r = $_GET['r'];
require_once("Database.php");
$db=new DBOperations();
if ($q=="na")
{ 
$result = $db->Exe_Qry("SELECT * FROM $r;");
echo '<caption><h3 style="color:#FFFFFF">'.ucfirst($r).'s</h3></caption>';
}
else
{
	$fld=substr($q,0,3)."_Code";
	$result = $db->Exe_Qry("SELECT * FROM $r WHERE $fld='$p' ORDER BY Eng_Nme;");
	echo '<caption><h3 style="color:#FFFFFF">'.ucfirst($r).'s Of The Selected '.ucfirst($q).'</h3></caption>';
}
while ($dataRowww=$db->Next_Record($result))
{
	echo '<tr><td>'.$dataRowww["1"].'</td><td class="_sin">'.$dataRowww["2"].'</td></tr>';
}
$db->Disconnect_from_DB();
?>