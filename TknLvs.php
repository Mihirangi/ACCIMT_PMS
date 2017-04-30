<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>System Users</title>

<?php

session_start();

if (!isset($_SESSION['login_type']))
{
header('Location: lgin.php');
}
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations("ttttt");
$fncs= new FRMOperations();
?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js">
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script>
function buttonfunction() {
    var temp=document.getElementById("NewID").value;
    if (temp=="New Leave Type") {
        document.getElementById("btnAdd").disabled = false;
        document.getElementById("btnEdi").disabled = true;
        document.getElementById("btnDel").disabled = true;
        document.getElementById("Leave_Type").value = '';
    }
    else{
        document.getElementById("btnAdd").disabled = true;
        document.getElementById("btnEdi").disabled = false;
        document.getElementById("btnDel").disabled = false;
        document.getElementById("Leave_Type").value = temp;
    }
}
</script>

</head>
	<?php
	
	$ToDt=date('y-m-d');
	$yer=date('y');
	$mon=date('m');
	$FromDt= $yer.'-'.$mon.'-01';
	$EmpNo=""; 
	if (!empty($_POST))
	{			
		$FromDt =$_POST['Frm_Dt'];
		$ToDt =$_POST['To_Dt'];
		$EmpNo =trim($_POST['Emp_num']);
		/*if(isset($_POST['Serch_But']))
		{
			if( strlen($lvTyName)>0   ){
			
				$result=$db->Exe_Qry("INSERT INTO lv_type_tbl ( Leave_Type_ID,Leave_Type) VALUES ( '$lvTyId','$lvTyName')");
				
			}else{	
			
				echo '<script>alert("already Added to the system.");</script>';
			
			}		
		}

		else if(isset($_POST['btnEdi'])){ 		
					$lv1=$_POST['NewID'];
					$lv2=$_POST['Leave_Type'];
					
					$result2=$db->Exe_Qry("SELECT Leave_Type_ID FROM  lv_type_tbl where Leave_Type='$lv1';");
					$val = $db->Next_Record($result2);
					$Leave_Type=$val[0];
					
					$query =$db->Exe_Qry("Update  lv_type_tbl Set Leave_Type='$lv2' where Leave_Type_ID='$Leave_Type'");

				}
		
	
		else if(isset($_POST['btnDel']))
		{
			$LeaveType =$_POST['NewID'];
			
			$newresult=$db->Exe_Qry("DELETE FROM  lv_type_tbl WHERE Leave_Type='$LeaveType'");
		}*/
		
	}
		?>
	
	
	
<body onLoad="sessSet('TknLvs.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="">
  <table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1><?php //$fncs->HeadingEcho2($_SESSION['login_type']);?> Leaves Details</h1>
   </caption>
   <tr>
    <th>
    <?php
   // if ($_SESSION['login_type']=="A")
	//{?>
    <table align="center"  border="0" cellpadding="4" cellspacing="1">
		  <tr>
			   <th valign="top" scope="row"><div align="left">From Date</div></th>
			   <th valign="top">:</th>
			   <td>
               <?php
               $fncs->CrtCalender('Frm_Dt',$FromDt,0);
			   ?>
			   </td>
		  </tr>
          <tr>
			   <th valign="top" scope="row"><div align="left">To Date</div></th>
			   <th valign="top">:</th>
			   <td>
               <?php
               $fncs->CrtCalender('To_Dt',$ToDt,0);
			   ?>
			   </td>
		  </tr>
		  <tr>
			   <th valign="top" scope="row"><div align="left">Emp Number</div></th>
			   <th valign="top">:</th>
			   <td align="left"><input type="text" name="Emp_num" id="Emp_num" value="<?php echo $EmpNo;?>" /></td> 		 
		  </tr>
	   </table>
		  <tr>
			   <th colspan="3" scope="row"> <table align="center" width="60%" border="0">
					 <tr>
                     <th><input name="Serch_But"  type="submit" id="Serch_But" value="Search"></th>
                     
						<!--<td width="22%"><div align="left">
							<input name="btnAdd"  type="submit" id="btnAdd" value="Add"></div>
						</td>
						<td width="22%"><div align="center">
							<input name="btnEdi" disabled type="submit" id="btnEdi" value="Edit" ></div>
						</td>
						<td width="22%"><div align="right">
							<input name="btnDel" disabled type="submit" id="btnDel" value="Delete" ></div>
						</td>-->
					 </tr>
					</table>
				</th>
		  </tr>
     <?php
     // }?>
     </th>
   </tr>
  </table>
 </form>  
  <br/>
  <br/>

  <table id="wrapped" align="center" cellspacing="3" cellpadding="5" border="0">
   <tr>
    <th><table align="center"  border="1" cellpadding="4" cellspacing="1" >
      <tr>
			   <th> Employee Number</th>
			   <th> Leave Date</th>
               <th> Leave Days</th>
               <th> Leave Type</th>
               <th> Edit</th>
					 <?php
					 if ($EmpNo=="")
					 {
						$result2=$db->Exe_Qry("SELECT lv.Leave_ID, lv.Emp_No, lv.Leave_Type_ID, lt.Leave_Type, lv.From_Date, lv.No_of_Days FROM  emp_lv_tbl lv, lv_type_tbl lt WHERE lv.Leave_Type_ID=lt.Leave_Type_ID AND lv.From_Date BETWEEN '$FromDt' AND '$ToDt';");
					 }
					 else
					 {
						 $result2=$db->Exe_Qry("SELECT lv.Leave_ID, lv.Emp_No, lv.Leave_Type_ID, lv.From_Date, lv.No_of_Days FROM  emp_lv_tbl lv, lv_type_tbl lt WHERE lv.Leave_Type_ID=lt.Leave_Type_ID AND lv.From_Date BETWEEN '$FromDt' AND '$ToDt' AND lv.Emp_No='$EmpNo';");
					 }
						$rows=$db->Row_Count($result2); 

						for($x1=0;$x1<$rows;$x1++)
						{
						$uu=$db->Next_Record($result2);	
						echo '<tr>';
							echo'<td align="left">';
							echo $uu['Emp_No'];
							echo'</td>';
							echo'<td align="left">';
							echo $uu['From_Date'];
							echo'</td>';
							echo'<td align="left">';
							echo $uu['No_of_Days'];
							echo'</td>';
							echo'<td align="left">';
							echo'<select name="val'.$uu['Leave_ID'].'" id="val'.$uu['Leave_ID'].'">';	
					 		$query="select * from lv_type_tbl";		
							$result = $db->Exe_Qry($query);				
							while($r = mysql_fetch_array($result)) 
						 	{
								echo"<option ";
								if ($r['Leave_Type_ID']==$uu['Leave_Type_ID'])
								{
							 	echo 'selected ';
								}
								echo"value=". $r['Leave_Type_ID'] . ">". $r['Leave_Type'] ."</option>";
							} 
							echo'</select>';
							echo'</td>';
							echo'<td align="left">';
							echo '<input type="button" value="Edit" id="but'.$uu['Leave_ID'].'" name="but'.$uu['Leave_ID'].'" onClick="alert('."'".'Edited'."'".');" />';
							echo'</td>';
						echo'</tr>';	
						}
						?>
							  </tr>

     </table></th>
  </table>
 </form>
 <br />
 <br />
</div>
</body>
</html>
