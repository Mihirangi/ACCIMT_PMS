<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Districts</title>
<script language="javascript" src="calendar/calendar.js">
</script>
<?php
session_start();
$a=$_POST['PrCodeLst'];
$_SESSION['PR_NUMBER']=$a;
if (!isset($_SESSION['proclogin_type']))
{
header('Location: lgin.php');
}
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations('d');
$fncs= new FRMOperations();
$butOp=false;
$Descript="";
$Quantity="";
$EstCost="";
$Usage="";
$Project="";

if (isset($_POST['txtusername']))
{
	$user=$_POST['user'];
}
else
{
	$user="";
}

if (isset($_POST['txtbudgetcode']))
{
	$bud_code=$_POST['bud_code'];
}
else
{
	$bud_code="";
}

if (isset($_POST['txtdetails']))
{
	$equ_detail=$_POST['equ_detail'];
}
else
{
	$equ_detail="";
}

if (isset($_POST['txtpurpose']))
{
	$purpose=$_POST['purpose'];
}
else
{
	$purpose="";
}

if (isset($_POST['SimItems']))
{
	$similar_equ=$_POST['similar_equ'];
}
else
{
	$similar_equ="";
}



if (isset($_POST['PsEqi']))
{
	$reason=$_POST['reason'];
}
else
{
	$reason="";
}

if (isset($_POST['value']))
{
	$value=$_POST['value'];
}
else
{
	$value="";
}

if (isset($_POST['tar_month']))
{
	$tar_month=$_POST['tar_month'];
}
else
{
	$target_month="";
}

if (isset($_POST['req_date']))
{
	$req_date=$_POST['req_date'];
}
else
{
	$req_date="";
}

if (isset($_POST['bud_code']))
{
	$bud_code=$_POST['bud_code'];
}
else
{
	$bud_code="";
}



if (isset($_POST['btnEdi']))
{
	if (true){
	
	$db->Exe_Qry("UPDATE bud_req_user SET Name_officer='$name_officer', pr_date='$Prdate',  quantity='$Quantity',purpose='$purpose',Dtls_of_equipment='$dtls_of_equipment', est_cost='$EstCost', alter_source='$AltReso',provision_des='$provision_des', simiar_item='$SimItems', similar_des='$PsEqi', usage_no='$Usage', req_fulfill='$req_fulfill',target_month='$target_month', pr_type_no='$Pr_type' WHERE pr_no='$PrCodeLst'");
	echo '<script> alert("Record Successfully Updated");</script>';}
	else{ echo '<script> alert ("Fill the Form Properly");</script>';}
}

if (isset($_POST['PrCodeLst']) && ($_POST['PrCodeLst'] != "new") )
{
	$res=$db->Exe_Qry("SELECT * FROM pr_dtls_tbl WHERE pr_no='$PrCodeLst'");
	if ($db->Row_Count($res) == 1)
	{
		$vallst=$db->Next_Record($res);
		
		$user=$vallst['txtusername'];
		$purpose=$vallst['purpose'];
		$equ_detail=$vallst['dtls_of_equipment'];
	    $bud_year=$vallst['provision_des'];
		$similar_equ=$vallst['SimItems'];
		$reason=$vallst['PsEqi'];
		$value=$vallst['txtval'];
		$req_date=$vallst['Prdate'];
		$tar_month=$vallst['target_month'];
		$bud_code=$vallst['selectbud'];
		
		
		
		
		//$FileNo=$vallst['fileno'];
		
		$butOp=true;
	}
}
 

if (isset($_POST['btnAdd']))
{
	if (true){
		$resss=$db->Exe_Qry("SELECT Fullname FROM emp_details_tbl WHERE EmpNo='".$_SESSION['proclogin_un']."';");
		$divCode=$db->Next_Record($resss);
	$db->Exe_Qry("INSERT INTO bud_req_user
	(user, equ_detail,purpose,similar_equ,reason,value,tar_month,req_date,bud_year,bud_code) 
	VALUES ('$user', '$equ_detail', '$purpose','$similar_equ','$reason,value','$value','$tar_month','$req_date', '$bud_year','$bud_code');");
	echo '<script> alert("Record Successfully Inserted");</script>';
	$butOp=true;
	}
	else{ echo '<script> alert ("Fill the Form Properly");</script>';}
}

if (isset($_POST['btnDel']))
{
	$db->Exe_Qry("DELETE FROM bud_req_user WHERE pr_no='$PrCodeLst';");
	echo '<script> alert("Record Successfully Deleted");</script>';
	$Itemnum="";
	$Descript="";
	$ReqAmunt="";
	$butOp=false;	
}
?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="sessSet('pr_request.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="" >
  <table id="wrapped2" align="center" width="136%"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1>Buget Request Form</h1>
   </caption>
   <tr>
    <td><table border="0" align="center">
   
   <tr>
       <th align="left">Name of the User</th>
       <th>:</th>
       <td><select name="txtusername" id = "txtusername"  >
	   <?php 
	   //echo'<option value="new">Please Select a Division</option>';
	   $empno = $_SESSION['proclogin_un'];
		$ress = $db->Exe_Qry("SELECT Fullname FROM emp_details_tbl WHERE EmpNo='$empno'");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["Fullname"].">".$roww["Fullname"]."</OPTION>";
			//echo $roww["Fullname"].".$roww["Fullname"].";
		}
	   ?>
      
       </select></td>
      </tr>
	  
	  
	  
	  
	  
	  <tr><th align="left" >Budget Code</th>
	   <th>:</th>
	  <td width="257"><div id = "txtbudgetcode" name = "txtbudgetcode">
	  
		  <select>
		    <?php
								
								
								$values =$db->Exe_Qry("SELECT budg_code FROM budget_tbl");
								echo '<option>--New Budget Code--</option>';

								while ($row = mysql_fetch_array($values)) {
								echo "<option value='$row[0]' >$row[0]</option>";
								
											}
								?>
		    </select>
		</div></td></tr>
        
      
	  
	  
	  <tr>
       <th align="left">Details of the Equipments</th>
       <th>:</th>
       <td><input type="text" name="txtdetails" id="txtdetails" size="30" value="<?php echo $equ_detail;?>" /></td>
      </tr>
	 
	
	   <tr>
       <th align="left">purpose</th>
       <th>:</th>
       <td><textarea type="text" name="txtpurpose" id="txtpurpose"rows="4" cols="30"> <?php echo $purpose;?> </textarea> </td>
      </tr>
	  
	  <tr>
       <th align="left"> Number of Similar Items</th>
       <th>:</th>
       <td><input type="text" name="txtSimItems" id="txtSimItems" <?php echo $similar_equ;?>/></td>
      </tr>
      
      <tr>
       <th align="left">Similar Items Description</th>
       <th>:</th>
       <td><textarea type="text" name="txtdescription" id="txtdescription"  rows="4" cols="30"><?php echo $reason;?></textarea></td>
      </tr>
	  <tr>
	  
	  <tr>
       <th align="left">Approximate Value of the Equipments</th>
       <th>:</th>
       <td><textarea type="text" name="txtval" id="txtval"  rows="4" cols="30"><?php echo $value;?></textarea></td>
      </tr>
	  <tr>
	  
	  <th align="left">Target Month</th>
       <th>:</th>
       <td><select id ="txttarget_month" name="txttarget_month">
       <option value="January">January</option>
	   <option value="February">February</option>
       <option value="March">March</option>
       <option value="April">April</option>
       <option value="May">May</option>
       <option value="June">June</option>
       <option value="July">July</option>
       <option value="August">August</option>
       <option value="September">September</option>
       <option value="October">October</option>
       <option value="November">November</option>
       <option value="December">December</option>
      </select>
      <script> document.getElementById('target_month').value="<?php echo $tar_month;?>";</script>
      </td>
      </tr>
	  
	  
      <tr>
       <th align="left">Request Date</th>
       <th>:</th>
       <td><?php $fncs->CrtCalender("Prdate",date('y-m-d'),0);?></td>
      </tr>
      
	   
	 
	  
	  
	  
	   
	  
	  
	  
     
	  
      <tr>
       <td colspan="4"><table width="100%" border="0">
         <tr>
          <td class="tbrow" width="6%">&nbsp;</td>
          <td class="tbrow" width="22%"><div align="center">
            <input name="btnAdd" type="submit" id="btnAdd" value="Add" <?php if ($butOp){echo 'disabled="disabled"';}?> />
           </div></td>
          <td class="tbrow" width="22%"><div align="center">
            <input name="btnEdi" type="submit" id="btnEdi" value="Edit" <?php if ($butOp==false){echo 'disabled="disabled"';}?> />
           </div></td>
          <td class="tbrow" width="22%"><div align="center">
            <input name="btnDel" type="submit" id="btnDel" value="Delete" <?php if ($butOp==false){echo 'disabled="disabled"';}?> />
           </div></td>
          <td class="tbrow"  width="6%">&nbsp;</td>
         </tr>
        </table>
         </td>
      </tr>
   </table></td>
   </tr>
  </table>
  <br />
  <br />
  <table width="1429"  cellpadding="5" cellspacing="3" id="wrapped">
   <tr>
    <th width="1162">
    <table id="tbl_district" border="1"  align="center" style="font-size:16px;" >
    <tr>
    <th>Id</th>
    <th>Name of the User</th>
	<th>Budget Code</th>
	<th>Budget Year</th>
	<th>Detail of the Equipments</th>
	<th>purpose</th>
     <th>Similar Items Available</th>
    <th>Similar Items Description</th>
	<th>Approximate Value</th>
	<th>Target Manth</th>
    <th>Request Date</th>
   
    
    
    
    </tr>
    <?php
	
    $ress=$db->Exe_Qry("SELECT * FROM bud_req_user ;");
	while ($roww = $db->Next_Record($ress))
	    {
	        echo "<tr>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			
			</tr>";
		}
	?>
	</table>
    </th>
   </tr>
  </table>
 </form>
 <script language="javascript" type="text/javascript">
				document.getElementById("PrCodeLst").value = "<?php  echo $PrCodeLst;?>";
				
		</script>
 <br />
 <br />
</div>
</body>
</html>
