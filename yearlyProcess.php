<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Yearly Process</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>

</head>



<body onLoad="sessSet('manageEntitledLeave.php')">
	<?php
		$con = mysql_connect("localhost", "root", "pwditlinux"); // Establishing Connection with Server
		$db = mysql_select_db("attend_db", $con); // Selecting Database from Server
	?>
			<?php	
		
				if(isset($_POST['process'])){
					$year='';
					if (empty($_POST["year"])){
						echo '<script>alert("Please Fill the Data");</script>';
					}
					else{
						
						$year=$_POST['year'];
						session_start();
						$_SESSION['year']=$year;
						
						$lastyear=$year-1;
						
						$query1="SELECT Emp_No FROM ent_lv_tbl WHERE Emp_No NOT IN (SELECT Emp_No FROM ent_lv_tbl WHERE Year=$year)";
						$result1=mysql_query($query1);
						
						while($row = mysql_fetch_array($result1))
						{
							$empno=$row['Emp_No'];
							
							$tempfromdate=$lastyear.'-01-01';
							$temptodate=$lastyear.'-12-31';
							//echo $empno.'|empno|'.$tempfromdate.'|from|'.$temptodate.'|to|';
							$noofDays=0;
	
							$sql="SELECT l.No_of_Days FROM emp_details_tbl e,emp_lv_tbl l WHERE e.EmpNo ='$empno' AND e.EmpNo=l.Emp_No AND l.Leave_Type_ID='2' AND l.From_Date>='$tempfromdate' AND l.To_Date<='$temptodate'";
							$result=mysql_query($sql);
							
							if(mysql_num_rows($result)!=0){
								while($row = mysql_fetch_array($result))
								{
									$noofDays=$noofDays+$row[0];
								}
							}
							else{
								$noofDays=0;
							}
							
							//echo $noofDays.'|noofDays|';
							
							$query="SELECT Vacation FROM ent_lv_tbl WHERE Emp_No ='$empno' AND Year='$lastyear' ";
							$result=mysql_query($query,$con);
							
							$row=mysql_fetch_row($result);
							//echo $row[0].'|vacation|';
							$lapse=$row[0]-$noofDays;	
							//echo $lapse.'|end|';
							
							mysql_query("INSERT INTO ent_lv_tbl(Emp_No,Year,Medical,Vacation,Casual,Lapse) VALUES ($empno,$year,'21','14','7',$lapse)");
							
							
						}
						
					}
				}
				
				
			?>
			
<div id="wrapp">
	<form id="form1" name="form1" method="post" action="">
		<table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
			<caption><h1>Yearly Process</h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
				
					<tr>
						<th valign="top" scope="row"><div align="left">Year</div></th>
						<th valign="top">:</th>
						<td align="left">
						
						<select name="year" id="year" >		
						<?php
							echo "<option vale='0'>-Select-</option>";
							for ($x=2013; $x<=2100; $x++)
							{
								echo '<option value="'.$x.'">'.$x.'</option>';
							}
						?>
						</select>
						</td>
					</tr>
			
					</table></th>
				</tr>
			
			<br/>
			<br/>
			
			<tr> 
				<td class="tbrow" colspan="3" >
				<table width="100%" >
					<tr > 
						<td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC" size="1"> 
							<input name="process" type="submit" id="process" value="Process" >
							</font></div>
						</td>
					
						
					</tr>
				</table>
				</td>
			</tr>
			</table>
			<br/>
			<br/>
			
			<table id="wrapped" align="center" cellspacing="3" cellpadding="5" border="0">
			<tr>
				<th>
				
				<?php 
				
					if(!empty($_SESSION['year'])){
						$year=$_SESSION['year'];
					
					$result1 = mysql_query("SELECT * FROM ent_lv_tbl WHERE Year=$year ORDER BY Emp_No");
					if(mysql_num_rows($result1)>0){
						if ($myrow = mysql_fetch_array($result1)) {
						
				
						// display list if there are records to display
						echo '<br>';
						echo '<table id = "table2" align="center" border="1" cellspacing="0" cellpadding="0" width=50% >'."\n";
						echo '<tr></tr>';
						echo '<tr bgcolor="#000000" height="30">';   //display headers
						echo '<td class="tbrow" ><div align="center">Employee No</td>';
						echo '<td class="tbrow" ><div align="center">Year</td>';
						echo '<td class="tbrow" ><div align="center">Medical</td>';
						echo '<td class="tbrow" ><div align="center">Vacation</td>';
						echo '<td class="tbrow" ><div align="center">Casual</td>';
						echo '<td class="tbrow" ><div align="center">Lapse</td>';
						echo "</tr>\n";

						//display list if there are records to display
						$i=1;
						do {  
							// row colors
							if ($i % 2 != 0) # An odd row 
								$bla = "#FFFFFF"; 
							else # An even row 
								$bla = "#FFFFFF"; 
				?>
	 
				<tr>
					<td class="" ><?php echo $myrow['Emp_No']; ?></td>  
					<td class=""><?php echo $myrow['Year']; ?></td>
					<td class=""><?php echo $myrow['Medical']; ?></td> 
					<td class=""><?php echo $myrow['Vacation']; ?></td> 
					<td class=""><?php echo $myrow['Casual']; ?></td> 
					<td class=""><?php echo $myrow['Lapse']; ?></td> 
				</tr>  
  
				<?php 
					$i++;
					} 
					while ($myrow = mysql_fetch_array($result1));
					echo '</table>';
					}
					}
					}
					else{
						echo "No Result to Display";
					}
				?>
				
				</div>
				</th>
			</table>
			
	</form>
	<br />
	<br />
</div>
<?php 
mysql_close($con); // Closing Connection with Server
?>
</body>
</html>
