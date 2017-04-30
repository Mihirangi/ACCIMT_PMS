 <?php
$q=$_GET["q"];
$r=$_GET["r"];

$con = mysql_connect('localhost', 'root', '');
mysql_select_db("attend_db", $con);

if (!$con)
{
	die('Could not connect: ' . mysql_error());
	
}
	
	$tempfromdate=(date("Y")-1).'-01-01';
	$temptodate=(date("Y")-1).'-12-31';
	$noofDays=0;

	$sql="SELECT l.No_of_Days FROM emp_details_tbl e,emp_lv_tbl l WHERE e.EmpNo ='".$q."' AND e.EmpNo=l.Emp_No AND l.Leave_Type_ID='2' AND l.From_Date>='$tempfromdate' AND l.To_Date<='$temptodate'";
	$result=mysql_query($sql);
	
	if(mysql_num_rows($result)!=0){
		while($row = mysql_fetch_array($result))
		{
			$noofDays=$noofDays+$row[0];
		}
	}
	else{
		$noofDays=0;
	}
	
	$thisyear=date("Y");
	$lastyear=$thisyear-1;
	
	$query1="SELECT Vacation FROM ent_lv_tbl WHERE Emp_No ='$q' AND Year='$lastyear' ";
	$result1=mysql_query($query1,$con);
		
	if(mysql_num_rows($result1)==0){
		mysql_query("Update ent_lv_tbl Set Lapse='0' WHERE Emp_No='$q' AND Year='$thisyear'");
	}	
	
	else{
		$row=mysql_fetch_row($result1);
		$lapse=$row[0]-$noofDays;	
		mysql_query("Update ent_lv_tbl Set Lapse='$lapse' WHERE Emp_No='$q' AND Year='$thisyear'");
	}
	
	
	if($r=="-Select-"){
		$thisyear=date("Y");
		$sql1="SELECT Year,Medical,Vacation,Casual,Lapse FROM ent_lv_tbl WHERE Emp_No='".$q."' AND Year='$thisyear'";
		$result1 = mysql_query($sql1);
		
		if(mysql_num_rows($result1)!=0){
			while($row = mysql_fetch_array($result1))
			{
				echo 'a'.'|$|'.$thisyear.'|$|'.$row['Medical'].'|$|'.$row['Vacation'].'|$|'.$row['Casual'].'|$|'.$row['Lapse'].'|$|';
			}
		}
		else{
			$sql2="SELECT DateofAppoinment FROM emp_details_tbl WHERE EmpNo ='".$q."' ";
			$result2=mysql_query($sql2);
			$row=mysql_fetch_row($result2);
			
			if(getYear($row[0])==$thisyear){
				$medical=21;
				$casual=7;
				
				switch(getMonth($row[0])){
					case 1:
					case 2:
					case 3:
						$vacation=14;
					break;
					
					case 4:
					case 5:
					case 6:
						$vacation=10;
					break;
					
					case 7:
					case 8:
					case 9:
						$vacation=7;
					break;
					
					case 10:
					case 11:
					case 12:
						$vacation=4;
					break;
				
				}
				echo 'a'.'|$|'.$thisyear.'|$|'.$medical.'|$|'.$vacation.'|$|'.$casual.'|$|';

			}
		}
	}
	
	else{
		$sql3="SELECT Year,Medical,Vacation,Casual,Lapse FROM ent_lv_tbl WHERE Emp_No='".$q."' AND Year='".$r."'";
		$result3 = mysql_query($sql3);
		while($row = mysql_fetch_array($result3))
		{
			echo 'a'.'|$|'.$row['Year'].'|$|'.$row['Medical'].'|$|'.$row['Vacation'].'|$|'.$row['Casual'].'|$|'.$row['Lapse'].'|$|';
		}
	}
	
	function getYear($pdate){
		$date=DateTime::createFromFormat("Y-m-d",$pdate);
		return $date->format("Y");
	}

	function getMonth($pdate){
		$date=DateTime::createFromFormat("Y-m-d",$pdate);
		return $date->format("m");
	}

mysql_close($con);

?> 
