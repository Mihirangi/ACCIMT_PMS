<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script language="javascript" src="jss/lv_app_js.js">
</script>
<script language="javascript" type="text/javascript">
window.history.forward();
</script>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
<?php
require_once("phpfncs/Database.php");
require_once("phpfncs/Funcs.php");
$func= new FRMOperations();
@session_start();
?>
</head>
<?php
if (!$_SESSION['proclogin_user'])
{
header('Location: lgin.php');
}
else
{
$uid=$_SESSION['proclogin_user'];
$utype=$_SESSION['proclogin_type'];
}
if (isset($_POST["PrIds"]))
{
	$prid=$_POST['PrIds'];
	if ($prid!='0' && $prid !=='null')
	{
		$func->GetPrDetails($prid);
		header('Location: head_rec.php');
	}
}
?>
<body onLoad="sessSet('head_recSel.php')" onClick="mytstfunc()">
<div id="wrapp">
<form action="" method="post" name="ddfrm"><br />
<table id="wrapped2" align="center" width="95%"  border="0" cellpadding="10" cellspacing="1">
<tr>
<th>
<select name="PrIds">
<option value="0">Please Select a Purchase Requisition and Click View</option>
	<?php 
	if ($utype=="HOD")
	{
		$func->HeadRecDDL($uid);
	}
	else
	{	
?>
<option value="null">You are not a Head of a Division</option>
<?php
	}
	?>
</select>
</th></tr>
<tr>
<th>
<input name="Submit" type="submit" value="View" />
</th>
</tr>
</table><br />
</form>
</div>
</body>
</html>
