<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Districts</title>
<script language="javascript" src="calendar/calendar.js">
</script>
<?php
session_start();
if (!isset($_SESSION['proclogin_type']))
{
header('Location: lgin.php');
}
//if (!isset($_SESSION['pr_dtls_code']))
//header ('Location:head_recSel.php');
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations();
$fncs= new FRMOperations();

$hodemp_no=$_SESSION['proclogin_un'];

if (isset($_POST['prno']) ){$id1 =$_POST['prno'];}
if (isset($_POST['equ_detail']) ){$id2 =$_POST['equ_detail'];}
if (isset($_POST['purpose']) ){$id3 =$_POST['purpose'];}
if (isset($_POST['Number']) ){$id4 =$_POST['Number'];}
if (isset($_POST['Description']) ){$id5 =$_POST['Description'];}
if (isset($_POST['Value']) ){$id6 =$_POST['Value'];}
if (isset($_POST['T_Month']) ){$id7 =$_POST['T_Month'];}
if (isset($_POST['bud_code']) ){$id8 =$_POST['bud_code'];}
if (isset($_POST['bud_year']) ){$id9 =$_POST['bud_year'];}

//$Prno=$_SESSION['pr_no'];
$Prno=$_SESSION['PR_NUMBER'];

$DivisionCode=$_SESSION['DivisionCode'];
$Name_officer=$_SESSION['Name_officer'];
$prdate=$_SESSION['pr_date'];
$Quantity=$_SESSION['quantity'];
$Purpose=$_SESSION['Purpose'];
$DesigCode=$_SESSION['DesigCode'];
$Dtls_of_equipment=$_SESSION['Dtls_of_equipment'];
$EstCost=$_SESSION['est_cost'];
$AltReso=$_SESSION['alter_source'];
$provision_dec=$_SESSION['provision_dec'];
$SimItems=$_SESSION['simiar_item'];
$PsEqi=$_SESSION['similar_des'];
$Usage=$_SESSION['usage_no'];
$ReqFullfil=$_SESSION['req_fulfill'];
$target_month=$_SESSION['target_month'];
$pr_type=$_SESSION['pr_type_no'];

 $hod=$db->Exe_Qry("select DivisionCode from emp_details_tbl  WHERE EmpNo='$hodemp_no'");
	$row = mysql_fetch_array($hod); 
	$divhod=$row['DivisionCode'];
	
/*if (isset($_POST['butsave'])){
    $bud_user =$db->Exe_Qry("SELECT * FROM bud_req_user WHERE id='$id1'"); 
	$row = mysql_fetch_array($bud_user);
	$approved=$row['approved'];
	if ($approved=='Y'){
	echo '<script> alert("You have already Approved this Purchase Requisition");</script>';
	}
	else{
	$db->Exe_Qry("Update bud_req_user SET approved='Y' WHERE id='$id1';");
	echo '<script> alert("You Successfully Approved this Purchase Requisition");</script>';
	$bud_hod =$db->Exe_Qry("SELECT * FROM bud_req_hod WHERE bud_code='$id8' and bud_year='$id9' and hod='".$_SESSION['proclogin_user']."'"); 
	$row = mysql_fetch_array($bud_hod);
	
	if (mysql_num_rows($bud_hod)>0){
		$total=$row['total'];
		$total=$total+$id6;
		$db->Exe_Qry("Update bud_req_hod SET total=$total WHERE bud_code='$id8' and bud_year='$id9' and hod='".$_SESSION['proclogin_user']."' ");
	}
	
	else{
		$db->Exe_Qry("INSERT INTO bud_req_hod(bud_year, bud_code, total,hod) VALUES ('$id9','$id8','$id6','".$_SESSION['proclogin_user']."');");
	
	print "INSERT INTO bud_req_hod(bud_year, bud_code, total,hod) VALUES ('$id9','$id8','$id6','".$_SESSION['proclogin_user']."')";
	
	
	}
	
	
	
	}//end else
	unset($_SESSION['pr_no']);	
}

/*if (isset($_POST['rec']))
{
	print $id9;
	print $_SESSION['proclogin_user'];
	$db->Exe_Qry("Update bud_req_user SET Recommend='Y' WHERE approved='Y' and Recommend='' and bud_year='$id9' and user='".$_SESSION['proclogin_user']."'");
	$db->Exe_Qry("Update bud_req_hod SET approved='Y' WHERE bud_year='$id9' and hod='".$_SESSION['proclogin_user']."'");
	echo '<script> alert("You Successfully Recommended this Purchase Requisition");</script>';
	unset($_SESSION['pr_no']);	
}

/*if (isset($_POST['btnEdi']))
{
	$pr_number =$db->Exe_Qry("SELECT * FROM bud_req_user WHERE id='$id1'"); 
	$row = mysql_fetch_array($pr_number);
	//echo $row[0];
	$db->Exe_Qry("INSERT INTO `bud_req_user_old`(`pr_no`, `user`, `equ_detail`, `purpose`, `similar_equ`, `reason`, `value`, `target_month`, `req_date`, `bud_year`, `bud_code`, `approved`) 
	VALUES ('$row[1]','$row[2]','$row[3]','$row[4]','$row[5]','$row[6]','$row[7]','$row[8]','$row[9]','$row[10]','$row[11]','$row[12]');");
	
	$db->Exe_Qry("UPDATE `bud_req_user` SET 
	`equ_detail`='$id2',`purpose`='$id3',`similar_equ`='$id4',
	`reason`='$id5',`value`='$id6',`target_month`='$id7';");
	echo '<script> alert("You Successfully Edited this Purchase Requisition");</script>';
	unset($_SESSION['pr_no']);	
}
if(isset($_POST['butback']))
{
    unset($_SESSION['prno']);
	
}

/*if (isset($_POST['butdel']))
{
	$db->Exe_Qry("Update bud_req_user SET approved='N' WHERE id='$id1';");
	$db->Exe_Qry("INSERT INTO `pr_deny`(`pr_no`, `reason`) VALUES ('$id1',reason);");
	echo '<script> alert("You Successfully Rejected this Purchase Requisition");</script>';
	//unset($_SESSION['prno']);
	
	
}*/
?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="sessSet('head_rec.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="" onSubmit="confirmEdiDel()" >
  <?php
 $utype=$_SESSION['proclogin_type'];
 if ($utype=="HOD")
 {
 ?>
  <table id="wrapped2" align="center" width="95%"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1>Division Head Approvel</h1>
   </caption>
   <tr>
    <td><table border="0"  align="center">
      <tr>
       <th align="left">Request Number</th>
       <th>:</th>
       <td>
	   <select onchange ='document.form1.submit()' name ='prno' id ='prno'>
	   <?php 
	  
			$pr_number =$db->Exe_Qry("SELECT b.id FROM bud_req_user b,division_tbl d,emp_details_tbl e where b.user=e.EmpNo and e.DivisionCode=d.DivisionCode and d.DivisionCode='$divhod'"); // where division='$'
			echo '<option value="pqr" >--Select Request Number--</option>';
			while ($row = mysql_fetch_array($pr_number)) {
			echo "<option  value='$row[id]'>$row[id]</option>";
			}
		?>
			<script language="javascript" type="text/javascript">
			document.getElementById("prno").value="<?php  echo $id1;?>";
			</script>
		</select>
	  </td>
	  <tr>
       <th align="left">Request Applied By</th>
       <th>:</th>
       <td><input type="text" name="requestby" id="requestby"  value="<?php 
	   $pr_number =$db->Exe_Qry("SELECT ed.Fullname FROM emp_details_tbl AS ed, bud_req_user AS bru WHERE ed.EmpNo=bru.user and bru.id='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?>" /></td>
      </tr>
	  <tr>
       <th align="left">Budget Code</th>
       <th>:</th>
       <td><input type="text" name="bud_code" id="bud_code"  value="<?php 
	   $pr_number =$db->Exe_Qry("SELECT bud_code FROM bud_req_user WHERE id='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   $bud_code=$row[0];
	   ?>" /></td>
      </tr>
	  <tr>
       <th align="left">Budget Year</th>
       <th>:</th>
       <td><input type="text" name="bud_year" id="bud_year"  value="<?php 
	   $pr_number =$db->Exe_Qry("SELECT bud_year FROM bud_req_user WHERE id='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?>"/></td>
      </tr>
	  <tr>
       <th align="left">Details of the Equipments</th>
       <th>:</th>
       <td><input type="text" name="equ_detail" id="equ_detail"  value="<?php 
	   $pr_number =$db->Exe_Qry("SELECT equ_detail FROM bud_req_user WHERE id='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?>" /></td></td>
      </tr>
	  <tr>
       <th align="left">Purpose</th>
       <th>:</th>
       <td><textarea type="text" name="purpose" id="purpose"rows="4" cols="30"><?php 
	   $pr_number =$db->Exe_Qry("SELECT purpose FROM bud_req_user WHERE id='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?></textarea>
	   </td>
      </tr>
	  <tr>
       <th align="left">Number of Similar Items</th>
       <th>:</th>
       <td><input type="text" name="Number" id="Number"  value="<?php 
	   $pr_number =$db->Exe_Qry("SELECT similar_equ FROM bud_req_user WHERE id='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?>" /></td></td>
      </tr>
	  <tr>
       <th align="left">Similar Items Description</th>
       <th>:</th>
       <td><input type="text" name="Description" id="Description"  value="<?php 
	   $pr_number =$db->Exe_Qry("SELECT reason FROM bud_req_user WHERE id='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?>" /></td></td>
      </tr>
	  <tr>
       <th align="left">Approximate Value of The Equipments</th>
       <th>:</th>
       <td><input type="text" name="Value" id="Value"  value="<?php 
	   $pr_number =$db->Exe_Qry("SELECT value FROM bud_req_user WHERE id='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?>" /></td></td>
      </tr>
	  <tr>
       <th align="left">Target Month</th>
       <th>:</th>
       <td><input type="text" name="T_Month" id="T_Month"  value="<?php 
	   $pr_number =$db->Exe_Qry("SELECT target_month FROM bud_req_user WHERE id='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?>" /></td></td>
      </tr>
	  <tr>
       <th align="left">PR Date</th>
       <th>:</th>
       <td><?php 
	   $pr_number =$db->Exe_Qry("SELECT req_date FROM bud_req_user WHERE id='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?></td>
      </tr>
	 
      <tr>
       <td colspan="4"><table width="100%" border="0">
         <tr>
          <td class="tbrow" width="6%">&nbsp;</td>
          <td class="tbrow" width="22%"><div align="center">
              
          <td class="tbrow"  width="6%">&nbsp;</td>
         </tr>
		 <tr></tr>
		 <tr>
		 <td class="tbrow" width="22%"></td>
		 <td class="tbrow" width="22%"></td>
		 <td class="tbrow" width="22%"></td>
		 <td class="tbrow" width="22%"><div align="center">
       
              <div align="center"  id="browse_app" >
               <a class=" tbrow" href="DivBugRec_DDG.php" > <font color="#000000"> Back</a>
               </div>


 
           </div></td>
		 </tr>
        </table>
         </td>
      </tr>
   </table></td>
   </tr>
  
  </table>
  <br />
  <br />

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
 <br />
 <br />
</div>
</body>
</html>
