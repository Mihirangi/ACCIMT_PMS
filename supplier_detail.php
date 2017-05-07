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
		if(isset($_POST['add']))
		{
			$name=$_POST['name'];
			$add=$_POST['addr'];
			$tel=$_POST['tel'];
			$fax=$_POST['fax'];
			$crdt=$_POST['crdt'];
			$vcrdt=$_POST['vcrdt'];
			$file_ref=$_POST['file_ref'];
			$web=$_POST['web'];
			$email=$_POST['email'];
			
			
			$sql="INSERT INTO pc_supplier(name,address,tel,fax,crdt,vcrdt,file_ref,web,email) values('$name','$add','$tel','$fax','$crdt','$vcrdt','$file_ref','$web','$email')";
		mysql_query($sql);
	
			
			
		}
        
        if(isset($_POST['delete']))
			 {
				 	$id=$_POST['id'];
				 	//echo $id;
					mysql_query("DELETE FROM pc_supplier WHERE id='$id'");
					header('location:supplier_detail.php');
					 
				
			  }
			  
			   if(isset($_POST['edit']))
			 {
				 	
					
					$_SESSION["id"]=$_POST['id'];
					$id1=$_SESSION["id"];
					
					header('location:supplier_detail_view.php');
					//echo $id1;
					
					 
				
			  }
		
	
	?>
    
            
    


<div id="wrapp">
	<form name="form1" method="post" action=""  >

<table align="center" class="searchResults">
		<table width="94%" height="297"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
		  <caption>
		  <h1>Registration of Suppliers</h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">		
                
				<tr>
				    <th width="127" height="30" valign="top" scope="row"><div align="left">Name of supplier</div></th>
					<th width="4" rowspan="8" valign="top">&nbsp;</th>
					<td width="190" align="left"><input name="name" type="text" id="name" autocomplete="off" value=""></td>
				</tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Address</div></th>
				  <td align="left"><textarea name="addr" id="addr" cols="21" rows="4"></textarea></td>
				</tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Telephone No 1</div></th>
				  <td align="left"><input name="tel1" type="text" id="tel1" cols="22" rows="4" value=""></td>
                  <td>
				  <th height="27" valign="top" scope="row"><div align="left">Contact Person</div></th>
				  <td align="left"><input name="contact1" type="text" id="contact1" cols="22" rows="4" value=""></td>
                  </td>
				</tr>
                <tr>
				  <th height="27" valign="top" scope="row"><div align="left">Telephone No 2</div></th>
				  <td align="left"><input name="tel2" type="text" id="tel2" cols="22" rows="4" value=""></td>
                  <td>
				  <th height="27" valign="top" scope="row"><div align="left">Contact Person</div></th>
				  <td align="left"><input name="contact2" type="text" id="contact2" cols="22" rows="4" value=""></td>
                  </td>
				</tr>
                <tr>
				  <th height="27" valign="top" scope="row"><div align="left">Telephone No 3</div></th>
				  <td align="left"><input name="tel3" type="text" id="tel3" cols="22" rows="4" value=""></td>
                  <td>
				  <th height="27" valign="top" scope="row"><div align="left">Contact Person</div></th>
				  <td align="left"><input name="contact3" type="text" id="contact3" cols="22" rows="4" value=""></td>
                  </td>
				</tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Fax 1</div></th>
				  <td align="left"><input name="fax1" type="text" id="fax1" autocomplete="off" value=""></td>
				</tr>
                <tr>
				  <th height="27" valign="top" scope="row"><div align="left">Fax 2</div></th>
				  <td align="left"><input name="fax2" type="text" id="fax2" autocomplete="off" value=""></td>
				</tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Period of credit</div></th>
				  <td align="left"><input name="crdt" type="text" id="crdt" autocomplete="off" value=""></td>  
				</tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Value of credit</div></th>
                  <td></td>
				  <td align="left"><input name="vcrdt" type="text" id="vcrdt" autocomplete="off" value=""></td>
				</tr>
                <tr>
				  <th height="27" valign="top" scope="row"><div align="left">Web Site</div></th>
                  <td></td>
				  <td align="left"><input name="web" type="text" id="web" autocomplete="off" value=""></td>
				</tr>
                <tr>
				  <th height="27" valign="top" scope="row"><div align="left">E-mail</div></th>
                  <td></td>
				  <td align="left"><input name="email" type="text" id="email" autocomplete="off" value=""></td>
				</tr>
                <tr>
				  <th height="27" valign="top" scope="row"><div align="left">File Ref</div></th>
                  <td></td>
				  <td align="left"><input name="file_ref" type="text" id="file_ref" autocomplete="off" value=""></td>
				</tr>
                <tr>
				  <th height="27" valign="top" scope="row"><div align="left">Reciept No</div></th>
                  <td></td>
				  <td align="left"><input name="receipt" type="text" id="receipt" autocomplete="off" value=""></td>
				</tr>  
                  
                  
				</table><br>
                 <input type="submit" name="add" value="Add">
                 <br><br>
              
				<center><div class="scroll">
			<table border="2" width="" height="">
            	<th height="40px" width="100px"><font size="+1">Supplier Name</font></th>
                <th><font size="+1">Address</font></th>
                <th><font size="+1">Telephone1</font></th>
                <th><font size="+1">Contact Person1</font></th>
<!--
                <th><font size="+1">Telephone2</font></th>
                <th><font size="+1">Contact Person1</font></th>
                <th><font size="+1">Telephone3</font></th>
                <th><font size="+1">Contact Person1</font></th>
-->
                <th><font size="+1">Fax1</font></th>
<!--
                <th><font size="+1">Fax2</font></th>
                <th><font size="+1">Credit</font></th>
                <th><font size="+1">Value of Credit</font></th>
-->
                <th><font size="+1">Web site</font></th>
<!--                <th><font size="+1">E-mail</font></th>-->
                <th><font size="+1">File Ref</font></th>
                <th><font size="+1">Receipt No</font></th>
            
			<?php
			$result = mysql_query("SELECT * FROM pc_supplier");//execute the sql query
			
			while($row = mysql_fetch_array($result))	// Loop the recordset $rs
			 {
				 ?>
                  <form action="" method="post" id="formid1">
                 <?php
				 
	 		 echo "<tr>
             <td>".$row['name']. "</td>
             <td>". $row['address'] ." </td>
             <td>".$row['tel1'] ." </td>
             <td>".$row['con1'] ." </td>
             <td>".$row['fax1']."</td>
             <td>".$row['web']."</td>
             <td>".$row['file_ref']."</td>
             <td>".$row['receipt']."</td>
			 <td>".'<input type="submit" name="delete" value="Delete">'."</td>
             <td>".'<input type="submit" name="edit" value="View">'."</td>
             <td><input type=\"hidden\" name=\"id\" value=\"".$row['id']."\"></input></td>
             </tr>";
			
				?>
					</form>
			<?php
	  		  }
			
			 ?>
             
             
           
            
            </table>
        </div> </center>  
				
				
			
				
	</form>
	
</div>
</body>
</html>