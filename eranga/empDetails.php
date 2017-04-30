<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Employee Details</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js">
</script>

 

<script>
function buttonfun(str) {
	var temp=document.getElementById("selectemployee").value;
	if (temp=="New Employee") {
		document.getElementById("btnaddid").disabled = false;
        document.getElementById("btnedit").disabled = true;
		document.getElementById("btndelete").disabled = true;		
    }
	else{
		document.getElementById("btnaddid").disabled = true;
		document.getElementById("btnedit").disabled = false;
		document.getElementById("btndelete").disabled = false;
		showHint(str);	
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

function showHint(str)
{
	if (str.length==0)
	{
		document.getElementById("txtHint").value="";
		return;
	}
	xmlhttp=GetXmlHttpObject();
	if (xmlhttp==null)
	{
		alert ("Your browser does not support XMLHTTP!");
		return;
	}	
	var url="getempdetails.php";
	url=url+"?q="+str;
	//url=url+"&sid="+Math.random();
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
		var update2 = new Array();
		var update3 = new Array();
		var update4 = new Array();
		//var test = new Array();
		if(response.indexOf('|$|'!= -1)) {
				update = response.split('|$|');
				//test = update[7].split('-');
				// The update Array will contain update[0] = Hello,update[1] = World
				document.getElementById("aaa").value=update[0];
				document.getElementById("txtHint").value=update[1];// txtHint should be the Id of an text box I assume
				document.getElementById("txtBlah").value=update[2];// similar to above comment
				document.getElementById("txtNIC").value=update[3];//test[2]+"-"+test[1]+"-"+test[0];
				
				update2=update[4].split('-');
				tc_setDMY("dateofbirth",update2[2],update2[1],update2[0]);

				if(update[5]=='Male'){
					document.getElementById("gender1").checked = true;
				}
				else{
					document.getElementById("gender2").checked = true;
				}
				document.getElementById("txtemail").value=update[6];
				document.getElementById("txtmobinum").value=update[7];
				//document.getElementById("dateofappoinment").value=update[8];
				update3=update[8].split('-');
				//alert(update3);
				tc_setDMY("dateofappoinment",update3[2],update3[1],update3[0]);
				
				document.getElementById("txtdivicode").value=update[9];
				document.getElementById("txtdesicode").value=update[10];
				document.getElementById("txtemptypecode").value=update[11];
				document.getElementById("txtcatcode").value=update[12];
				//document.getElementById("retirementdate").value=update[13];
				update4=update[13].split('-');
				//alert(update4);
				tc_setDMY("retirementdate",update4[2],update4[1],update4[0]);
				
				
		}else{
				// The format is not as per what you thought
				// S do some procesing if you need
	 
		}
	}
}

function tc_setDMY(objname, dvalue, mvalue, yvalue){
	var obj = document.getElementById(objname);
	obj.value = yvalue + "-" + mvalue + "-" + dvalue;

	tc_submitDate(objname, dvalue, mvalue, yvalue);
}

</script>


</head>

<body onLoad="sessSet('empDetails.php')">
			<?php
			
				$con = mysql_connect("localhost", "root", ""); // Establishing Connection with Server
				$db = mysql_select_db("attend_db", $con); // Selecting Database from Server
				
				if(isset($_POST['btnadd'])){
					if (empty($_POST["aaa"])){
						echo '<script>alert("Please Fill the Data");</script>';
					}
					else{
						$empno1=$_POST['aaa'];
						$empno2=$_POST['selectemployee'];
						$title=$_POST['txtHint'];
						$fullname=$_POST['txtBlah'];
						$nicnumber=$_POST['txtNIC'];
						$dob=$_POST['dateofbirth'];
						$gender=$_POST['gender'];
						$email=$_POST['txtemail'];
						$mobino=$_POST['txtmobinum'];
						$dateofappoinment=$_POST['dateofappoinment'];
						$division=$_POST['txtdivicode'];
						$designation=$_POST['txtdesicode'];
						$emptype=$_POST['txtemptypecode'];
						$category=$_POST['txtcatcode'];
						$retirementdate=$_POST['retirementdate'];
						
						$query1="SELECT EmpNo FROM emp_details_tbl WHERE EmpNo='".$empno1."'";
						$result1 = mysql_query($query1,$con);
	
						if(mysql_num_rows($result1)==0)
						{
							$query2="SELECT d.DivisionCode,des.DesigCode,e.EmpTypeCode,c.CategoryCode FROM division_tbl d,designation_tbl des,emp_type_tbl e,category_tbl c WHERE d.Division='$division' AND des.Designation='$designation' AND e.EmpType='$emptype'AND c.Category='$category' ";
							$result2=mysql_query($query2,$con);
							$row = mysql_fetch_row($result2);
							$query3 = "Insert emp_details_tbl(EmpNo,Title,Fullname,NICNum,DOB,Gender,Email,MobileNo,DateofAppoinment,DivisionCode,DesigCode,EmpTypeCode,CategoryCode,RetirementDT) Values(	'".$empno1."',". "'" . $title . "', "."'".$fullname."',"."'".$nicnumber."',"."'".$dob."',"."'". $gender . "',". "'" . $email . "', "."'".$mobino."',"."'".$dateofappoinment."',"."'".$row[0]."',"."'".$row[1]."',"."'".$row[2]."',"."'".$row[3]."',"."'".$retirementdate."');";
							mysql_query($query3) or die(mysql_error($con));
							//echo '<script>alert("Record Inserted Successfully");</script>';
						}
					}
				}
				
				
				if(isset($_POST['btnedit'])){ // Fetching variables of the form which travels in URL
					$empno1=$_POST['aaa'];
					$empno2=$_POST['selectemployee'];
					$title=$_POST['txtHint'];
					$fullname=$_POST['txtBlah'];
					$nicnumber=$_POST['txtNIC'];
					$dob=$_POST['dateofbirth'];
					$gender=$_POST['gender'];
					$email=$_POST['txtemail'];
					$mobino=$_POST['txtmobinum'];
					$dateofappoinment=$_POST['dateofappoinment'];
					$division=$_POST['txtdivicode'];
					$designation=$_POST['txtdesicode'];
					$emptype=$_POST['txtemptypecode'];
					$category=$_POST['txtcatcode'];
					$retirementdate=$_POST['retirementdate'];
					
					$query="SELECT e.EmpNo,d.DivisionCode,des.DesigCode,et.EmpTypeCode,c.CategoryCode FROM emp_details_tbl e,division_tbl d,designation_tbl des,emp_type_tbl et,category_tbl c WHERE e.EmpNo='".$empno1."'AND d.Division='$division' AND des.Designation='$designation' AND et.EmpType='$emptype'AND c.Category='$category' ";
					$result=mysql_query($query,$con);
					$row = mysql_fetch_row($result);
					
					$query = mysql_query("Update emp_details_tbl Set Title='$title',Fullname='$fullname',NICNum='$nicnumber',DOB='$dob',Gender='$gender',Email='$email',MobileNo='$mobino',DateofAppoinment='$dateofappoinment',DivisionCode='$row[1]',DesigCode='$row[2]',EmpTypeCode='$row[3]',CategoryCode='$row[4]',RetirementDT='$retirementdate' where EmpNo='$row[0]'");

				}
				
				if(isset($_POST['btndelete'])){ // Fetching variables of the form which travels in URL
					$empno = $_POST['aaa'];
					$query = mysql_query("DELETE FROM emp_details_tbl WHERE EmpNo='$empno'");
				}
				mysql_close($con); // Closing Connection with Server
			?>
			
<?php
mysql_connect('localhost', 'root', '');
mysql_select_db('attend_db');
?>


<div id="wrapp">
	<form id="form1" name="form1" method="post" action="">
		<table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
			<caption><h1>Employee Details </h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                <div class="combobox">
				<tr>
					<th valign="top" scope="row"><div align="left">Employee No</div></th>
					<th valign="top">:</th>

							<td align="left">
							<select name = "selectemployee" id = "selectemployee" onChange = "buttonfun(this.value)">
                                    <?php
										mysql_connect('localhost', 'root', '');
										mysql_select_db('attend_db');
										$values = mysql_query("SELECT EmpNo FROM emp_details_tbl");
										echo "<option >New Employee</option>";
										while ($row = mysql_fetch_array($values)) {
											$setSelect = "";
											echo "<option value='$row[0]' $setSelect>$row[0]</option>";
										}
										
                                    ?>
                            </select>
							<input class="input" type="text" name="aaa" id="aaa" value="" />

							</td>
				</tr>
				</div>
				<tr>
					<th valign="top" scope="row"><div align="left">Title</div></th>
					<th valign="top">:</th>
					<td align="left">
                    
					<input class="input" type="text" name="txtHint" id="txtHint" value="" /></td>
				</tr>
				
				<tr>
					<th valign="top" scope="row"><div align="left">Full Name</div></th>
					<th valign="top">:</th>
					<td align="left">
                    
					<input class="input" type="text" name="txtBlah" id="txtBlah" value="" /></td>
				</tr>
				
				<tr>
					<th valign="top" scope="row"><div align="left">NIC Number</div></th>
					<th valign="top">:</th>
					<td align="left">
                    
					<input class="input" type="text" name="txtNIC" id="txtNIC" value="" /></td>
				</tr>
				
				<tr>
					<th valign="top" scope="row"><div align="left">Date of Birth</div></th>
					<th valign="top">:</th>
					<td align="left">
                    <input id="dateofbirth" value
					<?php
					require_once('calendar/classes/tc_calendar.php');
						$myCalendar = new tc_calendar("dateofbirth", true, true);
						$myCalendar->setIcon("calendar/images/iconCalendar.gif");
						$myCalendar->setPath("calendar/");
						$myCalendar->setYearInterval(1950,2100);
						$myCalendar->dateAllow('1950-01-01', '2100-12-31');
						$myCalendar->setDateFormat('j F Y');
						$myCalendar->setAlignment('left', 'bottom');
						$day = date("d",strtotime('1'));
						$month = date("m",strtotime('2'));
						$year = date("Y",strtotime('2000'));
						$myCalendar->setDate($day,$month,$year);
						$myCalendar->writeScript();
					
					 ?></td>
				</tr>
			
				<tr>
					<th valign="top" scope="row"><div align="left">Gender</div></th>
					<th valign="top">:</th>
					<td align="left">
					<input type='radio' name='gender' value='Male' id='gender1' checked> Male  
					<input type='radio' name='gender' value='Female' id='gender2'> Female 
                    </td>
				
				</tr>
				
				<tr>
					<th valign="top" scope="row"><div align="left">E-mail</div></th>
					<th valign="top">:</th>
					<td align="left">
                    
					<input class="input" type="text" name="txtemail" id="txtemail" value="" /></td>
				</tr>
				
				<tr>
					<th valign="top" scope="row"><div align="left">Mobile Number</div></th>
					<th valign="top">:</th>
					<td align="left">
                    
					<input class="input" type="text" name="txtmobinum" id="txtmobinum" value="" /></td>
				</tr>
				
				<tr>
					<th valign="top" scope="row"><div align="left">Date of Appointment</div></th>
					<th valign="top">:</th>
					<td align="left">
                    
					<input id="dateofappoinment" value
					<?php
					require_once('calendar/classes/tc_calendar.php');
						$myCalendar = new tc_calendar("dateofappoinment", true, true);
						$myCalendar->setIcon("calendar/images/iconCalendar.gif");
						$myCalendar->setPath("calendar/");
						$myCalendar->setYearInterval(1950,2100);
						$myCalendar->dateAllow('1950-01-01', '2100-12-31');
						$myCalendar->setDateFormat('j F Y');
						$myCalendar->setAlignment('left', 'bottom');
						$day = date("d",strtotime('1'));
						$month = date("m",strtotime('2'));
						$year = date("Y",strtotime('2000'));
						$myCalendar->setDate($day,$month,$year);
						$myCalendar->writeScript();
					
					 ?></td>
					 </td>
				</tr>
				
				<tr>
					<th valign="top" scope="row"><div align="left">Division Code</div></th>
					<th valign="top">:</th>

							<td align="left">
							<select name = "txtdivicode" id = "txtdivicode">
                                    <?php
										
										$values = mysql_query("SELECT Division FROM division_tbl");
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
					<th valign="top" scope="row"><div align="left">Designation Code</div></th>
					<th valign="top">:</th>

							<td align="left">
							<select name = "txtdesicode" id = "txtdesicode">
                                    <?php
										
										$values = mysql_query("SELECT Designation FROM designation_tbl");
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
					<th valign="top" scope="row"><div align="left">Employee type Code</div></th>
					<th valign="top">:</th>

							<td align="left">
							<select name = "txtemptypecode" id = "txtemptypecode">
                                    <?php
										
										$values = mysql_query("SELECT EmpType FROM emp_type_tbl");
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
					<th valign="top" scope="row"><div align="left">Category Code</div></th>
					<th valign="top">:</th>

							<td align="left">
							<select name = "txtcatcode" id = "txtcatcode">
                                    <?php
										
										$values = mysql_query("SELECT Category FROM category_tbl");
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
					<th valign="top" scope="row"><div align="left">Retirement Birth</div></th>
					<th valign="top">:</th>
					<td align="left">
                    <input id="retirementdate" value
					<?php
					require_once('calendar/classes/tc_calendar.php');
						$myCalendar = new tc_calendar("retirementdate", true, true);
						$myCalendar->setIcon("calendar/images/iconCalendar.gif");
						$myCalendar->setPath("calendar/");
						$myCalendar->setYearInterval(1950,2100);
						$myCalendar->dateAllow('1950-01-01', '2100-12-31');
						$myCalendar->setDateFormat('j F Y');
						$myCalendar->setAlignment('left', 'bottom');
						$day = date("d",strtotime('1'));
						$month = date("m",strtotime('2'));
						$year = date("Y",strtotime('2000'));
						$myCalendar->setDate($day,$month,$year);
						$myCalendar->writeScript();
					
					 ?></td>
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
					$result1 = mysql_query("SELECT * FROM emp_details_tbl ORDER BY EmpNo");
					if(mysql_num_rows($result1)>0){
					if ($myrow = mysql_fetch_array($result1)) {

					// display list if there are records to display
					echo '<br>';
					echo '<table id = "table2" align="center" border="1" cellspacing="0" cellpadding="0" width=50% >'."\n";
					echo '<tr></tr>';
					echo '<tr bgcolor="#000000" height="30">';   //display headers
					echo '<td class="tbrow" ><div align="center">Employee No</td>';
					echo '<td class="tbrow" ><div align="center">Title</td>';
					echo '<td class="tbrow" ><div align="center">Full Name</td>';
					echo '<td class="tbrow" ><div align="center">NIC No</td>';
					echo '<td class="tbrow" ><div align="center">DOB</td>';
					echo '<td class="tbrow" ><div align="center">Gender</td>';
					echo '<td class="tbrow" ><div align="center">Email</td>';
					echo '<td class="tbrow" ><div align="center">Mobile No</td>';
					echo '<td class="tbrow" ><div align="center">Date of Appointment</td>';
					echo '<td class="tbrow" ><div align="center">Division Code</td>';
					echo '<td class="tbrow" ><div align="center">Designation Code</td>';
					echo '<td class="tbrow" ><div align="center">Employee Type Coode</td>';
					echo '<td class="tbrow" ><div align="center">Category Code</td>';
					echo '<td class="tbrow" ><div align="center">Retirement Date</td>';
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
					<td class="" ><?php echo $myrow['EmpNo']; ?></td>  
					<td class=""><?php echo $myrow['Title']; ?></td>
					<td class=""><?php echo $myrow['Fullname']; ?></td> 
					<td class=""><?php echo $myrow['NICNum']; ?></td> 
					<td class=""><?php echo $myrow['DOB']; ?></td> 
					<td class=""><?php echo $myrow['Gender']; ?></td> 
					<td class=""><?php echo $myrow['Email']; ?></td> 
					<td class=""><?php echo $myrow['MobileNo']; ?></td> 
					<td class=""><?php echo $myrow['DateofAppoinment']; ?></td> 
					<td class=""><?php echo $myrow['DivisionCode']; ?></td> 
					<td class=""><?php echo $myrow['DesigCode']; ?></td> 
					<td class=""><?php echo $myrow['EmpTypeCode']; ?></td> 
					<td class=""><?php echo $myrow['CategoryCode']; ?></td> 
					<td class=""><?php echo $myrow['RetirementDT']; ?></td> 
					
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
</body>
</html>
