<html>
<head>
<title>Login Page</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<?php
@session_start();
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations();
$fncs= new FRMOperations();
?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
</head>
<?php
$db =new DBOperations();
$uname="";
$pword="";
$error = "";
$lgtp = "";
if(isset($_POST['btlogin']))
{
$uname=$_POST['Username'];
$pword=$_POST['Password'];
$result=$db->Exe_Qry("SELECT * FROM login_tbl WHERE User_Name ='$uname' AND Password = MD5('$pword');");
$count=$db->Row_Count($result);
if ($count==0)
{
  $error= "Username or Password is Incorrect";
}
  else
{
  $row = $db->Next_Record($result);
  $a=$row['Type'];
  $b=$row['User_Name'];
  $_SESSION['login_type']=$a;
  $_SESSION['login_un']=$b;
  echo '<script> top.location.reload(true); </script>';
 }
}

if (isset($_SESSION['login_type']))
{
  if ($_SESSION['login_type']=="A")
  {
  	$lgtp="an Administrator";
  }
  else if ($_SESSION['login_type']=="E")
  {
  	$lgtp="an Editor";
  }
  else if ($_SESSION['login_type']=="V")
  {
  	$lgtp="a Viewer";
  }
}

if(isset($_POST['btlogout']))
{
 unset($_SESSION['login_type']);
 session_destroy();
 $uname="";
 $pword="";
}
?>
<body onLoad="sessSet('lgin.php')" onClick="mytstfunc()">
<div id="wrapp">
<?php if (!isset($_SESSION['login_type']))
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
      <h1>Congratulations You've Logged In as <?php echo $lgtp; ?></h1>
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