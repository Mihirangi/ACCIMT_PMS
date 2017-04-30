 <?php

	$q=$_GET["q"];

session_start();
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db = new DBOperations("attend_db");
$fncs= new FRMOperations();
	
	if (!$con)
	{
		die('Could not connect: ' . mysql_error());
	}


	
	$query1="SELECT pdt.usage_no FROM usage_dtls_tbl as pdt WHERE pdt.usage_no='".$p."'";
	$result1= mysql_query($query1);
	$row1 = mysql_fetch_row($result1);
	

	$sql="SELECT pdt.usage_nm, pdt.usg_descrip FROM usage_dtls_tbl AS pdt WHERE pdt.usage_no = '".$q."'";
	$result = mysql_query($sql);

	while($row = mysql_fetch_array($result))
	{
		echo 'a'.'|$|'.$row['usage_nm'].'|$|'.$row['usg_descrip'].'|$|';
	}

	mysql_close($con);

?> 
