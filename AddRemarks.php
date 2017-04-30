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
 

</head>
	<body>
    
	<?php
	
	$descrip=$_POST['descrip'];
	$remarks=$_POST['remarks'];
	//----- Add button------//
	
		if (isset($_POST['btnadd']))
		{
		
	    $pr_dt_cd = $_POST['txtpr_dt_cd'];
		$Remarks = $_POST['txtR'];
		
		
		
		$query=$db->Exe_Qry("UPDATE pr_dtls_tbl SET remarks='$Remarks' WHERE pr_dtls_code='$pr_dt_cd'");
		
header("location:AddRemarks.php");
}


else if(isset($_POST['btnBack']))
{
	header('Location: Actual_date.php');
}



?>


<div id="wrapp">
	<form method="post" action="" onSubmit="return validate_form(this);" class="plain">

<table align="center" class="searchResults">
		<table width="94%" height="297"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
		  <caption><h1>Add Remarks</h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                <div class="combobox">
				<tr>
					<th valign="top" scope="row"><div align="left">Pr details code</div></th>
					<th valign="top">:</th>

							<td align="left">
							<select name = "txtpr_dt_cd" id = "txtpr_dt_cd" onChange = "buttonfun()">
            <?php
				
				$values =$db->Exe_Qry("SELECT pr_dtls_code,	descrip FROM pr_dtls_tbl");
				echo "<option >--Select Pr details code--</option>";
										
				while ($row = mysql_fetch_array($values)) {
					$setSelect = "";
					
				echo "<option value='$row[0]' >$row[0] - $row[1]</option>";
					
				//	echo "<option value='$row[0]' >$row[0] - $row[1]> $setSelect>$row[0]</option>";
				}
			?>
			</td>
    </tr>
                            </select>
						

							</td>
				</tr>
				</div>
				<tr>
					<th valign="top" scope="row"><div align="left">Remarks</div></th>
					<th valign="top">:</th>
					<td align="left">
                    
					<input name="txtR" id="txtR" type="text"></td>
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
					    <input name="btnadd" type="submit" id="btnadd" value="Add" onClick="myfunction()">
					  </font></div>					  </td>
					<td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC"> 
							<input name="btnBack" type="submit" value="Back"  class="button" onClick="document.location..href ='start.php?'" style="width:60px;"/>
				  </font></div>				</tr>  
				</table>
				</td>
			</tr>
			</table>
<div></div>
			
				
				
	</form>
	<br />
	<br />
</div>
</body>
</html>