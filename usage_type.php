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
$butOp=false;
?>
 

</head>
	<body>
    
	<?php
	
	if (isset($_POST['txtusage_no']) && ($_POST['txtusage_no'] != "new")){
		$usage_no = $_POST['txtusage_no'];
	}else{
		//unset $usage_no;
	}if (isset($_POST['txtusage_nm'])){
		$usage_nm = $_POST['txtusage_nm'];
	}else{
		$usage_nm = "";
	}if (isset($_POST['txtusg_descrip'])){
		$usg_descrip = $_POST['txtusg_descrip'];
	}else{
		$usg_descrip = "";
	}
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////

	//----- Edit button------//
	
		if (isset($_POST['btnEdit'])){
			if($usage_nm != null && $usg_descrip != null){
				//$query22=$db->Exe_Qry("SELECT  usage_no FROM usage_dtls_tbl WHERE usage_no='$usage_no' ");
				//mysql_query($query22);
				//$row22=mysql_fetch_array($result22);
				$query2 =$db->Exe_Qry( "UPDATE pc_usage_dtls_tbl SET usage_nm='$usage_nm', usg_descrip='$usg_descrip' WHERE usage_no='$usage_no'");
				mysql_query($query2);
				echo '<script> alert("Editing Successfuly")</script>';
			}else{
				echo '<script> alert("Fill the Form Properly")</script>';
			}
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////
	
		//----- ajax part------//
	if (isset($_POST['txtusage_no']) && ($_POST['txtusage_no'] != "new")){
			$res=$db->Exe_Qry("SELECT * FROM pc_usage_dtls_tbl where usage_no ='$usage_no' ");
			if ($db->Row_Count($res) == 1){
				$vallst=$db->Next_Record($res);
				$usage_nm = $vallst['usage_nm'];
				$usg_descrip = $vallst['usg_descrip'];
				$butOp=true;
			}
	}else if (isset($_POST['txtusage_no']) && ($_POST['txtusage_no'] != "new")){
				$usage_nm = "";
				$usg_descrip = "";
				$butOp=false;
	}
	
//////////////////////////////////////////////////////////////////////////////////////////////////////
	//----- Add button------//
	
		if (isset($_POST['btnadd'])){
			if($usage_nm != null && $usg_descrip != null){
				$query=$db->Exe_Qry("INSERT INTO pc_usage_dtls_tbl SET usage_nm='$usage_nm',usg_descrip='$usg_descrip'");
				mysql_query($query);
				$butOp=true;
				echo '<script> alert("Adding Successfuly")</script>';
			}else{
				echo '<script> alert("Fill the Form Properly")</script>';
			}
	}

//////////////////////////////////////////////////////////////////////////////////////////////////////	
	//----- Delete button------//
	if (isset($_GET['cmd']) && $_GET['cmd']=="delete"){
			$delQuery  =$db->Exe_Qry("DELETE FROM pc_usage_dtls_tbl WHERE usage_no ='$usage_no'");
			mysql_query($delQuery);
	}
	if(isset($_POST['btndelete'])){
			$delQuery = "DELETE FROM pc_usage_dtls_tbl WHERE usage_no ='$usage_no'";
			mysql_query($delQuery);
			echo '<script> alert("Delete Successfuly")</script>';
			$usage_nm = "";
			$usg_descrip = "";
			$butOp=false;
	}

/////////////////////////////////////////////////////
	
?>


<div id="wrapp">
	<form name = "form1" method="post" action="" onSubmit="return validate_form(this);" class="plain">

<table align="center" class="searchResults">
		<table width="94%" height="297"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
		  <caption><h1>Usage Details</h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                <div class="combobox">
				<tr>
					<th valign="top" scope="row"><div align="left">Usage No</div></th>
					<th valign="top">:</th>

							<td align="left">
							<select name = "txtusage_no" id = "txtusage_no" onchange = "document.form1.submit()">
            <?php
				
				$values =$db->Exe_Qry("SELECT * FROM pc_usage_dtls_tbl");
				echo "<option >--New Entry--</option>";
										
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
					<th valign="top" scope="row"><div align="left">Usage Name</div></th>
					<th valign="top">:</th>
					<td align="left">
                    
					<input name="txtusage_nm" id="txtusage_nm" type="text" value="<?php echo $usage_nm;?>"></td>
				</tr>
				
				<tr>
					<th valign="top" scope="row"><div align="left">Usage Description</div></th>
					<th valign="top">:</th>
					<td align="left">
                    
					<input name="txtusg_descrip" id="txtusg_descrip" type="text" value="<?php echo $usg_descrip;?>"></td>
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
							<input name="btnadd" type="submit" id="btnadd" value="Add" <?php if ($butOp){echo 'disabled="disabled"';}?> ">
							</font></div>
						</td>
					<td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC"> 
							<input name="btnEdit" type="submit" value="Edit"  <?php if ($butOp == false){echo 'disabled="disabled"';}?> class="button" style="width:60px;"/>
							</font></div>
			
						   <td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC">
						   <input name="btndelete" id="btndelete" type="submit" value="Delete" class="button" <?php if ($butOp == false){echo 'disabled="disabled"';}?> style="width:60px;" />
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
					$result1=$db->Exe_Qry("SELECT * FROM pc_usage_dtls_tbl ORDER BY usage_no");
					if(mysql_num_rows($result1)>0){
					if ($myrow = mysql_fetch_array($result1)) {

					// display list if there are records to display
					echo '<br>';
					echo '<table id = "table2" align="center" border="1" cellspacing="0" cellpadding="0" width=50% >'."\n";
					echo '<tr></tr>';
					echo '<tr height="30">';   //display headers
					echo '<td class="tbrow" ><div align="center">Usage No</td>';
					echo '<td class="tbrow" ><div align="center">Usage name</td>';
					echo '<td class="tbrow" ><div align="center">Usage Description</td>';
					
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
                	<td class="" ><?php echo $myrow['usage_no']; ?></td> 
					<td class="" ><?php echo $myrow['usage_nm']; ?></td>  
					<td class=""><?php echo $myrow['usg_descrip']; ?></td>
					
					
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
				
		<script>
			document.getElementById('txtusage_no').value="<?php echo $usage_no;?>";
			if (document.getElementById("txtusage_no").value != "<?php  echo $usage_no;?>" || document.getElementById("txtusage_no").value==""){
					document.getElementById("txtusage_no").value= "new";
					document.getElementById("txtusage_nm").value= "";
					document.getElementById("txtusg_descrip").value= "";
					document.getElementById("btnadd").disabled=false;
					document.getElementById("btnEdit").disabled=true;
					document.getElementById("btndelete").disabled=true;
			}
		</script>			
	

				
				
	</form>
	<br />
	<br />
</div>
</body>
</html>