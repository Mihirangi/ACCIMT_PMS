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


if (isset($_POST['divitionlist']) && ($_POST['divitionlist'] != "new"))
{
	$divitionlist=$_POST['divitionlist'];
	$hod=$db->Exe_Qry("select l.Emp_No from emp_details_tbl e,login_tbl_leave l WHERE  e.EmpNo=l.Emp_No and e.DivisionCode='$divitionlist' and l.Emp_type='HOD'");
	$row = mysql_fetch_array($hod); 
	$hod1=$row['Emp_No'];
	
}
else 
{ unset($divitionlist); }

if (isset($_POST['BudYerLst']))
{
	$BudYerLst=$_POST['BudYerLst'];
}

if (isset($_POST['test']))
{
	$test=$_POST['test'];
}

if (isset($_POST["Confirm"])){
	//print $BudYerLst;
	//print $_SESSION['proclogin_user'];
$mysql="SELECT * FROM bud_req_hod WHERE  bud_year='$BudYerLst' and hod='$hod1' and appd_DDG='y'";
	$myresult=$db->Exe_Qry($mysql);
	$i = 0;
while($myrow = $db->Next_Record($myresult)) 
{
	$BudYerLst= $myrow["bud_year"];
	$appAmount= floatval($_POST["test".$i]);
	$bud_code= $myrow["bud_code"];
	
	
		$db->Exe_Qry("UPDATE bud_req_hod SET appd_DG='Y', appd_total='$appAmount' WHERE  bud_year='$BudYerLst' and bud_code='$bud_code' and hod='$hod1'");
		
	
	$i++;
}
echo '<script> alert(" Approved Successfully ");</script>';
}


?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>


<body onLoad="sessSet('DivBugRec_DG.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="" >
  <table id="wrapped2" align="center" width="95%"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1>Buget Request Confirmation For Divisions</h1>
   </caption>
   
 
    <tr>
    <td><table border="0" align="center">
      <tr>
       <th align="left">Division</th>
       <th>:</th>
       <td><select name="divitionlist" id = "divitionlist" onChange="document.form1.submit()" >
	   <?php 
	   echo'<option value="new">Please Select a Division</option>';
		$ress = $db->Exe_Qry("select * from division_tbl");
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
		<option value="'.($yr2-2).'">'.($yr2-2).'</option>
		<option value="'.($yr2-1).'">'.($yr2-1).'</option>
		<option ';
		if (!isset($BudYerLst))
	   {
		echo 'selected ';
	   }
		echo'value="'.($yr2).'">'.($yr2).'</option>
		<option value="'.($yr2+1).'">'.($yr2+1).'</option>
		<option value="'.($yr2+2).'">'.($yr2+2).'</option>';
		echo'</select>';
	   }//end of isset divitionlist
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
<td></td>
<td align='right'><p><input name="submit1" type="submit" value="Search" align ="right" class="button"/></p>

</td>
</tr>
 
 
 
 </table>

<br />
<br />
<br />
<br />

 
 <?php
 
 if (isset($_POST["submit1"])){
$sql="SELECT * FROM bud_req_hod WHERE  bud_year='$BudYerLst' and hod='$hod1' and appd_DDG='y'";	
$result=$db->Exe_Qry($sql);

echo "<table border='1' align='center' bgcolor='#CC9900' bordercolorlight='#CC6600'>
<tr >
<th width='100'>Budget Code</th>
<th width='100'>Total Amount</th>
<th width='100'>Approve Amount</th>
</tr>";

$i = 0;
while($row = $db->Next_Record($result)) {
	
    echo "<tr>";
    echo '<td style="color:#000" bgcolor="#FFFFFF"`>' . $row['bud_code'] . "</td>";	
    echo '<td style="color:#000" bgcolor="#FFFFFF"`>' . $row['total'] . "</td>";
	echo '<td><input type="text" name="test'."$i".'" value="'.$row['req_amount'].'" > </td>';  
	echo "</tr>";
	$i++;
}



echo "<tr><td></td><td></td><td></td>";

echo '<td><input name="Confirm" type="submit"  align ="center" class="button" value="Confirm"></td></tr></table>'; 

}




	?>
  
 
 
 
 
 
  </form>
</div>
</body>
</html> 