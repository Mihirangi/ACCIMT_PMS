<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Districts</title>

<?php
session_start();
$myi = 0;
if (!isset($_SESSION['proclogin_type']))
{
header('Location: lgin.php');
}
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db = new DBOperations("attend_db");
$fncs= new FRMOperations();
$butOp=false;
	$hodemp_no=$_SESSION['proclogin_un'];
    $uid1 = $db->Exe_Qry("select EmpNo from emp_details_tbl where EmpNo=285");
    $row = mysql_fetch_array($uid1); 
	$uid=$row[0];
    //print $hodemp_no;
    


if (isset($_POST['divitionlist']) && ($_POST['divitionlist'] != "new"))
{
	$divitionlist=$_POST['divitionlist'];
	$hod=$db->Exe_Qry("select l.Emp_No from emp_details_tbl e,login_tbl_leave l WHERE  e.EmpNo=l.Emp_No and e.DivisionCode='$divitionlist' and l.Emp_typep='HOD'");
	$row = mysql_fetch_array($hod); 
	$hod1=$row['Emp_No'];
	 $hod=$db->Exe_Qry("select DivisionCode from emp_details_tbl  WHERE EmpNo='$hod1'");
	$row = mysql_fetch_array($hod); 
	$divhod=$row['DivisionCode'];
	$flag1='i'; //$flag1 is used to identify whether user select individual div or all
	//print $flag1;
}
else {
//unset($divitionlist); 
}

if (isset($_POST['divitionlist']) && ($_POST['divitionlist'] == "new"))
{
	$divitionlist=$_POST['divitionlist'];
  $flag1='a';
  //print $flag1;
	//$divitionlist=$_POST['divitionlist'];
	//$hod=$db->Exe_Qry("select l.Emp_No from emp_details_tbl e,login_tbl_leave l WHERE  e.EmpNo=l.Emp_No and e.DivisionCode='$divitionlist' and l.Emp_typep='HOD'");
	//$row = mysql_fetch_array($hod); 
	//$hod1=$row['Emp_No'];
	// $hod=$db->Exe_Qry("select DivisionCode from emp_details_tbl  WHERE EmpNo='$hod1'");
//	$row = mysql_fetch_array($hod); 
	//$divhod=$row['DivisionCode'];
	//$flag1='i'; //$flag1 is used to identify whether user select individual div or all
}
else 
{ 

//unset($divitionlist);
 }

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
if( $flag1=='i'){
	
$mysql="SELECT * FROM emp_details_tbl e, pc_bud_req_user b,division_tbl d WHERE b.user=e.EmpNo and e.DivisionCode=d.DivisionCode and e.DivisionCode='$divitionlist' and b.recommend='y' order by b.bud_code ";
}
if( $flag1=='a'){
	
$mysql="SELECT * FROM pc_bud_req_user WHERE  bud_year='$BudYerLst' order by br_no";
	echo '<script>alert ("eeeeee");</script>';
}
	$myresult=$db->Exe_Qry($mysql);
	$i = 0;
	$appAmounttot=0;
while($myrow = $db->Next_Record($myresult)) 
{
	$BudYerLst= $myrow["bud_year"];
	$appAmount= floatval($_POST["test".$i]);
	$bud_code= $myrow["bud_code"];
	$user= $myrow["user"];
	$appAmounttot=$appAmounttot+$appAmount;
	//print $BudYerLst;
	//print $appAmount;
	//print 'bbbb';
//print '<br>';	
	//print $bud_code;
	//print $user;
	//print '<br>';	
		//$db->Exe_Qry("UPDATE bud_req_hod SET appd_finance='Y', appd_totalfinance='$appAmount' WHERE  bud_year='$BudYerLst' and bud_code='$bud_code' and hod='$hod1'");
	$db->Exe_Qry("UPDATE pc_bud_req_user SET  value_fin='$appAmount' ,balance='$appAmount' WHERE  bud_year='$BudYerLst' and bud_code='$bud_code' and user='$user'");	
	
	$i++;
}
echo '<script> alert(" Approved Successfully ");</script>';
}


?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>


<body onLoad="sessSet('DivBugRec_Finance.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="" >
     <?php
     
     
     $uid1 = $db->Exe_Qry("select EmpNo from emp_details_tbl where EmpNo=285");
    $row = mysql_fetch_array($uid1); 
	$uid=$row[0];
   // print $uid;
    if ($uid==$hodemp_no)
	{?>
 <table id="wrapped2" align="center" width="95%"  border="0" cellpadding="10" cellspacing="1">

   <caption>
   <h1>Approval of Finance Division</h1>
   </caption>
   
 
    <tr>
    <td><table border="0" align="center">
      <tr>
       <th align="left">Division</th>
       <th>:</th>
       <td><select name="divitionlist" id = "divitionlist" onChange="document.form1.submit()" >
	   <?php 
	   echo'<option value="new">All Divisions</option>';
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

<?php
	}
  else
  {
  ?>
  <table align="center" border="0" style="vertical-align:middle">
  <tr>
  <th>
  <h1>you don't have permission to access</h1>
  </th>
  </tr>
  </table>
  <?php
  }
  ?>
			

  <br />
  

 
 <?php
 
 if (isset($_POST["submit1"])){
//filling the first form?>



<tr>
 
         <!--<td class="tbrow" width="22%"><div align="right">
            <input type="submit" name="rec" id="rec" value="View All" size="100%"/>
           </div></td >-->
	</tr>
    <div align="center"  id="browse_app">
  <a class=" tbrow" href="ddg_view.php">View All</a>
</div>
	</table>
   
    </th>
   </tr>
  </table>
<!--end of filling the first form	-->
<?php 
//$sql="SELECT * FROM bud_req_hod WHERE  bud_year='$BudYerLst' and hod='$hod1' and appd_DDG='y'";	
if( $flag1=='i'){
	$sql="SELECT * FROM emp_details_tbl e, pc_bud_req_user b,division_tbl d WHERE b.user=e.EmpNo and e.DivisionCode=d.DivisionCode and e.DivisionCode='$divitionlist' and b.recommend='y' order by b.bud_code";
//$sql="SELECT * FROM bud_req_user WHERE  bud_year='$BudYerLst' ";
}
else if ($flag1=='a')
{	
//print $BudYerLst;
$sql="SELECT * FROM pc_bud_req_user WHERE  bud_year='$BudYerLst' order by br_no";
//print $sql;
}

//$sql1="SELECT * FROM emp_details_tbl e, bud_req_user b,division_tbl d WHERE b.user=e.EmpNo and e.DivisionCode=d.DivisionCode and d.DivisionCode='$divhod' and b.recommend='y'";
//$pr_number =$db->Exe_Qry("SELECT * FROM emp_details_tbl e, bud_req_user b,division_tbl d WHERE b.user=e.EmpNo and e.DivisionCode=d.DivisionCode and d.DivisionCode='$divhod' and b.recommend='y'");
$result=$db->Exe_Qry($sql);

echo "
</br>
</br>
<table id='tbl_district' border='1' align='center'>
<tr >
<th width='100'>Budget Requst No</th>
<th width='100'>User</th>
<th width='100'>Budget Code</th>
<th width='100'>Equipment details</th>
<th width='100'>Target Month</th>
<th width='100'>Amount</th>
<th width='100'>Approved Amount</th>
</tr>";

$mytotal = 0.00;
while($row = $db->Next_Record($result)) {
	
    echo "<tr>";
	 echo '<td style="color:#000" bgcolor="#FFFFFF"`>' .$row["br_no"]. "</td>";
	  echo '<td style="color:#000" bgcolor="#FFFFFF"`>' . $row['user'] . "</td>";		
    echo '<td style="color:#000" bgcolor="#FFFFFF"`>' . $row['bud_code'] . "</td>";	
    echo '<td style="color:#000" bgcolor="#FFFFFF"`>' . $row['equ_detail'] . "</td>";
	echo '<td style="color:#000" bgcolor="#FFFFFF"`>' . $row['target_month'] . "</td>";
	 echo '<td style="color:#000" bgcolor="#FFFFFF"`>' . $row['value'] . "</td>";	
	echo '<td><input type="number" onKeyUp="calTotal()" onBlur="calTotal()" name="test'."$myi".'" id="test'."$myi".'" value="'.$row['value_fin'].'" > </td>';  
	echo "</tr>";
	$myi++;
	$mytotal+=floatval($row['value_fin']);
}

//$appAmounttot='20000';

echo "<tr><td></td><td></td><td></td>";
echo '<td><input name="Confirm" type="submit"  align ="center" class="button" value="Confirm"></td><td><input type = "text" name = "txttotal" id = "txttotal" value="'.$mytotal.'"  /></td></tr>
<td></table>'; 

}




	?>
 <script>
 function calTotal()
 {
	 var boxCount = <?php echo $myi;?>;
	 var total = 0.00;
	 for(i=0;i<boxCount;i++)
	 {
		var myelement=document.getElementById('test'+i).value;
		if (myelement.length==0){ myelement="0";}
		total+=parseFloat(myelement);
	 }
	 
	 document.getElementById('txttotal').value=total;
 }
 </script>
 
 
  </form>
</div>
</body>
</html> 