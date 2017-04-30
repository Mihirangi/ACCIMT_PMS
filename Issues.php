<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Districts</title>
<?php
session_start();
if (!isset($_SESSION['login_type']))
{
header('Location: lgin.php');
}
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$MYdb = new DBOperations("attend_db");
$funcc = new FRMOperations();
$usrnme = $_SESSION['login_un'];
$timezone = new DateTimeZone('America/New_York');
if(empty($_POST))
{
	$dt=date('y-m-d');//to set calender date
}
else
{
	$dtid=$_POST['Day_Select'];
	$empno=$_POST['Emp_No'];
    if(isset($_POST['btnpros']) && $empno != "non" || (($_POST['F1']=="" || $_POST['F2']=="") && (isset($_POST['SLCB']) && ($_POST['F3']=="" || $_POST['F4']==""))))
	{
		//*
		//************** check for promotions, change the sql to get the category changes **************
		$act_emp_sql="SELECT EmpNo, InTime, OutTimeH, OutTimeM, AdjestTime, LateTime FROM emp_details_tbl,category_tbl WHERE EmpNo = '$empno' AND emp_details_tbl.CategoryCode=category_tbl.CategoryCode;";
		//*
		//*
		//*
		$active_emp=$MYdb->Exe_Qry($act_emp_sql);
		$attend_dt_id_info=$MYdb->Next_Record($MYdb->Exe_Qry("SELECT AttDt FROM attend_dts_tbl WHERE AttDtId = '$dtid';"));
		$dt = $attend_dt_id_info['AttDt'];
		$attend_dt_id = $dtid;
		$empnors = $MYdb->Next_Record($active_emp);
			$actintime;//The time employee actually came
			$actouttime;//The time employee actually left
			$SlvOuttime;
			$SlvIntime;
			$SlvIntime2;
			$isSLandHDtaken=false;// ShortLeaves turned into halfdays.
			$isFDLeave=false;// Full Day Leave Taken Status
			$isHDtaken=false;// Half Day Leave Taken Status	
			$isSLtaken=false;// Short Leave Taken Status		
			$isAbsent=false;// Absent Status
			$isIssue=false;// Issues Status
			$doProceed=false; // Proceed or not
			$isLate=false;// Late Status
			$isf3sorf4s=false;// is there any F3s or F4s in the middle of the day
			$isf3sorf4sInTime=false;// 1.5 hours shortleave ok.
			$is4HsOk=false;//continuous 4 hours ok
			
			$actintime = new DateTime($_POST['F1'], $timezone);
			$actouttime = new DateTime($_POST['F2'], $timezone);
			if (isset($_POST['SLCB']))
			{
				$SlvOuttime = new DateTime($_POST['F3'], $timezone);
				$SlvIntime = new DateTime($_POST['F4'], $timezone);
			}
			
			
			
			
				if ($actintime<=new DateTime('12:30:00', $timezone) && $actouttime>=new DateTime('12:00:00', $timezone))
				
				/*($MYdb->Row_Count($MYdb->Exe_Qry("SELECT AttendTime FROM Attendance WHERE EmpNo='$empno' AND 
				AttendDate = '$dt' AND (AttendTime <=  AND AttendType = 'F1');"))==1) && ($MYdb->Row_Count($MYdb->Exe_Qry("SELECT AttendTime FROM Attendance WHERE EmpNo='$empno' AND 
				AttendDate = '$dt' AND (AttendTime >= '12:00:00' AND AttendType = 'F2');"))==1))*/
				{
					/*$morningIn=$MYdb->Exe_Qry("SELECT AttendTime FROM Attendance WHERE EmpNo='$empno' AND 
					AttendDate = '$dt' AND AttendTime <= '12:30:00' AND AttendType = 'F1';");
					//get data from DB if the employee has come before 12.30.
					$MoInInfo = $MYdb->Next_Record($morningIn);
					$actintime = new DateTime($MoInInfo['AttendTime']);*/
					//get the actual time that the employee came here.
					
					/*$eveningOut=$MYdb->Exe_Qry("SELECT AttendTime FROM Attendance WHERE EmpNo='$empno' AND 
					AttendDate = '$dt' AND AttendTime >= '12:00:00' AND AttendType = 'F2';");
					//get data from DB if the employee has left after 12.00.
					$EvOuInfo = $MYdb->Next_Record($eveningOut);
					$actouttime = new DateTime($EvOuInfo['AttendTime']);*/
					//get the actual time that the employee left the office.
					
					/*$midoutsandins=$MYdb->Exe_Qry("SELECT AttendTime FROM Attendance WHERE EmpNo='$empno' AND 
					AttendDate = '$dt' AND (AttendType = 'F4' OR AttendType = 'F3');");	*/
					//////////////////////////////////////////////////////////////////////////////////////////////

					$intime = new DateTime($empnors['InTime'], $timezone);//time which the employee is espected to come (8.30)
					$adjesttime = new DateTime($empnors['AdjestTime'], $timezone);//exception time (8.45)
					$ouths = $empnors['OutTimeH'];//number of hours to complete the day
					$outms = $empnors['OutTimeM'];//remaining minutes
					//addition of $ouths and $outms is the complete time duration for a day. (7h 45m)
					$out = new DateTime($intime->format('H:i:s'), $timezone);
					$out->add(new DateInterval('PT'.$ouths.'H'.$outms.'M'));
					
					
					
					if (isset($_POST['SLCB']))			
					{
						$isf3sorf4s=true;
						$doProceed = true;
						
						//$SlvOut=$MYdb->Exe_Qry("SELECT AttendTime FROM Attendance WHERE EmpNo='$empno' AND 
						//AttendDate = '$dt' AND AttendType = 'F3';");
						
						if (isset($_POST['SLCB']))
						//check whether he has taken a short leave in the middle of the day (F3)
						{
							$LunchIncOut1 = new DateTime('10:30:00', $timezone);
							$LunchIncOut2 = new DateTime('11:00:00', $timezone);
							$LunchIncOut3 = new DateTime('12:00:00', $timezone);
							$LunchIncOut4 = new DateTime('12:30:00', $timezone);
							$SlvOutInfo = $MYdb->Next_Record($SlvOut);
							$SlvOuttime = new DateTime($SlvOutInfo['AttendTime'], $timezone);
							//consider lunch time
							if ($SlvOuttime>=$LunchIncOut1 && $SlvOuttime<=$LunchIncOut2)
							{
								$Slvlimittime=new DateTime('12:30:00', $timezone);
							}
							else if ($SlvOuttime>=$LunchIncOut3 && $SlvOuttime<=$LunchIncOut4)
							{
								$Slvlimittime=new DateTime('14:00:00', $timezone);
							}
							else
							{
								$Slvlimittime = new DateTime($SlvOuttime->format('H:i:s'), $timezone);
								$Slvlimittime->add(new DateInterval('PT01H30M'));
							}
							/*$SlvIn=$MYdb->Exe_Qry("SELECT AttendTime FROM Attendance WHERE EmpNo='$empno' 
							AND AttendDate = '$dt' AND (AttendTime BETWEEN '".$SlvOuttime->format('H:i:s').
							"' AND '".$Slvlimittime->format('H:i:s')."') AND AttendType = 'F4';");*/
							if ($SlvIntime <= $Slvlimittime )
							//check whether he has taken a short leave in the middle of the day (F4)
							{
								$isf3sorf4sInTime=true;
								//$SlvInInfo=$MYdb->Next_Record($SlvIn);
								
								//$SlvIntime=new DateTime($SlvInInfo['AttendTime']);
								$dummyin=new DateTime($actintime->format('H:i:s'), $timezone);
								if ($dummyin<=$adjesttime)
								{
									$dummyin=new DateTime($intime->format('H:i:s'), $timezone);
								}
								
								$dummyF1=new DateTime($dummyin->format('H:i:s'), $timezone);
								$dummyF1->add(new DateInterval('PT04H00M'));
								$dummyout=new DateTime($actouttime->format('H:i:s'), $timezone);
								if ($dummyout>=$out)
								{
									$dummyout=new DateTime($out->format('H:i:s'), $timezone);
								}
								
								
								$dummyF2=new DateTime($dummyout->format('H:i:s'), $timezone);
								$dummyF3=new DateTime($SlvOuttime->format('H:i:s'), $timezone);
								$dummyF4=new DateTime($SlvIntime->format('H:i:s'), $timezone);
	
								$comptime1=new DateTime('12:00:00', $timezone);
								$comptime2=new DateTime('12:30:00', $timezone);
								if($SlvOuttime>=$comptime1 && $SlvOuttime<=$comptime2)
								{
									$dummyF3 = 	new DateTime('12:30:00', $timezone);
								}
								if($SlvIntime>=$comptime1 && $SlvIntime<=$comptime2)
								{
									$dummyF4 = 	new DateTime('12:00:00', $timezone);
								}
								$dummyF4->add(new DateInterval('PT04H00M'));
								//echo '<script>alert ("Test1 - " + " '.$empno.'");<//script>';
								if ($dummyF1<= $dummyF3)
								{
									$is4HsOk=true;
								}
								else if ($dummyF4<=$dummyF2)
								{
									$is4HsOk=true;
								}	
							}
						}
					}
					else
					{
						$doProceed = true;
					}

				}
				else
				{
					$isFDLeave=true;//set Full Day Leave Taken Status
					//process full leave
					$isSLtaken = false;
					$isHDtaken = false;
				}
				
				
				
				
				
				
				
				if ($doProceed)
				{
					$slvtime = new DateTime($intime->format('H:i:s'), $timezone);
					$slvtime->add(new DateInterval('PT01H30M'));//time to save the day with a short leave (10.00)	
					$latetime = new DateTime($empnors['LateTime'], $timezone);//time to save the day with late covering
					
					//create the day ending time
					if ($actintime>$slvtime)
					//if employee has exceded the short leave time it will be a half day (came after 10.00)
					{
						$isHDtaken = true;//set Half Day Leave Taken Status
						$isSLtaken = false;
						//Chech whether employee comes withing the lunch time
						
						$Ltime1 = new DateTime('12:00:00', $timezone);
						if ($actintime<$Ltime1)
						{
							$out = new DateTime($actintime->format('H:i:s'), $timezone);
							$out->add(new DateInterval('PT04H00M'));
						}
					}
					else
					{
						if ($actintime>$latetime)
						//if employee has exceded the late cover time it will be a short leave (came after 9.00)
						{
							$isSLtaken=true;//set Short Leave Taken Status
							$slfrom=new DateTime($intime->format('H:i:s'), $timezone);
							$slto=new DateTime($actintime->format('H:i:s'), $timezone);
						}
						else
						{
							if ($actintime>$adjesttime)
							//if employee has exceded the exception time he has to do late covering
							{
								$out = new DateTime($actintime->format('H:i:s'), $timezone);
								$out->add(new DateInterval('PT'.$ouths.'H'.$outms.'M'));
								//create the day ending time with late covering
								$isLate = true;
							}
						}
					}
					$outtime = new DateTime($out->format('H:i'), $timezone);
					//omit seconds

					$evslvtime = new DateTime($outtime->format('H:i:s'), $timezone);
					$evslvtime->sub(new DateInterval('PT01H30M'));
					//time to get a short leave at the end of the day (2.45)
					
					//echo '<script> alert ("'.$actintime->format('H:i:s').' - '.$actouttime->format('H:i:s').' '.$evslvtime->format('H:i:s').'");<//script>';

					if ($actouttime<$evslvtime)
					//if he has left before $evslvtime then it is a half day
					{
						if ($isSLtaken || $isHDtaken)
						{
							$hdout = new DateTime($actintime->format('H:i:s'), $timezone);
							$hdout->add(new DateInterval('PT04H00M'));
							if ($actouttime<$hdout)
							{
								$isFDLeave=true;//set Full Day Leave Taken Status
								//process full leave
								$isSLtaken = false;
								$isHDtaken = false;
							}
							else
							{
								//check for f3 f4
								if ($isf3sorf4s)
								{
									$isFDLeave=true;
									$isSLtaken = false;
									$isHDtaken = false;
								}
								else
								{
									$isHDtaken=true;//set Half Day Leave Taken Status
									//process Half days
									$isSLtaken = false;
								}
							}
						}
						else
						{
							if ($isLate)
							{
								$LateHDout = new DateTime($actintime->format('H:i:s'), $timezone);
								$LateHDout->add(new DateInterval('PT04H00M'));
								if ($actouttime<$hdout)
								{
									$isFDLeave=true;//set Full Day Leave Taken Status
									//process full leave
									$isSLtaken = false;
									$isHDtaken = false;
								}
								else
								{
									//check for f3 f4
									if ($isf3sorf4s)
									{
										$isFDLeave=true;
										$isSLtaken = false;
										$isHDtaken = false;
									}
									else
									{
										$isHDtaken=true;//set Half Day Leave Taken Status
										//process Half days
										$isSLtaken = false;
									}
								} 
							}
							else
							{
								//check for f3 f4
								if ($isf3sorf4s)
								{
									//if f3-f1 =4 or f2-f4 =4 give HD
									if($is4HsOk)
									{
										$isHDtaken=true;//set Half Day Leave Taken Status
										$isSLtaken = false;
									}
									else
									{
										$isFDLeave=true;
										$isSLtaken = false;
										$isHDtaken = false;
									}
								}
								else
								{
									$isHDtaken = true;//set Half Day Leave Taken Status
									$isSLtaken = false;
								}
							}
						}
					}
					else
					{
						if ($actouttime<$outtime)
						//if he has left before $outtime then it is a short leave
						{
							if ($isSLtaken || $isHDtaken)
							{
								$hdout = new DateTime($actintime->format('H:i:s'), $timezone);
								$hdout->add(new DateInterval('PT04H00M'));
								if ($actouttime<$hdout)
								{
									$isFDLeave=true;//set Full Day Leave Taken Status
									//process full leave
									//Insert Into attend_tbl
									$isSLtaken = false;
									$isHDtaken = false;
								}
								else
								{
									///check for f3 f4
									if ($isf3sorf4s)
									{
										//if f3-f1 =4 or f2-f4 =4 give HD
										if($is4HsOk)
										{
											$isHDtaken = true;//set Half Day Leave Taken Status
											$isSLtaken = false;
										}
										else
										{
											$isFDLeave = true;
											$isSLtaken = false;
											$isHDtaken = false;
										}
									}
									else
									{
										$isHDtaken=true;//set Half Day Leave Taken Status
										$isSLtaken = false;
									}
								}
							}
							else
							{
								///check for f3 f4
								if ($isf3sorf4s)
								{
									//if f3-f1 =4 or f2-f4 =4 give HD
									if($is4HsOk)
									{
										$isHDtaken=true;//set Half Day Leave Taken Status
										$isSLtaken = false;
									}
									else
									{
										$isFDLeave=true;
										$isSLtaken = false;
										$isHDtaken = false;
									}
								}
								else
								{
									//process short leaves
									$isSLtaken=true;//set Short Leave Taken Status
									$slfrom=new DateTime($actouttime->format('H:i:s'), $timezone);
									$slto=new DateTime($outtime->format('H:i:s'), $timezone);
									//Insert Into attend_tbl
									$isHDtaken = false;
								}
							}
						}
						else
						{
							if($isf3sorf4sInTime)
							{
								if ($isSLtaken || $isHDtaken)
								{							
									if($is4HsOk)
									{
										$isHDtaken=true;
										$isSLtaken = false;
									}
									else
									{
										$isFDLeave=true;//set Full Day Leave Taken Status
										$isSLtaken = false;
										$isHDtaken = false;
									}	
								}
								else if ($isSLtaken == false && $isHDtaken == false)
								{
								$isSLtaken=true;//set Short Leave Taken Status
								//$isHDtaken = false;
								$slfrom=new DateTime($SlvOuttime->format('H:i:s'), $timezone);
								$slto=new DateTime($SlvIntime->format('H:i:s'), $timezone);
								}
							}
							else
							{
								//check for half day if short leave is taken morethan 1.5 hours
								$SlvIn2=$MYdb->Exe_Qry("SELECT AttendTime FROM attendance WHERE 
								EmpNo='$empno' AND AttendDate = '$dt' AND AttendType = 'F4';");
								if (isset($_POST['SLCB']) && $isSLtaken == false && $isHDtaken == false)
								{
									/*$SlvInInfo2=$MYdb->Next_Record($SlvIn2);
									$SlvIntime2=new DateTime($SlvInInfo2['AttendTime'], $timezone);*/
									
									$SlvIntime2 = new DateTime($SlvIntime->format('H:i:s'));
									
									$MinHs1=new DateTime($actintime->format('H:i:s'), $timezone);/////////////////////////////////
									$MinHs=$MinHs1->format('H');
									$MinMs1=new DateTime($actintime->format('H:i:s'), $timezone);/////////////////////////////////
									$MinMs=$MinMs1->format('i');

									
									$period1=new DateTime($SlvOuttime->format('H:i:s'), $timezone);
									$period1->sub(new DateInterval('PT'.$MinHs.'H'.$MinMs.'M'));
									
									$SlinHs1=new DateTime($SlvIntime2->format('H:i:s'), $timezone);///////////////////////////////
									
									
									
									$SlinHs=$SlinHs1->format('H');
									$SlinMs1=new DateTime($SlvIntime2->format('H:i:s'), $timezone);///////////////////////////////
									$SlinMs=$SlinMs1->format('i');
									
									if ($actouttime>$outtime)
									{
										$period2=new DateTime($outtime->format('H:i:s'), $timezone);
									}
									else
									{
										$period2=new DateTime($actouttime->format('H:i:s'), $timezone);
									}
									$period2->sub(new DateInterval('PT'.$SlinHs.'H'.$SlinMs.'M'));
									
									
									//$period2;
									
									
									$per2Hs1=new DateTime($period2->format('H:i:s'), $timezone);///////////////////////////////
									$per2Hs=$per2Hs1->format('H');
									$per2Ms1=new DateTime($period2->format('H:i:s'), $timezone);///////////////////////////////
									$per2nMs=$per2Ms1->format('i');
									
									
									
									$timeaddition=new DateTime($period1->format('H:i:s'), $timezone);
									$timeaddition->add(new DateInterval('PT'.$per2Hs.'H'.$per2nMs.'M'));
									
									
									/*echo '<script> alert ("'.$period1->format('H:i:s').' - '.$period2->format('H:i:s').'-'.$timeaddition->format('H:i:s').'");</script>';*/
									$comptime=new DateTime('04:00:00', $timezone);
									
									if($timeaddition>=$comptime)//////this might not work...........#################
									{
										$isSLandHDtaken = true;
										$slfrom=$SlvOuttime;
										$slto=$SlvIntime2;
									}
									else
									{
										$isFDLeave=true;
										$isSLtaken = false;
										$isHDtaken = false;
									}
								}
								else if ($MYdb->Row_Count($SlvIn2)== 1 && ($isSLtaken || $isHDtaken))
								{
									if($is4HsOk)
									{
										$isHDtaken=true;
										$isSLtaken = false;
									}
									else
									{
										$isFDLeave=true;
										$isSLtaken = false;
										$isHDtaken = false;
									}
								}
							}		
						}
					}	
				}

			$attType=1;
			/*if ($isIssue)
			{
				$issueDesc = "";
				$issueqry = $MYdb->Exe_Qry("SELECT * FROM Attendance WHERE EmpNo = '$empno' AND AttendDate = '$dt';");
				while ($issueInfo = $MYdb->Next_Record($issueqry))
				{
					$issueDesc.= $issueInfo['AttendTime']." - ".$issueInfo['AttendType'].". <br />";
				}
				$MYdb->Exe_Qry("INSERT INTO issues_tbl VALUES('$attend_dt_id','$empno','$issueDesc')");
				//insert into issue table
			}
			else*/ if ($isFDLeave || $isAbsent)
			{
				$attType=2;
				$MYdb->Exe_Qry("INSERT INTO emp_lv_tbl (Emp_No,Leave_Type_ID,From_Date,To_Date,No_of_Days,AttDtId) VALUES('$empno','0','$dt','$dt','1','$attend_dt_id')");
				//insert into leave table 1 leave
				if ($isAbsent)
				{
					$MYdb->Exe_Qry("INSERT INTO absent_tbl VALUES('$attend_dt_id','$empno');");
				}
			}
			else if ($isHDtaken)
			{
				$attType=3;
				$MYdb->Exe_Qry("INSERT INTO emp_lv_tbl (Emp_No,Leave_Type_ID,From_Date,To_Date,No_of_Days,AttDtId) VALUES('$empno','0','$dt','$dt','0.5','$attend_dt_id')");
				//insert into leave table 0.5 leave
			}
			else if ($isSLtaken || $isSLandHDtaken)
			{
				$chk_dt= date_format(date_create($dt), 'Y-m-d');
				
				//$ddatte = new DateTime($actintime->format('H:i:s'))
				
				$test = new DateTime($dt); 
				$yer = date_format($test, 'Y');
				$mon = date_format($test, 'm');
				
				//might need to use a switch case block to construct the day ($day)################################
				if ($MYdb->Row_Count($MYdb->Exe_Qry("SELECT Emp_No FROM emp_slv_tbl WHERE ((Emp_No ='$empno') AND (L_date BETWEEN '$yer-$mon-01' AND '$yer-$mon-31'));"))<2)
				{
					if ($isSLandHDtaken)
					{
						$attType=3;
						$MYdb->Exe_Qry("INSERT INTO emp_lv_tbl (Emp_No,Leave_Type_ID,From_Date,To_Date,No_of_Days,AttDtId) VALUES('$empno','0','$dt','$dt','0.5','$attend_dt_id')");
					}
					else
					{
						$attType=4;
					}
					$MYdb->Exe_Qry("INSERT INTO emp_slv_tbl (Emp_No,L_date,From_Time,To_Time,AttDtId) VALUES('$empno','$dt','".$slfrom->format('H:i:s')."','".$slto->format('H:i:s')."','$attend_dt_id')");
				}
				else
				{
					if ($isSLandHDtaken)
					{
						$attType=2;
						$MYdb->Exe_Qry("INSERT INTO emp_lv_tbl (Emp_No,Leave_Type_ID,From_Date,To_Date,No_of_Days,AttDtId) VALUES('$empno','0','$dt','$dt','1','$attend_dt_id')");
				//insert into leave table 1 leave
					}
					else
					{
						$attType=3;
						$MYdb->Exe_Qry("INSERT INTO emp_lv_tbl (Emp_No,Leave_Type_ID,From_Date,To_Date,No_of_Days,AttDtId) VALUES('$empno','0','$dt','$dt','0.5','$attend_dt_id')");
					}
				}
				//if 2 short leaves are taken insert into leave table 0.5 leave
				//else insert into short leave tbl
			}

			if ($isIssue==false && $isAbsent==false)
			{
				$MYdb->Exe_Qry("DELETE FROM issues_tbl WHERE AttDtId = '$attend_dt_id' AND EmpNo = '$empno';");
				$MYdb->Exe_Qry("INSERT INTO attend_tbl VALUES('$attend_dt_id', '$empno', '".$actintime->format('H:i:s')."', '".$actouttime->format('H:i:s')."', '$attType', '"."SYSTEM"."');");
			}
			
	}
	else
	{
		if (isset($_POST['btnpros']))
		{
			echo '<script> alert("Please Fill the Fields Properly");</script>';
		}
	}
}
?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js">
</script>
<script>
function EnableF3f4()
{
	
if (document.getElementById("SLCB").checked == true)
{
	document.getElementById('F3').disabled= false;
	document.getElementById('F4').disabled= false;
}
else
{
	document.getElementById('F3').disabled= true;
	document.getElementById('F4').disabled= true;
}
}
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="sessSet('DlyPro.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="" >
  <table id="wrapped2" align="center" width="95%"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1>Correct Attendance Issues</h1>
   </caption>
   <tr>
    <td><table border="0" align="center">
      <tr>
       <th align="left">Select Date</th>
       <th>:</th>
       <td>
       <select id="Day_Select" name="Day_Select" onChange="document.form1.submit()">
       <option value=" ">Please Select a date</option>
       <?php 
$RecSet1=$MYdb->Exe_Qry("SELECT DISTINCT issues_tbl.AttDtId, attend_dts_tbl.AttDt FROM issues_tbl, attend_dts_tbl WHERE issues_tbl.AttDtId = attend_dts_tbl.AttDtId ORDER BY AttDt;");
	while($RecSetData1=$MYdb->Next_Record($RecSet1))
	{
	?>
    <option value="<?php echo $RecSetData1['AttDtId'];?>"><?php echo $RecSetData1['AttDt'];?></option>
    <?php }?>
         </select>
       <script>
	   document.getElementById('Day_Select').value= <?php echo $dtid;?>;
       </script>
       </td>
      </tr>
	  <tr>
       <th align="left">Select Employee</th>
       <th>:</th>
       <td><select id="Emp_No" name="Emp_No">
       <option value="non">Please Select an Employee</option>
       <?php 
	   if (isset($dtid))
	   {
$RecSet2=$MYdb->Exe_Qry("SELECT EmpNo FROM issues_tbl WHERE AttDtId = '$dtid' ORDER BY EmpNo;");
	while($RecSetData2=$MYdb->Next_Record($RecSet2))
	{
	?>
    <option value="<?php echo $RecSetData2['EmpNo'];?>"><?php echo $RecSetData2['EmpNo'];?></option>
    <?php }}?>
       </select>
       </td>
      </tr>
      <tr>
      <th>In</th>
      <th>:</th>
      <td><input type="time" id="F1" name="F1"></td>
      </tr>
      <tr>
      <th>Out</th>
      <th>:</th>
      <td><input type="time" id="F2" name="F2"></td>
      </tr>
      <tr>
      <th>Short Leave</th>
      <th>:</th>
      <td><input type="checkbox" id="SLCB" name="SLCB" onChange="EnableF3f4()"></td>
      </tr>
      <tr>
      <th>Out</th>
      <th>:</th>
      <td><input type="time" id="F3" name="F3" disabled></td>
      </tr>
      <tr>
      <th>In</th>
      <th>:</th>
      <td><input type="time" id="F4" name="F4" disabled></td>
      </tr>
      
      
	  <?php
	  if ($_SESSION['login_type']!="V")
	  {?>
      <tr>
        <td colspan="4"><table width="100%" border="0">
          <tr>
            <td class="tbrow" width="6%"></td>
            <td class="tbrow" width="22%"><div align="center"></div></td>
            <td class="tbrow" width="22%"><div align="center">
              <input class="butt" name="btnpros" type="submit" id="btnpros" value="Process" />
              </div></td>
            <td class="tbrow" width="22%"><div align="center"></div></td>
            <td class="tbrow"  width="6%">&nbsp;</td>
            </tr><?php }?>
          </table>
          </td>
      </tr>
   </table></td>
   </tr>
  </table>
  <br />
  <br />
  <table id="wrapped" align="center" cellspacing="3" cellpadding="5">
   <tr>
    <th>
    <table id="tbl_Result" border="1"  align="center" style="font-size:16px;" >
    <tr>
    <th>Date</th>
    <th>EMP Number</th>
    <th>Description</th>
    </tr>
    <?php 
$RecSet=$MYdb->Exe_Qry("SELECT issues_tbl.EmpNo, issues_tbl.Desc, attend_dts_tbl.AttDt FROM issues_tbl, attend_dts_tbl WHERE issues_tbl.AttDtId = attend_dts_tbl.AttDtId ORDER BY AttDt ;");
	while($RecSetData=$MYdb->Next_Record($RecSet))
	{
	?>
    <tr>
    <th><?php echo $RecSetData['AttDt'];?></th>
    <th><?php echo $RecSetData['EmpNo'];?></th>
    <th><?php echo $RecSetData['Desc'];?></th>
    </tr>
    <?php } ?>
    
	</table>
    </th>
   </tr>
  </table>
 </form>
 <!--<script language="javascript" type="text/javascript">
 loadcombos('NotNew',"na","province");
 </script>-->
 <br />
 <br />
</div>
</body>
</html>

