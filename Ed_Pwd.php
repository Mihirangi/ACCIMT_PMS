<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Change Password</title>
<?php
session_start();
if (!isset($_SESSION['proclogin_type']))
{
header('Location: lgin.php');
}
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations('tt');
$fncs= new FRMOperations();
?>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
</head>
<?php
$empt="";
if(isset($_POST['btchange']))
{
	$sername =$_SESSION['proclogin_un'];
	$current=$_POST['cupw'];
	$newpw=$_POST['pw'];
	$cunewpw=$_POST['cpw'];
	$result = mysql_query("SELECT * FROM login_tbl_leave WHERE Emp_No='$sername' AND Password=MD5('$current')");
	$rows=mysql_num_rows($result);
	if($rows==1)
	   {
		   
			if(empty($newpw))
		{
			 	  	echo '<script>';
		echo 'alert("Please check your enterd values");';
		
		echo '</script>';  
		}
		else {   
		   
		if($newpw==$cunewpw)
		     {			   
			   	  $res=mysql_query("UPDATE login_tbl_leave
		  SET Password=MD5('$cunewpw')
		  WHERE Emp_No='$sername'");
		  
		  	echo '<script>';
		echo 'alert("You Successfuly Changed Your Password");';
		
		echo '</script>';
		     }
			 else
			 {
				 		echo '<script>';
		echo 'alert("New password not match");';
		
		echo '</script>';
		     }
		}
		}
	else{
		echo '<script>';
		echo 'alert("Current password not match");';
		echo '</script>';
		}	
}
?>
<body  onLoad="sessSet('Ed_Pwd.php')" onClick="mytstfunc()">
<div id="wrapp">
		<form id="form1" name="form1" method="post" action="">
				<table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
						<caption><h1>Change Your Password</h1></caption>
						<tr>
								<th> <table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#FFFFFF">
                                <tr>
														<th valign="top" scope="row"><div align="left">Current Password</div></th>
														<th valign="top">:</th>
											  <td align="left">
                                                        <input type="password" name="cupw" id="cupw" value="<?php echo $empt;?>"></td>
												</tr>
												<tr>
														<th valign="top" scope="row"><div align="left">New Password</div></th>
														<th valign="top">:</th>
											  <td align="left">
                                                        <input type="password" name="pw" id="uname" value="<?php echo $empt;?>"></td>
												</tr>
												<tr> 

												<th valign="top" scope="row"><div align="left">Confirm Password</div></th>
														<th valign="top">:</th>
														<td><input type="password" name="cpw" id="pw" value="<?php echo $empt;?>"></td>	
												</tr>
                                                				
												
												<tr>
														<th colspan="3" scope="row"> <table width="100%" border="0" style="color:#FFFFFF">
										<tr>
												<td width="14%">&nbsp;</td>
												<td width="22%"><div align="center"></div></td>
												<td width="22%"><div align="center">
														<input name="btchange" type="submit" id="btchange" value="Change" onClick="return confirmEdiDel()">
												</div></td>
												<td width="22%"><div align="center"></div></td>
												<td width="14%">&nbsp;</td>
										</tr>
																</table></th>
												</tr>
										</table></th>
						</tr>
				</table>
				<br/>
				<br/>
</form>
<br />
<br />
</div>
</body>
</html>
