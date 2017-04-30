<html>
<head> Form Edit Data </head>
<body>
<table border="1" align="center">
<tr>
<td align="center" bgcolor="#0066FF"> Form Edit Employees Data </td>
</tr>
<tr>
<td>
<table>
<?
$con= mysql_connect('localhost', 'root', 'pwditlinux'); 
if (!$con){
	die('Could not connect:' .mysql_error());
	}
	echo 'Connect Succesfully';
	mysql_select_db('attend_db');
	if (isset($_POST['submit']))
	{
		$EmpNo = $_POST['EmpNo'];
		$InTime = cleanInput($_POST['InTime']);
		$OutTime = cleanInput ($_POST['OutTime']);
		$AttTypeId = cleanInput ($_POST['AttTypeId']);
		$AttDtId = $_POST['AttDtId'];

	//$sqli= "select * from attend_tbl";
	//$result=mysql_query($sqli) or die ("Query Failed : ".mysql_error());
	$query2 = "UPDATE attend_tbl SET EmpNo='$EmpNo', InTime='$InTime', OutTime='$OutTime',AttTypeId='$AttTypeId' WHERE AttDtId='$AttDtId'";
	
		$result2 = executeQuery($query2);
		if($result2==TRUE){
		echo  "records update successfully";
		}
		else{
			echo "Error updating";
			}
		
		header("location:AttView.php");
	}
	
	$AttDtId= cleanInput ($_GET['AttDtId']);
	$query2= "SELECT* FROM attend_tbl WHERE AttDtId='$AttDtId'";
	$result=mysql_query($sqli) or die ("Query Failed : ".mysql_error());
	$result2 = executeQuery($query2);
	$raw= mysql_fetch_array($result2);
	if (mysql_num_rows($result2)>0)
	

?>
<form method="post" action="AttView.php" >
<input type="hidden" name="EmpNo" value="<? echo "$raw [EmpNo]"?>"/>
<tr>
<td bgcolor="#0066FF"> In Time </td>
<td bgcolor="#CCCCFF">
<input type="text" name="InTime" value="<? echo $InTime; ?>"/>
</td>
</tr>

<tr>
<td bgcolor="#0066FF"> Out Time </td>
<td bgcolor="#CCCCFF">
<input type="text" name="OutTime" value="<? echo "$raw [OutTime]"?>"/>
</td>
</tr>

<tr>
<td align="right">
<input type="submit" name="btnSubmit" value="Update">

</td>
</tr>

</form>
</table> 

 
	


</html>