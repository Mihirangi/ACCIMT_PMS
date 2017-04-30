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
$delbutval="Cancel";
if (isset($_POST['BudCodeLst']))
{
	$BudCodeLst=$_POST['BudCodeLst'];
	$budValue = $db->Next_Record($db->Exe_Qry("SELECT the_amount FROM div_budg_tbl WHERE divb_code='$BudCodeLst';"));
	$ItemsValue = $db->Next_Record($db->Exe_Qry("SELECT SUM(item_amount) FROM item_dtls_tbl WHERE divb_code='$BudCodeLst' AND active = '1' GROUP BY divb_code;"));
	$balance = floatval($budValue[0]) - floatval($ItemsValue[0]);
}
else
{
	$balance=0.0;
}
if (isset($_POST['Itemnum']))
{
	$Itemnum=(int)$_POST['Itemnum'];
	if (isset($_POST['BudCodeLst']) && ($_POST['BudCodeLst'] != "new"))
	{
    $countt=(int)$db->Row_Count($db->Exe_Qry("SELECT divb_code FROM item_dtls_tbl WHERE divb_code='".$_POST['BudCodeLst']."';"));
	if ($Itemnum>$countt || $Itemnum==0)
	{
		$Itemnum=$countt+1;
	}
	}
}
else
{
	$Itemnum="";
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

if (isset($_POST['tar_month']))
{
	$tar_month=$_POST['tar_month'];
}
else
{
	$tar_month="";
}

if (isset($_POST['btnEdi']))
{
	if ($Descript!="" && $ReqAmunt!=""){
	$db->Exe_Qry("UPDATE item_dtls_tbl SET description='$Descript', item_amount='$ReqAmunt', target_month='$tar_month'  WHERE divb_code='$BudCodeLst' AND item_no='$Itemnum';");
	echo '<script> alert("Record Successfully Updated");</script>';}
	else{ echo '<script> alert ("Fill the Form Properly");</script>';}
}

if (isset($_POST['btnRst']))
{
	$BudCodeLst=$_POST['BudCodeLst'];
	$tar_month="";
	$ReqAmunt="";
	$Descript="";
	$Itemnum="";
}



if (isset($_POST['Itemnum']) && ($_POST['BudCodeLst'] != "new") && ($_POST['Itemnum'] != ""))
{
	$res=$db->Exe_Qry("SELECT * FROM item_dtls_tbl WHERE divb_code='$BudCodeLst' AND item_no='$Itemnum';");
	if ($db->Row_Count($res) == 1)
	{
		$vallst=$db->Next_Record($res);
		$Descript= $vallst['description'];
		$ReqAmunt= $vallst['item_amount'];
		$tar_month= $vallst['target_month'];
		if ($vallst['active']==1)
		{
			$delbutval="Cancel";
		}
		else
		{
			$delbutval="Activate";
		}
		$butOp=true;
	}
}
else if (isset($_POST['BudCodeLst']) && ($_POST['BudCodeLst'] == "new"))
{
	$Itemnum="";
	$Descript="";
	$ReqAmunt="";
	$tar_month="";
	$butOp=false;
}


if (isset($_POST['btnAdd']))
{
	if ($Itemnum!="" && $Descript!="" && $ReqAmunt!=""){
	$db->Exe_Qry("INSERT INTO item_dtls_tbl VALUES ('$BudCodeLst', '$Itemnum', '$Descript','$tar_month' , '$ReqAmunt', '1');");
	echo '<script> alert("Record Successfully Inserted");</script>';
	$butOp=true;
	}
	else{ echo '<script> alert ("Fill the Form Properly");</script>';}
}

if (isset($_POST['btnDel']))
{


	if (($delbutval=="Cancel"))
	{
		$boolval=0;
		$msgval="Record Successfully Cancled";
	}
	else if ($balance<floatval($ReqAmunt))
	{
		$boolval=0;
		$msgval="Budget Not Sufficient";
	}
	else
	{
		$boolval=1;
		$msgval="Record Successfully Activated";
	}
	
	
	
	
	
	
	$db->Exe_Qry("UPDATE item_dtls_tbl SET active='$boolval' WHERE divb_code='$BudCodeLst' AND item_no='$Itemnum';");
	
	
	
	echo '<script> alert("'.$msgval.'");</script>';
	
	
	
	
	
	$Itemnum="";
	$Descript="";
	$ReqAmunt="";
	$tar_month="";
	$butOp=false;
}
?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript">
function check_amount()
{
	
	var balance = <?php echo $balance;?>;
	var amount = document.getElementById('ReqAmunt').value;
	if (amount > balance)
	{
		alert ("Budget is not enough!!!");
		document.getElementById('ReqAmunt').value=balance;
	}
}
</script>

</head>
<body onLoad="sessSet('DivBugAddItm.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="" >
  <table id="wrapped2" align="center" width="95%"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1>Add Items Buget Request</h1>
   </caption>
   <tr>
    <td><table border="0" align="center">
      <tr>
       <th align="left">Budget Code</th>
       <th>:</th>
       <td><?php 
	   	echo'<select name = "BudCodeLst" id = "BudCodeLst"  onChange="document.form1.submit()">
		<option value="new">Please Select a Budget Code</option>';
		$ress = $db->Exe_Qry("SELECT divb_code, budg_code FROM div_budg_tbl");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["divb_code"].">".$roww["budg_code"]."</OPTION>";
		}
		echo'</select>';
	   ?>
       </td>
      </tr>
      <tr>
       <th align="left">Item Number</th>
       <th>:</th>
       <td><input type="text" name="Itemnum" id="Itemnum" value="<?php echo $Itemnum;?>" onBlur="document.form1.submit()" /> </td>
      </tr>
      <tr>
       <th align="left">Description</th>
       <th>:</th>
       <td><input type="text" name="Descript" id="Descript" size="50" value="<?php echo $Descript;?>" /></td>
      </tr>
      <tr>
       <th align="left">Target Month</th>
       <th>:</th>
       <td><select id ="tar_month" name="tar_month">
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
      <script> document.getElementById('tar_month').value="<?php echo $tar_month;?>";</script>
      </td>
      </tr>
      <tr>
       <th align="left">Req. Amount</th>
       <th>:</th>
       <td><input type="text" name="ReqAmunt" id="ReqAmunt" value="<?php echo $ReqAmunt;?>" onKeyUp="check_amount();" /> </td>
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
            <input name="btnDel" type="submit" id="btnDel" value="<?php echo $delbutval;?>" <?php if ($butOp==false){echo 'disabled="disabled"';}?> />
           </div></td>
           <td class="tbrow" width="22%"><div align="center">
            <input name="btnRst" type="submit" id="btnRst" value="Reset" <?php if ($butOp==false){echo 'disabled="disabled"';}?> />
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
    <caption>Total Budget Allocation: Rs.<?php echo $budValue[0];?></caption>
    
    
    <tr>
    <th>Serial No</th>
    <th>Description</th>
    <th>Target Month</th>
    <th>Req. Amount</th>
    <th>Status</th>
    </tr>
    <?php
	if (isset($_POST['BudCodeLst']) && ($_POST['BudCodeLst'] != "new"))
	{
    $ress=($db->Exe_Qry("SELECT * FROM item_dtls_tbl WHERE divb_code='".$_POST['BudCodeLst']."';"));
	while ($roww = $db->Next_Record($ress))
	    {
	        echo "<tr>
			<th>".$roww["item_no"]."</th>
			<th>".$roww["description"]."</th>
			<th>".$roww["target_month"]."</th>                                                               
			<th>Rs.".$roww["item_amount"]."</th>";
			if ($roww['active']==1)
			{
				$delbutval="Active";
			}
			else
			{
				$delbutval="Canceled";
			}
			echo "<th>$delbutval</th></tr>";
		}
	}
	else
	{
			echo "<tr>
			<th colspan="."5".">Please Select a Budget Code</th>
			</tr>";
	}
	?>
	</table>
    </th>
   </tr>
  </table>
 </form>
 <script language="javascript" type="text/javascript">
				document.getElementById("BudCodeLst").value = "<?php  echo $BudCodeLst;?>";
				
		</script>
 <br />
 <br />
</div>
</body>
</html>
