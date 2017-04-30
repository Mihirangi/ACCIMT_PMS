<?php

$con = mysql_connect('localhost', 'root', 'pwditlinux');
if (!$con ) {
    die('Could not connect: ' . mysql_error());
}
//echo 'Connected successfully';
//mysql_close($con );
mysql_select_db('attend_db');
$sql= "SELECT t1.EmpNo, t1.InTime, t1.OutTime, t1.User, t2.AttDtId, t3.AttType FROM attend_tbl t1, attend_dts_tbl t2, attend_type_tbl t3 WHERE t1.AttDtId=t2.AttDtId AND t1.AttTypeId=t3.AttTypeId";
mysql_query($sql);
$records=mysql_query($sql);
?>

<html>
<head>
	<title> Tutorial </title>
	</head>
	<body>
	<table align="center" width="600" Border="1" cellpaddin="1" cellspacing="1" bgcolor="#CCCCFF">
	<tr>
	
	<th bgcolor="#0066FF"> Employee No </th>
	<th  bgcolor="#0066FF"> In Time </th>
	<th  bgcolor="#0066FF"> Out Time </th>
	<th  bgcolor="#0066FF"> Attend Type </th>
	<th  bgcolor="#0066FF"> User </th>
    <th  bgcolor="#0066FF"> Date </th>
    <th  bgcolor="#0066FF"> Click to edit </th>

	
	<tr>
	<?php
	while ($table1=mysql_fetch_assoc($records)){
	echo "<tr>";
	echo "<td>".$table1['EmpNo']."</td>";
	echo "<td>".$table1['InTime']."</td>";
	echo "<td>".$table1['OutTime']."</td>";
	echo "<td>".$table1['User']."</td>";
	echo "<td>".$table1['AttDtId']."</td>";
	echo "<td>".$table1['AttType']."</td>";
     //echo  "<td>". '<input type="submit" name="submit" value="Edit" ' . "</td>"; 
	 echo "<td> <a href='edit.php'>Edit</a></td>";
	echo "</tr>";  

	
	}
	
	
	
	?>
	
	</body>
	



</html>

