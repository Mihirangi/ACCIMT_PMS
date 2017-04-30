<?php
$p = $_GET['p'];
$q = $_GET['q'];
$r = $_GET['r'];
$s = $_GET['s'];
require_once("Database.php");
$db=new DBOperations();
echo '<select ';
if ($q=="na")
{
	$t="district";
}
else if ($q=="province")
{
	$t = "electorate";	
}
else if ($q=="district")
{
	$t = "gn_division";	
}

if ($s=="s")
{
	if ($q!="district")
	{
		echo 'onChange="loadcombosfrms(this.value,'."'".$r."'".','."'".$t."'".','."'".$s."'".')" ';
	}
	echo'class="_sin2" ';
}
else
{
	if ($q!="electorate")
	{
		echo 'onChange="loadcombosfrms(this.value,'."'".$r."'".','."'".$t."'".','."'".$s."'".')" ';
	}
}
echo'id="'.$r.'" name="'.$r.'">';
if ($q=="na")
{
	$qry = "SELECT * FROM $r;";
}
else 
{
	$fld=substr($q,0,3)."_Code";
	$qry = "SELECT * FROM $r WHERE $fld='$p';";
}
echo '<option value="New">';
if ($r=="province")
{
	if ($s=="s")
	{
		echo 'පළාතක් තෝරන්න';	
	}
	else
	{
		echo 'Select a Province';
	}
}
else if ($r=="district")
{
	if ($s=="s")
	{
		echo 'දිස්ත්‍රික්කයක් තෝරන්න';
	}
	else
	{
		echo 'Select a District';
	}
}
else if ($r=="electorate")
{
	if ($s=="s")
	{
		echo 'මැතිවරණ කොට්ඨාශයක් තෝරන්න';
	}
	else
	{
		echo 'Select an Electorate';
	}
}
else if ($r=="gn_division")
{
	echo 'Select a GN Division';
}
echo '</option>';
$res= $db->Exe_Qry($qry);
$numb=1;
while($user_data=$db->Next_Record($res))
{
	if ($s=="s")
	{
		echo '<option value="'.$user_data['0'].'">'.$numb.' '.$user_data['2'].'</option>';
	}
	else
	{
		echo '<option value="'.$user_data['0'].'">'.$numb.' '.$user_data['1'].'</option>';
	}
$numb++;
}
$db->Disconnect_from_DB();
?>