<html>
<head>
<title>Login Page</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<?php
session_start();
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db = new DBOperations("attend_db");
$fncs= new FRMOperations();
?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
</head>
<?php
$uname="";
$pword="";
$error = "";
//$_SESSION['lgtp'] = "";
if(isset($_POST['btlogout']))
{
 unset($_SESSION['proclogin_type']);
 session_destroy();
 $uname="";
 $pword="";
}
if(isset($_POST['btlogin']))
{
	$uname=$_POST['Username'];
	$pword=$_POST['Password'];
	
	//$result=$db->Exe_Qry("SELECT * FROM login_tbl WHERE User_Name ='$uname' AND Password = MD5('$pword');");
	
	$result=$db->Exe_Qry("SELECT * FROM login_tbl_leave WHERE Emp_No ='$uname' AND Password = MD5('$pword')");
	
	
	$count=$db->Row_Count($result);
	if ($count==0)
	{
	  $error= "Username or Password is Incorrect";
	}
	else
	{
		$row = $db->Next_Record($result);
		$a=$row['Emp_Typep'];
		$b=$row['Emp_No'];
		//$c=$row['Password'];
		$_SESSION['proclogin_type']=$a;
		$_SESSION['proclogin_un']=$b;
		echo '<script> top.location.reload(true); </script>';
		if ($a=="ADM")
		{
			$_SESSION['proclgtp']="an Administrator";
			$error= "Admin Logged";
			$_SESSION['proclogin_user']=$b;
			//header('Location: LvAppAdd.php');
		}
		elseif ($a=="DIG")
		{
			$_SESSION['proclgtp']="a Director";
			$error= "Director Logged";
			$_SESSION['proclogin_user']=$b;
			//header('Location: LvAppAdd.php');
		}
		elseif ($a=="ADD") 
		{
			$_SESSION['proclgtp']="an Additional Director";
			$error= "Additional Director Logged";
			$_SESSION['proclogin_user']=$b;
			//header('Location: LvAppAdd.php');
		}
		elseif ($a=="HOD") 
		{
			$_SESSION['proclgtp']="a Head of Division";
			$error= "Head of Division Logged";
			$_SESSION['proclogin_user']=$b;
			//header('Location: LvAppAdd.php');
		}
		elseif ($a=="CLE") 
		{
			$_SESSION['proclgtp']="a Cleark";
			$error= "Cleark Logged";
			$_SESSION['proclogin_user']=$b;
			//header('Location: LvAppAdd.php');
		}
		elseif ($a=="EMP") 
		{
			$_SESSION['proclgtp']="an Employee";
			$error= "Employee Logged";
			$_SESSION['proclogin_user']=$b;
			//header('Location: ShLvAppEdiSel.php');
		}
		else
		{
		 	$error= "Something is Wrong with Your Employee type.<br /> Please Contact The System Administrator.";
		}
	}
}

?>













<?php /*?><?php
session_start();
require_once("phpfncs/MY_Database.php");  
$error ="";
if($_SERVER["REQUEST_METHOD"] == "POST")
{
$db =new DBOperations_MY();
$myusername=addslashes($_POST['username']);
$mypassword=$_POST['password'];
$result=$db->Exe_Qry("SELECT * FROM login_tbl WHERE Emp_No ='$myusername' AND Password = MD5('$mypassword')");
$count=$db->Row_Count($result);
if ($count==0)
{
  $error= "Username or Password is Incorrect";
}
  else
{
  $row = $db->Next_Record($result);
  $a=$row['Emp_Typep'];
  $b=$row['Emp_No'];
  $c=$row['Password'];
 $_SESSION['login_type']=$a;
 if ($a=="ADM")
{
	$_SESSION['lgtp']="an Administrator";
$error= "Admin Logged";
$_SESSION['login_user']=$b;
//header('Location: LvAppAdd.php');
}
 elseif ($a=="DIG")
{
	$_SESSION['lgtp']="a Director";
$error= "Director Logged";
$_SESSION['login_user']=$b;
//header('Location: LvAppAdd.php');
}
elseif ($a=="ADD") 
{
	$_SESSION['lgtp']="an Additional Director";
$error= "Additional Director Logged";
$_SESSION['login_user']=$b;
//header('Location: LvAppAdd.php');
}
elseif ($a=="HOD") 
{
	$_SESSION['lgtp']="a Head of Divition";
$error= "Head of Divition Logged";
$_SESSION['login_user']=$b;
//header('Location: LvAppAdd.php');
}
elseif ($a=="CLE") 
{
	$_SESSION['lgtp']="a Cleark";
$error= "Cleark Logged";

$_SESSION['login_user']=$b;
//header('Location: LvAppAdd.php');
}
elseif ($a=="EMP") 
{
	$_SESSION['lgtp']="an Employee";
$error= "Employee Logged";
$_SESSION['login_user']=$b;
//header('Location: ShLvAppEdiSel.php');
}
else
{
 $error= "Something is Wrong with Your Employee type.<br /> Please Contact The System Administrator.";
}
}
}
?><?php */?>






















<body onLoad="sessSet('lgin.php')" onClick="mytstfunc()">
<div id="wrapp">
<?php if (!isset($_SESSION['proclogin_type']))
{ ?>
  <form id="form1" name="form1" method="post" action="" >
    <table id="wrapped2" align="center" width="750px"  border="0" cellpadding="10" cellspacing="1">
      <caption>
      <h1>Welcome Please Login!!!</h1>
      </caption>
      <tr>
        <td><table border="0" align="center">
            <tr>
              <th align="right">Username</th>
              <th>:</th>
              <td><input type="text" name="Username" placeholder="Username" value="<?php echo $uname; ?>"/></td>
            </tr>
            <tr>
              <th align="right">Password</th>
              <th>:</th>
              <td><input type="password" name="Password" placeholder="Password" value="<?php echo $pword; ?>"/></td>
            </tr>
            <tr>
              <td colspan="4"><table width="100%" border="0">
                  <tr>
                    <td class="tbrow" width="6%">&nbsp;</td>
                    <td class="tbrow" width="22%"><div align="center"></div></td>
                    <td class="tbrow" width="22%"><div align="center">
                        <input type="submit" value="Login" name="btlogin" id="btlogin" />
                      </div></td>
                    <td class="tbrow" width="22%"><div align="center"></div></td>
                    <td class="tbrow"  width="6%">&nbsp;</td>
                  </tr>
                </table></td>
            </tr>
          </table></td>
      </tr>
    </table>
    <br />
    <br />
    <table id="wrapped" align="center" cellspacing="3" cellpadding="5">
      <tr>
        <th><font color="#FF0000"><?php echo $error ?></font></th>
      </tr>
    </table>
  </form>
  <br />
  <br />
<?php }
else{?>
  <form id="form2" name="form2" method="post" action="" >
    <table id="wrapped" align="center" width="750px"  border="0" cellpadding="10" cellspacing="1">
      <caption>
      <h1>Congratulations You've Logged In as <?php if(isset($_SESSION['proclgtp'])) {echo $_SESSION['proclgtp'];} ?></h1>
      </caption>
      <tr>
        <td><table border="0" align="center">
            <tr>
              <td><table width="100%" border="0">
                  <tr>
                    <td class="tbrow" width="6%">&nbsp;</td>
                    <td class="tbrow" width="22%"><div align="center"></div></td>
                    <td class="tbrow" width="22%"><div align="center">
                        <input type="submit" value="Log Out" name="btlogout" id="btlogout" />
                      </div></td>
                    <td class="tbrow" width="22%"><div align="center"></div></td>
                    <td class="tbrow"  width="6%">&nbsp;</td>
                  </tr>
                </table></td>
            </tr>
          </table></td>
      </tr>
    </table>
  </form>
  <br />
  <br />
  <?php }?>
</div>
</body>
</html>