<?php

	$link = mysql_connect('localhost','root','');
	$db = mysql_select_db("attend_db");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}


	$lvtpid = $_GET['jj'];
	
	$sqlqry = mysql_query("select Leave_Type from lv_type_tbl where Leave_Type_ID = '$lvtpid'");
	
	$name=mysql_fetch_array($sqlqry);
	echo $name["Leave_Type"];
	
?>