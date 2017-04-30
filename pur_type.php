 <!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Purchase Description</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js">
</script>


</head>
	<body onLoad="sessSet('pur_type.php')" >
    
	<?php
	require_once ("phpfncs/Database.php");
	require_once ("phpfncs/Funcs.php");
	$db = new DBOperations("attend_db");
	$butOp=false;
	if (isset($_POST['txtpr_type_no']) && ($_POST['txtpr_type_no'] != "new")){
		$PurType =  $_POST['txtpr_type_no'];
	}else{
		//unset $PurType;
	}if(isset($_POST['txtdescription'])){
		$description = $_POST['txtdescription'];
	}else{
		$description ="";
	}if(isset($_POST['txtshort_name'])){
		$short_name = $_POST['txtshort_name'];
	}else{
		$short_name ="";
	}
//////////////////////////////////////////////////////////////////////////////////////
	//----- Edit button------//
	
		if (isset($_POST['btnEdit'])){
			if($description != null && $short_name != null){
				 $db->Exe_Qry("UPDATE pc_pr_type  SET description='$description', short_name='$short_name' WHERE pr_type_no='$PurType'");
				 echo '<script> alert("Updating Successfuly")</script>';
			}else{
				 echo '<script> alert("Fill the Form Properly")</script>';
			}
		
	}
///////////////////////////////////////////////////////////////////////////////////
	
	//----- ajax part------//
      if (isset($_POST['txtpr_type_no']) && ($_POST['txtpr_type_no'] != "new")){
			$res=$db->Exe_Qry("SELECT * FROM pc_pr_type where pr_type_no ='$PurType' ");
			if ($db->Row_Count($res) == 1){
				$vallst=$db->Next_Record($res);
				$description = $vallst['description'];
				$short_name = $vallst['short_name'];
				$butOp=true;
			}
		}else if (isset($_POST['txtpr_type_no']) && ($_POST['txtpr_type_no'] != "new")){
				$description = "";
				$short_name = "";
				$butOp=false;
		}
		
//////////////////////////////////////////////////////////////////////////////////

	//----- Add button------//
	
		if (isset($_POST['btnadd'])){
			if($description != null && $short_name != null){
				$db->Exe_Qry("INSERT INTO pc_pr_type SET description='$description',short_name='$short_name'");
				echo '<script> alert("Adding Successfuly")</script>';
				$butOp=true;
			}else{
				echo '<script> alert("Fill the Form Properly")</script>';
			}
		}
/////////////////////////////////////////////////////////////////////////////////////

	//----- Delete button------//

	if(isset($_POST['btndelete'])){
			$db->Exe_Qry("DELETE FROM pc_pr_type WHERE pr_type_no ='$PurType'");
			echo '<script> alert("Deleting Successfuly")</script>';
			$description ="";
			$short_name ="";
			$butOp=false;
	}

/////////////////////////////////////////////////////////////////////////////////////
	
?>


<div id="wrapp">
	<form name = "form1" method="post" action="" onSubmit="return formvalidate()" class="plain">

<table align="center" class="searchResults">
		<table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
			<caption>
			<h1>Purchase Type</h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                <div class="combobox">
				<tr>
					<th valign="top" scope="row"><div align="left">Purchase Type</div></th>
					<th valign="top">:</th>

							<td align="left">
							<select name = "txtpr_type_no" id = "txtpr_type_no" onchange = "document.form1.submit()">
            <?php
				mysql_connect('localhost', 'root', '');
				mysql_select_db('procurement_db');
				
				$values = mysql_query("SELECT * FROM pc_pr_type");
				echo "<option >--New Entry--</option>";
										
				while ($row = mysql_fetch_array($values)) {
					$setSelect = "";
					echo "<option value='$row[0]'>$row[1]</option>";
				}
			?>
			</td>
    </tr>
                            </select>
						

							</td>
				</tr>
				</div>
				<tr>
					<th valign="top" scope="row"><div align="left">Description</div></th>
					<th valign="top">:</th>
					<td align="left">
                    
					<input name="txtdescription" id="txtdescription" type="text" value="<?php  echo $description; ?>"></td>
				</tr>
				
				<tr>
					<th valign="top" scope="row"><div align="left">Short Name</div></th>
					<th valign="top">:</th>
					<td align="left">
                    
					<input name="txtshort_name" id="txtshort_name" type="text" value="<?php echo $short_name;?>"></td>
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
							<input name="btnadd" type="submit" id="btnadd" value="Add" onClick="" <?php if ($butOp){echo 'disabled="disabled"';}?>>
							</font></div>
						</td>
					<td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC"> 
							<input name="btnEdit" id="btnEdit" type="submit" value="Edit" <?php if ($butOp == false){echo 'disabled="disabled"';}?>  class="button" style="width:60px;"/>
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
			
			<table id="wrapped" align="center" cellspacing="3" cellpadding="5" border="0">
			<tr>
				<th>
				
				
				<?php 
				
				//-------------- Display the data in the Usage Table-----------------------//
					$result1 = mysql_query("SELECT * FROM pc_pr_type ORDER BY pr_type_no");
					if(mysql_num_rows($result1)>0){
					if ($myrow = mysql_fetch_array($result1)) {

					// display list if there are records to display
					echo '<br>';
					echo '<table id = "table2" align="center" border="1" cellspacing="0" cellpadding="0" width=50% >'."\n";
					echo '<tr></tr>';
					echo '<tr height="30">';   //display headers
					echo '<td class="tbrow" ><div align="center">Pr No</td>';
					echo '<td class="tbrow" ><div align="center">Description</td>';
					echo '<td class="tbrow" ><div align="center">short_name</td>';
					
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
                	<td class="" ><?php echo $myrow['pr_type_no']; ?></td> 
					<td class="" ><?php echo $myrow['description']; ?></td>  
					<td class=""><?php echo $myrow['short_name']; ?></td>
					
					
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
			document.getElementById('txtpr_type_no').value="<?php echo $PurType;?>";
			if (document.getElementById("txtpr_type_no").value != "<?php  echo $PurType;?>" || document.getElementById("txtpr_type_no").value==""){
					document.getElementById("txtpr_type_no").value= "new";
					document.getElementById("txtdescription").value= "";
					document.getElementById("txtshort_name").value= "";
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