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



if (isset($_POST['butsave']))
{
	$db->Exe_Qry("Update pr_dtls_tbl SET rec_ddg='".$_SESSION['proclogin_un']."', rec_ddg_sta='Yes', rec_ddg_date='".date('Y-m-d')."' WHERE pr_no='$id1';");
	echo '<script> alert("You Successfully Recomended this Purchase Requisition");</script>';
	unset($_SESSION['pr_no']);
}
if(isset($_POST['butback']))
{
    unset($_SESSION['pr_no']);
	
}

if (isset($_POST['butdel']))
{
	$db->Exe_Qry("UPDATE pr_dtls_tbl SET rec_ddgc='".$_SESSION['proclogin_un']."', rec_ddg_sta='No', rec_ddg_date='".date('Y-m-d')."' WHERE pr_no='$id1';");
	echo '<script> alert("You Successfully Rejected this Purchase Requisition");</script>';
	unset($_SESSION['pr_no']);
	
	
}

?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="sessSet('ddg_rec.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="" onSubmit="confirmEdiDel()" >
  <?php
 $utype=$_SESSION['proclogin_type'];
 if ($utype=="ADD")
 {
 ?>
 
  <table id="wrapped2" align="center" width="95%"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1>DDG (Deputy Director General)Approvel</h1>
   </caption>
   <tr>
    <td><table border="1" align="center">
      <tr>
       <th align="left">Divition</th>
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
	  
  <?php
  }
  else
  {
  ?>
  <table align="center" border="0" style="vertical-align:middle">
  <tr>
  <th>
  <h1>You are not a Deputy Director General</h1>
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

  