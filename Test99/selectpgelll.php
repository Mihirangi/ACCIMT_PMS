<?php

	$link = mysql_connect('localhost','root','pwditlinux');
	$db = mysql_select_db("attend_db");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}


	$desid = $_GET['jj'];
	
	$sqlqry = mysql_query("select Designation from designation_tbl where DesigCode = '$desid'");
	
	$name=mysql_fetch_array($sqlqry);
	echo $name["Designation"];
	
?>