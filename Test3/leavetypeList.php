<?php

	$link = mysql_connect('localhost','root','pwditlinux');
	$db = mysql_select_db("attend_db");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}
	
	$sqldiv = "select * from lv_type_tbl";
	$ress = mysql_query($sqldiv);
	
	if($ress == 0)
			{
				echo '<br/><br/><table align="center" border="1" style="width:50%">
				<tr><td><h4 style=" color: red; text-align: center">
				No Data in Leave type </h4><tr><td></table>';
			}
			
		else
		{
			echo'<br/><br/><table align="center" border="1" style="width:50%">
				<tr><th>Leave type Code</th><th>Leave type Name</th>';
			while ($roww1 = mysql_fetch_array($ress))
			{
				$id = $roww1["Leave_Type_ID"];
				$name = $roww1["Leave_Type"];
				
				echo '
				<tr><td>'.$id.'</td> <td>'.$name.'</td></tr>';
			}
			
			echo '</table>';
		}
?>