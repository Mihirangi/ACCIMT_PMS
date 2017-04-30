<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Procument plan</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js">
</script>

<?php
session_start();
if (!isset($_SESSION['proclogin_un']))
{
header('Location: lgin.php');
}
$empNo=$_SESSION['login_un'];
$dt=date('y-m-d');


require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations("attend_db");
$fncs= new FRMOperations();



if (isset($_POST['file_no']) && ($_POST['file_no'] != "new"))
{
	$file_no=$_POST['file_no'];
}
else 
{ unset($file_no); }


if (isset($_POST['pr_dtls_code']))
{
	$pr_dtls_code=$_POST['pr_dtls_code'];
}



if (isset($_POST['task']))
{
	$task=$_POST['task'];
}
else
{
	$task="";
}


if (isset($_POST['btnAdd']))
{
	
	
	$empNo=$_SESSION['login_un'];
	$dt=date('y-m-d');
	
				$H_sh_no=$_POST['H_sh_no'];
				$result4=$db->Exe_Qry("UPDATE act_dte_tbl SET EmpNo='$empNo', act_dte='$dt' WHERE pr_dtls_code='$pr_dtls_code' AND sh_no='$H_sh_no';");

	echo '<script> alert("Record Successfully Inserted");</script>';

}

else if(isset($_POST['btnR']))
{
	header('Location: AddRemarks.php');
}

?>


</head>
<body onLoad="sessSet('Actual_date.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="" >
  <table id="wrapped2" align="center" width="95%"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1>Actual Dates for Schedule Plan</h1>
   </caption>
   <tr>
    <td><table border="0" align="center">
     
     <!---------------------->
      <tr>
       <th align="left">File No</th>
       <th>:</th>
       <td><select name="file_no" id = "file_no" onChange="document.form1.submit()" >
	   <?php 
	   echo'<option value="new">Please Select a File No</option>';
		$ress = $db->Exe_Qry("select file_no from pr_dtls_tbl");
		while ($roww = $db->Next_Record($ress))
	    {
	         echo "<OPTION VALUE=".$roww['file_no'].">".$roww['file_no']."</OPTION>";
		}
	   ?>
       <script language="javascript" type="text/javascript">
document.getElementById("file_no").value="<?php  echo $file_no;?>";
</script>
       </select></td>
      </tr>
      
       <!---------------------->
      
      <tr>
       <th align="left">PR Details Code</th>
       <th>:</th>
       <td><?php 
	   if (isset($file_no))
	   {
	   
	   echo'<select name = "pr_dtls_code" id = "pr_dtls_code"  onChange="document.form1.submit()">
		<option value="new">Please Select a Item Allocation No</option>';
		
		//$valls= $db->Next_Record($db->Exe_Qry("SELECT pr_dtls_code FROM act_dte_tbl WHERE pr_dtls_code='$file_no'"));
		
		$ress = $db->Exe_Qry("SELECT pr_dtls_code FROM pr_dtls_tbl WHERE file_no='$file_no'");
		while ($roww = $db->Next_Record($ress))
	    {
		    //$pr_dtls_code=$roww["pr_dtls_code"];
	        echo "<OPTION VALUE=".$roww["pr_dtls_code"].">".$roww["pr_dtls_code"]."</OPTION>";
		}
		echo'</select>';
		
	   }
	   else
	   {
		   echo '<select></select>';
	   }
	   ?>
       <script language="javascript" type="text/javascript">
document.getElementById("pr_dtls_code").value="<?php  echo $pr_dtls_code;?>";
</script>
       </td>
      </tr>
      
       <!---------------------->
      
      <tr>
       <th align="left">Task</th>
       <th>:</th>
       <td align="left">
	   <?php 
	   if (isset($pr_dtls_code) && $pr_dtls_code!="new")
	   {
	   		$valush=$db->Next_Record($db->Exe_Qry("SELECT a.sh_no, a.sh_des FROM shdl_task_tbl a, act_dte_tbl b WHERE pr_dtls_code='$pr_dtls_code' AND b.sh_no = a.sh_no AND b.act_dte IS NULL ;"));
			$txtsh_no=$valush[1];
			$H_sh_no=$valush[0];
	   }
	   else
	   {
	   		$txtsh_no="";
			$H_sh_no="";
	   }
	   ?>
       <textarea id="txtsh_no" name="txtsh_no"><?php echo $txtsh_no;?></textarea>
       <input type="hidden" id="H_sh_no" name="H_sh_no" value="<?php echo $H_sh_no;?>" />
       </td>
      </tr>
      
       <br />
  <br />
      
      <tr>
       <td colspan="4"><table width="100%" border="0">
         <tr>
         <br />
  <br />
          <td class="tbrow" width="6%">&nbsp;</td>
          <td class="tbrow" width="22%"><div align="center">
            <input name="btnAdd" type="submit" id="btnAdd" value="Add">
           </div></td>
         <td class="tbrow" width="22%"><div align="center">
            <input name="btnR" type="submit" id="btnR" value="Add Remark" onClick="document.location..href ='Shedule_task.php?">
           </div></td>
          <td class="tbrow"  width="6%">&nbsp;</td>
         </tr>
         
          
         
         
        
         </td>
      </tr>
    </table></td>
   </tr>
  </table>
  <br />
  <br />
  
  	<table id="wrapped2" align="center" cellspacing="3" cellpadding="5" border="0">
			<tr>
				<th>
				
				
				<?php 
				
				//-------------- Display the data in the Usage Table-----------------------//
					$result1=$db->Exe_Qry("SELECT file_no ,pr_dtls_code,descrip FROM pr_dtls_tbl ORDER BY file_no");
					if(mysql_num_rows($result1)>0){
					if ($myrow = mysql_fetch_array($result1)) {

					// display list if there are records to display
					echo '<br>';
					echo '<table id = "table2" align="center" border="1" cellspacing="0" cellpadding="0" width=50% >'."\n";
					echo '<tr></tr>';
					echo '<tr bgcolor="#B3ABAB" height="30">';   //display headers
					echo '<td class="tbrow" ><div align="center">File No</td>';
					
					echo '<td class="tbrow" ><div align="center">Item allocation No</td>';
					echo '<td class="tbrow" ><div align="center">Description</td>';
					echo "</tr>\n";

					//display list if there are records to display
					$i=1;
					do {  
						// row colors
						if ($i % 2 != 0) # An odd row 
							$bla = "#000000"; 
						else # An even row 
							$bla = "#000000"; 
				?>
	 
				<tr>
                	<td class="" ><?php echo $myrow['file_no']; ?></td> 
					<td class="" ><?php echo $myrow['pr_dtls_code']; ?></td>  
				<td class="" ><?php echo $myrow['descrip']; ?></td>
					
					
				<?php 
					$i++;
					} 
					while ($myrow = mysql_fetch_array($result1));
					echo '</table>';
					}
					}
					else{
						echo "No Result to Display";
					}
				?>
				
				</div>
				</th>
			</table>
  
  
  
  
  
  
 </form>
 
 <script language="javascript" type="text/javascript">
				document.getElementById("pr_dtls_code").value = "<?php  echo $BudCodeLst;?>";
				if (document.getElementById("pr_dtls_code").value != "<?php  echo $BudCodeLst;?>" || document.getElementById("pr_dtls_code").value=="")
				{
					document.getElementById("pr_dtls_code").value= "new";
					document.getElementById("task").value= "";
					
					document.getElementById("btnAdd").disabled=false;
					
				}
		</script>
 <br />
 <br />
</div>
</body>
</html>
