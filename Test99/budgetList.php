<?php

	$link = mysql_connect('localhost','root','pwditlinux');
	$db = mysql_select_db("attend_db");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}
	
	$sqldiv = "select * from budget_tbl";
	$ress = mysql_query($sqldiv);
	
	if($ress == 0)
			{
				echo '<br/><br/><table align="center" border="1" style="width:50%">
				<tr><td><h4 style=" color: red; text-align: center">
				No Data in Budget </h4><tr><td></table>';
			}
			
		else
		{
			echo'<br/><br/><table align="center" border="1" style="width:50%">
				<tr><th>Budget No</th><th>Budget Name</th><th>Budget Short Name</th<th>Budget Code</th>>';
			while ($roww1 = mysql_fetch_array($ress))
			{
				$id = $roww1["budget_no"];
				$descrip = $roww1["Budg_descrip"];
				$sdescrip = $roww1["short_descrip"];
				$bcode = $roww1["budg_code"];
				echo '
				<tr><td>'.$id.'</td> <td>'.$descrip.'</td><td>'.$sdescrip.'</td> <td>'.$bcode.'</td> </tr>';
			}
			
			echo '</table>';
		}
?>