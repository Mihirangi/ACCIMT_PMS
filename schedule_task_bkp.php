<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Usage Description</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js">
</script>

<?php
session_start();
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db = new DBOperations("attend_db");
$fncs= new FRMOperations();
?>
 
<script>
function buttonfun() {
	var sh_no=document.getElementById("txtsh_no").value;
	
	
	
	
	if (sh_no=="--Select--") {
		alert("Select sh_no")
    }
	else{
		showHint(sh_no);
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
	var url="ajax_Schedule_task.php";
	url=url+"?q="+str;
	
	xmlhttp.onreadystatechange=stateChanged;
	xmlhttp.open("GET",url,true);
	xmlhttp.send(null);
}


 function stateChanged()
{
	if (xmlhttp.readyState==4)
	{
		var response=xmlhttp.responseText;
		//alert(response);// remove this later

	   	var update = new Array();

		if(response.indexOf('|$|'!= -1)) {
				update = response.split('|$|');
				
				
				//document.getElementById("txtusage_no").value=update[1];
				document.getElementById("txtsh_des").value=update[1];
				document.getElementById("txtdate_range").value=update[2];
			
		}else{
				// The format is not as per what you thought
				// S do some procesing if you need
		}
	}
}


</script>
</head>
	<body>
    
	<?php
	//-------conect to the database-----//
	

	//----- Delete button------//
	  if (isset($_GET['cmd']) && $_GET['cmd']=="delete")
  {
	$sh_no = $_GET['sh_no'];
	$delQuery  =$db->Exe_Qry("DELETE FROM shdl_task_tbl WHERE sh_no ='$sh_no'");
	mysql_query($delQuery);
  }
  if(isset($_POST['btndelete'])){
 $sh_no = $_POST['txtsh_no'];
	  $delQuery = "DELETE FROM shdl_task_tbl WHERE sh_no ='$sh_no'";
	 
	  	mysql_query($delQuery);
}

/////////////////////////////////////////////////////

	//----- Add button------//
	
		if (isset($_POST['btnadd']))
		{
		
	    $sh_no = $_POST['txtsh_no'];
		$sh_des = $_POST['txtsh_des'];
		$date_range=$_POST['txtdate_range'];
		
		
		$query=$db->Exe_Qry("INSERT INTO shdl_task_tbl SET sh_des='$sh_des' ,date_range='$date_range'");
		mysql_query($query);		
header("location:shedule_task.php");
}

	//$query1 =$db->Exe_Qry("SELECT usage_no,usage_nm,usg_descrip");
	//	mysql_query($query1);
///////////////////////////////////////////////////////

	//----- Edit button------//
	
		if (isset($_POST['btnEdit']))
		{
		  $sh_no = $_POST['txtsh_no'];
		$sh_des = $_POST['txtsh_des'];
		$date_range=$_POST['txtdate_range'];
		

	$query22="SELECT  sh_no FROM shdl_task_tbl WHERE sh_no='$sh_no' ";
		
		

		$query2 ="UPDATE shdl_task_tbl SET sh_des='$sh_des' ,date_range='$date_range'
		WHERE sh_no='$sh_no'";
		
		mysql_query($query2);
		//header("location:shedule_task.php");
	}
?>


<div id="wrapp">
	<form method="post" action="" onSubmit="return validate_form(this);" class="plain">

<table align="center" class="searchResults">
		<table width="94%" height="297"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
		  <caption><h1>Schedule Details</h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                <div class="combobox">
				<tr>
					<th valign="top" scope="row"><div align="left">Schedule No</div></th>
					<th valign="top">:</th>

							<td align="left">
							<select name = "txtsh_no" id = "txtsh_no" onChange = "buttonfun()">
            <?php
				
				$values =$db->Exe_Qry("SELECT sh_no FROM shdl_task_tbl");
				echo "<option >--New Schedule--</option>";
										
				while ($row = mysql_fetch_array($values)) {
					$setSelect = "";
					echo "<option value='$row[0]' $setSelect>$row[0]</option>";
				}
			?>
			</td>
    </tr>
                            </select>
						

							</td>
				</tr>
				</div>
				<tr>
					<th valign="top" scope="row"><div align="left">Schedule Description</div></th>
					<th valign="top">:</th>
					<td align="left">
                    
					<input name="txtsh_des" id="txtsh_des" type="text"></td>
				</tr>
				
	<tr>
					<th valign="top" scope="row"><div align="left">Schedule Date Range</th>
					<th valign="top">:</th>
                    <td align="left">
                    
					<input name="txtdate_range" id="txtdate_range" type="text"></td>
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
							<input name="btnadd" type="submit" id="btnaddid" value="Add" onClick="myfunction()">
							</font></div>
						</td>
					<td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC"> 
							<input name="btnEdit" type="submit" value="Edit" onClick="document.location.href ='Schedule_task.php?pr_no=<?php echo $row['sh_no'] ?>'" class="button" style="width:60px;"/>
							</font></div>
			
						   <td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC">
						   <input name="btndelete" id="btndelete" type="submit" value="Delete" class="button" onClick="document.location..href ='Schedule_task.php?cmd=delete&pr_no=<?php echo $row['sh_no'] ?>'" style="width:60px;" />
							</font></div>
						</td>
				</tr>  
  
						
						
				
				</table>
				</td>
			</tr>
			</table>
<br/>
			<br/>
			
		
				
				<br/>
			<br/>
			
			<table id="wrapped" align="center" cellspacing="3" cellpadding="5" border="0">
			<tr>
				<th>
				
				
				<?php 
				
				//-------------- Display the data in the Usage Table-----------------------//
					$result1=$db->Exe_Qry("SELECT * FROM shdl_task_tbl ORDER BY sh_no");
					if(mysql_num_rows($result1)>0){
					if ($myrow = mysql_fetch_array($result1)) {

					// display list if there are records to display
					echo '<br>';
					echo '<table id = "table2" align="center" border="1" cellspacing="0" cellpadding="0" width=50% >'."\n";
					echo '<tr></tr>';
					echo '<tr bgcolor="#FFFFFF" height="30">';   //display headers
					echo '<td class="tbrow" ><div align="center">Schedule No</td>';
					
					echo '<td class="tbrow" ><div align="center">Schedule Description</td>';
					echo '<td class="tbrow" ><div align="center">Schedule Date Range</td>';
					echo "</tr>\n";

					//display list if there are records to display
					$i=1;
					do {  
						// row colors
						if ($i % 2 != 0) # An odd row 
							$bla = "#000000"; 
						else # An even row 
							$bla = "#000000"; 
				?>
	 
				<tr>
                	<td class="" ><?php echo $myrow['sh_no']; ?></td> 
					<td class="" ><?php echo $myrow['sh_des']; ?></td>  
				<td class="" ><?php echo $myrow['date_range']; ?></td>
					
					
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