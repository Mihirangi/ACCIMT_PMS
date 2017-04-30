<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Set_Pro_method_</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js">
</script>

<?php
session_start();
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db = new DBOperations("attend_db");
$fncs= new FRMOperations();
$butOp=false;

?>
 

</head>
	<body>
    <?php
		if(isset($_POST['save']))
		{
			$name=$_POST['name'];
			$add=$_POST['add'];
			$tel=$_POST['tel'];
			$fax=$_POST['fax'];
			$crdt=$_POST['crdt'];
			$vcrdt=$_POST['vcrdt'];
			$file_ref=$_POST['file_ref'];
			$web=$_POST['web'];
			$email=$_POST['email'];
			
			
			$sql="UPDATE pc_supplier SET name='$name',address='$add',tel='$tel',fax='$fax',crdt='$crdt',vcrdt='$vcrdt',file_ref='$file_ref',
			web='$web',email='$email' WHERE id=$_SESSION[id]";
		mysql_query($sql);	
		}
		
		if(mysql_query($sql))
		{
			echo "<script>";
   				echo "alert('Successfully Updated!');";
				echo "window.location = 'supplier_detail.php'";
   			echo "</script>";
		}
		
	
	?>
    
    <?php
	$sql123="SELECT * FROM pc_supplier where id=$_SESSION[id]";
	$sql_qry=mysql_query($sql123);
	$row=mysql_fetch_array($sql_qry);
	
	
	?>
	
    
    
    
<div id="wrapp">
	<form name="form1" method="post" action="supplier_detail_view.php"  >

<table align="center" class="searchResults">
		<table width="94%" height="297"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
		  <caption>
		  <h1>Computers &amp; Workstations</h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">		
                
				<tr>
					<th width="127" height="30" valign="top" scope="row"><div align="left">Name of supplier</div></th>
					<th width="4" rowspan="8" valign="top">&nbsp;</th>
					<td width="190" align="left"><input name="name" type="text" id="name" autocomplete="off" value="<?php echo $row[1]?>"></td>
				</tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Address</div></th>
				  <td align="left"><input name="add" type="text" id="add" autocomplete="off" value="<?php echo $row[2]?>"></td>
				  </tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Telephone</div></th>
				  <td align="left"><input name="tel" type="text" id="tel" cols="22" rows="4" value="<?php echo $row[3]?>"></td>
				  </tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Fax</div></th>
				  <td align="left"><input name="fax" type="text" id="fax" autocomplete="off" value="<?php echo $row[4]?>"></td>
				  </tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Credit</div></th>
                  
				  <td align="left"><input name="crdt" type="text" id="crdt" autocomplete="off" value="<?php echo $row[5]?>"></td>
                  
				  </tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Value of credit</div></th>
				  <td align="left"><input name="vcrdt" type="text" id="vcrdt" autocomplete="off" value="<?php echo $row[6]?>"></td>
				  </tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">File Ref</div></th>
				  <td align="left"><input name="file_ref" type="text" id="file_ref" autocomplete="off" value="<?php echo $row[7]?>"></td>
				  </tr>
                  
                  <tr>
				  <th height="27" valign="top" scope="row"><div align="left">Web Site</div></th>
				  <td align="left"><input name="web" type="text" id="web" autocomplete="off" value="<?php echo $row[8]?>"></td>
				  </tr>
                  <tr>
				  <th height="27" valign="top" scope="row"><div align="left">E-mail</div></th>
                  <td></td>
				  <td align="left"><input name="email" type="text" id="email" autocomplete="off" value="<?php echo $row[9]?>"></td>
				  </tr>
                 

                  
				</table>
                 <input type="submit" name="save" value="Save">
                 
	</form>
    
	
</div>
</body>
</html>