<?php

	$link = mysql_connect('localhost','root','');
	$db = mysql_select_db("attend_db");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}


	$lvtpid = $_GET['jj'];
	$typ = $_GET['qq'];
	$name = $_GET['nm'];
	
	if($typ == "a")
	{
		$sqlqry = mysql_query("INSERT INTO lv_type_tbl(Leave_Type)
					VALUES ('$name')");
	}
	else if($typ == "b")
	{
		$sqlqry = mysql_query("UPDATE lv_type_tbl SET Leave_Type = '$name'
					WHERE Leave_Type_ID = '$lvtpid'");
	}
	else if($typ == "c")
	{
		$sqlqry = mysql_query("DELETE FROM lv_type_tbl
					WHERE Leave_Type_ID = '$lvtpid'");
	}
	else
	{
		die('Error: ' . mysql_error());
	}
?>