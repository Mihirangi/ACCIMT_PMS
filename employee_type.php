


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
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script>
function buttonfunction() {
    var temp=document.getElementById("NewID").value;
    if (temp=="New Employee Type") {
        document.getElementById("btnAdd").disabled = false;
        document.getElementById("btnEdi").disabled = true;
        document.getElementById("btnDel").disabled = true;
        document.getElementById("EmpTypeName").value = '';
    }
    else{
        document.getElementById("btnAdd").disabled = true;
        document.getElementById("btnEdi").disabled = false;
        document.getElementById("btnDel").disabled = false;
        document.getElementById("EmpTypeName").value = temp;
    }
}
</script>

</head>
	<?php
	$empTyId=""; 
	$empTyName ="";
	if (!empty($_POST))
	{					
		
		$empTyName =$_POST['EmpTypeName'];
		
		if(isset($_POST['btnAdd']))
		{
			if( strlen($empTyName)>0   ){
			
				$result=$db->Exe_Qry( "INSERT INTO emp_type_tbl (EmpTypeCode, EmpType) VALUES ('$empTyId', '$empTyName')");				
			}else{	
				echo '<script>alert("already Added to the system.");</script>';
			}		
		}

		else if(isset($_POST['btnEdi'])){ 
					$emp1=$_POST['NewID'];
					$emp2=$_POST['EmpTypeName'];
					
					$result2=$db->Exe_Qry("SELECT EmpTypeCode FROM emp_type_tbl where EmpType='$emp1';");
					$val = $db->Next_Record($result2);
					$EmpType=$val[0];
					
					$query =$db->Exe_Qry("Update emp_type_tbl Set EmpType='$emp2' where EmpTypeCode='$EmpType'");

				}
		
	
		else if(isset($_POST['btnDel']))
		{
			$empTName =$_POST['NewID'];
			$newresult= $db->Exe_Qry("DELETE FROM emp_type_tbl WHERE EmpType='$empTName'");
		}
	}
		?>
	
	
	
<body>
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="">
  <table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1><?php //$fncs->HeadingEcho2($_SESSION['login_type']);?> Employee Type Details</h1>
   </caption>
   <tr>
    <th>
    <?php
   // if ($_SESSION['login_type']=="A")
	//{?>
    <table align="center"  border="0" cellpadding="4" cellspacing="1">
      <tr>
		   <th valign="top" scope="row"><div align="left">Employee Type Id</div></th>
		   <th valign="top">:</th>
				<td><select name="NewID" id="NewID" onChange="buttonfunction()">	
				<?php $query="select EmpType from emp_type_tbl";		
					$result = mysql_query ($query);				
					echo "<option>New Employee Type</option>";
					while($r = mysql_fetch_array($result)) 
					 {
						echo("<option value=". $r['EmpType'] . ">". $r['EmpType'] ."</option>");
						//$Etype=$r['EmpType'];		 
					} ?>
			</select>	
		   </td>
      </tr>
	  <tr>
       <th valign="top" scope="row"><div align="left">Employee Type</div></th>
       <th valign="top">:</th>
       <td align="left"><input type="text" name="EmpTypeName" id="EmpTypeName" value=""</td> 		 
      </tr>
	   </table>
      <tr>
       <th colspan="3" scope="row"> <table align="center" width="60%" border="0">
         <tr>
			  <td width="22%"><div align="left">
				<input name="btnAdd"  type="submit" id="btnAdd" value="Add">
			   </div></td>
			  <td width="22%"><div align="center">
				<input name="btnEdi" disabled type="submit" id="btnEdi" value="Edit" >
			   </div></td>
			  <td width="22%"><div align="right">
				<input name="btnDel" disabled type="submit" id="btnDel" value="Delete" >
			   </div></td>
         </tr>
        </table></th>
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
			   <th> Employee Type ID</th>
			   <th> Employee Type</th>
					 <?php
						$result2=mysql_query("SELECT * FROM emp_type_tbl");
						$rows=mysql_num_rows($result2); 

						for($x1=0;$x1<$rows;$x1++)
						{
						$uu=mysql_fetch_array($result2);	
						echo '<tr>';
							echo'<td align="left">';
							echo $uu['EmpTypeCode'];
							echo'</td>';
							echo'<td align="left">';
							echo $uu['EmpType'];
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
