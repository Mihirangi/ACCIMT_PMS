<?php

	$link = mysql_connect('localhost','root','pwditlinux');
	$db = mysql_select_db("attend_db");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}


echo'
	<select name="lvtypecode" id = "lvtypecode" onChange = "selectr()">
		<option value="new"> New Leave type Code</option>';

		$sqldes = "select * from lv_type_tbl";
		$ress = mysql_query($sqldes);
		
		while ($roww = mysql_fetch_array($ress))
	    {
            $id = $roww["Leave_Type_ID"];
	        $dname = $roww["Leave_Type"]; 
	        echo "<OPTION VALUE=".$id.">".$dname."</OPTION>";
		} 
echo'
		</select>';
		
?>