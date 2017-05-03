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
//////////////////////////////////////////////////////////////////////////////////////////////////////	
//----- Add button------//
	
		if (isset($_POST['btnadd'])){
		        $specid = $_POST['mainspec'];

				$query=("INSERT INTO pc_spec_tbl SET main_spec='$specid'");
				mysql_query($query);
				$butOp=true;
				echo '<script> alert("Adding Successfuly")</script>';
			}else{
				echo '<script> alert("Fill the Form Properly")</script>';
			}


//////////////////////////////////////////////////////////////////////////////////////////////////////	

?>


<div id="wrapp">
	<form name="form1" method="post" action="" onSubmit="return validate_form(this);" class="plain">

<table align="center" class="searchResults">
		<table width="94%" height="297"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
		  <caption><h1>Add Main Specification</h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
				
				<tr>
					<th valign="top" scope="row"><div align="left">Main Specification</div></th>
					<th valign="top">:</th>
					<td align="left">
                    
					<input name="mainspec" id="mainspec" type="text"></td>
				</tr>
				

					</table></th>
				</tr>
			
			<br/>
			<br/>
			<tr> 
				<td class="tbrow" colspan="3" >
				<table width="100%" >
					<tr > 
						<td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC" size="1"> 
							<input name="btnadd" type="submit" id="btnadd" value="ADD" <?php if ($butOp){echo 'disabled="disabled"';}?>>
							</font></div>
						</td>


				</tr>  
  
						
						
				
				</table>
				</td>
			</tr>
			</table>

			


				
		<script>
			document.getElementById('txtpro_id').value="<?php echo $pro_id;?>";
			if (document.getElementById("txtpro_id").value != "<?php  echo $pro_id;?>" || document.getElementById("txtpro_id").value==""){
					document.getElementById("txtpro_id").value= "new";
					document.getElementById("txtdescription").value= "";
					document.getElementById("btnadd").disabled=false;
					document.getElementById("btnEdit").disabled=true;
					document.getElementById("btndelete").disabled=true;
			}
		</script>				
	

				
				
	</form>
	<br />
	<br />
</div>
</body>
</html>