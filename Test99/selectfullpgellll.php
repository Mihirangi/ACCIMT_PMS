<?php

	$link = mysql_connect('localhost','root','pwditlinux');
	$db = mysql_select_db("attend_db");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}


echo'
	<select name="designationcode" id = "designationcode" onChange = "selectr()">
		<option value="new"> New Designation Code</option>';

		$sqldes = "select * from designation_tbl";
		$ress = mysql_query($sqldes);
		
		while ($roww = mysql_fetch_array($ress))
	    {
            $id = $roww["DesigCode"];
	        $dname = $roww["Designation"]; 
	        echo "<OPTION VALUE=".$id.">".$dname."</OPTION>";
		} 
echo'
		</select>';
		
?>