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
			
			
			$sql="INSERT INTO pc_supplier_item(sup_name,sup_item) values('$sname','$itemcode')";
		    mysql_query($sql);
	
		}
        
        if(isset($_POST['back']))
		{
			header("Location:supplier_item1.php");
		}
        
        
       if(isset($_POST['delete']))
		{
            $id=$_POST['id'];
			
			mysql_query("DELETE FROM pc_supplier_item WHERE id='$id'");
            echo '<script> alert("Record Successfully Deleted");</script>';
            
		}
        
    
        
	?>
    


<div id="wrapp">
	<form name="form1" method="post" action=""  >

<table align="center" class="searchResults">
		<table width="94%" height="297"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
		  <caption>
		  <h1>View by Supplier</h1></caption>
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
							echo"<select name='sname' id='sname' onChange='this.form.submit()'>";
							echo "<option >--Select supplier name--</option>";
													
							while ($row = mysql_fetch_array($values)) {
								$setSelect = "";
								echo "<option value='$row[1]'>$row[1]</option>";
							}
							echo"</select>";
						
						?>
			         </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <input type="submit" name="back" value="Back">
                    </td>
                </tr>
                </div>  
				</tr>
    </table>                
                        
       <br><br><br>
            
            <table id="wrapped" align="center" cellspacing="3" cellpadding="5" border="0">
			<tr>
				<th>
				
				
				<?php 
				
				//-------------- Display the data in the Usage Table-----------------------//
                    $sname=$_POST['sname'];
					$result1=mysql_query("SELECT * FROM pc_supplier_item WHERE sup_name='$sname'ORDER BY sup_name");
					if(mysql_num_rows($result1)>0){
					if ($myrow = mysql_fetch_array($result1)) {

					// display list if there are records to display
					echo '<br>';
					echo '<table id = "table2" align="center" border="1" cellspacing="0" cellpadding="0" width=50% >'."\n";
					echo '<tr></tr>';
					echo '<tr height="30">';   //display headers
                    echo '<td class="tbrow" ><div align="center" ></td>';
					echo '<td class="tbrow" ><div align="center">Supplier Name</td>';
					echo '<td class="tbrow" ><div align="center">Item</td>';
                    echo '<td class="tbrow" ><div align="center"></td>';
					
					echo "</tr>\n";

					//display list if there are records to display
					$i=1;
					do {  
						// row colors
						if ($i % 2 != 0) # An odd row 
							$bla = "#FFFFFF"; 
						else # An even row 
							$bla = "#FFFFFF"; 
				?>
	 
				<tr>
                    <td class="" ><input type="hidden" name="id" value="<?php echo $myrow['id']; ?>"/></td>
                	<td class="" ><?php echo $myrow['sup_name']; ?></td> 
					<td class="" ><?php echo $myrow['sup_item']; ?></td>
                    <td align="center"><input type="submit" name="delete" value="Delete"/></td>
                </tr>	
				
                <?php
//                    if(isset($_POST['delete']))
//                    {
//                        $id=$_POST['id'];
//
//                        mysql_query("DELETE FROM pc_supplier_item WHERE id='$id'");
//                        echo '<script> alert("Record Successfully Deleted");</script>';
//
//                    }
                ?>
					
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
          
            <script>
			document.getElementById('sname').value="<?php echo $sname;?>";
            if(document.getElementById('sname').value!="<?php echo $sname;?>" || document.getElementById('sname').value==""){
                document.getElementById('sname').value="new";
            }
		</script>
            
	</form>
	
</div>
</body>
</html>