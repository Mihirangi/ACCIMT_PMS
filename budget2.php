<?php
session_start();
	if (!isset($_SESSION['proclogin_type']))
{
header('Location: lgin.php');
}
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations();
$fncs= new FRMOperations();
$butOp=false;
?>

<html>
<head>
	<title>Budget Details</title>
   
    <link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
<?php
	
	if (isset($_POST['txtcustomer_id']) && ($_POST['txtcustomer_id'] != "new")){
		$budgetNo =  $_POST['txtcustomer_id'];
		
								$values =$db->Exe_Qry("SELECT Budg_descrip FROM pc_budget_tbl where budg_code='$budgetNo'");
	$valuedes=$row[0]	;	
	}else{
		//unset $budgetNo;
	}if (isset($_POST['txtdescription'])){
		$des = $_POST['txtdescription'];
	}else{
		$des="";
	}if (isset($_POST['txtdsdescription'])){
		$shortDes = $_POST['txtdsdescription'];
	}else{
		$shortDes="";
	}if (isset($_POST['txtbudcode'])){
		$bcode = $_POST['txtbudcode'];
	}else{
		$bcode="";
	}
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//----- Edit button------//
	
		if (isset($_POST['budbtnedit'])){
			if($des != null && $shortDes != null && $bcode != null){
				$db->Exe_Qry("UPDATE pc_budget_tbl  SET Budg_descrip='$des', short_descrip='$shortDes', budg_code='$bcode' WHERE budg_code='$budgetNo'");
					echo '<script> alert("Budget update Successfuly")</script>';			 
			}else{
					echo '<script> alert("Fill the Form Properly")</script>';
			}
		}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////		
    //----- ajax part------//
		if (isset($_POST['txtcustomer_id']) && ($_POST['txtcustomer_id'] != "new")){		
			$res=$db->Exe_Qry("SELECT * FROM pc_budget_tbl where budg_code ='$budgetNo' ");
			if ($db->Row_Count($res) == 1){
				$vallst=$db->Next_Record($res);
				$des = $vallst['Budg_descrip'];
				$shortDes = $vallst['short_descrip'];
				$bcode = $vallst['budg_code'];
				$butOp=true;
			}
	}else if (isset($_POST['txtcustomer_id']) && ($_POST['txtcustomer_id'] == "new")){
				$des = "";
				$shortDes = "";
				$bcode = "";
				$butOp=false;
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
//----- Add button------//

		if (isset($_POST['budbtnnew'])){
			if($des != null && $shortDes != null && $bcode != null){
				$result1=$db->Exe_Qry("INSERT INTO pc_budget_tbl SET budg_code='$bcode', Budg_descrip ='$des' , short_descrip ='$shortDes';");
					echo '<script> alert("New code adding Successfuly")</script>';
					$butOp=true;
			}else{
					echo '<script> alert("Fill the Form Properly")</script>';
			}
		}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//-----Delete button------//

		if (isset($_POST['budbtndel'])){
				$delQuery  =$db->Exe_Qry("DELETE FROM pc_budget_tbl WHERE budg_code ='$budgetNo'");
				echo '<script> alert("Budget deleted Successfuly")</script>';
				$des = "";
				$shortDes = "";
				$bcode = "";
				$butOp=false;	
		}
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
?>


<body onload = "bodyload()">
<div id="wrapp">
	<form name = "form1" method = "POST" onSubmit="return formvalidate()" action = "">
    <table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
   <caption>
      <h1>Budget Details</h1>
   </caption>
   <tr>
    <th>
	<table align="center">
		<tr><td width="116">Budget No</td><td width="257"><div id = "selectbud" name = "selectbud">
		  <select name = "txtcustomer_id" id = "txtcustomer_id" onchange = "document.form1.submit()" >
		    <?php
								
								
								$values =$db->Exe_Qry("SELECT budg_code FROM pc_budget_tbl");
								echo '<option>--New Budget Code--</option>';

								while ($row = mysql_fetch_array($values)) {
								echo "<option value='$row[0]' >$row[0]</option>";
								
											}
								?>
		    </select>
		</div></td></tr>
        
      
        
<tr><td>Budget Description</td><td rowspan="3"><div id="tbl_bud"><table><tr><td width="271"><input type = "text" size="60" name = "txtdescription" id = "txtdescription" value="<?php echo $des;?>"/>
        
    </td></tr><tr><td><input type = "text" name = "txtdsdescription" id = "txtsdescription" value="<?php echo $shortDes;?>"/>
        </td></tr><tr><td><input type = "text" name = "txtbudcode" id = "txtbudcode" value="<?php echo $bcode;?>"/>
        </td></tr></table></div></td></tr>
		<tr><td>Short Description</td></tr>
		<tr><td>Budget Code</td></tr>
		<tr><td></td><td><input type="submit" id="budbtnnew" name="budbtnnew" value="Create" <?php if ($butOp){echo 'disabled="disabled"';}?>/>
        &nbsp;<input type="submit" id="budbtnedit" name="budbtnedit" value="Edit" <?php if ($butOp == false){echo 'disabled="disabled"';}?>/>
        &nbsp;<input type="submit" id="budbtndel" name="budbtndel" value="Delete" <?php if ($butOp == false){echo 'disabled="disabled"';}?>/>
        </td></tr>
	</table>
	<input type = "hidden" name = "hddnvalue" id = "hddnvalue"/>
    </th></tr></table><br>
<br>
    
    <table id="wrapped" align="center" cellspacing="3" cellpadding="5" border="0">

			<caption>
			<h1 style="color:#000000">Available budgets</h1></caption>
			<tr>
				<th>


				<?php

				//-------------- Display the data in the Usage Table-----------------------//
				
					$result1=$db->Exe_Qry("SELECT * FROM pc_budget_tbl ");
					if(mysql_num_rows($result1)>0){
					if ($myrow = mysql_fetch_array($result1)) {

					// display list if there are records to display
					echo '<br>';
					echo '<table id = "table2" align="center" border="1" cellspacing="0" cellpadding="0" width=50% >'."\n";
					echo '<tr></tr>';
					echo '<tr height="30">';   //display headers
					echo '<td class="tbrow" ><div align="center">Budg_descriptions</td>';
					echo '<td class="tbrow" ><div align="center">budg_code</td>';
					echo '<td class="tbrow" ><div align="center">short_descriptions</td>';
				
					

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
                	<td class="" ><?php echo $myrow['Budg_descrip']; ?></td>
                    <td class="" ><?php echo $myrow['budg_code']; ?></td>
                    <td class="" ><?php echo $myrow['short_descrip']; ?></td>
					
                    
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
			document.getElementById('txtcustomer_id').value="<?php echo $budgetNo;?>";
			if (document.getElementById("txtcustomer_id").value != "<?php  echo $budgetNo;?>" || document.getElementById("txtcustomer_id").value==""){
					document.getElementById("txtcustomer_id").value= "new";
					document.getElementById("txtdescription").value= "";
					document.getElementById("txtdsdescription").value= "";
					document.getElementById("txtbudcode").value= "";
					document.getElementById("budbtnnew").disabled=false;
					document.getElementById("budbtnedit").disabled=true;
					document.getElementById("budbtndel").disabled=true;
			}
		</script>
          
	</form>
	
    </div>
</body>
</html>