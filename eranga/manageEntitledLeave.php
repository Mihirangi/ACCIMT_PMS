<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Manage Entitled Leave</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script>

function buttonfun() {
	var str1=document.getElementById("selectemployee").value;
	var str2=document.getElementById("year").value;
		
	if (str1=="-Select-") {
		document.getElementById("btnaddid").disabled = true;
        document.getElementById("btnedit").disabled = true;
		document.getElementById("btndelete").disabled = true;
    }
	else{
		document.getElementById("lapse").disabled=true;
		document.getElementById("btnaddid").disabled = false;
		document.getElementById("btnedit").disabled = false;
		document.getElementById("btndelete").disabled = false;
		showHint(str1,str2);
	}
}

var xmlhttp;
function GetXmlHttpObject()
{
	if (window.XMLHttpRequest)
	{
		// code for IE7+, Firefox, Chrome, Opera, Safari
		return new XMLHttpRequest();
	}
	if (window.ActiveXObject)
	{
		// code for IE6, IE5
		return new ActiveXObject("Microsoft.XMLHTTP");
	}
	return null;
}

function showHint(str1,str2)
{
	//alert(str1);
	if (str1.length==0 || str2.length==0)
	{
		document.getElementById("medical").value="";
		return;
	}
	xmlhttp=GetXmlHttpObject();
	if (xmlhttp==null)
	{
		alert ("Your browser does not support XMLHTTP!");
		return;
	}	
	var url="getmanageEntitledLeaves.php";
	url=url+"?q="+str1+"&r="+str2;
	//url2=url+"?r="+str2;
	xmlhttp.onreadystatechange=stateChanged;
	xmlhttp.open("GET",url,true);
	xmlhttp.send(null);
}

function stateChanged()
{
	if (xmlhttp.readyState==4)
	{
		var response=xmlhttp.responseText;
		alert(response);// remove this later
		// If the response text is of the format Hello|$|World
	   	var update = new Array();
		
		if(response.indexOf('|$|'!= -1)) {
				update = response.split('|$|');
				// The update Array will contain update[0] = Hello,update[1] = World
				document.getElementById("year").value=update[1];
				document.getElementById("medical").value=update[2];
				document.getElementById("vacation").value=update[3];
				document.getElementById("casual").value=update[4];
				document.getElementById("lapse").value=update[5];
				
		}else{
				// The format is not as per what you thought
				// S do some procesing if you need
		}
	}
}

function TOGetHrsandMin(t){
	update2 = t.split(':');
	if(update2[0].charAt(0)=="0"){
		var h=update2[0].substring(1);
	}
	else{
		var h=update2[0];
	}
					
	if(update2[1].charAt(0)=="0"){
		var m=update2[1].substring(1);
	}
	else{
		var m=update2[1];
	}
return {h:h,m:m}
}

</script>
</head>



<body onLoad="sessSet('manageEntitledLeave.php')">
	<?php
		$con = mysql_connect("localhost", "root", ""); // Establishing Connection with Server
		$db = mysql_select_db("attend_db", $con); // Selecting Database from Server
	?>
			<?php		
				if(isset($_POST['btnadd'])){
				
					if (empty($_POST["year"])){
						echo '<script>alert("Please Fill the Data");</script>';
					}
					else{
						$empno=$_POST['selectemployee'];
						$year=$_POST['year'];
						$medical=$_POST['medical'];
						$vacation=$_POST['vacation'];
						$casual=$_POST['casual'];
						
						//$query = "select Emp_No from ent_lv_tbl where Emp_No='".$empno."'";
						//$result = mysql_query($query,$con);

						
						//if(mysql_num_rows($result)==0){
						
								$query2 = "Insert ent_lv_tbl(Emp_No,Year,Medical,Vacation,Casual) Values(	'".$empno."','". $year . "',". "'" . $medical . "',"."'". $vacation . "',"."'".$casual."');";
								mysql_query($query2) or die(mysql_error($con));
						//}
						
					}
				}
				
				
				if(isset($_POST['btnedit'])){ // Fetching variables of the form which travels in URL
					$empno=$_POST['selectemployee'];
					$year=$_POST['year'];
					$medical=$_POST['medical'];
					$vacation=$_POST['vacation'];
					$casual=$_POST['casual'];
					
					$query = mysql_query("Update ent_lv_tbl Set Year='$year',Medical='$medical',Vacation='$vacation',Casual='$casual' WHERE Emp_No='empno'");
				}
				
				if(isset($_POST['btndelete'])){ // Fetching variables of the form which travels in URL
					$empno = $_POST['selectemployee'];
					$query = mysql_query("DELETE FROM ent_lv_tbl WHERE Emp_No='$empno'");
				}
				
			?>
			
<div id="wrapp">
	<form id="form1" name="form1" method="post" action="">
		<table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
			<caption><h1>Manage Entitled Leave</h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
					
					<tr>
						<th valign="top" scope="row"><div align="left">Employee No</div></th>
						<th valign="top">:</th>

								<td align="left">
								<select name = "selectemployee" id = "selectemployee" onchange="buttonfun()">
										<?php
											$values = mysql_query("SELECT EmpNo FROM emp_details_tbl");
											echo "<option >-Select-</option>";
											while ($row = mysql_fetch_array($values)) {
												$setSelect = "";
												echo "<option value='$row[0]' $setSelect>$row[0]</option>";
											}
											
										?>
								</select>
								</td>
					</tr>
				
					<tr>
						<th valign="top" scope="row"><div align="left">Year</div></th>
						<th valign="top">:</th>
						<td align="left">
						
						<select name="year" id="year" onchange="buttonfun()">		
						<?php
							echo "<option vale='0'>-Select-</option>";
							for ($x=2000; $x<=2100; $x++)
							{
								echo '<option value="'.$x.'">'.$x.'</option>';
							}
						?>
						</select>
						</td>
					</tr>
					
					<tr>
						<th valign="top" scope="row"><div align="left">Medical</div></th>
						<th valign="top">:</th>
						<td align="left">
						
						<input class="input" type="text" name="medical" id="medical" value="" /></td>
					</tr>
				
					<tr>
						<th valign="top" scope="row"><div align="left">Vacation</div></th>
						<th valign="top">:</th>
						<td align="left">
						
						<input class="input" type="text" name="vacation" id="vacation" value="" /></td>
					</tr>
				
					<tr>
						<th valign="top" scope="row"><div align="left">Casual</div></th>
						<th valign="top">:</th>
						<td align="left">
						
						<input class="input" type="text" name="casual" id="casual" value="" /></td>
					</tr>
				
				<tr>
					<th valign="top" scope="row"><div align="left">Lapse</div></th>
					<th valign="top">:</th>
					<td align="left">
                    
					<input class="input" type="text" name="lapse" id="lapse" value="" /></td>
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
							<input name="btnadd" type="submit" id="btnaddid" value="Add" onclick="myfunction()">
							</font></div>
						</td>
					
						<td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC"> 
							<input name="btnedit" disabled type="submit" id="btnedit" value="Edit">
							</font></div>
						</td>

						<td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC"> 
							<input name="btndelete" disabled type="submit" id="btndelete" value="Delete">
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
					$result1 = mysql_query("SELECT * FROM ent_lv_tbl ORDER BY Emp_No");
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
