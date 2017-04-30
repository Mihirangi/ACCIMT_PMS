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
?>

<html>
<head>
	<title>Budget Details</title>
   
    <link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
<?php
	
	if (isset($_POST['txtusername']) && ($_POST['txtusername'] != "new")){
		$user=  $_POST['txtusername'];
	}else{
		//unset $budgetNo;
	}if (isset($_POST['txtdescription'])){
		$des = $_POST['txtdescription'];
	}else{
		$des="";
	}if (isset($_POST['txtdsdescription'])){
		$shortDes = $_POST['txtdsdescription'];
	}else{
		$shortDes="";
	}if (isset($_POST['txtbudcode'])){
		$bcode = $_POST['txtbudcode'];
	}else{
		$bcode="";
	}
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//----- Edit button------//
	
		if (isset($_POST['budbtnedit'])){
			if($des != null && $shortDes != null && $bcode != null){
				$db->Exe_Qry("UPDATE budget_tbl  SET Budg_descrip='$des', short_descrip='$shortDes', budg_code='$bcode' WHERE budg_code='$budgetNo'");
					echo '<script> alert("Budget update Successfuly")</script>';			 
			}else{
					echo '<script> alert("Fill the Form Properly")</script>';
			}
		}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////		
    //----- ajax part------//
		if (isset($_POST['txtusername']) && ($_POST['txtusername'] != "new")){		
			$res=$db->Exe_Qry("SELECT * FROM budget_tbl where budg_code ='$budgetNo' ");
			if ($db->Row_Count($res) == 1){
				$vallst=$db->Next_Record($res);
				$des = $vallst['Budg_descrip'];
				$shortDes = $vallst['short_descrip'];
				$bcode = $vallst['budg_code'];
				$butOp=true;
			}
	}else if (isset($_POST['txtusername']) && ($_POST['txtusername'] == "new")){
				$des = "";
				$shortDes = "";
				$bcode = "";
				$butOp=false;
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
//----- Add button------//

		if (isset($_POST['budbtnnew'])){
			if($des != null && $shortDes != null && $bcode != null){
				$result1=$db->Exe_Qry("INSERT INTO budget_tbl SET budg_code='$bcode', Budg_descrip ='$des' , short_descrip ='$shortDes';");
					echo '<script> alert("New code adding Successfuly")</script>';
					$butOp=true;
			}else{
					echo '<script> alert("Fill the Form Properly")</script>';
			}
		}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//-----Delete button------//

		if (isset($_POST['budbtndel'])){
				$delQuery  =$db->Exe_Qry("DELETE FROM budget_tbl WHERE budg_code ='$budgetNo'");
				echo '<script> alert("Budget deleted Successfuly")</script>';
				$des = "";
				$shortDes = "";
				$bcode = "";
				$butOp=false;	
		}
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
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
   <h1>Buget Request Form</h1>
   </caption>
   <tr>
    <td><table border="0" align="center">
   
   <tr>
       <th align="left">Name of the User</th>
       <th>:</th>
       <td><select name="txtusername" id = "txtusername"  >
	   <?php 
	   //echo'<option value="new">Please Select a Division</option>';
	   $empno = $_SESSION['proclogin_un'];
		$ress = $db->Exe_Qry("SELECT Fullname FROM emp_details_tbl WHERE EmpNo='$empno'");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["Fullname"].">".$roww["Fullname"]."</OPTION>";
			//echo $roww["Fullname"].".$roww["Fullname"].";
		}
	   ?>
      
       </select></td>
      </tr>
	  
	  
	  
	  
	  
	  <tr><th align="left" >Budget Code</th>
	   <th>:</th>
	  <td width="257"><div id = "txtbudcode" name = "txtbudcode">
	  
		  <select>
		    <?php
								
								
								$values =$db->Exe_Qry("SELECT budg_code FROM budget_tbl");
								echo '<option>--New Budget Code--</option>';

								while ($row = mysql_fetch_array($values)) {
								echo "<option value='$row[0]' >$row[0]</option>";
								
											}
								?>
		    </select>
		</div></td></tr>
        
      
	  
	  
	  <tr>
       <th align="left">Details of the Equipments</th>
       <th>:</th>
       <td><input type="text" name="dtls_of_equipment" id="dtls_of_equipment" size="30" value="<?php echo $equ_detail;?>" /></td>
      </tr>
	 
	
	   <tr>
       <th align="left">purpose</th>
       <th>:</th>
       <td><textarea type="text" name="purpose" id="purpose"rows="4" cols="30"> <?php echo $purpose;?> </textarea> </td>
      </tr>
	  
	  <tr>
       <th align="left"> Number of Similar Items</th>
       <th>:</th>
       <td><input type="text" name="SimItems" id="SimItems" <?php echo $similar_equ;?>/></td>
      </tr>
      
      <tr>
       <th align="left">Similar Items Description</th>
       <th>:</th>
       <td><textarea type="text" name="txtdescription" id="txtdescription"  rows="4" cols="30"><?php echo $reason;?></textarea></td>
      </tr>
	  <tr>
	  
	  <tr>
       <th align="left">Approximate Value of the Equipments</th>
       <th>:</th>
       <td><textarea type="text" name="txtval" id="txtval"  rows="4" cols="30"><?php echo $PsEqi;?></textarea></td>
      </tr>
	  <tr>
	  
	  <th align="left">Target Month</th>
       <th>:</th>
       <td><select id ="target_month" name="target_month">
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
      <script> document.getElementById('target_month').value="<?php echo $target_month;?>";</script>
      </td>
      </tr>
	  
	  
      <tr>
       <th align="left">Request Date</th>
       <th>:</th>
       <td><?php $fncs->CrtCalender("Prdate",date('y-m-d'),0);?></td>
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
  <table width="1429"  cellpadding="5" cellspacing="3" id="wrapped">
   <tr>
    <th width="1162">
    <table id="tbl_district" border="1"  align="center" style="font-size:16px;" >
    <tr>
    <th>Id</th>
    <th>Name of the User</th>
	<th>Budget Code</th>
	<th>Budget Year</th>
	<th>Detail of the Equipments</th>
	<th>purpose</th>
     <th>Similar Items Available</th>
    <th>Similar Items Description</th>
	<th>Approximate Value</th>
	<th>Target Manth</th>
    <th>Request Date</th>
   
    
    
    
    </tr>
    <?php
	
    $ress=$db->Exe_Qry("SELECT * FROM bud_req_user ;");
	while ($roww = $db->Next_Record($ress))
	    {
	        echo "<tr>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			<th>".$roww[""]."</th>
			
			</tr>";
		}
	?>
	</table>
    </th>
   </tr>
  </table>
 </form>
 <script language="javascript" type="text/javascript">
				document.getElementById("PrCodeLst").value = "<?php  echo $PrCodeLst;?>";
				
		</script>
 <br />
 <br />
</div>
</body>
</html>
