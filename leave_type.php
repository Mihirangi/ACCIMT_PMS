<?php
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations();
$fncs= new FRMOperations();
$butOp=false;
?>

<html>
<head>
	<title>Districts</title>
   
    <link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
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




<    
	<?php
	$lvTyName ="";
	if (!empty($_POST))
	{					
		$lvTyName =$_POST['Leave_Type'];
		if(isset($_POST['btnAdd']))
		{
			if( strlen($lvTyName)>0   ){
			
				$result=$db->Exe_Qry("INSERT INTO lv_type_tbl (Leave_Type) VALUES ('$lvTyName')");
				
			}else{	
			
				echo '<script>alert("already Added to the system.");</script>';
			
			}		
		}

		else if(isset($_POST['btnEdi'])){ 		
					$lv1=$_POST['NewID'];
					$lv2=$_POST['Leave_Type'];
					
					/*$result2=$db->Exe_Qry("SELECT Leave_Type_ID FROM  lv_type_tbl where Leave_Type='$lv1';");
					$val = $db->Next_Record($result2);
					$Leave_Type=$val[0];*/
					
					$query =$db->Exe_Qry("Update lv_type_tbl Set Leave_Type='$lv2' where Leave_Type_ID='$lv1'");

				}
		
	
		else if(isset($_POST['btnDel']))
		{
			$LeaveType =$_POST['NewID'];
			
			$newresult=$db->Exe_Qry("DELETE FROM  lv_type_tbl WHERE Leave_Type_ID='$LeaveType'");
		}
		
	}
		?>
	
	
	
<body>
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="">
  <table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1><?php //$fncs->HeadingEcho2($_SESSION['login_type']);?> Leave Type Details</h1>
   </caption>
   <tr>
    <th>
    <?php
   // if ($_SESSION['login_type']=="A")
	//{?>
    <table align="center"  border="0" cellpadding="4" cellspacing="1">
		  <tr>
			   <th valign="top" scope="row"><div align="left">Leave Type Id</div></th>
			   <th valign="top">:</th>
					<td><select name="NewID" id="NewID" onChange="buttonfunction()">	
					<?php $query="select * from lv_type_tbl";		
						$result = $db->Exe_Qry($query);				
						echo "<option>New Leave Type</option>";
						while($r = mysql_fetch_array($result)) 
						 {
							echo("<option value=". $r['Leave_Type_ID'] . ">". $r['Leave_Type'] ."</option>");
								 
						} ?>
				</select>	
			   </td>
		  </tr>
		  <tr>
			   <th valign="top" scope="row"><div align="left">Leave Type</div></th>
			   <th valign="top">:</th>
			   <td align="left"><input type="text" name="Leave_Type" id="Leave_Type" value="" /></td> 		 
		  </tr>
	   </table>
		  <tr>
			   <th colspan="3" scope="row"> <table align="center" width="60%" border="0">
					 <tr>
						<td width="22%"><div align="left">
							<input name="btnAdd"  type="submit" id="btnAdd" value="Add"></div>
						</td>
						<td width="22%"><div align="center">
							<input name="btnEdi" disabled type="submit" id="btnEdi" value="Edit" ></div>
						</td>
						<td width="22%"><div align="right">
							<input name="btnDel" disabled type="submit" id="btnDel" value="Delete" ></div>
						</td>
					 </tr>
					</table>
				</th>
		  </tr>
     <?php// }?>
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
			   <th> Leave Type Id</th>
			   <th> Leave Type</th>
					 <?php
						$result2=$db->Exe_Qry("SELECT * FROM  lv_type_tbl");
						$rows=$db->Row_Count($result2); 

						for($x1=0;$x1<$rows;$x1++)
						{
						$uu=$db->Next_Record($result2);	
						echo '<tr>';
							echo'<td align="left">';
							echo $uu['Leave_Type_ID'];
							echo'</td>';
							echo'<td align="left">';
							echo $uu['Leave_Type'];
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
</html>
