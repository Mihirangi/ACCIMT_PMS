<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Districts</title>
<script language="javascript" src="calendar/calendar.js">
</script>
<script>

</script>
<?php
session_start();
if (!isset($_SESSION['proclogin_type']))
{
header('Location: lgin.php');
}

if (isset($_POST['id']) ){$id1 =$_POST['id'];}
if (isset($_POST['ddg_comment']) ){$id2 =$_POST['ddg_comment'];}

$pr_no= $_GET['pr_no'];
$user = $_GET['user'];
$bud_code = $_GET['bud_code'];
$bud_year = $_GET['bud_year'];
$equ_detail = $_GET['equ_detail'];
$purpose = $_GET['purpose'];
$similar_equ = $_GET['similar_equ'];
$reason = $_GET['reason'];
$value = $_GET['value'];
$target_month = $_GET['target_month	'];
$req_date = $_GET['req_date'];


 




	
	
	
	
	


//if (!isset($_SESSION['pr_dtls_code']))
//header ('Location:head_recSel.php');
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations();
$fncs= new FRMOperations();

$hodemp_no=$_SESSION['proclogin_un'];
$id1=$pr_no;



 $hod=$db->Exe_Qry("select DivisionCode from emp_details_tbl  WHERE EmpNo='$hodemp_no'");
	$row = mysql_fetch_array($hod); 
	$divhod=$row['DivisionCode'];
	
	$query =$db->Exe_Qry("SELECT * FROM bud_req_user WHERE pr_no='$pr_no'") ;

	$row = mysql_fetch_array($query);
	
	
	if (isset($_POST['butdel']))
{
	$db->Exe_Qry("Update bud_req_user SET approved='N' WHERE id='$id1';");
	$db->Exe_Qry("INSERT INTO `pr_deny`(`pr_no`, `reason`) VALUES ('$id1',reason);");
	echo '<script> alert("You Successfully Rejected this Purchase Requisition");</script>';
	//unset($_SESSION['prno']);
	
	
}


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
   <h1> View</h1>
   </caption>
   <tr>
    <td><table border="0"  align="center">
      
       <th align="left">Request Number</th>
       <th>:</th>
       <td><input type="text" name="prno" id="prno"  value="<?php echo $pr_no;?>" /></td>
      </tr>
	  <tr>
       <th align="left">Request Applied By</th>
       <th>:</th>
       <td><input type="text" name="user" id="user"  value=" <?php echo $row[2];?> "/> </td>
	    
      </tr>
	  <tr>
       <th align="left">Budget Code</th>
       <th>:</th>
       <td><input type="text" name="bud_code" id="bud_code"  value=" <?php echo $row[11];?>" /></td>
      </tr>
	  <tr>
       <th align="left">Budget Year</th>
       <th>:</th>
       <td><input type="text" name="bud_year" id="bud_year"  value="<?php echo $row[10];?>"/></td>
      </tr>
	  <tr>
       <th align="left">Details of the Equipments</th>
       <th>:</th>
       <td><input type="text" name="equ_detail" id="equ_detail"  value="<?php echo $row[3];?>" /></td></td>
      </tr>
	  <tr>
       <th align="left">Purpose</th>
       <th>:</th>
       <td><textarea type="text" name="purpose" id="purpose"rows="4" cols="30"><?php echo $row[4];?></textarea>
	   </td>
      </tr>
	  <tr>
       <th align="left">Number of Similar Items</th>
       <th>:</th>
       <td><input type="text" name="Number" id="Number"  value="<?php echo $row[5];?>" /></td></td>
      </tr>
	  <tr>
       <th align="left">Similar Items Description</th>
       <th>:</th>
       <td><input type="text" name="Description" id="Description"  value="<?php echo $row[6];?>" /></td></td>
      </tr>
	  <tr>
       <th align="left">Approximate Value of The Equipments</th>
       <th>:</th>
       <td><input type="text" name="Value" id="Value"  value="<?php echo $row[7];?>" /></td></td>
      </tr>
	  <tr>
       <th align="left">Target Month</th>
       <th>:</th>
       <td><input type="text" name="T_Month" id="T_Month"  value="<?php echo $row[8];?>" /></td></td>
      </tr>
	  <tr>
       <th align="left">Date</th>
       <th>:</th>
       <td><input type="text" name="req_date" id="req_date" value="<?php echo $row[9];?>" /></td>
      </tr>
      
        
      
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
         
  
   

  <div align="left"  id="browse_app" >
     <input type="submit" name="btnSub" value="Close">
         </div>
         
     <div align="left"  id="browse_app" >
    
            <input type="submit" name="butdel" id="butdel" value="Deny" accesskey="d" />
          
         </div>
               
     <div align="center"  id="browse_app" >
             
             
 
          </td>
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
  if(isset($_POST['btnSub']))
    echo "<script>window.close();</script>";
  ?>
 </form>
 <br />
 <br />
</div>
</body>
</html>
