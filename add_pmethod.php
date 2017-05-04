<!DOCTYPE html>
<html>
<head>   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Field Number</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js">
</script>

<?php
//session_start();
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db = new DBOperations("misaccdb");
$fncs= new FRMOperations();
    
 
     if (isset($_POST['btnadd'])){
         $file_no = $_POST['file_no'];
         $description = $_POST['description'];
         $pr_method =$_POST['pr_method'];
			if($pr_method != null){
				$query=$db->Exe_Qry("UPDATE pc_file_tbl SET pr_method='$pr_method' WHERE file_no='$file_no'");
				mysql_query($query);
				$butOp=true;
				echo '<script> alert("Adding Successfuly")</script>';
			}else{
				echo '<script> alert("Fill the Form Properly")</script>';
			}
		}
     
     if (isset($_POST['btnEdit'])){
         $file_no = $_POST['file_no'];
     $description = $_POST['description'];
     $pr_method =$_POST['pr_method'];
			if($pr_method != null){
					$query2 =$db->Exe_Qry( "UPDATE pc_file_tbl SET pr_method='$pr_method' WHERE file_no='$file_no'");
					mysql_query($query2);
					echo '<script> alert("Editing Successfuly")</script>';
			}else{
					echo '<script> alert("Fill the Form Properly")</script>';
			}
    }
    
?>

</head> 

    
<body >
    
    <script>
function onChangeId() {
    var selectedId = $("#myId").val();
    $("#myName").val(selectedId);
}
function myFunction() {
	var selectedName = $("#myName").val();
    $("#myId").val(selectedName);
}
</script>
       
<div id="wrapp">
<form method="post" action="" class="plain" id="form1" name="form1">
<table align="center" class="searchResults">
    
		<table width="94%" height="297"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
		  <caption><h1>Add Procument Method jjjjjjjjjjjjjjj</h1></caption>
				<tr>
				<th>    
				<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">       
                <tr>
				<td width="50%" height="45" align="left">Select File No</td>
                <td width="50%" align="left">
                    <?php
 
								$select_top = "SELECT * FROM pc_file_tbl";
								$result = mysql_query ($select_top);
								echo '<select name="file_no" id="myId" onchange="onChangeId()" class="form-control">'; // Open your drop down box
								echo '<option selected disabled hidden>select File no</option>';
								while ($row = mysql_fetch_array($result)) 
								{
									echo '<option value="'.$row['file_no'].'">'.$row['file_no'].'</option>';
								}
								echo '</select>';// Close your drop down box

							
							?>
                            
                            <?php
 
								$select_top = "SELECT*FROM pc_file_tbl";
								$result = mysql_query ($select_top);
								echo '<select name="description" id="myName" onchange="myFunction()" class="form-control">'; // Open your drop down box
								echo '<option selected disabled hidden>select Description</option>';
								while ($row = mysql_fetch_array($result)) 
								{
									echo '<option value="'.$row['file_no'].'">'.$row['description'].'</option>';
								}
								echo '</select>';// Close your drop down box
							?>
                </td>
                </tr>
                        
                <tr>
                    <td width="50%" height="45" align="left">Procument Method</td>
                        <td width="50%" align="left">
                            <select name = "pr_method" id = "pr_method">
    
                                <?php
                                    $values =$db->Exe_Qry("SELECT description FROM pc_procurement_method_tbl");
				                    echo "<option selected disabled hidden>--Please Select Procument Method--</option>";
										
				                    while ($row = mysql_fetch_array($values)) {
					
                                    echo "<option value='$row[0]'>$row[0]</option>";
				                    }
			                     ?>
                            </select>
                        </td>
                </tr>
                        
                <tr> 
				<td class="tbrow" colspan="3" >
				<table width="100%" >
				    <tr > 
						<td class="tbrow" width="22%">
                            <div align="center">
                            <font color="#FF33CC" size="1"> 
							<input name="btnadd" type="submit" id="btnadd" value="Add" <?php if ($butOp){echo 'disabled="disabled"';}?>>
                                
							</font>
                            </div>
						</td>
					    <td class="tbrow" width="22%">
                            <div align="center">
                            <font color="#FF33CC"> 
							<input name="btnEdit" id="btnEdit" type="submit" value="Edit" <?php if ($butOp == false){echo 'disabled="disabled"';}?> class="button" style="width:60px;"/>
							</font>
                            </div>
                        </td>
				    </tr>  
				</table>
                </td>
                </tr>
                    
            </table>
                    
            </th>
            </tr>
			</table>
<br/>
    
</table>
</form>
</div>
</body>
</html>

