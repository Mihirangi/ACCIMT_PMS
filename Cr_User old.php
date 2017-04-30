<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>System Users</title>
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
?>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
</head>
<?php
$uname=""; 
$pw ="";
$type ="";
if (!empty($_POST))
{					
$uname=$_POST['uname'];	
$pw =$_POST['pw'];
$cpw =$_POST['cpw'];
$type=$_POST['usertype'];
if(isset($_POST['btnAdd']))
{		  	
	if(strlen($pw)>0 && strlen($uname)>0 && $pw==$cpw){
		$result=$db->Exe_Qry("INSERT INTO login_tbl_leave (Emp_No, Password, Emp_Type) VALUES ('$uname', MD5('$pw'), '$type');");
	}
	else{
	echo '<script>alert("Fill the Form Properly");</script>';
		}
				  
}
else if(isset($_POST['btnEdi']))
{
	if (strlen($pw)>0 && $pw==$cpw)
	{
 	 $result12=$db->Exe_Qry("UPDATE login_tbl_leave SET Emp_Type='$type', Password=MD5('$pw') WHERE Emp_No='$uname'");	
}else 
{
	echo '<script>alert("Password Not match");</script>';
}
}
else if(isset($_POST['btnDel']))
{
	$user =$_POST['uname'];
	$newresult=mysql_query("DELETE FROM login_tbl_leave WHERE Emp_No='$user'");
}
}
?>
<body onLoad="sessSet('Cr_User.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="">
  <table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1><?php $fncs->HeadingEcho2($_SESSION['proclogin_type']);?> User</h1>
   </caption>
   <tr>
    <th>
    <?php
    if ($_SESSION['proclogin_type']=="ADM")
	{?>
    <table align="center"  border="0" cellpadding="4" cellspacing="1">
      <tr>
       <th valign="top" scope="row"><div align="left">User name*</div></th>
       <th valign="top">:</th>
       <td align="left"><input type="text" name="uname" id="uname" value="<?php echo $uname; ?>"></td>
      </tr>
      <tr>
       <th valign="top" scope="row"><div align="left">Password</div></th>
       <th valign="top">:</th>
       <td><input type="password" name="pw" id="pw" value="<?php echo $pw; ?>"></td>
      </tr>
      <tr>
       <th valign="top" scope="row"><div align="left">Confirm Password</div></th>
       <th valign="top">:</th>
       <td><input type="password" name="cpw" id="cpw" value=""></td>
      </tr>
      <tr>
       <th valign="top" scope="row"><div align="left">Type</div></th>
       <th valign="top">:</th>
       <td><select name="usertype" id="usertype">
         <option value="ADM">Administrator</option>
         <option value="DIG">Director</option>
         <option value="ADD">Additional Director</option>
         <option value="HOD">Head of Division</option>
         <option value="CLE">Clerk</option>
         <option value="EMP">Employee</option>
         <script>
 document.getElementById('usertype').value="<?php echo $type; ?>"
 </script>
        </select>
       </td>
      </tr>
      <tr>
       <th colspan="3" scope="row"> <table width="100%" border="0">
         <tr>
          <td width="22%"><div align="left">
            <input name="btnAdd" type="submit" id="btnAdd" value="Add" onClick="return conf()">
           </div></td>
          <td width="22%"><div align="center">
            <input name="btnEdi" type="submit" id="btnEdi" value="Edit*" onClick="return confirmEdiDel()">
           </div></td>
          <td width="22%"><div align="right">
            <input name="btnDel" type="submit" id="btnDel" value="Delete*" onClick="return confirmEdiDel()">
           </div></td>
         </tr>
        </table></th>
      </tr>
     </table>
     <?php }?>
     </th>
   </tr>
  </table>
 </form>  
  <br/>
  <br/>
 <form action="" method="post" name="Frm2">
  <table id="wrapped" align="center" cellspacing="3" cellpadding="5" border="0">
   <tr>
    <th><table align="center"  border="1" cellpadding="4" cellspacing="1" style="color:#FFFFFF">
      <tr>
       <th> User Name</th>
       <th>type</th>
      </tr>
      <?php
$result2=mysql_query("SELECT * FROM login_tbl_leave");
$rows=mysql_num_rows($result2); 

for($x1=0;$x1<$rows;$x1++)
{
$uu=mysql_fetch_array($result2);	
echo '<tr>';
echo'<td align="center">';
echo $uu['0'];
echo'</td>';
echo'<td>';

		if ($uu['2']=="ADM")
		{
			echo "Administrator";
		}
		elseif ($uu['2']=="DIG")
		{
			echo "Director";
		}
		elseif ($uu['2']=="ADD") 
		{
			echo "Additional Director";
		}
		elseif ($uu['2']=="HOD") 
		{
			echo "Head of Division";
		}
		elseif ($uu['2']=="CLE") 
		{
			echo "Clerk";
		}
		elseif ($uu['2']=="EMP") 
		{
			echo "Employee";
		}
echo'</td>';
echo'</tr>';
	
	
}


?>
     </table></th>
  </table>
 </form>
 <br />
 <br />
</div>
</body>
</html>
