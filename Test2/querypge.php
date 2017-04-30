<?php

	$link = mysql_connect('localhost','root','pwditlinux');
	$db = mysql_select_db("attend_db");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}


	$divid = $_GET['jj'];
	$typ = $_GET['qq'];
	$name = $_GET['nm'];
	
	if($typ == "a")
	{
		$sqlqry = mysql_query("INSERT INTO division_tbl(Division)
					VALUES ('$name')");
	}
	else if($typ == "b")
	{
		$sqlqry = mysql_query("UPDATE division_tbl SET Division = '$name'
					WHERE DivisionCode = '$divid'");
	}
	else if($typ == "c")
	{
		$sqlqry = mysql_query("DELETE FROM division_tbl
					WHERE DivisionCode = '$divid'");
	}
	else
	{
		die('Error: ' . mysql_error());
	}
?>