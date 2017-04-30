 <!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Purchase Description</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js"> </script>
<script type="text/javascript" src="js/jquery.min.1.2.6.js"></script>
<script type="text/javascript" src="js/jquerycssmenu.js"></script>
<script type="text/javascript" src="js/jquery.min.1.3.2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- //function myFunction() {
  //  document.getElementById("demo").innerHTML = "Hello World";
//} -->
</script>

</head>
	<!-- <body onLoad="sessSet('pur_type - Copy.php')" > -->
    <body>
	<?php
	require_once ("phpfncs/Database.php");
	require_once ("phpfncs/Funcs.php");
	$db = new DBOperations("attend_db");
	$butOp=false;
		
		if (isset($_POST["btnadd"]))
		{
			$fileno=$_POST['fileno'];
			$description=$_POST['description'];
			$empno=$_POST['empno'];
			$empname=$_POST['empname'];
			$emptype=$_POST['emptype'];
			
			$desc=mysql_query("select description from pc_file_tbl where file_no=$description");
			$row=mysql_fetch_array($desc);
			$desc_print=$row['description'];
			
			$emp_name=mysql_query("select Fullname from emp_details_tbl where EmpNo=$empno");
			$row1=mysql_fetch_array($emp_name);
			$name_print=$row1['Fullname'];

			$add = "insert into pc_app_tec (file_no,description,emp_no,emp_name,emp_type)
			values ('$fileno','$desc_print','$empno','$name_print','$emptype')";
			mysql_query($add);

			}
		


	
?>
<script>
function onChangeId() {
    var selectedId = $("#fileno").val();
    $("#description").val(selectedId);
} 
function myFunction() {
	var selectedName = $("#description").val();
    $("#fileno").val(selectedName);
}

function onChangeEId() {
    var selectedEno = $("#empno").val();
    $("#empname").val(selectedEno);
} 
function myEFunction() {
	var selectedEname = $("#empname").val();
    $("#empno").val(selectedEname);
}
</script>

<div id="wrapp">
	<form name = "form1" method="post" action=""  class="plain" >

<table align="center" class="searchResults">
		<table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
			<caption>
			<h1>Appoint TEC</h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                <div class="combobox">
				<tr>
					<th valign="top" scope="row"><div align="left">File No.</div></th>
					<th valign="top">:</th>
							<td align="left"> 
                            <select name ="fileno" id = "fileno" onchange = "onChangeId()" >
                         
            <?php
				$values = mysql_query("SELECT * FROM pc_file_tbl");
				echo "<option >- File.No -</option>";
										
				while ($row = mysql_fetch_array($values)) {
					//$setSelect = "";
				echo '<option value="'.$row['file_no'].'">'.$row['file_no'].'</option>';
				}
			
			?>
            </select>
                        <td align="left">
                        <select name = "description" id = "description" onchange = "myFunction()">
                               <?php
				$values = mysql_query("SELECT * FROM pc_file_tbl");
				echo "<option >- Description -</option>";
										
				while ($row = mysql_fetch_array($values)) {
					//$setSelect = "";	
				echo '<option value="'.$row['file_no'].'">'.$row['description'].'</option>';				}
			?>
                   	 	</td>
            	</td>
							
			</td>
    </tr>
                            </select>						

							</td>
				</tr>
				</div>
				<tr>
					<th valign="top" scope="row"><div align="left">Employee No.</div></th>
					<th valign="top">:</th>
					<td align="left"><select name = "empno" id = "empno" onchange = "onChangeEId()">
            <?php
				$values = mysql_query("SELECT * FROM emp_details_tbl where tec_member='y'");
				echo "<option >-Emp. No-</option>";
										
				while ($row = mysql_fetch_array($values)) {
					$setSelect = "";
					echo "<option value='$row[0]' $setSelect>$row[0]</option>";
					
				}
			?>
                    <td align="left"><select name = "empname" id = "empname" onchange = "myEFunction()">
                <?php
				$values = mysql_query("SELECT * FROM emp_details_tbl where tec_member='y'");
				echo "<option >- Emp. Name -</option>";
										
				while ($row = mysql_fetch_array($values)) {
					$setSelect = "";
					echo "<option value='$row[0]' $setSelect>$row[3]</option>";
					
				}
			?>
                   	 	</td>
            
                     </td>
				</tr>
				
				<tr>
					<th valign="top" scope="row"><div align="left">TEC Member Type</div></th>
					<th valign="top">:</th>
					<td align="left"><select name = "emptype" id = "emptype" onchange = "">
            
				<option >- Emp.Type -</option>;
				<option > Chairman </option>;
				<option > Member </option>;
			
 
					</td>
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
							<input name="btnadd" type="submit" id="btnadd" value="Add" onClick="">
							</font></div>
						</td>
					<td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC"> 
							
							</font></div>
			
						   <!-- <td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC">
						   <input name="btndelete" id="btndelete" type="submit" value="Delete" class="button" <?php if ($butOp == false){echo 'disabled="disabled"';}?> style="width:60px;" />
							</font></div>
						</td> -->
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
					$result1 = mysql_query("SELECT * FROM pc_app_tec ORDER BY pr_app_no");
					if(mysql_num_rows($result1)>0){
					if ($myrow = mysql_fetch_array($result1)) {

					// display list if there are records to display
					echo '<br>';
					echo '<table id = "table2" align="center" border="1" cellspacing="0" cellpadding="5" width=90% >'."\n";
					echo '<tr></tr>';
					echo '<tr height="30">';   //display headers
					echo '<td class="tbrow" ><div align="center">File No</td>';
                    echo '<td class="tbrow" ><div align="center">Description</td>';
					echo '<td class="tbrow" ><div align="center">Employee No</td>';
                    echo '<td class="tbrow" ><div align="center">Employee</td>';
					echo '<td class="tbrow" ><div align="center">Employee type</td>';
					
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
                	<td class="" ><?php echo $myrow['file_no']; ?></td>
                    <td class="" ><?php echo $myrow['description']; ?></td> 
                	<td class="" ><?php echo $myrow['emp_no']; ?></td> 
					<td class="" ><?php echo $myrow['emp_name']; ?></td>  
					<td class=""><?php echo $myrow['emp_type']; ?></td>
					
					
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
	
		<!-- <script>
			document.getElementById('fileno').value="<?php echo $fino;?>";
			if (document.getElementById("fileno").value != "<?php  echo $fino;?>" || document.getElementById("fileno").value==""){
					document.getElementById("fileno").value= "new";
					document.getElementById("description").value= "";
					document.getElementById("empno").value= "";
					document.getElementById("empname").value= "";
					document.getElementById("emptype").value= "";
					document.getElementById("btnadd").disabled=false;
					//document.getElementById("btnEdit").disabled=true;
					document.getElementById("btndelete").disabled=true;
			}
		</script> -->
    							
	</form>
	<br />
	<br />
</div>
</body>
</html>