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
			$sname=$_POST['sname'];
			$itemcode=$_POST['itemcode'];
			
			
			$sql="INSERT INTO pc_supplier_item(sup_name,sup_item) values('$sname','$itemcode')";
		    mysql_query($sql);
	
		}
        
       
		
	
	?>
    
            
    


<div id="wrapp">
	<form name="form1" method="post" action=""  >

<table align="center" class="searchResults">
		<table width="94%" height="297"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
		  <caption>
		  <h1>Supplier Items</h1></caption>
				<tr>
					<th> 
                    
                    <table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                <div class="combobox">
				<tr>
					<th valign="top" scope="row"><div align="left">Name of Supplier</div></th>
					<th valign="top">:</th>

				    <td align="left">
					<?php
						$values = mysql_query("SELECT * FROM pc_supplier");
							echo"<select name='sname'  id='sname'>";
							echo "<option >--Select supplier name--</option>";
													
							while ($row = mysql_fetch_array($values)) {
								//$setSelect = "";
								echo "<option value='$row[0]'>$row[1]</option>";
							}
							echo"</select>";
						
						?>
			         </td>
                </tr>
                    
                <tr>
					<th valign="top" scope="row"><div align="left">Item Code</div></th>
					<th valign="top">:</th>

				    <td align="left">
					<?php
						$values = mysql_query("SELECT * FROM reg_sup");
							echo"<select name='itemcode'  id='itemcode'>";
							echo "<option >--Select item code--</option>";
													
							while ($row = mysql_fetch_array($values)) {
								//$setSelect = "";
								echo "<option value='$row[0]'>$row[1]</option>";
							}
							echo"</select>";
						
						?>
			         </td>
                </tr>
                </div>  
				</tr>
    </table>                
                        
       <br>
                 <input type="submit" name="add" value="Add">
                 <br><br>
          
	</form>
	
</div>
</body>
</html>