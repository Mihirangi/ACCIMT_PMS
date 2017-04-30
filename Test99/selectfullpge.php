<?php

	$link = mysql_connect('localhost','root','pwditlinux');
	$db = mysql_select_db("attend_db");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}


echo'
	<select name="BudgetNo" id = "BudgetNo" onChange = "selectr()">
		<option value="new"> New Budget Code</option>';

		$sqlbud = "select * from budget_tbl";
		$ress = mysql_query($sqlbud);
		
		while ($roww = mysql_fetch_array($ress))
	    {
            $id = $roww["budg_no"];
	       $dname = $roww["Budg_descrip"]; 
	        echo "<OPTION VALUE=".$id.">".$dname."</OPTION>";
		} 
echo'
		</select>';
		
?>