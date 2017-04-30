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
$db =new DBOperations();
$fncs= new FRMOperations();
$butOp=false;
if (isset($_POST['divitionlist']) && ($_POST['divitionlist'] != "new"))
{
	$divitionlist=$_POST['divitionlist'];
}
else 
{ unset($divitionlist); }

if (isset($_POST['BudYerLst']))
{
	$BudYerLst=$_POST['BudYerLst'];
}
if (isset($_POST['BudCodeLst']))
{
	$BudCodeLst=$_POST['BudCodeLst'];
}
if (isset($_POST['Descript']))
{
	$Descript=$_POST['Descript'];
}
else
{
	$Descript="";
}
if (isset($_POST['ReqAmunt']))
{
	$ReqAmunt=$_POST['ReqAmunt'];
}
else
{
	$ReqAmunt="";
}

if (isset($_POST['btnEdi']))
{
	if ($Descript!="" && $ReqAmunt!=""){
	$db->Exe_Qry("UPDATE div_budg_tbl SET user_descrip='$Descript', req_amount='$ReqAmunt', the_amount='$ReqAmunt' WHERE budg_code='$BudCodeLst';");
	echo '<script> alert("Record Successfully Updated");</script>';}
	else{ echo '<script> alert ("Fill the Form Properly");</script>';}
}

if (isset($_POST['BudCodeLst']) && ($_POST['BudCodeLst'] != "new"))
{
	$res=$db->Exe_Qry("SELECT * FROM div_budg_tbl WHERE budg_code='$BudCodeLst';");
	if ($db->Row_Count($res) == 1)
	{
		$vallst=$db->Next_Record($res);
		$Descript= $vallst['user_descrip'];
		$ReqAmunt= $vallst['req_amount'];
		$butOp=true;
	}
}
else if (isset($_POST['BudCodeLst']) && ($_POST['BudCodeLst'] == "new"))
{
	$Descript="";
	$ReqAmunt="";
	$butOp=false;
} 

if (isset($_POST['btnAdd']))
{
	if ($Descript!="" && $ReqAmunt!=""){
	$db->Exe_Qry("INSERT INTO div_budg_tbl (div_code, budg_code, budg_year, user_descrip, req_amount, req_confirm, app_confirm, the_amount ) VALUES ('$divitionlist', '$BudCodeLst', '$BudYerLst', '$Descript', '$ReqAmunt', 'Y', 'N', '$ReqAmunt');");
	echo '<script> alert("Record Successfully Inserted");</script>';
	$butOp=true;
	}
	else{ echo '<script> alert ("Fill the Form Properly");</script>';}
	
}

if (isset($_POST['btnDel']))
{
	$db->Exe_Qry("DELETE FROM div_budg_tbl WHERE budg_code='$BudCodeLst';");
	echo '<script> alert("Record Successfully Deleted");</script>';
	$Descript="";
	$ReqAmunt="";
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
   <h1>Buget Request From Divisions</h1>
   </caption>
   <tr>
    <td><table border="0" align="center">
      <tr>
       <th align="left">Division</th>
       <th>:</th>
       <td><select name="divitionlist" id = "divitionlist" input type="text" onChange="document.form1.submit()" >
	   <?php 
	   
	   $empno = $_SESSION['proclogin_un'];
		$ress = $db->Exe_Qry("select * from division_tbl WHERE DivisionCode=(SELECT DivisionCode FROM emp_details_tbl WHERE EmpNo='$empno')");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["DivisionCode"].">".$roww["Division"]."</OPTION>";
		}
	   ?>
       <script language="javascript" type="text/javascript">
document.getElementById("divitionlist").value="<?php  echo $divitionlist;?>";
</script>
       </select></td>
      </tr>
      <tr>
       <th align="left">
         Budget Year</th>
       <th>:</th>
       <td><?php 
	   if (isset($divitionlist))
	   {
	   $yr=date('y');
	   $yr2=date('Y');
	   
	   echo'<select name="BudYerLst" id = "BudYerLst" onChange="document.form1.submit()">
		<option value="'.($yr-2).'">'.($yr2-2).'</option>
		<option value="'.($yr-1).'">'.($yr2-1).'</option>
		<option ';
		echo'value="'.($yr).'">'.($yr2).'</option>
		
		
		<option value="'.($yr+1).'"';
		if (!isset($BudYerLst))
	   {
		echo ' selected ';
	   }
		echo '>'.($yr2+1).'</option>
		
		
		
		
		<option value="'.($yr+2).'">'.($yr2+2).'</option>';
		echo'</select>';
	   }
	   else
	   {
		   echo '<select></select>';
		   unset($BudYerLst);
	   }
	  if (isset($BudYerLst))
	   {?>
		<script language="javascript" type="text/javascript">
		document.getElementById("BudYerLst").value="<?php echo "$BudYerLst";?>";
		</script>
		 <?php
	   } 
	   
	   ?>
       </td>
      </tr>
      <tr>
       <th align="left">Budget Code</th>
       <th>:</th>
       <td><?php 
	   if (isset($divitionlist))
	   {
	   if (!isset($BudYerLst))
	   {
		   $BudYerLst = $yr+1;
	   }
	   echo'<select name = "BudCodeLst" id = "BudCodeLst"  onChange="document.form1.submit()">
		<option value="new">Please Select a Budget Code</option>';
		$valls= $db->Next_Record($db->Exe_Qry("SELECT sh_code FROM division_tbl WHERE DivisionCode='$divitionlist';"));
		$ress = $db->Exe_Qry("SELECT budg_code, Budg_descrip FROM budget_tbl");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["budg_code"]."/".$valls["sh_code"]."/".$BudYerLst.">".$roww["budg_code"]."/".$valls["sh_code"]."/".$BudYerLst." - ".$roww["Budg_descrip"]."</OPTION>";
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
       <th align="left">Description</th>
       <th>:</th>
       <td><input type="text" name="Descript" id="Descript" size="50" value="<?php echo $Descript;?>" /></td>
      </tr>
      <tr>
       <th align="left">Req. Amount</th>
       <th>:</th>
       <td><input type="text" name="ReqAmunt" id="ReqAmunt" value="<?php echo $ReqAmunt;?>" /> </td>
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
  <table id="wrapped" align="center" cellspacing="3" cellpadding="5">
   <tr>
    <th>
    <table id="tbl_district" border="1"  align="center" style="font-size:16px;" >
    <tr>
    <th>Division</th>
    <th>Budget Year</th>
    <th>Budget Code</th>
    <th>Description</th>
    <th>Req. Amount</th>
    <th>Appr. Amount</th>
    </tr>
    <?php
    $ress=($db->Exe_Qry("SELECT * FROM div_budg_tbl Where div_code=(SELECT DivisionCode FROM emp_details_tbl WHERE EmpNo='$empno');"));
	while ($roww = $db->Next_Record($ress))
	    {
			$rrrr=($db->Exe_Qry("SELECT Division FROM division_tbl WHERE DivisionCode='".$roww["div_code"]."';"));
			$rrrrr = $db->Next_Record($rrrr);
	        echo "<tr>
			<th>".$rrrrr["Division"]."</th>
			<th>".$roww["budg_year"]."</th>
			<th>".$roww["budg_code"]."</th>
			<th>".$roww["user_descrip"]."</th>
			<th>".$roww["req_amount"]."</th>
			<th>".$roww["appr_amount"]."</th>
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
					document.getElementById("Descript").value= "";
					document.getElementById("ReqAmunt").value= "";
					document.getElementById("btnAdd").disabled=false;
					document.getElementById("btnEdi").disabled=true;
					document.getElementById("btnDel").disabled=true;
				}
		</script>
</div>
</body>
</html>
