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
if (isset($_POST['PrCodeLst']))
{
	$PrCodeLst=$_POST['PrCodeLst'];
}
if (isset($_POST['Prdate']))
{
	$Prdate=$_POST['Prdate'];
}
else
{
	$Prdate="";
}

if (isset($_POST['name_officer']))
{
	$name_officer=$_POST['name_officer'];
}
else
{
	$name_officer="";
}
if (isset($_POST['divisionCode']))
{
	$divisionCode=$_POST['divisionCode'];
}
else
{
	$divisionCode="";

}
if (isset($_POST['desigCode']))
{
	$desigCode=$_POST['desigCode'];
}
else
{
	$desigCode="";
}
if (isset($_POST['dtls_of_equipment']))
{
	$dtls_of_equipment=$_POST['dtls_of_equipment'];
}
else
{
	$dtls_of_equipment="";
}
if (isset($_POST['purpose']))
{
	$purpose=$_POST['purpose'];
}
else
{
	$purpose="";
}


if (isset($_POST['Quantity']))
{
	$Quantity=$_POST['Quantity'];
}
else
{
	$Quantity="";
}
if (isset($_POST['provision_des']))
{
	$provision_des=$_POST['provision_des'];
}
else
{
	$provision_des="";
}
if (isset($_POST['target_month']))
{
	$target_month=$_POST['target_month'];
}
else
{
	$target_month="";
}

if (isset($_POST['EstCost']))
{
	$EstCost=$_POST['EstCost'];
}
else
{
	$EstCost="";
}






if (isset($_POST['provision_des']))
{
	$provision_des=$_POST['provision_des'];
}
else
{
	$provision_des="";
}
if (isset($_POST['AltReso']))
{
	$AltReso=$_POST['AltReso'];
}
else
{
	$AltReso="";
}
if (isset($_POST['SimItems']))
{
	$SimItems=$_POST['SimItems'];
}
else
{
	$AltReso="";
}
if (isset($_POST['PsEqi']))
{
	$PsEqi=$_POST['PsEqi'];
}
else
{
	$PsEqi="";
}
if (isset($_POST['req_fulfill']))
{
	$req_fulfill=$_POST['req_fulfill'];
}
else
{
	$req_fulfill="";
}
if (isset($_POST['Usage']))
{
	$Usage=$_POST['Usage'];
}
else
{
	$Usage="";
}

if (isset($_POST['Pr_type']))
{
	$Pr_type=$_POST['Pr_type'];
}
else
{
	$Pr_type="";
}


if (isset($_POST['btnEdi']))
{
	if (true){
	//$db->Exe_Qry("UPDATE pr_dtls_tbl SET pr_date='$Prdate', descrip='$Descript', quantity='$Quantity', estimated_cost='$EstCost', provision_description='$PrDes', alternative_source='$AltReso', simiar_item='$SimItems', similar_des='$PsEqi', requirement_fulfill='$req_fulfill', usage='$Usage', Project='$Project', pr_type_no='$Pr_type'  WHERE pr_no='$PrCodeLst'");
	$db->Exe_Qry("UPDATE pr_dtls_tbl SET Name_officer='$name_officer', pr_date='$Prdate',  quantity='$Quantity',purpose='$purpose',Dtls_of_equipment='$dtls_of_equipment', est_cost='$EstCost', alter_source='$AltReso',provision_des='$provision_des', simiar_item='$SimItems', similar_des='$PsEqi', usage_no='$Usage', req_fulfill='$req_fulfill',target_month='$target_month', pr_type_no='$Pr_type' WHERE pr_no='$PrCodeLst'");
	echo '<script> alert("Record Successfully Updated");</script>';}
	else{ echo '<script> alert ("Fill the Form Properly");</script>';}
}

if (isset($_POST['PrCodeLst']) && ($_POST['PrCodeLst'] != "new") )
{
	$res=$db->Exe_Qry("SELECT * FROM pr_dtls_tbl WHERE pr_no='$PrCodeLst'");
	if ($db->Row_Count($res) == 1)
	{
		$vallst=$db->Next_Record($res);
		
		$name_officer=$vallst['Name_officer'];
		$Prdate=$vallst['pr_date'];
		
		$Quantity=$vallst['quantity'];
		$purpose=$vallst['purpose'];
		
		$Dtls_of_equipment=$vallst['dtls_of_equipment'];
		$EstCost=$vallst['est_cost'];
		$AltReso=$vallst['alter_source'];
		$provision_des=$vallst['provision_des'];
		$SimItems=$vallst['simiar_item'];
		$PsEqi=$vallst['similar_des'];
		$Usage=$vallst['usage_no'];
		$req_fulfill=$vallst['req_fulfill'];
		$target_month=$vallst['target_month'];
		$pr_type_no=$vallst['Pr_type'];
		
		
		
		
		//$FileNo=$vallst['fileno'];
		
		$butOp=true;
	}
}
 
/*if (isset($_POST['PrCodeLst']) && ($_POST['PrCodeLst'] = "new") )
{
	 $empno = $_SESSION['proclogin_un'];
	$res=$db->Exe_Qry("select * from designation_tbl WHERE DesigCode=(SELECT DesigCode FROM emp_details_tbl WHERE EmpNo='$empno'");
	if ($db->Row_Count($res) == 1)
	{
		$vallst=$db->Next_Record($res);
	}
	$res=$db->Exe_Qry("select * from designation_tbl WHERE DesigCode=(SELECT DesigCode FROM emp_details_tbl WHERE EmpNo='$empno'");
	if ($db->Row_Count($res) == 1)
	{
		$vallst=$db->Next_Record($res);
	}
	$res=$db->Exe_Qry("select * from designation_tbl WHERE DesigCode=(SELECT DesigCode FROM emp_details_tbl WHERE EmpNo='$empno'");
	if ($db->Row_Count($res) == 1)
	{
		$vallst=$db->Next_Record($res);
	}
}*/
if (isset($_POST['btnAdd']))
{
	if (true){
		$resss=$db->Exe_Qry("SELECT DivisionCode FROM emp_details_tbl WHERE EmpNo='".$_SESSION['proclogin_un']."';");
		$divCode=$db->Next_Record($resss);
	$db->Exe_Qry("INSERT INTO pr_dtls_tbl 
	(pr_no, applicant,DivisionCode,Name_officer, pr_date,quantity,purpose,DesigCode,Dtls_of_equipment, est_cost,alter_source,provision_des, simiar_item, similar_des,usage_no,req_fulfill,target_month, pr_type_no) 
	VALUES ('$PrCodeLst', '".$_SESSION['proclogin_un']."', '$divisionCode[0]', '$name_officer', '$Prdate','$Quantity','$purpose','$desigCode[0]','$dtls_of_equipment','$EstCost', '$AltReso','$provision_des', '$SimItems','$PsEqi','$Usage','$req_fulfill','$target_month', '$Pr_type');");
	echo '<script> alert("Record Successfully Inserted");</script>';
	$butOp=true;
	}
	else{ echo '<script> alert ("Fill the Form Properly");</script>';}
}

if (isset($_POST['btnDel']))
{
	$db->Exe_Qry("DELETE FROM pr_dtls_tbl WHERE pr_no='$PrCodeLst';");
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
   <h1>Purchase Requisition</h1>
   </caption>
   <tr>
    <td><table border="0" align="center">
      <tr>
       <th width="172" align="left">PR Number</th>
       <th width="5">:</th>
       <td width="569"><?php 
	   	echo'<select name = "PrCodeLst" id = "PrCodeLst"  onChange="document.form1.submit()">
		<option value="new">Please Select a Pr Number</option>';
		$ress = $db->Exe_Qry("SELECT pr_no FROM pr_dtls_tbl");
		echo'<option value="'.(($db->Row_Count($ress))+1).'">New</option>';
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["pr_no"].">".$roww["pr_no"]."</OPTION>";
		}
		echo'</select>';
	   ?>
       <script>
	   document.getElementById('PrCodeLst').value="<?php echo $PrCodeLst;?>";
       </script>
       </td>
      </tr>
     
	 
	  
	  
	 
      <tr>
       <th align="left">PR Date</th>
       <th>:</th>
       <td><?php $fncs->CrtCalender("Prdate",date('y-m-d'),0);?></td>
      </tr>
      <tr>
       <th align="left">Name of the officer</th>
       <th>:</th><?php 
	    $empno = $_SESSION['proclogin_un'];
	$ress = $db->Exe_Qry("select * from emp_details_tbl WHERE EmpNo='$empno'");
		while ($roww = $db->Next_Record($ress))
	    {
	       $fullname=$roww["Fullname"];
		}?>
       <td><input type="text" name="name_officer" id="name_officer" size="30" value="<?php echo $fullname;
		?>" /></td>
      </tr>
	   <tr>
       <th align="left">Division</th>
       <th>:</th>
       <td><select name="divisionCode" id = "divisionCode"  >
	   <?php 
	   echo'<option value="new">Please Select a Division</option>';
	   $empno = $_SESSION['proclogin_un'];
	$ress = $db->Exe_Qry("select * from division_tbl WHERE DivisionCode=(SELECT DivisionCode FROM emp_details_tbl WHERE EmpNo='$empno')");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["DivisionCode"].">".$roww["Division"]."</OPTION>";
		}
	   ?>
      
       </select></td>
      </tr>
	  
	 
	  <tr>
       <th align="left">Designation</th>
       <th>:</th>
       <?php  $empno = $_SESSION['proclogin_un'];
	   print $empno;?>
       <td><select name="desigCode" id = "desigCode"  >
	   <?php 
	   echo'<option value="new">Please Select a Designation</option>';
	   $empno = $_SESSION['proclogin_un'];
	   print $empno;
		$ress = $db->Exe_Qry("select * from designation_tbl WHERE DesigCode=(SELECT DesigCode FROM emp_details_tbl WHERE EmpNo='$empno')");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["DesigCode"].">".$roww["Designation"]."</OPTION>";
		}
	   ?>
      
       </select></td>
      </tr>
	  
	  
	   <tr>
       <th align="left">Details of the Equipments</th>
       <th>:</th>
       <td><input type="text" name="dtls_of_equipment" id="dtls_of_equipment" size="30" value="<?php echo $dtls_of_equipment;?>" /></td>
      </tr>
	   <tr>
       <th align="left">purpose</th>
       <th>:</th>
       <td><textarea type="text" name="purpose" id="purpose"rows="4" cols="30"> <?php echo $purpose;?> </textarea> </td>
      </tr>
	  
	  
      <tr>
       <th align="left">Quantity</th>
       <th>:</th>
       <td><input type="text" name="Quantity" id="Quantity" value="<?php echo $Quantity;?>" /> </td>
      </tr>
      <tr>
       <th align="left">Estimated Cost</th>
       <th>:</th>
       <td><input type="text" name="EstCost" id="EstCost" value="<?php echo $EstCost;?>" /> </td>
      </tr>
      <tr>
       <th align="left">Provision Description</th>
       <th>:</th>
       <td><textarea type="text" name="provision_des" id="provision_des"rows="4" cols="30"> <?php echo $provision_des;?> </textarea> </td>
      </tr>
      <tr>
       <th align="left">Alternative Source</th>
       <th>:</th>
       <td><textarea type="text" name="AltReso" id="AltReso" rows="4" cols="30"><?php echo $AltReso;?></textarea></td>
      </tr>
       <tr>
       <th align="left"> Number of Similar Items</th>
       <th>:</th>
       <td><input type="text" name="SimItems" id="SimItems" <?php echo $SimItems;?>/></td>
      </tr>
      
      <tr>
       <th align="left">Similar Items Description</th>
       <th>:</th>
       <td><textarea type="text" name="PsEqi" id="PsEqi"  rows="4" cols="30"><?php echo $PsEqi;?></textarea></td>
      </tr>
	  <tr>
       <th align="left">Target Month</th>
       <th>:</th>
       <td><select id ="target_month" name="target_month">
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
      <script> document.getElementById('target_month').value="<?php echo $target_month;?>";</script>
      </td>
      </tr>
      <tr>
	  
       <th align="left"> Requirement Fulfill</th>
       <th>:</th>
       <td><textarea type="text" name="req_fulfill" id="req_fulfill" rows="4" cols="30"><?php echo $req_fulfill;?></textarea></td>
      </tr>
      <tr>
       <th align="left">Usage</th>
       <th>:</th>
       <td>
       <?php 
	   	echo'<select name = "Usage" id = "Usage" >
		<option value="new">Please Select a Usage</option>';
		$ress = $db->Exe_Qry("SELECT usage_no,usg_descrip FROM usage_dtls_tbl");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["usage_no"].">".$roww["usg_descrip"]."</OPTION>";
		}
		echo'</select>';
	   ?> </td>
      </tr>
      
	  
	  
	  <tr>
       <th align="left">PR Type</th>
       <th>:</th>
       <td>
       <?php 
	   	echo'<select name = "Pr_type" id = "Pr_type" >
		<option value="new">Please Select a Project</option>';
		$ress = $db->Exe_Qry("SELECT pr_type_no,description FROM pr_type");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["pr_type_no"].">".$roww["description"]."</OPTION>";
		}
		echo'</select>';
	   ?></td>
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
    <th>Pr Number</th>
    <th>Pr Date</th>
    <th>Name of the officer</th>
	<th>Division</th>
	<th>Designation</th>
	<th>Detail of the Equipments</th>
	<th>purpose</th>
    <th>Quantity</th>
    <th>Estimated Cost</th>
    <th>Provision Description</th>
	<th>Target Manth</th>
    <th>Alternative Source</th>
    <th>Similar Items Available</th>
    <th>Similar Items Description</th>
    <th>Requirement Fulfill</th>
    <th>Usage</th>
    
    </tr>
    <?php
	
    $ress=$db->Exe_Qry("SELECT * FROM pr_dtls_tbl ;");
	while ($roww = $db->Next_Record($ress))
	    {
	        echo "<tr>
			<th>".$roww["pr_no"]."</th>
			<th>".$roww["pr_date"]."</th>
			<th>".$roww["Name_officer"]."</th>
			<th>".$roww["DivisionCode"]."</th>
			<th>".$roww["DesigCode"]."</th>
			<th>".$roww["Dtls_of_equipment"]."</th>
			<th>".$roww["purpose"]."</th>
			<th>".$roww["quantity"]."</th>
			<th>".$roww["est_cost"]."</th>
			<th>".$roww["provision_des"]."</th>
			<th>".$roww["target_month"]."</th>
			<th>".$roww["alter_source"]."</th>
			<th>".$roww["simiar_item"]."</th>
			<th>".$roww["similar_des"]."</th>
			<th>".$roww["req_fulfill"]."</th>
			<th>".$roww["usage_no"]."</th>
			
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
