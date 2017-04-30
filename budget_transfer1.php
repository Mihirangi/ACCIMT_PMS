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
$PrCodeLst='';
if (isset($_POST['PrCodeLst']))
{
	$PrCodeLst=$_POST['PrCodeLst'];
	$PrCodeLs1t=$_POST['PrCodeLst'];
	////print 'gggg';
	////print $PrCodeLst;
}
else
{
	 $ress = $db->Exe_Qry("SELECT br_no FROM bud_req_user");
	$PrCodeLst=($db->Row_Count($ress))+1;
}
//print'yyy';
//print $PrCodeLst;
if (isset($_POST['req_date']))
{
	$req_date=$_POST['req_date'];
	//print $req_date;
}
else
{
	$req_date=date('y-m-d');
}

if (isset($_POST['txtusername']))
{
	$user=$_POST['user'];
}
else
{
	$user="";
}
if (isset($_POST['DivisionCode']))
{
	$DivisionCode=$_POST['DivisionCode'];
}
else
{
	$DivisionCode="";

}
if (isset($_POST['DesigCode']))
{
	$DesigCode=$_POST['DesigCode'];
}
else
{
	$DesigCode="";
}
if (isset($_POST['equ_detail']))
{
	$equ_detail=$_POST['equ_detail'];
}
else
{
	$equ_detail="";
}
if (isset($_POST['purpose']))
{
	$purpose=$_POST['purpose'];
}
else
{
	$purpose="";
}

if (isset($_POST['txttarget_month']))
{
	$target_month=$_POST['txttarget_month'];
}
else
{
	$target_month="";
}



if (isset($_POST['similar_equ']))
{
	$similar_equ=$_POST['similar_equ'];
}
else
{
	$similar_equ="";
}
if (isset($_POST['reason']))
{
	$reason=$_POST['reason'];
}
else
{
	$reason="";
}

if (isset($_POST['txtval']))
{
	$value=$_POST['txtval'];
}
else
{
	$value="";
}

if (isset($_POST['touser']))
{
	//$bud_code=$_POST['bud_code'];
	$touser=$_POST['touser'];
}
else
{
	$touser="New";
}
    
if (isset($_POST['txtbudgetcode']))
{
	//$bud_code=$_POST['bud_code'];
	$bud_code=$_POST['txtbudgetcode'];
}
else
{
	$bud_code="New";
}
if (isset($_POST['txtyear']))
{
	$bud_year=$_POST['txtyear'];
}
else
{
	$bud_year=date('Y');
}
$ressmytest = $db->Exe_Qry("SELECT br_no FROM bud_req_user");
if (isset($_POST['btnEdi']))
{
	if (true){
	//$db->Exe_Qry("UPDATE pr_dtls_tbl SET pr_date='$Prdate', descrip='$Descript', quantity='$Quantity', estimated_cost='$EstCost', provision_description='$PrDes', alternative_source='$AltReso', simiar_item='$SimItems', similar_des='$PsEqi', requirement_fulfill='$req_fulfill', usage='$Usage', Project='$Project', pr_type_no='$Pr_type'  WHERE br_no='$PrCodeLst'");
	$db->Exe_Qry("UPDATE bud_req_user SET  equ_detail='$equ_detail',  purpose='$purpose',similar_equ='$similar_equ',reason='$reason', value='$value',target_month='$target_month',req_date='$req_date', bud_year='$bud_year', bud_code='$bud_code' WHERE pr_no='$PrCodeLst'");
	echo '<script> alert("Record Successfully Updated");</script>';}
	else{ echo '<script> alert ("Fill the Form Properly");</script>';}
}


else if (isset($_POST['btnAdd']))
{
	$bud_year1=substr($bud_year,2,2);
	if (true){
		
		
		$empno = $_SESSION['proclogin_un'];
		$resss=$db->Exe_Qry("select sh_code from division_tbl WHERE DivisionCode=(SELECT DivisionCode FROM emp_details_tbl WHERE EmpNo='$empno')");
		$divCode=$db->Next_Record($resss);
		$div=$divCode["sh_code"];
		$bud_code1=substr($bud_code,0,5);
		print $bud_code1;
		$resss1=$db->Exe_Qry("SELECT COUNT(bud_code) FROM bud_req_user WHERE bud_year='2017' && bud_code LIKE '{$bud_code1}%' && user=$empno;");
		$bud_codep=$db->Next_Record($resss1);
		if($bud_codep['COUNT(bud_code)']==0){
		$count1=1;	
		$bud_coden=$bud_code.'/'.$div.'/'.$bud_year1.'/'.$count1;
		}
		else{
			$budcount=$bud_codep['COUNT(bud_code)'];
			$budcount=$budcount+1;
			$bud_coden=$bud_code.'/'.$div.'/'.$bud_year1.'/'.$budcount;
			//$bud_coden=$bud_codep+1;
		}
		
	$db->Exe_Qry("INSERT INTO transfer_bud 
	(req_user,tra_user,bud_code_to,amount,req_date,tra_date) 
	VALUES ('".$_SESSION['proclogin_un']."' ,'$touser','$purpose','$similar_equ','$reason','$value','$target_month','$req_date','$bud_year','$bud_coden');");
	echo '<script> alert("Record Successfully Inserted");</script>';
	$butOp=true;
	}
	else{ echo '<script> alert ("Fill the Form Properly");</script>';}
}

else if (isset($_POST['btnDel']))
{
	$db->Exe_Qry("DELETE FROM bud_req_user WHERE pr_no='$PrCodeLst';");
	echo '<script> alert("Record Successfully Deleted");</script>';
	
	
	$butOp=false;
	$purpose="";
		$PrCodeLst="new";
		$equ_detail="";
		
		$similar_equ="";
		$reason="";
		$value="";
		$bud_year=date('Y');
		$target_month="";
		$bud_code="New";
		$req_date=date('y-m-d');	
}		
else if (isset($_POST['PrCodeLst']) && ($_POST['PrCodeLst'] != $db->Row_Count($ressmytest)+1) && $_POST['PrCodeLst'] !="new" )
{
	//print 'fgfgfg';
	$PrCodeLst=$_POST['PrCodeLst'];
	//print $PrCodeLst;
	$res=$db->Exe_Qry("SELECT * FROM bud_req_user WHERE pr_no='$PrCodeLst'");
	if ($db->Row_Count($res) == 1)
	{
		//print 'fffffffff';
		$vallst=$db->Next_Record($res);
		
		$user=$vallst['user'];
		$req_date=$vallst['req_date'];
		
		
		$purpose=$vallst['purpose'];
		
		$equ_detail=$vallst['equ_detail'];
		
		$similar_equ=$vallst['similar_equ'];
		$reason=$vallst['reason'];
		$value=$vallst['value'];
		$bud_year=$vallst['bud_year'];
		$target_month=$vallst['target_month'];
		$bud_code=$vallst['bud_code'];
		
		
		
		
		//$FileNo=$vallst['fileno'];
		
		$butOp=true;
	}
}
else if ($_POST['PrCodeLst'] == $db->Row_Count($ressmytest)+1 || $_POST['PrCodeLst'] =="new")
{

		$purpose="";
		
		$equ_detail="";
		
		$similar_equ="";
		$reason="";
		$value="";
		$bud_year=date('Y');
		$target_month="";
		
		$bud_code="New";
		
		$req_date=date('y-m-d');
}
 


?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="sessSet('budget_rquest.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="" onSubmit="" >
  <table id="wrapped2" align="center" width="136%"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1>Budget Transfer</h1>
   </caption>
  
     
	 
      <tr>
	   <th align="left" >Requested Budget Codes</th>
	   <th>:</th>
	  <td><select name="budCode" id = "budCode"  onChange="document.form1.submit()">
	   <?php 
	   echo'<option value="new">Select a budget Code</option>';
	   $empno = $_SESSION['proclogin_un'];
	   $ress = $db->Exe_Qry("select bud_code_to from bud_req_user where user=$empno");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["bud_code"].">".$roww["bud_code"]."</OPTION>";
		}
	   ?>
      
       </select><?php //echo "ll"; ?>
		</td></tr>
	   <tr>
	   <th align="left" >Budget transfer from</th>
	   <th>:</th>
	  <td><select id = "touser" name = "touser">
	  
		  
		    <?php
								
								
								$values =$db->Exe_Qry("select bud_code from bud_req_user where user=$empno ");
								echo '<option value="New">--Select User--</option>';

								while ($roww = $db->Next_Record($values))
									{
								 echo "<OPTION VALUE=".$roww[1].">".$roww[0]. "    - " .$roww[1]."</OPTION>";
								 //echo $roww[0];
											}
			?>
		<script>
	   document.getElementById('touser').value="<?php echo $touser;?>";
       </script>
		    </select><?php //echo "ll"; ?>
		</td></tr>
	  
	  
	  <tr>
	    <th align="left">Amount Transfered </th>
	    <th>:</th>
	    <td><input type="text" name="txtval" id="txtval" Value="<?php echo $value;?>"/></td>
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
  
 </form>
 <script language="javascript" type="text/javascript">
				document.getElementById("PrCodeLst").value = "<?php  echo $PrCodeLst;?>";
				
		</script>
 <br />
 <br />
</div>
</body>
</html>
