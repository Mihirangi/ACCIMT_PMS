<?php

	$link = mysql_connect('localhost','root','');
	$db = mysql_select_db("testing");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}


echo'
	<select name="divisioncode" id = "divisioncode" onChange = "selectr()">
		<option value="new"> New Division Code</option>';

		$sqldes = "select * from division_tbl";
		$ress = mysql_query($sqldes);
		
		while ($roww = mysql_fetch_array($ress))
	    {
            $id = $roww["DivisionCode"];
	        $dname = $roww["Division"]; 
	        echo "<OPTION VALUE=".$id.">".$dname."</OPTION>";
		} 
echo'
		</select>';
		
?>