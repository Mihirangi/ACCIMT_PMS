<?php

	$link = mysql_connect('localhost','root','pwditlinux');
	$db = mysql_select_db("attend_db");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}


	$budid = $_GET['jj'];
	$typ = $_GET['qq'];
	$descrip = $_GET['descrip'];
	$sdescrip = $_GET['sdescrip'];
	$budcode = $_GET['budcode'];
	
	if($typ == "a")
	{
		$sqlqry = mysql_query("INSERT INTO budget_tbl(Budg_descrip,budg_code,short_descrip)
					VALUES ('$descrip','$budcode','$sdescrip')");
	}
	else if($typ == "b")
	{
		$sqlqry = mysql_query("UPDATE budget_tbl SET Budg_descrip = '$descrip',short_descrip='$sdescrip',budg_code='$budcode'
					WHERE budg_no = '$budid'");
	}
	else if($typ == "c")
	{
		$sqlqry = mysql_query("DELETE FROM budget_tbl
					WHERE budg_no = '$budid'");
	}
	else
	{
		die('Error: ' . mysql_error());
	}
?>