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
//header('Location: lgin.php');
}
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations('d');
$fncs= new FRMOperations();
$butOp=false;
$Descript="";
$Quantity="";
$EstCost="";
$Usage="";
$Project="";
$pcode="";
if (isset($_POST['PrCodeLst']))
{
	$PrCodeLst=$_POST['PrCodeLst'];
}
if (isset($_POST['Prdate']))
{
	$Prdate=$_POST['Prdate'];
}
else
{
	$Prdate="";
}

if (isset($_POST['name_officer']))
{
	$name_officer=$_POST['name_officer'];
}
else
{
	$name_officer="";
}
if (isset($_POST['budCode']))
{
	$budg_code=$_POST['budCode'];
}
else
{
	$budg_code="";
}
    
    if (isset($_POST['pCode']))
{
	$pcode=$_POST['pCode'];
}
else
{
	$pcode="";
}
    	
    
    if (isset($_POST['apcode']))
{
	$apcode=$_POST['apcode'];
}
else
{
	$apcode="";
}

if (isset($_POST['divisionCode']))
{
	$divisionCode=$_POST['divisionCode'];
}
else
{
	$divisionCode="";

}
if (isset($_POST['desigCode']))
{
	$desigCode=$_POST['desigCode'];
}
else
{
	$desigCode="";
}
if (isset($_POST['dtls_of_equipment']))
{
	$dtls_of_equipment=$_POST['dtls_of_equipment'];
}
else
{
	$dtls_of_equipment="";
}
if (isset($_POST['purpose']))
{
	$purpose=$_POST['purpose'];
}
else
{
	$purpose="";
}


if (isset($_POST['Quantity']))
{
	$Quantity=$_POST['Quantity'];
}
else
{
	$Quantity="";
}
if (isset($_POST['provision_des']))
{
	$provision_des=$_POST['provision_des'];
}
else
{
	$provision_des="";
}
if (isset($_POST['target_month']))
{
	$target_month=$_POST['target_month'];
}
else
{
	$target_month="";
}

if (isset($_POST['EstCost']))
{
	$EstCost=$_POST['EstCost'];
}
else
{
	$EstCost="";
}






if (isset($_POST['provision_des']))
{
	$provision_des=$_POST['provision_des'];
}
else
{
	$provision_des="";
}
if (isset($_POST['AltReso']))
{
	$AltReso=$_POST['AltReso'];
}
else
{
	$AltReso="";
}
if (isset($_POST['SimItems']))
{
	$SimItems=$_POST['SimItems'];
}
else
{
	$AltReso="";
}
if (isset($_POST['PsEqi']))
{
	$PsEqi=$_POST['PsEqi'];
}
else
{
	$PsEqi="";
}
if (isset($_POST['req_fulfill']))
{
	$req_fulfill=$_POST['req_fulfill'];
}
else
{
	$req_fulfill="";
}
if (isset($_POST['Usage']))
{
	$Usage=$_POST['Usage'];
}
else
{
	$Usage="";
}

if (isset($_POST['Pr_type']))
{
	$Pr_type=$_POST['Pr_type'];
}
else
{
	$Pr_type="";
}


if (isset($_POST['btnEdi']))
{
	if (true){
	//$db->Exe_Qry("UPDATE pr_dtls_tbl SET pr_date='$Prdate', descrip='$Descript', quantity='$Quantity', estimated_cost='$EstCost', provision_description='$PrDes', alternative_source='$AltReso', simiar_item='$SimItems', similar_des='$PsEqi', requirement_fulfill='$req_fulfill', usage='$Usage', Project='$Project', pr_type_no='$Pr_type'  WHERE pr_no='$PrCodeLst'");
	$db->Exe_Qry("UPDATE pc_pr_dtls_tbl SET Name_officer='$name_officer', pr_date='$Prdate',  quantity='$Quantity',purpose='$purpose',Dtls_of_equipment='$dtls_of_equipment', est_cost='$EstCost', alter_source='$AltReso',provision_des='$provision_des', simiar_item='$SimItems', similar_des='$PsEqi', usage_no='$Usage', req_fulfill='$req_fulfill',target_month='$target_month',pro_code='$pcode', pr_type_no='$Pr_type' WHERE pr_no='$PrCodeLst'");
	echo '<script> alert("Record Successfully Updated");</script>';}
	else{ echo '<script> alert ("Fill the Form Properly");</script>';}
}

if (isset($_POST['PrCodeLst']) && ($_POST['PrCodeLst'] != "new") )
{
	$res=$db->Exe_Qry("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no='$PrCodeLst'");
	if ($db->Row_Count($res) == 1)
	{
		$vallst=$db->Next_Record($res);
		
		$name_officer=$vallst['Name_officer'];
		$Prdate=$vallst['pr_date'];
		
		$Quantity=$vallst['quantity'];
		$purpose=$vallst['purpose'];
		
		$Dtls_of_equipment=$vallst['dtls_of_equipment'];
		$EstCost=$vallst['est_cost'];
		$AltReso=$vallst['alter_source'];
		$provision_des=$vallst['provision_des'];
		$SimItems=$vallst['simiar_item'];
		$PsEqi=$vallst['similar_des'];
		$Usage=$vallst['usage_no'];
		$req_fulfill=$vallst['req_fulfill'];
		$target_month=$vallst['target_month'];
		$pr_type_no=$vallst['Pr_type'];
		$pcode=$vallst['pro_code'];
		
		
		
		//$FileNo=$vallst['fileno'];
		
		$butOp=true;
	}
}

?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="sessSet('pr_request.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="" >
  <table id="wrapped2" align="center" width="136%"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1>Purchase Requisition</h1>
   </caption>
   <tr>
    <td><table border="0" align="center">
      
      <tr>
           <th align="left">PR No</th>
           <th>:</th>
           <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["pr_no"];
            }
           ?>
          </td>
      </tr>
        
      <tr>
           <th align="left">PR Date</th>
           <th>:</th>
           <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["pr_date"];
            }
           ?>
          </td>
      </tr>
        
       <tr>
       <th align="left">Division</th>
       <th>:</th>
        <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["DivisionCode"];
            }
           ?>
          </td>
      </tr>
        
       <tr>
       <th align="left">Designation</th>
       <th>:</th>
        <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["DesigCode"];
            }
           ?>
          </td>
      </tr>
        
	   <tr>
       <th align="left">Details of the Equipments</th>
       <th>:</th>
        <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["Dtls_of_equipment"];
            }
           ?>
          </td>
      </tr>
        
	   <tr>
       <th align="left">purpose</th>
       <th>:</th>
       <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["purpose"];
            }
           ?>
          </td>
      </tr>
	  
	  
      <tr>
       <th align="left">Quantity</th>
       <th>:</th>
       <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["quantity"];
            }
           ?>
          </td>
      </tr>
        
      <tr>
       <th align="left">Estimated Cost</th>
       <th>:</th>
       <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["est_cost"];
            }
           ?>
          </td>
      </tr>
        
      <tr>
       <th align="left">Provision Description</th>
       <th>:</th>
       <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["provision_des"];
            }
           ?>
          </td>
      </tr>
     
       <tr>
       <th align="left"> Number of Similar Items</th>
       <th>:</th>
       <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["simiar_item"];
            }
           ?>
          </td>
      </tr>
      
      <tr>
       <th align="left">Similar Items Description</th>
       <th>:</th>
       <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["similar_des"];
            }
           ?>
          </td>
      </tr>
        
	  <tr>
       <th align="left">Target Month</th>
       <th>:</th>
       <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["target_month"];
            }
           ?>
          </td>
      </tr>
        
      <tr>
       <th align="left"> Requirement Fulfill</th>
       <th>:</th>
       <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["req_fulfill"];
            }
           ?>
          </td>
      </tr>
        
      <tr>
       <th align="left">Usage</th>
       <th>:</th>
       <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["usage_no"];
            }
           ?>
          </td>
      </tr>
      
	  <tr>
       <th align="left">PR Type</th>
       <th>:</th>
       <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["pr_type_no"];
            }
           ?>
          </td>
      </tr>
        
      <tr>
       <th align="left">AP code</th>
       <th>:</th>
       <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["ap_code"];
            }
           ?>
          </td>
      </tr>
        
       <tr>
       <th align="left">Project Code</th>
       <th>:</th>
            <td name="txtusername" id = "txtusername">
           <?php 
            $pr=$_GET['id'];
            $ress = mysql_query("SELECT * FROM pc_pr_dtls_tbl WHERE pr_no=$pr");
            while ($row = mysql_fetch_array($ress))
            {
                echo $row["pro_code"];
            }
           ?>
          </td>
       </tr>
   </td>
   </tr>
  </table>
 </form>
 <br />
 <br />
</div>
</body>
</html>
