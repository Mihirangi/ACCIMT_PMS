<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Districts</title>
<script language="javascript" src="calendar/calendar.js">
</script>
<?php
session_start();
//if (!isset($_SESSION['pr_dtls_code']))
//$pr_dtls_code=$_SESSION['pr_dtls_code'];
//{
//header('Location: head_recSel.php');
//}

require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations();
$fncs= new FRMOperations();

if (isset($_POST['prno']) ){$id1 =$_POST['prno'];}
$Prno=$_SESSION['pr_no'];

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



if (isset($_POST['butsave']))
{
	$db->Exe_Qry("UPDATE  pr_dtls_tbl SET head_rec='".$_SESSION['proclogin_un']."', head_rec_sta='Y', head_rec_date='".date('Y-m-d')."' WHERE pr_dtls_code='$pr_dtls_code';");
	echo '<script type="text/javascript">alert("You Successfully Recomended this Purchase Requisition");</script>';
	unset($_SESSION['pr_dtls_code']);
	
}
if(isset($_POST['butback']))
{
    unset($_SESSION['pr_dtls_code']);
	
}

if (isset($_POST['butdel']))
{
	$db->Exe_Qry("UPDATE pr_dtls_tbl SET rec_ddgc='".$_SESSION['proclogin_un']."', rec_ddg_sta='N', rec_ddg_date='".date('Y-m-d')."' WHERE pr_dtls_code='$pr_dtls_code';");
	echo '<script> alert("You Successfully Rejected this Purchase Requisition");</script>';
	unset($_SESSION['pr_dtls_code']);
	
	
}
?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="sessSet('head_rec.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action=""  >
 <?php
 $utype=$_SESSION['proclogin_type'];
 if ($utype=="ADD")
 {
 ?>
  <table id="wrapped2" align="center" width="95%"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1>Purchase Requisition</h1>
   </caption>
   <tr>
    <td><table border="1" align="center">
      <tr>
       <th align="left">Pr Number</th>
       <th>:</th>
       <td>
	   <select onchange ='document.form1.submit()' name ='prno' id ='prno'>
	   <?php //echo $Prno; *DivisionCode *DesigCode
			//$pr_number =$db->Exe_Qry("SELECT pr_no, pr_date, Name_officer, DivisionCode, DesigCode, Dtls_of_equipment, purpose, quantity FROM pr_dtls_tbl where pr_no='$Prno'"); 
			$pr_number =$db->Exe_Qry("SELECT pr_no FROM pr_dtls_tbl");
			echo '<option value="pqr" >--Select Number--</option>';
			while ($row = mysql_fetch_array($pr_number)) {
			echo "<option  value='$row[0]'>$row[0]</option>";
			}
		?>
			<script language="javascript" type="text/javascript">
			document.getElementById("prno").value="<?php  echo $id1;?>";
			</script>
		</select>
	  </td>
	  <tr>
       <th align="left">Division</th>
       <th>:</th>
       <td><?php 
	   //echo $DivisionCode;
	   $pr_number =$db->Exe_Qry("SELECT DivisionCode FROM pr_dtls_tbl where pr_no='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   $pr_number2 =$db->Exe_Qry("SELECT Division FROM division_tbl where DivisionCode='$row[0]'"); 
	   $row2 = mysql_fetch_array($pr_number2);
	   echo $row2[0];
	   //echo $row[0];
	   ?></td>
      </tr>
     <tr>
       <th align="left">name of the Officer</th>
       <th>:</th>
       <td><?php 
	   //echo $Name_officer;
	   $pr_number =$db->Exe_Qry("SELECT Name_officer FROM pr_dtls_tbl where pr_no='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?></td>
      </tr>
      <tr>
       <th align="left">PR Date</th>
       <th>:</th>
       <td><?php 
	   //echo $Prdate;
	   $pr_number =$db->Exe_Qry("SELECT pr_date FROM pr_dtls_tbl where pr_no='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?></td>
      </tr>
    
      <tr>
       <th align="left">Quantity</th>
       <th>:</th>
       <td><?php 
	   //echo $Quantity;
	   $pr_number =$db->Exe_Qry("SELECT purpose FROM pr_dtls_tbl where pr_no='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?></td>
      </tr>
      <th align="left">Purpose</th>
       <th>:</th>
       <td><?php 
	   //echo $Purpose;
	   $pr_number =$db->Exe_Qry("SELECT Name_officer FROM pr_dtls_tbl where pr_no='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?></td>
      </tr>
      <tr>
       <th align="left">Designation</th>
       <th>:</th>
       <td><?php 
	   //echo $DesigCode;
	   $pr_number =$db->Exe_Qry("SELECT DesigCode FROM pr_dtls_tbl where pr_no='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   $pr_number2 =$db->Exe_Qry("SELECT Designation FROM designation_tbl where DesigCode='$row[0]'"); 
	   $row2 = mysql_fetch_array($pr_number2);
	   echo $row2[0];
	   ?></td>
      </tr>
      <tr>
       <th align="left">Datails of the Equipment</th>
       <th>:</th>
       <td><?php 
	   //echo $Dtls_of_equipment;
	   $pr_number =$db->Exe_Qry("SELECT Dtls_of_equipment FROM pr_dtls_tbl where pr_no='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?></td>
      </tr>
	  
      
      <tr>
       <th align="left">Estimated Cost</th>
       <th>:</th>
       <td><?php 
	   //echo $Quantity;
	   $pr_number =$db->Exe_Qry("SELECT est_cost FROM pr_dtls_tbl where pr_no='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	    ?></td>
      </tr>
	  <tr>
       <th align="left">Alternative Source</th>
       <th>:</th>
      <td><?php 
	   //echo $Quantity;
	   $pr_number =$db->Exe_Qry("SELECT alter_source FROM pr_dtls_tbl where pr_no='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?></td>
      </tr>
      <tr>
       <th align="left">Provision Description</th>
       <th>:</th>
       <td><?php 
	   //echo $Quantity;
	   $pr_number =$db->Exe_Qry("SELECT provision_des FROM pr_dtls_tbl where pr_no='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?></td>
      </tr>
      
      <tr>
       <th align="left"> Number of similar Items</th>
       <th>:</th>
       <td><?php 
	   //echo $Quantity;
	   $pr_number =$db->Exe_Qry("SELECT simiar_item FROM pr_dtls_tbl where pr_no='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?></td>
      </tr>
      <tr>
       <th align="left">Similar Items Description</th>
       <th>:</th>
       <td><?php 
	   //echo $Quantity;
	   $pr_number =$db->Exe_Qry("SELECT similar_des FROM pr_dtls_tbl where pr_no='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?></td>
      </tr>
	  
	  <tr>
       <th align="left">Usage</th>
       <th>:</th>
       <td><?php 
	   //echo $Quantity;
	   $pr_number =$db->Exe_Qry("SELECT usage_no FROM pr_dtls_tbl where pr_no='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?></td>
      </tr>
      
      <tr>
       <th align="left"> Requirement Fulfill</th>
       <th>:</th>
       <td><?php 
	   //echo $Quantity;
	   $pr_number =$db->Exe_Qry("SELECT req_fulfill FROM pr_dtls_tbl where pr_no='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?></td>
      </tr>
	  
	  <tr>
       <th align="left">Target Month</th>
       <th>:</th>
       <<td><?php 
	   //echo $Quantity;
	   $pr_number =$db->Exe_Qry("SELECT target_month FROM pr_dtls_tbl where pr_no='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?></td>>
      </tr>
      
      <tr>
       <th align="left">PR Type</th>
       <th>:</th>
       <<td><?php 
	   //echo $Quantity;
	   $pr_number =$db->Exe_Qry("SELECT pr_type_no FROM pr_dtls_tbl where pr_no='$id1'"); 
	   $row = mysql_fetch_array($pr_number);
	   echo $row[0];
	   ?></td>>
      </tr>
      <tr>
       <td colspan="4"><table width="100%" border="0">
         <tr>
          <td class="tbrow" width="6%">&nbsp;</td>
          <td class="tbrow" width="22%"><div align="center">
            <input type="submit" name="butsave" id="butsave" value="Approve" accesskey="a" />
           </div></td>
          <td class="tbrow" width="22%"><div align="center">
            <input type="submit" name="butdel" id="butdel" value="Deny" accesskey="d" />
           </div></td>
          <td class="tbrow" width="22%"><div align="center">
            <input type="submit" name="butback" id="butback" value="Back to List" accesskey="l" />
           </div></td>
          <td class="tbrow"  width="6%">&nbsp;</td>
         </tr>
        </table>
         </td>
      </tr>
   </table></td>
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
  <h1>You are not a Deputy director general</h1>
  </th></tr></table>
  <?php
  }
  ?>
 </form>

  <br />
  <br />
 </form>
 <br />
 <br />
</div>
</body>
</html>

  