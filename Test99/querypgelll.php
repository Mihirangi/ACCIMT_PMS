<?php

	$link = mysql_connect('localhost','root','pwditlinux');
	$db = mysql_select_db("attend_db");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}


	$desid = $_GET['jj'];
	$typ = $_GET['qq'];
	$name = $_GET['nm'];
	
	if($typ == "a")
	{
		$sqlqry = mysql_query("INSERT INTO designation_tbl(Designation)
					VALUES ('$name')");
	}
	else if($typ == "b")
	{
		$sqlqry = mysql_query("UPDATE designation_tbl SET Designation = '$name'
					WHERE DesigCode = '$desid'");
	}
	else if($typ == "c")
	{
		$sqlqry = mysql_query("DELETE FROM designation_tbl
					WHERE DesigCode = '$desid'");
	}
	else
	{
		die('Error: ' . mysql_error());
	}
?>