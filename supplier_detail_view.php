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
				  <td align="left"><input type="text" name="addr" id="addr" cols="21" rows="4" value="<?php echo $row[2]?>"></td>
				</tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Telephone No 1</div></th>
				  <td align="left"><input name="tel1" type="text" id="tel1" cols="22" rows="4" value="<?php echo $row[3]?>"></td>
                  <td>
				  <th height="27" valign="top" scope="row"><div align="left">Contact Person</div></th>
				  <td align="left"><input name="contact1" type="text" id="contact1" cols="22" rows="4" value="<?php echo $row[4]?>"></td>
                  </td>
				</tr>
                <tr>
				  <th height="27" valign="top" scope="row"><div align="left">Telephone No 2</div></th>
				  <td align="left"><input name="tel2" type="text" id="tel2" cols="22" rows="4" value="<?php echo $row[5]?>"></td>
                  <td>
				  <th height="27" valign="top" scope="row"><div align="left">Contact Person</div></th>
				  <td align="left"><input name="contact2" type="text" id="contact2" cols="22" rows="4" value="<?php echo $row[6]?>"></td>
                  </td>
				</tr>
                <tr>
				  <th height="27" valign="top" scope="row"><div align="left">Telephone No 3</div></th>
				  <td align="left"><input name="tel3" type="text" id="tel3" cols="22" rows="4" value="<?php echo $row[7]?>"></td>
                  <td>
				  <th height="27" valign="top" scope="row"><div align="left">Contact Person</div></th>
				  <td align="left"><input name="contact3" type="text" id="contact3" cols="22" rows="4" value="<?php echo $row[8]?>"></td>
                  </td>
				</tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Fax 1</div></th>
				  <td align="left"><input name="fax1" type="text" id="fax1" autocomplete="off" value="<?php echo $row[9]?>"></td>
				</tr>
                <tr>
				  <th height="27" valign="top" scope="row"><div align="left">Fax 2</div></th>
				  <td align="left"><input name="fax2" type="text" id="fax2" autocomplete="off" value="<?php echo $row[10]?>"></td>
				</tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Period of credit</div></th>
				  <td align="left"><input name="crdt" type="text" id="crdt" autocomplete="off" value="<?php echo $row[11]?>"></td>  
				</tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Value of credit</div></th>
                  <td></td>
				  <td align="left"><input name="vcrdt" type="text" id="vcrdt" autocomplete="off" value="<?php echo $row[12]?>"></td>
				</tr>
                <tr>
				  <th height="27" valign="top" scope="row"><div align="left">Web Site</div></th>
                  <td></td>
				  <td align="left"><input name="web" type="text" id="web" autocomplete="off" value="<?php echo $row[14]?>"></td>
				</tr>
                <tr>
				  <th height="27" valign="top" scope="row"><div align="left">E-mail</div></th>
                  <td></td>
				  <td align="left"><input name="email" type="text" id="email" autocomplete="off" value="<?php echo $row[15]?>"></td>
				</tr>
                <tr>
				  <th height="27" valign="top" scope="row"><div align="left">File Ref</div></th>
                  <td></td>
				  <td align="left"><input name="file_ref" type="text" id="file_ref" autocomplete="off" value="<?php echo $row[13]?>"></td>
				</tr>
                <tr>
				  <th height="27" valign="top" scope="row"><div align="left">Reciept No</div></th>
                  <td></td>
				  <td align="left"><input name="receipt" type="text" id="receipt" autocomplete="off" value="<?php echo $row[16]?>"></td>
				</tr>
                 

                  
				</table>
                 <input type="submit" name="save" value="Edit">
                 
	</form>
    
	
</div>
</body>
</html>