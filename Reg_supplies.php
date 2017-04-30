<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Reg_supplies</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js">
</script><script type="text/javascript">

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
     
        
    $item_code = $_POST['item_code'];
    $description = $_POST['description'];
        
	
	if (isset($_POST['item_code']) && ($_POST['item_code'] != "new")){
		$item_code = $_POST['item_code'];
	}else{
		//unset $pro_id;
	}if (isset($_POST['description'])){
		$description = $_POST['description'];
	}else{
		$description = "";
	}
	
	
	
	
	if (isset($_POST['item_code']) && ($_POST['item_code'] != "new")){		
			$res=$db->Exe_Qry("SELECT * FROM reg_sup where item_code ='$item_code' ");
			if ($db->Row_Count($res) == 1){
				$vallst=$db->Next_Record($res);
				$description = $vallst['description'];
				
				
				$butOp=true;
			}
	}else if (isset($_POST['item_code']) && ($_POST['item_code'] == "new")){
				$descirption = "";
				
	}
//////////////////////////////////////////////////////////////////////////////////////////////////////	
	//----- Edit button------//
	
        $item_code = $_POST['item_code'];
        $description = $_POST['description'];
        
		if (isset($_POST['btnEdit'])){
			if($description != null){
					$query2 =mysql_query( "UPDATE reg_sup SET description='$description' WHERE item_code='$item_code'"); 
					echo '<script> alert("Editing Successfuly");
                    window.location = "Reg_supplies.php";
                    </script>';
                    
			}else{
					echo '<script> alert("Fill the Form Properly")</script>';
			}
	} 
//////////////////////////////////////////////////////////////////////////////////////////////////////	
	//----- ajax part------//
	if (isset($_POST['item_code']) && ($_POST['item_code'] != "new")){
		$res=$db->Exe_Qry("SELECT * FROM reg_sup where item_code ='$item_code' ");
			if ($db->Row_Count($res) == 1){
				$vallst=$db->Next_Record($res);
				$description = $vallst['description'];
				$butOp=true;
			}		
	}else if (isset($_POST['item_code']) && ($_POST['item_code'] != "")){
				$description = $vallst['description'];
				//$butOp=false;
	}
//////////////////////////////////////////////////////////////////////////////////////////////////////	
//----- Add button------//
	
		if (isset($_POST['btnadd'])){
			if($description != null){
				$query=$db->Exe_Qry("INSERT INTO reg_sup SET description='$description'");
				mysql_query($query);
				$butOp=true;
				echo '<script> alert("Adding Successfuly");
                window.location = "Reg_supplies.php";
                </script>';
			}else{
				echo '<script> alert("Fill the Form Properly")</script>';
			}
		}
//////////////////////////////////////////////////////////////////////////////////////////////////////	
	//----- Delete button------//
	  if (isset($_GET['cmd']) && $_GET['cmd']=="delete"){
		$delQuery  =$db->Exe_Qry("DELETE FROM reg_sup WHERE item_code ='$item_code'");
		mysql_query($delQuery);
		}
	if(isset($_POST['btndelete'])){
		$delQuery = "DELETE FROM reg_sup WHERE item_code ='$item_code'";
	  	mysql_query($delQuery);
		echo '<script> alert("Delete Successfuly")</script>';
		$description = "";
		$butOp=false;
	}
//////////////////////////////////////////////////////////////////////////////////////////////////////	

?>


<div id="wrapp">
	<form name="form1" method="post" action="" onSubmit="return validate_form(this);" class="plain">

<table align="center" class="searchResults">
		<table width="94%" height="297"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
		  <caption>
		  <h1>Add Items</h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">		
                
				
				
				<tr>
					<th height="30" valign="top" scope="row"><p>Item Code</p></th>
					<th rowspan="2" valign="top">&nbsp;</th>
					<td align="left"><p>
					  <select name = "item_code" id = "item_code" onChange="document.form1.submit()" >
					    <?php
											$values = mysql_query("SELECT item_code FROM reg_sup");
											echo "<option >--New item code--</option>";
											while ($row = mysql_fetch_array($values)) {
												$setSelect = "";
												echo "<option value='$row[0]' >$row[0]</option>";
											}
											
										?>
				      </select>
					</p>
			      <p>&nbsp;</p></td>
				</tr>
                <script>
			document.getElementById('item_code').value="<?php echo $item_code;?>";
			</script>
            
            
				<tr>
				  <th height="51" valign="top" scope="row"><div align="left">Description</div></th>
				  <td align="left"><input type = "text" size="60" name = "description" id = "description" value="<?php echo $description;?>"/></td>
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
							<input name="btnEdit" id="btnEdit" type="submit" value="Edit" <?php if ($butOp == false){echo 'disabled="disabled"';}?> class="button" style="width:60px;"/>
							</font></div>
			
						   <td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC">
						   <input name="btndelete" id="btndelete" type="submit" value="Delete" <?php if ($butOp == false){echo 'disabled="disabled"';}?> class="button"  style="width:60px;" />
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
					$result1=$db->Exe_Qry("SELECT * FROM reg_sup ORDER BY item_code");
					if(mysql_num_rows($result1)>0){
					if ($myrow = mysql_fetch_array($result1)) {

					// display list if there are records to display
					echo '<br>';
					echo '<table id = "table2" align="center" border="1" cellspacing="0" cellpadding="0" width=50% >'."\n";
					echo '<tr></tr>';
					echo '<tr height="30">';   //display headers
					echo '<td class="tbrow" ><div align="center">Item_Code</td>';
					echo '<td class="tbrow" ><div align="center">Description</td>';
					
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
                	<td class="" ><?php echo $myrow['item_code']; ?></td> 
					<td class="" ><?php echo $myrow['description']; ?></td>  
					
					
					
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
			document.getElementById('item_code').value="<?php echo $item_code;?>";
			if (document.getElementById("item_code").value != "<?php  echo $item_code;?>" || document.getElementById("item_code").value==""){
					document.getElementById("item_code").value= "new";
					document.getElementById("description").value= "";
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