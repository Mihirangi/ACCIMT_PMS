 <?php
$q=$_GET["q"];
$con = mysql_connect('localhost', 'root', 'pwditlinux');
if (!$con)
{
	die('Could not connect: ' . mysql_error());
}
mysql_select_db("attend_db", $con);
$sql="SELECT * FROM category_tbl WHERE Category ='".$q."' " ;
$result = mysql_query($sql);
while($row = mysql_fetch_array($result))
{
	echo $row['Category'].'|$|'.$row['InTime'].'|$|'.$row['OutTimeH'].'|$|'.$row['OutTimeM'].'|$|'.$row['AdjestTime'].'|$|'.$row['LateTime'].'|$|';
;
}
mysql_close($con);

?> 
