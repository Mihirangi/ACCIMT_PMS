<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Apply a Leave</title>
<script language="javascript" src="calendar/calendar.js">
</script>
<script language="javascript" src="jss/lv_app_js.js">
</script>
<?php
@session_start();
require_once("phpfncs/MS_Database.php");
require_once("phpfncs/MY_Database.php");
require_once("phpfncs/Funcs.php");
?>
</head>
<?php
$MSdb = new DBOperations_MS();
$MYdb =new DBOperations_MY();
$funcc = new FRMOperations();
$dddt=date('y-m-d');
if(!empty($_POST))
{
	$dddt=date_format(date_create($_POST['testdt']), 'Y-m-d');
	$dummy_dt= date_format(date_create('1977-01-01'), 'Y-m-d');
	$dt = date_format(date_create($_POST['testdt']), 'm/d/Y H:i:s');
	$dt2=date('m/d/Y H:i:s', strtotime($dt . ' + 23 hour'. ' + 59 minute'. ' + 59 second'));
	$present_mems=$MSdb->Exe_Qry("SELECT DISTINCT epfno FROM Attendance WHERE time_f > '$dt' AND time_f < '$dt2' ;");
	$active_mems=$MYdb->Exe_Qry("SELECT EmpNo FROM per_details WHERE Retirement_DT NOT BETWEEN '$dummy_dt' AND '$dddt';");
	//$active_mems=$MYdb->Exe_Qry("SELECT EmpNo FROM per_details WHERE Retirement_DT BETWEEN $dummy_dt AND $dddt;");
	$pmc=$MSdb->Row_Count($present_mems);
	$amc = $MYdb->Row_Count($active_mems);
}
?>
<body>
<form id="myfrm" name="myfrm" action="" method="post">
<?php $funcc->CrtCalender("testdt",$dddt);?>
<input type="submit" id="ssss" name="ssss" value="OK" />
<?php
if (isset($pmc))
{
	echo ('<br />'.$pmc.'<br />'.$amc."<br />");
	while ($res=$MSdb->Next_Record($present_mems))
	{
		echo '<table border="1"><tr><th>'.$res[0].'<th></tr>';
		$vals2=$MSdb->Exe_Qry("SELECT * FROM Attendance WHERE epfno='".$res[0]."' AND time_f > '$dt' AND time_f < '$dt2';");
		$entrycount = $MSdb->Row_Count($vals2);
		if ($entrycount==2)
		{
			$res2[0]=$MSdb->Next_Record($vals2);
			$res2[1]=$MSdb->Next_Record($vals2);
			if ($res2[0][4]=="F1" && $res2[1][4]=="F2")
			{
				echo '<tr><td>OK</td><td>'.$res2[0][2].'</td><td>'.$res2[0][3].'</td><td>'.$res2[0][4].'</td></tr>';
				echo '<tr><td>OK</td><td>'.$res2[1][2].'</td><td>'.$res2[1][3].'</td><td>'.$res2[1][4].'</td></tr>';
			}
			else
			{
				echo '<tr><td>Not OK</td><td>'.$res2[0][2].'</td><td>'.$res2[0][3].'</td><td>'.$res2[0][4].'</td></tr>';
				echo '<tr><td>Not OK</td><td>'.$res2[1][2].'</td><td>'.$res2[1][3].'</td><td>'.$res2[1][4].'</td></tr>';
			}
		}
		else if ($entrycount==4)
		{
			$res2[0]=$MSdb->Next_Record($vals2);
			$res2[1]=$MSdb->Next_Record($vals2);
			$res2[2]=$MSdb->Next_Record($vals2);
			$res2[3]=$MSdb->Next_Record($vals2);
			if ($res2[0][4]=="F1" && $res2[1][4]=="F3" && $res2[2][4]=="F4" && $res2[3][4]=="F2")
			{
				echo '<tr><td>OK</td><td>'.$res2[0][2].'</td><td>'.$res2[0][3].'</td><td>'.$res2[0][4].'</td></tr>';
				echo '<tr><td>OK</td><td>'.$res2[1][2].'</td><td>'.$res2[1][3].'</td><td>'.$res2[1][4].'</td></tr>';
				echo '<tr><td>OK</td><td>'.$res2[2][2].'</td><td>'.$res2[2][3].'</td><td>'.$res2[2][4].'</td></tr>';
				echo '<tr><td>OK</td><td>'.$res2[3][2].'</td><td>'.$res2[3][3].'</td><td>'.$res2[3][4].'</td></tr>';
			}
			else if ($res2[0][4]=="F2" && $res2[1][4]=="F1" && $res2[2][4]=="F2" && $res2[3][4]=="F1")
			{
				echo '<tr><td>OK</td><td>'.$res2[0][2].'</td><td>'.$res2[0][3].'</td><td>'.$res2[0][4].'</td></tr>';
				echo '<tr><td>OK</td><td>'.$res2[1][2].'</td><td>'.$res2[1][3].'</td><td>'.$res2[1][4].'</td></tr>';
				echo '<tr><td>OK</td><td>'.$res2[2][2].'</td><td>'.$res2[2][3].'</td><td>'.$res2[2][4].'</td></tr>';
				echo '<tr><td>OK</td><td>'.$res2[3][2].'</td><td>'.$res2[3][3].'</td><td>'.$res2[3][4].'</td></tr>';
			}
			else
			{
				echo '<tr><td>Not OK</td><td>'.$res2[0][2].'</td><td>'.$res2[0][3].'</td><td>'.$res2[0][4].'</td></tr>';
				echo '<tr><td>Not OK</td><td>'.$res2[1][2].'</td><td>'.$res2[1][3].'</td><td>'.$res2[1][4].'</td></tr>';
				echo '<tr><td>Not OK</td><td>'.$res2[2][2].'</td><td>'.$res2[2][3].'</td><td>'.$res2[2][4].'</td></tr>';
				echo '<tr><td>Not OK</td><td>'.$res2[3][2].'</td><td>'.$res2[3][3].'</td><td>'.$res2[3][4].'</td></tr>';
			}
		}
		else
		{	
		while ($res2=$MSdb->Next_Record($vals2))
		{
			echo '<tr><td>Not OK Not</td><td>'.$res2[2].'</td><td>'.$res2[3].'</td><td>'.$res2[4].'</td></tr>';
		}
		}
		echo '</table><br /><br />';
		
	}
}
?>
</form>
</body>
</html>
