<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Allocation</title>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js">
</script>
<?php
session_start();
if (!isset($_SESSION['proclogin_type']))
{
header('Location: lgin.php');
}
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations();
$fncs= new FRMOperations();
$butOp=false;
if (isset($_POST['prlist']) && ($_POST['prlist'] != "new"))
{
	$prlist=$_POST['prlist'];
}
else 
{ unset($prlist); }

if (isset($_POST['devbudglist']))
{
	$devbudglist=$_POST['devbudglist'];
}
if (isset($_POST['alloc_amt']))
{
	$alloc_amt=$_POST['alloc_amt'];
}
else
{
	$alloc_amt="";
}
if (isset($_POST['itemlist']))
{
	$itemlist=$_POST['itemlist'];
}
if (isset($_POST['pr_date']))
{
	$pr_date=$_POST['pr_date'];
}

if (isset($_POST['btnEdi']))
{
	if ($alloc_amt!=""){
	//$db->Exe_Qry("UPDATE ibudg_alloc_tbl SET pr_date='$pr_date', alloc_amt='$alloc_amt' WHERE pr_no='$prlist' and divb_code='$devbudglist and item_no='$itemlist'");
	$db->Exe_Qry("UPDATE ibudg_alloc_tbl SET pr_date='$pr_date', alloc_amt='$alloc_amt' WHERE pr_no='$prlist' and divb_code='$devbudglist' and item_no='$itemlist'");
	echo '<script> alert("Record Successfully Updated");</script>';}
	else{ echo '<script> alert ("Fill the Form Properly");</script>';}
}

if ((isset($_POST['prlist']) && ($_POST['prlist'] != "new"))  && (isset($_POST['devbudglist']) && ($_POST['devbudglist'] != "new")) && (isset($_POST['itemlist']) && ($_POST['itemlist'] != "new")))
{
	$res=$db->Exe_Qry("SELECT * FROM ibudg_alloc_tbl WHERE pr_no='$prlist' AND divb_code='$devbudglist' AND item_no='$itemlist'");
	if ($db->Row_Count($res) == 1)
	{
		$vallst=$db->Next_Record($res);
		$pr_date= $vallst['pr_date'];
		$alloc_amt= $vallst['alloc_amt'];
		$butOp=true;
	}
}
else if (isset($_POST['prlist']) && ($_POST['prlist'] == "new"))
{
	$alloc_amt="";
	$butOp=false;
} 

if (isset($_POST['btnAdd']))
{
	if ($alloc_amt !="" ){
	//$db->Exe_Qry("INSERT INTO ibudg_alloc_tbl (pr_no, divb_code, item_no, pr_date, alloc_amt) VALUES ('$prlist', '$devbudglist', '$itemlist', '$pr_date', '$alloc_amt')");
	$db->Exe_Qry("INSERT INTO ibudg_alloc_tbl (pr_no, divb_code, item_no, pr_date, alloc_amt) VALUES ('$prlist', '$devbudglist', '$itemlist', '$pr_date', '$alloc_amt') ");
	echo '<script> alert("Record Successfully Inserted");</script>';
	$butOp=true;
	}
	else{ echo '<script> alert ("Fill the Form Properly");</script>';}
	
}

if (isset($_POST['btnDel']))
{
	//$db->Exe_Qry("DELETE FROM ibudg_alloc_tbl WHERE pr_no='$prlist' and divb_code='$devbudglist and item_no='$itemlist");
	$db->Exe_Qry("DELETE FROM ibudg_alloc_tbl WHERE pr_no='$prlist' and divb_code='$devbudglist' and item_no='$itemlist'");
	echo '<script> alert("Record Successfully Deleted");</script>';
	$alloc_amt="";
	$butOp=false;
}
?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="sessSet('Ibudg_alloc.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="" >
  <table id="wrapped2" align="center" width="95%"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1>Item Budget allocation</h1>
   </caption>
   <tr>
    <td><table border="0" align="center">
      <tr>
       <th align="left">Purchase No</th>
       <th>:</th>
       <td><select name="prlist" id = "prlist" onChange="document.form1.submit()" >
	   <?php 
	   echo'<option value="new">Add New Allocation</option>';
		$ress = $db->Exe_Qry("select pr_no from pr_dtls_tbl");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["pr_no"].">".$roww["pr_no"]."</OPTION>";
		}
	   ?>
       <script language="javascript" type="text/javascript">
document.getElementById("prlist").value="<?php  echo $prlist;?>";
</script>
       </select></td>
      </tr>
      
      <tr>
       <th align="left">Division Budget Code</th>
       <th>:</th>
       <td><select name="devbudglist" id = "devbudglist" onChange="document.form1.submit()" >
	   <?php 
	   echo'<option value="new">--Please Select--</option>';
		$ress = $db->Exe_Qry("select divb_code,budg_code from div_budg_tbl");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["divb_code"].">".$roww["budg_code"]."</OPTION>";
		}
	   ?>
       <script language="javascript" type="text/javascript">
document.getElementById("devbudglist").value="<?php  echo $devbudglist;?>";
</script>
       </select></td>
      </tr>
      <tr>
       <th align="left">Item No</th>
       <th>:</th>
       <td><select name="itemlist" id = "itemlist" onChange="document.form1.submit()" >
	   <?php 
	   echo'<option value="new">--Please Select--</option>';
	   if ($devbudglist!="new")
	   {
		$ress = $db->Exe_Qry("select * from item_dtls_tbl WHERE divb_code='$devbudglist';");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["item_no"].">".$roww["item_no"]."</OPTION>";
		}
	   }
	   ?>
       <script language="javascript" type="text/javascript">
document.getElementById("itemlist").value="<?php  echo $itemlist;?>";
</script>
       </select></td>
      </tr>
      <tr>
       <th align="left">Purchase Date</th>
       <th>:</th>
       <td><?php $fncs->CrtCalender("pr_date",date('y-m-d'),0);?>
       <script language="javascript" type="text/javascript">
document.getElementById("pr_date").value="<?php  echo $pr_date;?>";
</script>
       </select>
       </td>
      </tr>
      <tr>
       <th align="left">Allocation Amount</th>
       <th>:</th>
       <td><input type="text" name="alloc_amt" id="alloc_amt" value="<?php echo $alloc_amt;?>" /> </td>
      </tr>
      <tr>
       <td colspan="4"><table width="100%" border="0">
         <tr>
          <td class="tbrow" width="6%">&nbsp;</td>
          <td class="tbrow" width="22%"><div align="center">
            <input name="btnAdd" type="submit" id="btnAdd" value="Add" <?php if ($butOp){echo 'disabled="disabled"';}?> />
           </div></td>
          <td class="tbrow" width="22%"><div align="center">
            <input name="btnEdi" type="submit" id="btnEdi" value="Edit" <?php if ($butOp==false){echo 'disabled="disabled"';}?> />
           </div></td>
          <td class="tbrow" width="22%"><div align="center">
            <input name="btnDel" type="submit" id="btnDel" value="Delete" <?php if ($butOp==false){echo 'disabled="disabled"';}?> />
           </div></td>
          <td class="tbrow"  width="6%">&nbsp;</td>
         </tr>
        </table>
         </td>
      </tr>
   </table></td>
   </tr>
  </table>
  <br />
  <br />
  <table id="wrapped" align="center" cellspacing="3" cellpadding="5">
   <tr>
    <th>
    <table id="tbl_allocation" border="1"  align="center" style="font-size:16px;" >
    <tr>
    <th>Purchase No</th>
    <th>Division Budget Code</th>
    <th>Item No</th>
    <th>Purchase Date</th>
    <th>Allocation Amount</th>
    </tr>
    <?php
    $ress=($db->Exe_Qry("SELECT * FROM ibudg_alloc_tbl;"));
	while ($roww = $db->Next_Record($ress))
	    {
	        echo "<tr>
			<th>".$roww["pr_no"]."</th>
			<th>".$roww["divb_code"]."</th>
			<th>".$roww["item_no"]."</th>
			<th>".$roww["pr_date"]."</th>
			<th>".$roww["alloc_amt"]."</th>
			</tr>";
		}
	?>
	</table>
    </th>
   </tr>
  </table>
 </form>
 <script language="javascript" type="text/javascript">
				document.getElementById("prlist").value = "<?php  echo $prlist;?>";
				if (document.getElementById("prlist").value != "<?php  echo $prlist;?>" || document.getElementById("prlist").value=="")
				{
					document.getElementById("prlist").value= "new";
					document.getElementById("alloc_amt").value= "";
					document.getElementById("btnAdd").disabled=false;
					document.getElementById("btnEdi").disabled=true;
					document.getElementById("btnDel").disabled=true;
				}
		</script>
 <br />
 <br />
</div>
</body>
</html>
