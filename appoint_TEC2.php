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
	//-------conect to the database-----//
	

	//----- Delete button------//
/*	  if (isset($_GET['cmd']) && $_GET['cmd']=="delete")
  {
	 $file_no = $_POST['txtfile_no'];
	$delQuery  =$db->Exe_Qry("DELETE FROM appoint_tec WHERE file_no ='$file_no'");
	mysql_query($delQuery);
  }
  if(isset($_POST['btndelete'])){
 $file_no = $_POST['txtfile_no'];
	  $delQuery = "DELETE FROM appoint_tec WHERE file_no ='$file_no'";
	 
	  	mysql_query($delQuery);
}*/

/////////////////////////////////////////////////////

	//----- Add button------//
	
		if (isset($_POST['btnadd']))
		{
		
	   $file_no = $_POST['txtfile_no'];
		 $EmpNo = $_POST['txtemp_no'];
		 $appoint_type = $_POST['txtappoin_type'];
		
		
		$query=$db->Exe_Qry("INSERT INTO appoint_tec SET File_no='$file_no',EmpNo='$EmpNo', type_id='$appoint_type'");
				

}

	//$query1 =$db->Exe_Qry("SELECT usage_no,usage_nm,usg_descrip");
	//	mysql_query($query1);
///////////////////////////////////////////////////////

	//----- Edit button------//
	
	
?>


<div id="wrapp">
	<form method="post" action="" onSubmit="return validate_form(this);" class="plain">

<table align="center" class="searchResults">
		<table width="94%" height="297"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
		  <caption><h1>Appoint TEC</h1></caption>
			
            	<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                <div class="combobox">
				
                <tr>
					<th valign="top" scope="row"><div align="left">File No</div></th>
					<th valign="top">:</th>

							<td align="left">
							<select name = "txtfile_no" id = "txtfile_no" onChange = "buttonfun()">
            <?php
				
				$values =$db->Exe_Qry("SELECT file_no FROM file_tbl");
				echo "<option >--Select File No--</option>";
										
				while ($row = mysql_fetch_array($values)) {
					
					echo "<option  value='$row[0]' >$row[0]</option>";
				}
			?>
			</td>
            
    </tr>
    
                            </select>
						

							</td>
				</tr>
                
				</div>
                
                
                <div class="combobox">
				
                <tr>
					<th valign="top" scope="row"><div align="left">Employee No</div></th>
					<th valign="top">:</th>

							<td align="left">
							<select name = "txtemp_no" id = "txtemp_no" onChange = "buttonfun()">
            <?php
				
				$values =$db->Exe_Qry("SELECT EmpNo FROM emp_details_tbl");
				echo "<option >--Select Employee No--</option>";
										
				while ($row = mysql_fetch_array($values)) {
					
					echo "<option value='$row[0]' >$row[0]</option>";
				}
			?>
			</td></tr></select>
						</td>
				</tr></div>
                
                
                <div class="combobox">
				
                <tr>
					<th valign="top" scope="row"><div align="left">Appoint Type</div></th>
					<th valign="top">:</th>

							<td align="left">
							<select name = "txtappoin_type" id = "txtappoin_type" onChange = "buttonfun()">
            <?php
				
				$values =$db->Exe_Qry("SELECT type_id,type_des FROM appoint_tec_type");
				echo "<option >--Select Appoint Type--</option>";
										
				while ($row = mysql_fetch_array($values)) {
					
					echo "<option value='$row[0]'  >$row[1]</option>";
				}
			?>
			</td></tr></select>
						</td>
				</tr></div>
                
							
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
					<!--<td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC"> 
							<input name="btnEdit" type="submit" value="Edit" onClick="document.location.href ='appoint_TEC.php?pr_no='" class="button" style="width:60px;"/>
							</font></div>
			
						   <td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC">
						  <!-- <input name="btndelete" id="btndelete" type="submit" value="Delete" class="button" onClick="document.location..href ='appoint_TEC.php?cmd=delete&pr_no='" style="width:60px;" />
							</font></div>-->
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
					$result1=$db->Exe_Qry("SELECT * FROM appoint_tec ORDER BY file_no");
					if(mysql_num_rows($result1)>0){
					if ($myrow = mysql_fetch_array($result1)) {

					// display list if there are records to display
					echo '<br>';
					echo '<table id = "table2" align="center" border="1" cellspacing="0" cellpadding="0" width=50% >'."\n";
					echo '<tr></tr>';
					echo '<tr height="30">';   //display headers
					echo '<td class="tbrow" ><div align="center">File No</td>';
					echo '<td class="tbrow" ><div align="center">Employee No</td>';
					echo '<td class="tbrow" ><div align="center">Appoint Type</td>';
					echo '<td class="tbrow" ><div align="center">Approval</td>';
					
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
                	<td class="" ><?php echo $myrow['File_no']; ?></td> 
					<td class="" ><?php echo $myrow['EmpNo']; ?></td>  
					<td class="" ><?php echo $myrow['type_id']; ?></td> 
					<td class="" ><?php echo $myrow['Approve']; ?></td> 
					
					
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