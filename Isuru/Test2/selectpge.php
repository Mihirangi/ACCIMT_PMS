<?php

	$link = mysql_connect('localhost','root','');
	$db = mysql_select_db("testing");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}


	$divid = $_GET['jj'];
	
	$sqlqry = mysql_query("select Division from division_tbl where DivisionCode = '$divid'");
	
	$name=mysql_fetch_array($sqlqry);
	echo $name["Division"];
	
?>