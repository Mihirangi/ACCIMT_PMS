<?php

	$link = mysql_connect('localhost','root','');
	$db = mysql_select_db("testing");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}
	
	$sqldiv = "select * from designation_tbl";
	$ress = mysql_query($sqldiv);
	
	if($ress == 0)
			{
				echo '<br/><br/><table border="1" style="width:50%">
				<tr><td><h4 style=" color: red; text-align: center">
				No Data in Designation </h4><tr><td></table>';
			}
			
		else
		{
			echo'<br/><br/><table border="1" style="width:50%">
				<tr><th>Designation Code</th><th>Designation Name</th>';
			while ($roww1 = mysql_fetch_array($ress))
			{
				$id = $roww1["DesigCode"];
				$name = $roww1["Designation"];
				
				echo '
				<tr><td>'.$id.'</td> <td>'.$name.'</td></tr>';
			}
			
			echo '</table>';
		}
?>