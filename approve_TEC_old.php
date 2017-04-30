<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Districts</title>
<script language="javascript" src="calendar/calendar.js">
</script>
<?php
session_start();


require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations();
$fncs= new FRMOperations();

if (isset($_POST['TEC_ID']) ){$id1 =$_POST['TEC_ID'];}
$TEC_ID=$_SESSION['Fil_NUMBER'];



$File_no=$_SESSION['File_no'];
$EmpNo=$_SESSION['EmpNo'];
$type_id=$_SESSION['type_id'];



if (isset($_POST['butsave']))
{
	$db->Exe_Qry("Update appoint_tec SET  Approve='Y' WHERE File_no='$File_no';");
	echo '<script> alert("You Successfully Recomended this Purchase Requisition");</script>';
	unset($_SESSION['File_no']);
}
if(isset($_POST['butback']))
{
    unset($_SESSION['File_no']);
	
}

if (isset($_POST['butdel']))
{
	$db->Exe_Qry("UPDATE appoint_tec SET Approve='N' WHERE File_no='$File_no';");
	echo '<script> alert("You Successfully Rejected this Purchase Requisition");</script>';
	unset($_SESSION['File_no']);
	
	
}
 

?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="sessSet('approve_TEC.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="" onSubmit="confirmEdiDel()" >
  
 
  <table id="wrapped2" align="center" width="95%"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1>Approve TEC</h1>
   </caption>
   <tr>
    <td><table border="5" align="center">
	<tr>
       <th align="left" onchange ='document.form1.submit()' name ='TEC_ID' id ='TEC_ID'>File No </th>
       <th>:</th>
       <td>
	   <select>
	   <?php 
			$File_no =$db->Exe_Qry("SELECT File_no FROM appoint_tec");
			echo '<option value="pqr" >--Select Number--</option>';
			while ($row = mysql_fetch_array($File_no)) {
			echo "<option value='$row[0]'>$row[0]</option>";
			 }
		?>
		<script language="javascript" type="text/javascript">
			document.getElementById("TEC_ID").value="<?php  echo $File_no;?>";
		</script>
		</select>
	  </td>
      </tr>
      
	  
       <th align="left">Employee No</th>
       <th>:</th>
      <td><?php 
	 
	  $File_no=$db->Exe_Qry("SELECT EmpNo FROM appoint_tec where File_no='$File_no'"); 
	   $row = mysql_fetch_array($File_no);
	   echo $row[0];
	   ?></td>
      </tr>
      <tr>
       <th align="left">Appoint Type</th>
       <th>:</th>
       <td><?php 
	  
	  $File_no=$db->Exe_Qry("SELECT type_id FROM appoint_tec where File_no='$File_no'"); 
	   $row = mysql_fetch_array($File_no);
	   echo $row[0];
	   ?></td>
      </tr>
      
     
      <tr>
       <td colspan="4"><table width="100%" border="0">
         <tr>
          <td class="tbrow" width="6%">&nbsp;</td>
          <td class="tbrow" width="22%"><div align="center">
            <input type="submit" name="butsave" id="butsave" value="Approve" accesskey="a" />
           </div></td>
          <td class="tbrow" width="22%"><div align="center">
            <input type="submit" name="butdel" id="butdel" value="Deny" accesskey="d" />
           </div></td>
          <td class="tbrow" width="22%"><div align="center">
            <input type="submit" name="butback" id="butback" value="Back to List" accesskey="l" />
           </div></td>
          <td class="tbrow"  width="6%">&nbsp;</td>
         </tr>
        </table>
         </td>
      </tr>
   </table></td>
   </tr>
  </table>
  
   
 </form>

  <br />
  <br />
 </form>
 <br />
 <br />
</div>
</body>
</html>

  