<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Districts</title>
<?php
session_start();
if (!isset($_SESSION['proclogin_type']))
{
header('Location: lgin.php');
}
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db = new DBOperations("attend_db");
$fncs= new FRMOperations();
$butOp=false;
if (isset($_POST['requestlist']) && ($_POST['requestlist'] != "new"))
{
	$requestlist=$_POST['requestlist'];
}
else 
{ unset($requestlist); }

if (isset($_POST['fromtlist']))
{
	$fromtlist=$_POST['fromtlist'];
}
if (isset($_POST['BudCodeLst']))
{
	$BudCodeLst=$_POST['BudCodeLst'];
}

if (isset($_POST['Amunt']))
{
	$Amunt=$_POST['Amunt'];
}
else
{
	$Amunt="";
}
if (isset($_POST['BalanceAmount']))
{
	$BalanceAmount=$_POST['BalanceAmount'];
}
else
{
	$BalanceAmount="";
}


if (isset($_POST['btnEdi']))
{
	if ($Descript!="" && $Amunt!=""){
	$db->Exe_Qry("UPDATE budget_tran_tbl SET  Amount='$Amunt' WHERE budg_code='$BudCodeLst';");
	echo '<script> alert("Record Successfully Updated");</script>';}
	else{ echo '<script> alert ("Fill the Form Properly");</script>';}
}

if (isset($_POST['BudCodeLst']) && ($_POST['BudCodeLst'] != "new"))
{
	$res=$db->Exe_Qry("SELECT * FROM budget_tran_tbl WHERE budg_code='$BudCodeLst';");
	if ($db->Row_Count($res) == 1)
	{
		$vallst=$db->Next_Record($res);
		$Amunt= $vallst['Amunt'];
		$butOp=true;
	}
}
else if (isset($_POST['BudCodeLst']) && ($_POST['BudCodeLst'] == "new"))
{
	$Amunt="";
	$butOp=false;
} 
// submit button
if (isset($_POST['btnSubmit']))


{
	if ($Amunt!=""){
	$db->Exe_Qry("INSERT INTO budget_tran_tbl (Requ_DivisionCode, Appr_DivisionCode, budg_code, Amount,Balance_Amount ) VALUES ('$requestlist', '$fromtlist', '$BudCodeLst', '$Amunt','$BalanceAmount');");
	
 	//$query=$db->Exe_Qry("SELECT A.the_amount , B. Amount FROM div_budg_tbl  AS A,budget_tran_tbl AS B WHERE budg_code='$BudCodeLst';");
	$query=$db->Exe_Qry("SELECT budget_tran_tbl.column5 , div_budg_tbl.column10 
       budget_tran_tbl.column5 , div_budg_tbl.column10
FROM  budget_tran_tbl , div_budg_tbl
WHERE  budget_tran_tbl.Amount!=div_budg_tbl.the_amount';");
	
						
	while ($row = mysql_fetch_array( $query)) {
		extract($query);
	$the_amount= the_amount;
	$Amount= Amount;


if(isset($the_amount, $Amount))  {
 $BalanceAmount = $the_amount - $Amount;
 echo $BalanceAmount; // print balance amount
 }
 $BalanceAmount=$_POST['BalanceAmount'];
 $db->Exe_Qry("INSERT INTO budget_tran_tbl (Balance_Amount)VALUES ('$BalanceAmount');");
	}

	

	echo '<script> alert("Record Successfully Inserted");</script>';
	$butOp=true;
	}
	else{ echo '<script> alert ("Fill the Form Properly");</script>';}}
	
	
	



if (isset($_POST['btnRemove']))
{
	$db->Exe_Qry("DELETE FROM budget_tran_tbl WHERE budg_code='$BudCodeLst';");
	echo '<script> alert("Record Successfully Deleted");</script>';
	$Amunt="";
	$butOp=false;
}
?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="sessSet('DivBugReq.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="" >
 <?php
 $utype=$_SESSION['proclogin_type'];
 if ($utype=="HOD")
 {
 ?>
 
 
  <table id="wrapped2" align="center" width="95%"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1>Budget Transaction Among Division</h1>
   </caption>
   <tr>
    <td><table border="0" align="center">
      <tr>
       <th align="left"> Request</th>
       <th>:</th>
       <td><select name="requestlist" id = "requestlist" onChange="document.form1.submit()" >
         <?php 
	   echo'<option value="new">Please Select a Division</option>';
	   $empno = $_SESSION['proclogin_un'];
		$ress = $db->Exe_Qry("select * from division_tbl");
		//("select * from division_tbl WHERE DivisionCode=(SELECT DivisionCode FROM emp_details_tbl WHERE EmpNo='$empno')");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["DivisionCode"].">".$roww["Division"]."</OPTION>";
		}
	   ?>
         <script language="javascript" type="text/javascript">
document.getElementById("requestlist").value="<?php  echo $requestlist;?>";
       </script>
       </select>
		 </td>
      </tr>
      
      <tr>
       <th align="left">
         From</th>
       <th>:</th>
       <td><select name="fromtlist" id = "fromtlist" onChange="document.form1.submit()" >
         <?php 
	   echo'<option value="new">Please Select a Division</option>';
	   $empno = $_SESSION['proclogin_un'];
		$ress = $db->Exe_Qry("select * from division_tbl");
		//("select * from division_tbl WHERE DivisionCode=(SELECT DivisionCode FROM emp_details_tbl WHERE EmpNo='$empno')");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["DivisionCode"].">".$roww["Division"]."</OPTION>";
		}
	   ?>
         <script language="javascript" type="text/javascript">
document.getElementById("fromtlist").value="<?php  echo $fromtlist;?>";
       </script>
       </select>
		 </td>
      </tr>
     
      <tr>
       <th align="left">Budget Code</th>
       <th>:</th>
       <td><?php 
	   if (isset($requestlist))
	   {
	   if (!isset($fromtlist))
	   {
		   
	   }
	   echo'<select name = "BudCodeLst" id = "BudCodeLst"  onChange="document.form1.submit()">
		<option value="new">Please Select a Budget Code</option>';
		$valls= $db->Next_Record($db->Exe_Qry("SELECT sh_code FROM division_tbl WHERE DivisionCode='$requestlist';"));
		$ress = $db->Exe_Qry("SELECT budg_code  FROM budget_tbl");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["budg_code"]."/".$valls["sh_code"]."/".$requestlist.">".$roww["budg_code"]."/".$valls["sh_code"]."/".$fromtlist."</OPTION>";
		}
		echo'</select>';
	   }
	   else
	   {
		   echo '<select></select>';
	   }
	   ?>
       </td>
      </tr>
      <tr>
        <th align="left">Amount</th>
        <th>:</th>
        <td><input type="text" name="Amunt" id="Amunt" value="<?php echo $Amunt;?>" /> </td>
      </tr>
            
      
      
      
      
      
      <tr>
       <td colspan="4"><table width="100%" border="0">
         <tr>
          <td class="tbrow" width="6%">&nbsp;</td>
          <td class="tbrow" width="22%"><div align="center">
            <input name="btnSubmit" type="submit" id="btnYes" value="Submit" <?php if ($butOp){echo 'disabled="disabled"';}?> />
           </div></td>
          <td class="tbrow" width="22%"><div align="center">
            <input name="btnEdi" type="submit" id="btnEdi" value="Edit" <?php if ($butOp==false){echo 'disabled="disabled"';}?> />
           </div></td>
          <td class="tbrow" width="22%"><div align="center">
            <input name="btnRemove" type="submit" id="btnRemove" value="Delete" <?php if ($butOp==false){echo 'disabled="disabled"';}?> />
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
  <table id="wrapped" align="center" cellspacing="3" cellpadding="5">
   <tr>
    <th>
    <table id="tbl_district" border="1"  align="center" style="font-size:16px;" >
    <tr>
    <th>Request Division </th>
    <th>Approved Division</th>
    <th>Budget Code</th>
     <th>Amount</th>
     <th>Balance Amount</th>
    </tr>
    <?php
    $ress=($db->Exe_Qry
	("SELECT * FROM budget_tran_tbl "));
	
	
	
	while ($roww = $db->Next_Record($ress))
	    {
			$rrrr=($db->Exe_Qry("SELECT Division FROM division_tbl WHERE DivisionCode='".$roww["div_code"]."';"));
			$rrrrr = $db->Next_Record($rrrr);
	        echo "<tr>
			<th>".$roww["Requ_DivisionCode"]."</th>
			<th>".$roww["Appr_DivisionCode"]."</th>
			<th>".$roww["budg_code"]."</th>
			<th>".$roww["Amount"]."</th>
			<th>".$roww["Balance_Amount"]."</th>
			</tr>";
		}
	?>
	</table>
    </th>
   </tr>
  </table>
  <?php
  }
  else
  {
  ?>
  <table align="center" border="0" style="vertical-align:middle">
  <tr>
  <th>
  <h1>You are not a Head of a Division</h1>
  </th></tr></table>
  <?php

  }
  ?>
 </form>
 <script language="javascript" type="text/javascript">
				document.getElementById("BudCodeLst").value = "<?php  echo $BudCodeLst;?>";
				if (document.getElementById("BudCodeLst").value != "<?php  echo $BudCodeLst;?>" || document.getElementById("BudCodeLst").value=="")
				{
					document.getElementById("BudCodeLst").value= "new";
					document.getElementById("Amunt").value= "";
					document.getElementById("BalanceAmount").value="";
					document.getElementById("btnSubmit").disabled=false;
					document.getElementById("btnEdi").disabled=true;
					document.getElementById("btnRemove").disabled=true;
				}
		</script>
</div>
</body>
</html>
