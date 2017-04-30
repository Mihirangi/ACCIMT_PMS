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
	
	<script>
		
	</script>
    
	<?php
	
	if (isset($_POST['txtsh_no']) && ($_POST['txtsh_no'] != "new")){
		$sh_no = $_POST['txtsh_no'];
	}else{
		//unset $sh_no;
	}if (isset($_POST['txtsh_des'])){
		$sh_des = $_POST['txtsh_des'];
	}else{
		$sh_des = "";
	}if (isset($_POST['txtdate_range'])){
		$date_range=$_POST['txtdate_range'];
	}else{
		$date_range = "";
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////
//----- Edit button------//
	
		if (isset($_POST['btnEdit'])){
			if($sh_des != null && $date_range != null){
				//$query22="SELECT  sh_no FROM shdl_task_tbl WHERE sh_no='$sh_no' ";
				$query2 ="UPDATE pc_shdl_task_tbl SET sh_des='$sh_des' ,date_range='$date_range'WHERE sh_no='$sh_no'";
				mysql_query($query2);
				echo '<script> alert("Editing Successfuly")</script>';
			}else{
				echo '<script> alert("Fill the Form Properly")</script>';
			}
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////
//----- ajax part------//
		if (isset($_POST['txtsh_no']) && ($_POST['txtsh_no'] != "new")){
			$res=$db->Exe_Qry("SELECT * FROM pc_shdl_task_tbl where sh_no ='$sh_no' ");
			if ($db->Row_Count($res) == 1){
				$vallst=$db->Next_Record($res);
				$sh_des = $vallst['sh_des'];
				$date_range = $vallst['date_range'];
				$butOp=true;
			}
		}else if (isset($_POST['txtsh_no']) && ($_POST['txtsh_no'] != "new")){
				$sh_des = "";
				$date_range = "";
				$butOp=false;
		}
////////////////////////////////////////////////////////////////////////////////////////////////////////
//----- Add button------//
	
		if (isset($_POST['btnadd'])){
			if($sh_des != null && $date_range != null){
				$query=$db->Exe_Qry("INSERT INTO pc_shdl_task_tbl SET sh_des='$sh_des' ,date_range='$date_range'");
				mysql_query($query);
				$butOp=true;
				echo '<script> alert("Adding Successfuly")</script>';
			}else{
				echo '<script> alert("Fill the Form Properly")</script>';
			}	
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////
//----- Delete button------//
		if (isset($_GET['cmd']) && $_GET['cmd']=="delete"){
			$delQuery  =$db->Exe_Qry("DELETE FROM pc_shdl_task_tbl WHERE sh_no ='$sh_no'");
			mysql_query($delQuery);
		}
		if(isset($_POST['btndelete'])){
			$delQuery = "DELETE FROM pc_shdl_task_tbl WHERE sh_no ='$sh_no'";
			mysql_query($delQuery);
			echo '<script> alert("Deleting Successfuly")</script>';
			$sh_des = "";
			$date_range = "";
			$butOp=false;
		}
////////////////////////////////////////////////////////////////////////////////////////////////////////

?>


<div id="wrapp">
	<form name ="form1" method="post" action="" onSubmit="return validate_form(this);" class="plain">

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
							<select name = "txtsh_no" id = "txtsh_no" onchange = "document.form1.submit()">
            <?php
				
				$values =$db->Exe_Qry("SELECT sh_no FROM pc_shdl_task_tbl");
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
                    
					<input name="txtsh_des" id="txtsh_des" type="text" value="<?php echo $sh_des;?>"></td>
				</tr>
				
	<tr>
					<th valign="top" scope="row"><div align="left">Schedule Date Range</th>
					<th valign="top">:</th>
                    <td align="left">
                    
					<input name="txtdate_range" id="txtdate_range" type="text" value="<?php echo $date_range;?>"></td>
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
							<input name="btnadd" type="submit" id="btnadd" value="Add" <?php if ($butOp){echo 'disabled="disabled"';}?>>
							</font></div>
						</td>
					<td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC"> 
							<input name="btnEdit" id="btnEdit" type="submit" value="Edit" <?php if ($butOp == false){echo 'disabled="disabled"';}?>  class="button" style="width:60px;"/>
							</font></div>
			
						   <td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC">
						   <input name="btndelete" id="btndelete" type="submit" value="Delete" <?php if ($butOp == false){echo 'disabled="disabled"';}?> class="button" style="width:60px;" />
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
					$result1=$db->Exe_Qry("SELECT * FROM pc_shdl_task_tbl ORDER BY sh_no");
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
				
		   <script>
				document.getElementById('txtsh_no').value="<?php echo $sh_no;?>";
				if (document.getElementById("txtsh_no").value != "<?php  echo $sh_no;?>" || document.getElementById("txtsh_no").value==""){
					document.getElementById("txtsh_no").value= "new";
					document.getElementById("txtsh_des").value= "";
					document.getElementById("txtdate_range").value= "";
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