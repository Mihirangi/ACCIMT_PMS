<html>
<head>

<title>Using single SQL</title>
<?php
session_start();
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations();
$fncs= new FRMOperations();
$butOp=false;
 
if (isset($_POST['File_no']) ){
$File_no=$_SESSION['File_no'];

$EmpNo=$_SESSION['EmpNo'];
$type_id=$_SESSION['type_id'];
}


if (isset($_POST['butsave']))
{
	$db->Exe_Qry("Update appoint_tec SET  Approve='Y' WHERE File_no= '$File_no';");
	echo '<script> alert("You Successfully Recomended this Purchase Requisition");</script>';
	unset($_SESSION['File_no']);
}
if(isset($_POST['butback']))
{
    unset($_SESSION['pr_no']);
	
}

if (isset($_POST['butdel']))
{
	$db->Exe_Qry("UPDATE pr_dtls_tbl SET rec_ddgc='".$_SESSION['proclogin_un']."', rec_ddg_sta='No', rec_ddg_date='".date('Y-m-d')."' WHERE pr_no='$id1';");
	echo '<script> alert("You Successfully Rejected this Purchase Requisition");</script>';
	unset($_SESSION['pr_no']);
	
	
}
?>
</head>
<body>
<caption>
			<h1 align="center" style="color:#000000">Approve TEC</h1></caption>
<table id="wrapped" cellspacing="3" cellpadding="5" border="0" width="30%" align="center">

			
			<tr>
				<th>


				<?php

				//-------------- Display the data in the Usage Table-----------------------//
				
					$result1=$db->Exe_Qry("SELECT * FROM appoint_tec ");
					if(mysql_num_rows($result1)>0){
					if ($myrow = mysql_fetch_array($result1)) {

					// display list if there are records to display
					echo '<br>';
					echo '<table id = "table2"  align="center" border="3" cellspacing="0" cellpadding="0" width=100% >'."\n";
					echo '<tr></tr>';
					echo '<tr height="30">';   //display headers
					echo '<td class="tbrow" ><div align="center">File no</td>';
					echo '<td class="tbrow" ><div align="center">Emp No</td>';
					echo '<td class="tbrow" ><div align="center">Type Id</td>';
				
					

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
                	<td  class=""  align="center"><?php echo $myrow['File_no']; ?></td>
                    <td class=""  align="center" ><?php echo $myrow['EmpNo']; ?></td>
                    <td class=""  align="center"><?php echo $myrow['type_id']; ?></td>
					
                  <td align="center">
				  <input name="butsave" id="butsave" type="submit" value="Approve" class="button" style="width:60px;" onclick="document.location.href ='approve_TEC.php?File_no=<?php echo $myrow['File_no'] ?>'"  />&nbsp;&nbsp;&nbsp;
				  <input name="btnEdit" type="button" value="Edit" onclick="document.location.href ='approve_TEC.php?File_no=<?php echo $myrow['File_no'] ?>'" class="button" style="width:60px;" /></td> 
				
				
				
				
				
				
				
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
</body>
</html>