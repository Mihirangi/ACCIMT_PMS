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


	
	$query1="SELECT pdt.sh_no FROM shdl_task_tbl as pdt WHERE pdt.sh_no='".$p."'";
	$result1= mysql_query($query1);
	$row1 = mysql_fetch_row($result1);
	

	$sql="SELECT pdt.sh_des, pdt.date_range FROM shdl_task_tbl AS pdt WHERE pdt.sh_no = '".$q."'";
	$result = mysql_query($sql);

	while($row = mysql_fetch_array($result))
	{
		echo 'a'.'|$|'.$row['sh_des'].'|$|'.'|$|'.$row['date_range'].'|$|';
	}

	mysql_close($con);

?> 
