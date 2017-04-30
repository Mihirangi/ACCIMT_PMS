<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Category Details</title>
<?php

session_start();

if (!isset($_SESSION['login_type']))
{
header('Location: lgin.php');
}
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations("ttttt");
$fncs= new FRMOperations();
?>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script>

function buttonfun(str) {
	var temp=document.getElementById("selectcategory").value;
	if (temp=="New Category") {
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
	var url="getcategory.php";
	url=url+"?q="+str;
	//url=url+"?r="+str2;
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
		//var test = new Array();
		if(response.indexOf('|$|'!= -1)) {
				update = response.split('|$|');
				// The update Array will contain update[0] = Hello,update[1] = World
				document.getElementById("selectcategory").value=update[0];
				document.getElementById("categoryname").value=update[0];// categoryname should be the Id of an text box I assume
					
				document.getElementById("intimeHours").value=TOGetHrsandMin(update[1]).h;
				document.getElementById("intimeMinutes").value=TOGetHrsandMin(update[1]).m;// similar to above comment			
				
				var minutessum=parseInt(TOGetHrsandMin(update[1]).m)+parseInt(update[3]);
				var tempminutes=minutessum%60;
				var temphours=parseInt(update[2])+parseInt(TOGetHrsandMin(update[1]).h)+(minutessum-tempminutes)/60;
				
				document.getElementById("outtimeHours").value=temphours;//
				document.getElementById("outtimeMinutes").value=tempminutes;
				
				document.getElementById("adjusttimeHours").value=TOGetHrsandMin(update[4]).h;
				document.getElementById("adjusttimeMinutes").value=TOGetHrsandMin(update[4]).m;
				
				document.getElementById("latetimeHours").value=TOGetHrsandMin(update[5]).h;
				document.getElementById("latetimeMinutes").value=TOGetHrsandMin(update[5]).m;
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



<body onLoad="sessSet('category.php')">
	<?php
		$con = mysql_connect("localhost", "root", "pwditlinux"); // Establishing Connection with Server
		$db = mysql_select_db("attend_db", $con); // Selecting Database from Server
	?>
			<?php		
				if(isset($_POST['btnadd'])){
				
					if (empty($_POST["categoryname"])){
						echo '<script>alert("Please Fill the Data");</script>';
					}
					else{
						$category=$_POST['categoryname'];
				
						$intimeH=$_POST['intimeHours'];
						$intimeM=$_POST['intimeMinutes'];
						$intime=$intimeH.':'.$intimeM.':'.'00';
								
						$outtimeH=$_POST['outtimeHours'];
						$outtimeM=$_POST['outtimeMinutes'];
						$outtime=$outtimeH.':'.$outtimeM.':'.'00';

						$insumMin=(int)$intimeH*60+$intimeM;
						$outsumMin=(int)$outtimeH*60+$outtimeM;
						$sumMin=$outsumMin-$insumMin;
								
						$workH=($sumMin-$sumMin%60)/60;
						$workM=$sumMin%60;
								
						$adjusttime=$_POST['adjusttimeHours'].':'.$_POST['adjusttimeMinutes'].':'.'00';
						$latetime=$_POST['latetimeHours'].':'.$_POST['latetimeMinutes'].':'.'00';
						
						$query = "select Category from category_tbl where Category='".$category."'";
						$result = mysql_query($query,$con);

						
						if((int)$intimeH>(int)$outtimeH){
								
									echo "<script> alert('Please Insert Correct Data'); </script>";
							
								
						}
						else{
						if(mysql_num_rows($result)==0){
						
								$query2 = "Insert category_tbl(Category,InTime,OutTimeH,OutTimeM,AdjestTime,LateTime) Values(	'". $category . "',". "'" . $intime . "',"."'". $workH . "',"."'".$workM."',"."'".$adjusttime."',"."'".$latetime."');";
								mysql_query($query2) or die(mysql_error($con));
							}
						}
						
					}
				}
				
				
				if(isset($_POST['btnedit'])){ // Fetching variables of the form which travels in URL
					$selectcategory=$_POST['selectcategory'];
					$category=$_POST['categoryname'];
			
					$intimeH=$_POST['intimeHours'];
					$intimeM=$_POST['intimeMinutes'];
					$intime=$intimeH.':'.$intimeM.':'.'00';
								
					$outtimeH=$_POST['outtimeHours'];
					$outtimeM=$_POST['outtimeMinutes'];
					$outtime=$outtimeH.':'.$outtimeM.':'.'00';

					$insumMin=(int)$intimeH*60+$intimeM;
					$outsumMin=(int)$outtimeH*60+$outtimeM;
					$sumMin=$outsumMin-$insumMin;
								
					$workH=($sumMin-$sumMin%60)/60;
					$workM=$sumMin%60;
								
					$adjusttime=$_POST['adjusttimeHours'].':'.$_POST['adjusttimeMinutes'].':'.'00';
					$latetime=$_POST['latetimeHours'].':'.$_POST['latetimeMinutes'].':'.'00';

					$query="SELECT CategoryCode FROM category_tbl WHERE Category='$selectcategory'";
					$result=mysql_query($query,$con);
					$row = mysql_fetch_row($result);
					
					$query = mysql_query("Update category_tbl Set Category='$category',InTime='$intime',OutTimeH='$workH',OutTimeM='$workM',AdjestTime='$adjusttime',LateTime='$latetime' WHERE CategoryCode='$row[0]'");
				}
				
				if(isset($_POST['btndelete'])){ // Fetching variables of the form which travels in URL
					$category = $_POST['selectcategory'];
					$query = mysql_query("DELETE FROM category_tbl WHERE Category='$category'");
				}
				
			?>
			
<div id="wrapp">
	<form id="form1" name="form1" method="post" action="">
		<table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
			<caption><h1>Category Details </h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
					
                <tr>
					<th valign="top" scope="row"><div align="left">Category Code</div></th>
					<th valign="top">:</th>

							<td align="left">
							<select name = "selectcategory" id = "selectcategory" onChange = "buttonfun(this.value)">
                                    <?php
										
										$values = mysql_query("SELECT Category FROM category_tbl");
										echo "<option >New Category</option>";
										while ($row = mysql_fetch_array($values)) {

											$setSelect = "";
											echo "<option value='$row[0]' $setSelect>$row[0]</option>";
										}
										
                                    ?>
                            </select>
							</td>
				</tr>
				
				<tr>
					<th valign="top" scope="row"><div align="left">Category</div></th>
					<th valign="top">:</th>
					<td align="left">
                    
					<input class="input" type="text" name="categoryname" id="categoryname" value="" /></td>
				</tr>
				
				<tr>
					<th valign="top" scope="row"><div align="left">In Time</div></th>
					<th valign="top">:</th>
					<td align="left">
         
					<select name="intimeHours" id="intimeHours" onchange="TimeChangerUp()">		
					<?php
						echo "<option value='0'>00</option>";
						for ($x=1; $x<=24; $x++)
						{
							echo '<option value="'.$x.'">'.$x.'</option>';
						}
					?>
					</select>
					
					<?php 
						echo ":H";
					?>
					
					<select name = "intimeMinutes" id = "intimeMinutes" onchange="TimeChangerUp()">
						<?php
							echo "<option value='0'>00</option>";
							for ($x=1; $x<=59; $x++)
							{
								echo '<option value="'.$x.'">'.$x.'</option>';
							}
										   
						?>		   
					</select>
					
					<?php 
						echo ":M";
					?>
				</tr>
				
				<tr>
					<th valign="top" scope="row"><div align="left">Out Time</div></th>
					<th valign="top">:</th>
					<td align="left">
         
					<select name="outtimeHours" id="outtimeHours" onchange="TimeChangerUp()">		
					<?php
						echo "<option vale='0'>00</option>";
						for ($x=1; $x<=24; $x++)
						{
							echo '<option value="'.$x.'">'.$x.'</option>';
						}
					?>
					</select>
					
					<?php 
						echo ":H";
					?>
					
					<select name = "outtimeMinutes" id = "outtimeMinutes" onchange="TimeChangerUp()">
						<?php
							echo "<option value='0'>00</option>";
							for ($x=1; $x<=59; $x++)
							{
								echo '<option value="'.$x.'">'.$x.'</option>';
							}
										   
						?>		   
					</select>
					
					<?php 
						echo ":M";
					?>
				</tr>
				
				<tr>
					<th valign="top" scope="row"><div align="left">Adjust Time</div></th>
					<th valign="top">:</th>
					<td align="left">
         
					<select name="adjusttimeHours" id="adjusttimeHours" onchange="TimeChangerUp()">		
					<?php
						echo "<option vale='0'>00</option>";
						for ($x=1; $x<=24; $x++)
						{
							echo '<option value="'.$x.'">'.$x.'</option>';
						}
					?>
					</select>
					
					<?php 
						echo ":H";
					?>
					
					<select name = "adjusttimeMinutes" id = "adjusttimeMinutes" onchange="TimeChangerUp()">
						<?php
							echo "<option value='0'>00</option>";
							for ($x=1; $x<=59; $x++)
							{
								echo '<option value="'.$x.'">'.$x.'</option>';
							}
										   
						?>		   
					</select>
					
					<?php 
						echo ":M";
					?>
				</tr>
				
				<tr>
					<th valign="top" scope="row"><div align="left">Late Time</div></th>
					<th valign="top">:</th>
					<td align="left">
         
					<select name="latetimeHours" id="latetimeHours" onchange="TimeChangerUp()">		
					<?php
						echo "<option vale='0'>00</option>";
						for ($x=1; $x<=24; $x++)
						{
							echo '<option value="'.$x.'">'.$x.'</option>';
						}
					?>
					</select>
					
					<?php 
						echo ":H";
					?>
					
					<select name = "latetimeMinutes" id = "latetimeMinutes" onchange="TimeChangerUp()">
						<?php
							echo "<option value='0'>00</option>";
							for ($x=1; $x<=59; $x++)
							{
								echo '<option value="'.$x.'">'.$x.'</option>';
							}
										   
						?>		   
					</select>
					
					<?php 
						echo ":M";
					?>
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
					$result1 = mysql_query("SELECT * FROM category_tbl ORDER BY CategoryCode");
					if(mysql_num_rows($result1)>0){
					if ($myrow = mysql_fetch_array($result1)) {

					// display list if there are records to display
					echo '<br>';
					echo '<table id = "table2" align="center" border="1" cellspacing="0" cellpadding="0" width=50% >'."\n";
					echo '<tr></tr>';
					echo '<tr bgcolor="#000000" height="30">';   //display headers
					echo '<td class="tbrow" ><div align="center">Category Code</td>';
					echo '<td class="tbrow" ><div align="center">Category Name</td>';
					echo '<td class="tbrow" ><div align="center">In Time</td>';
					echo '<td class="tbrow" ><div align="center">Out Time</td>';
					echo '<td class="tbrow" ><div align="center">Adjust Time</td>';
					echo '<td class="tbrow" ><div align="center">Late Time</td>';
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
					<td class="" ><?php echo $myrow['CategoryCode']; ?></td>  
					<td class=""><?php echo $myrow['Category']; ?></td>
					<td class=""><?php echo $myrow['InTime']; ?></td> 
					
					<td class="">
						<?php $selectedTime=$myrow['InTime'];
							  $hrs=$myrow['OutTimeH'];
							  $min=$myrow['OutTimeM'];
							  $endTime=strtotime("+$hrs hour +$min minutes",strtotime($selectedTime));
							  echo date('H:i:s',$endTime);?>
					</td>
							  
					<td class=""><?php echo $myrow['AdjestTime']; ?></td> 
					<td class=""><?php echo $myrow['LateTime']; ?></td> 
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
