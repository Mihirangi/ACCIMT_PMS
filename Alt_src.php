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
    
    
   
    
    if (isset($_POST['DivisionCode']) && ($_POST['DivisionCode'] != "--Select Project Code--")){
		$DivisionCode =  $_POST['DivisionCode'];
		//print $pt_code; 
	}



 if (isset($_POST['DivisionCode']) && ($_POST['DivisionCode'] != "--Select Division--")){
     $empno = $_SESSION['proclogin_un'];
			$res=$db->Exe_Qry("SELECT a.bud_code,b.DivisionCode FROM bud_req_user a, emp_details_tbl b where b.DivisionCode='$DivisionCode'");
			if ($db->Row_Count($res) == 1){
				$vallst=$db->Next_Record($res);
				$bud_code = $vallst[0];
				
			}
		}else if (isset($_POST['DivisionCode']) && ($_POST['DivisionCode'] != "new")){
				$bud_code = "";
	 
				
				
				
		}
		
    
    
    
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

if (isset($_POST['txtbudgetcode']))
{
	//$bud_code=$_POST['bud_code'];
	$bud_code=$_POST['txtbudgetcode'];
}
else
{
	$bud_code="New";
}
	
	if (isset($_POST['reqamt']))
{
	//$bud_code=$_POST['bud_code'];
	$reqamt=$_POST['reqamt'];
}
else
{
	$reqamt="New";
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
	//$db->Exe_Qry("UPDATE pr_dtls_tbl SET pr_date='$Prdate', descrip='$Descript', quantity='$Quantity', estimated_cost='$EstCost', provision_description='$PrDes', alternative_source='$AltReso', simiar_item='$SimItems', similar_des='$PsEqi', requirement_fulfill='$req_fulfill', usage='$Usage', Project='$Project', pr_type_no='$Pr_type'  WHERE pr_no='$PrCodeLst'");
	$db->Exe_Qry("UPDATE bud_req_user SET  equ_detail='$equ_detail',  purpose='$purpose',similar_equ='$similar_equ',reason='$reason', value='$value',target_month='$target_month',req_date='$req_date', bud_year='$bud_year', bud_code='$bud_code' WHERE br_no='$PrCodeLst'");
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
		
	$db->Exe_Qry("INSERT INTO bud_req_user 
	(br_no,user,equ_detail,purpose, similar_equ,reason,value,target_month,req_date,bud_year,bud_code) 
	VALUES ('$PrCodeLst','".$_SESSION['proclogin_un']."' ,'$equ_detail','$purpose','$similar_equ','$reason','$value','$target_month','$req_date','$bud_year','$bud_coden');");
	echo '<script> alert("Record Successfully Inserted");</script>';
	$butOp=true;
	}
	else{ echo '<script> alert ("Fill the Form Properly");</script>';}
}

else if (isset($_POST['btnDel']))
{
	$db->Exe_Qry("DELETE FROM bud_req_user WHERE br_no='$PrCodeLst';");
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
	$res=$db->Exe_Qry("SELECT * FROM bud_req_user WHERE br_no='$PrCodeLst'");
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
   <h1>Alternative Budget Source request</h1>
   </caption>
  
     
	 
     
	   </tr>
	 
    
    <tr>
	   <th align="left" >Division</th>
	   <th>:</th>
	  <td><select id ="DivisionCode" name ="DivisionCode" onchange = "document.form1.submit()">
	  
		  
		    <?php
								
							
			 $empno = $_SESSION['proclogin_un'];					
          
          
          $ress1 = $db->Exe_Qry("select * from division_tbl WHERE DivisionCode=(SELECT DivisionCode FROM emp_details_tbl WHERE EmpNo='$empno')");
          while ($roww1 = $db->Next_Record($ress1))
	    {
								echo "<OPTION VALUE=".$roww1["DivisionCode"].">".$roww1["Division"]."</OPTION>";
        }
          
$values =$db->Exe_Qry("select * from division_tbl");
								while ($roww = $db->Next_Record($values))
									{
								 echo "<OPTION VALUE=".$roww["DivisionCode"].">".$roww["Division"]. "    - " .$roww[0]."</OPTION>";
								 //echo $roww[0];
											}
			?>
          <script>
	   document.getElementById('DivisionCode').value="<?php echo $DivisionCode;?>";
       </script>
		
		    </select><?php  echo $DivisionCode; ?>
		</td></tr>
	  
     <tr>
	   <th align="left" >Budget Code</th>
	   <th>:</th>
	  <td><select id ="txtbudgetcode" name ="txtbudgetcode">
	  
	  
		  
		    <?php
								if (isset($_POST['DivisionCode']))
{
	//$bud_code=$_POST['bud_code'];
	$bud_code=$_POST['txtbudgetcode'];
	$values =$db->Exe_Qry("SELECT * from div_budg_tbl where div_code=$DivisionCode");
}
else
{
	$values =$db->Exe_Qry("SELECT * from div_budg_tbl");
}
									
								
								//echo '<option value="New">--Select Budget Code--</option>';

								while ($roww = $db->Next_Record($values))
									{
								 echo "<OPTION VALUE=".$roww["budg_code"].">".$roww["budg_code"]. "    - " .$roww[0]."</OPTION>";
								 //echo $roww[0];
											}
			?>
		<script>
	   document.getElementById('txtbudgetcode').value="<?php echo $bud_code;?>";
       </script>
		    </select><?php  echo $DivisionCode; ?>
		</td></tr>
    
	  
  <tr>
       <th align="left">Request Amount</th>
       <th>:</th>
       <td><input type="text" name="reqamt" id="reqamt" Value="<?php echo $reqamt;?>"/></td>
      </tr>

      
	 
	 </table>
	  
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
  
    </th>
   </tr>
  </table>
 </form>
 
 <br />
 <br />
</div>
</body>
</html>
