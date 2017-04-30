 <?php
$q=$_GET["q"];
require_once ("phpfncs/Database.php");
$MYdb = new DBOperations("attend_db");

/*$con = mysql_connect('localhost', 'root', '1234');

if (!$con)
{
	die('Could not connect: ' . mysql_error());
}
mysql_select_db("attend_db", $con);*/





$sql="SELECT e.EmpNo,e.Title,e.Fullname,e.NICNum,e.DOB,e.Gender,e.Email,e.MobileNo,e.DateofAppoinment,d.Division,des.Designation,et.EmpType,c.Category,e.RetirementDT FROM emp_details_tbl e,division_tbl d,designation_tbl des,emp_type_tbl et,category_tbl c WHERE e.EmpNo ='".$q."' AND e.DivisionCode=d.DivisionCode AND e.DesigCode=des.DesigCode AND e.EmpTypeCode=et.EmpTypeCode AND e.CategoryCode=c.CategoryCode" ;
$result = $MYdb->Exe_Qry($sql);


while($row = $MYdb->Next_Record($result))
{
	echo $row['EmpNo'].'|$|'.$row['Title'].'|$|'.$row['Fullname'].'|$|'.$row['NICNum'].'|$|'.$row['DOB'].'|$|'.$row['Gender'].'|$|'.$row['Email'].'|$|'.$row['MobileNo'].'|$|'.$row['DateofAppoinment'].'|$|'.$row['Division'].'|$|'.$row['Designation'].'|$|'.$row['EmpType'].'|$|'.$row['Category'].'|$|'.$row['RetirementDT'].'|$|';
;
}
?> 
