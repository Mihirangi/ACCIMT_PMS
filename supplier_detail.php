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
				  <th height="27" valign="top" scope="row"><div align="left">Telephone</div></th>
				  <td align="left"><input name="tel" type="text" id="tel" cols="22" rows="4" value=""></td>
				  </tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Fax</div></th>
				  <td align="left"><input name="fax" type="text" id="fax" autocomplete="off" value=""></td>
				  </tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Credit</div></th>
                  
				  <td align="left"><input name="crdt" type="text" id="crdt" autocomplete="off" value=""></td>
                  
				  </tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">Value of credit</div></th>
				  <td align="left"><input name="vcrdt" type="text" id="vcrdt" autocomplete="off" value=""></td>
				  </tr>
				<tr>
				  <th height="27" valign="top" scope="row"><div align="left">File Ref</div></th>
				  <td align="left"><input name="file_ref" type="text" id="file_ref" autocomplete="off" value=""></td>
				  </tr>
                  
                  <tr>
				  <th height="27" valign="top" scope="row"><div align="left">Web Site</div></th>
				  <td align="left"><input name="web" type="text" id="web" autocomplete="off" value=""></td>
				  </tr>
                  <tr>
				  <th height="27" valign="top" scope="row"><div align="left">E-mail</div></th>
                  <td></td>
				  <td align="left"><input name="email" type="text" id="email" autocomplete="off" value=""></td>
				  </tr>
                  
                  
                  
				</table><br>
                 <input type="submit" name="add" value="Add">
                 <br><br>
              
				<center><div class="scroll">
			<table border="2" width="" height="">
            	<th height="40px" width="100px"><font size="+1">Supplier Name</font></th>
                <th><font size="+1">Address</font></th>
                <th><font size="+1">Telephone</font></th>
                <th><font size="+1">Fax</font></th>
                <th><font size="+1">Credit</font></th>
                <th><font size="+1">Value of Credit</font></th>
                <th><font size="+1">File Ref</font></th>
                 <th><font size="+1">Web site</font></th>
                <th><font size="+1">E-mail</font></th>
                
                
            
			<?php
			$result = mysql_query("SELECT * FROM pc_supplier");//execute the sql query
			
			while($row = mysql_fetch_array($result))	// Loop the recordset $rs
			 {
				 ?>
                  <form action="" method="post" id="formid1">
                 <?php
				 
	 		 echo "<tr>
             <td>".$row['name']. "</td>
             <td> " . $row['address'] ." </td>
             <td>".$row['tel'] ." </td>
             <td>".$row['fax']."</td>
             <td> ".$row[  'crdt']."</td>
             <td> ".$row['vcrdt']." </td>
             <td>".$row['file_ref']."</td>
             <td>".$row['web']."</td>
             <td>".$row['email']."</td>
			 <td>".'<input type="submit" name="delete" value="Delete">'."</td>
             <td>".'<input type="submit" name="edit" value="Edit">'."</td>
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