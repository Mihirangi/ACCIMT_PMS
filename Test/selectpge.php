<?php

	$link = mysql_connect('localhost','root','pwditlinux');
	$db = mysql_select_db("attend_db");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}


	$budid = $_GET['jj'];
	
	$sqlqry = mysql_query("select Budg_descrip,short_descrip,budg_code from budget_tbl where budg_no = '$budid'");

	$name=mysql_fetch_array($sqlqry);
	echo'<table><tr><td><input type = "text" name = "txtdescription" id = "txtdescription" value="'.$name["Budg_descrip"].'"/></td></tr><tr><td><input type = "text" name = "txtdsdescription" id = "txtsdescription" value="'.$name["short_descrip"].'"/></td></tr><tr><td><input type = "text" name = "txtbudcode" id = "txtbudcode" value="'.$name["budg_code"].'"/></td></tr></table>';
?>