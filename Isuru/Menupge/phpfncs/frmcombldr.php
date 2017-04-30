<?php
$s = $_GET['s'];
require_once("Database.php");
$db=new DBOperations();
$nv=1;

if ($s=="s")
{
	$dr = $db->Exe_Qry("SELECT Sin_Frm_Code FROM sin_form ORDER BY Sin_Frm_Code DESC;");
	$rc=$db->Row_Count($dr);
	if ($rc != 0)
	{
		$dv=$db->Next_Record($dr);
		$nv = $dv[0]+1;
	}
}
else
{
	$dr = $db->Exe_Qry("SELECT Eng_Frm_Code FROM eng_form ORDER BY Eng_Frm_Code DESC;");
	$rc=$db->Row_Count($dr);
	if ($rc != 0)
	{
		$dv=$db->Next_Record($dr);
		$nv = $dv[0]+1;
	}
}
echo '<select ';
if ($s=="s")
{
echo 'class="_sin2" ';
}
echo 'id="Rec_Nos" name="Rec_Nos" onChange="dataloader('."'".$s."',"."this.value".')"><option value="New'.$nv.'">';
if ($s=="s")
{
	echo 'අලුත් ඉල්ලීමක්';
	$qry = "SELECT Sin_Frm_Code, File_No, Name FROM sin_form;";
}
else
{
	echo 'New Request';
	$qry = "SELECT Eng_Frm_Code,R_Date FROM eng_form;";
}
echo '</option>';

	$res= $db->Exe_Qry($qry);
	$count=$db->Row_Count($res);
	for($x=0;$x<$count;$x++)
	{
		$user_data=$db->Next_Record($res);
		if ($s=="s")
		{
			echo '<option value="'.$user_data['Sin_Frm_Code'].'">'.$user_data['Sin_Frm_Code'].' - '.$user_data['Name'].' - '.$user_data['File_No'].'</option>';
		}
		else
		{
			echo '<option value="'.$user_data['Eng_Frm_Code'].'">'.$user_data['Eng_Frm_Code'].' - '.$user_data['R_Date'].'</option>';
		}
	}
echo '</select>';
?>