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
if(empty($_POST))
{
	$dt=date('y-m-d');//to set calender date
}
else
{
	$dt=date_format(date_create($_POST['testdt']), 'Y-m-d');//date value from the calender
}
?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js">
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="sessSet('DlyPro.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="" >
  <table id="wrapped2" align="center" width="95%"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1>Attendance Daily Process</h1>
   </caption>
   <tr>
    <td><table border="0" align="center">
      <tr>
       <th align="left">Select Date</th>
       <th>:</th>
       <td><?php $funcc->CrtCalender("testdt",$dt,0);?></td>
      </tr><?php
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
    <?php
    if(isset($_POST['btnpros']))
	{
		$pec=0;//Present count
		$aec=0;//Espected count
		$abec=0;//Absent count
		$iec=0;//Improper count
		
		$dummy_dt= date_format(date_create('1977-01-01'), 'Y-m-d');//date to filter active members
		$act_emp_sql="SELECT EmpNo, InTime, OutTimeH, OutTimeM, AdjestTime, LateTime FROM emp_details_tbl,category_tbl WHERE RetirementDT NOT BETWEEN '$dummy_dt' AND '$dt' AND emp_details_tbl.CategoryCode=category_tbl.CategoryCode;";
		$active_emp=$MYdb->Exe_Qry($act_emp_sql);
		$aec = $MYdb->Row_Count($active_emp);//Espected employee count
		
	if ($MYdb->Row_Count($MYdb->Exe_Qry("SELECT DISTINCT EmpNo FROM Attendance WHERE AttendDate = '$dt';"))!= 0)
	{
		$todaytd=date('y-m-d');
		$MYdb->Exe_Qry("INSERT INTO attend_dts_tbl (AttDt,ProsDt,User) VALUES('$dt','$todaytd','$usrnme');");
		
		$attend_dt_id_info=$MYdb->Next_Record($MYdb->Exe_Qry("SELECT AttDtId FROM attend_dts_tbl WHERE AttDt = '$dt';"));
		$attend_dt_id = $attend_dt_id_info['AttDtId'];
		while ($empnors = $MYdb->Next_Record($active_emp))//loop runs for all Espected employees
		{
			$isFDLeave=false;// Full Day Leave Taken Status
			$isHDtaken=false;// Half Day Leave Taken Status	
			$isSLtaken=false;// Short Leave Taken Status		
			$isAbsent=false;// Absent Status
			$isIssue=false;// Issues Status
			$isLate=false;// Late Status
			$empno = $empnors['EmpNo'];
			if ($MYdb->Row_Count($MYdb->Exe_Qry("SELECT DISTINCT EmpNo FROM Attendance WHERE EmpNo = '$empno' AND AttendDate = '$dt';"))== 0)//check whether the employee is present or not
			{
				//Insert into Absent table
				$abec+=1;//Absent employee count
				$isAbsent=true;
			}
			else
			{
				$pec+=1;//Present employee count
				$morningOut=$MYdb->Exe_Qry("SELECT AttendTime FROM Attendance WHERE EmpNo='$empno' AND 
				AttendDate = '$dt' AND (AttendTime <= '12:30:00' AND AttendType = 'F2') OR 
				(AttendTime >= '12:00:00' AND AttendType = 'F1');");	
				if ($MYdb->Row_Count($morningOut)== 0)	
				{
				$intime = new DateTime($empnors['InTime']);
				//time which the employee is espected to come (8.30) taken from database
				//echo '<script> alert ("'.$empno.' - '.$intime->format('H:i:s').'");<//script>';
				
				$slvtime = new DateTime($intime->format('H:i:s'));
				$slvtime->add(new DateInterval('PT01H30M'));
				//time to save the day with a short leave (10.00)
				//echo '<script> alert ("'.$empno.' - '.$intime->format('H:i:s').'");<//script>';
				
				$morningIn=$MYdb->Exe_Qry("SELECT AttendTime FROM Attendance WHERE EmpNo='$empno' AND AttendDate = '$dt' AND AttendTime <= '12:30:00' AND AttendType = 'F1';");
				//get data from DB if the employee has come before 12.30.
				//echo '<script> alert ("'.$MYdb->Row_Count($morningIn).'");<//script>';
				if ($MYdb->Row_Count($morningIn)== 1)
				{	
					$adjesttime = new DateTime($empnors['AdjestTime']);//exception time (8.45)
					$latetime = new DateTime($empnors['LateTime']);//time to save the day with late covering
					
					$ouths = $empnors['OutTimeH'];//number of hours to complete the day
					$outms = $empnors['OutTimeM'];//remaining minutes
					//addition of $ouths and $outms is the complete time duration for a day. (7h 45m)
					
					$out = new DateTime($intime->format('H:i:s'));
					$out->add(new DateInterval('PT'.$ouths.'H'.$outms.'M'));
					//create the day ending time
					
					$MoInInfo = $MYdb->Next_Record($morningIn);
					$actintime = new DateTime($MoInInfo['AttendTime']);
					//get the actual time that the employee came here.
					if ($actintime>$slvtime)
					//if employee has exceded the short leave time it will be a half day (came after 10.00)
					{
						echo '<script> alert ("HD1 Taken");</script>';
						$isHDtaken=true;//set Half Day Leave Taken Status
						$out = new DateTime($actintime->format('H:i:s'));
						$out->add(new DateInterval('PT04H00M'));
					}
					else
					{
						if ($actintime>$latetime)
						//if employee has exceded the late cover time it will be a short leave (came after 9.00)
						{
							//echo '<script> alert ("$actintime");<//script>';
							echo '<script> alert ("SL1 Taken");</script>';
							$isSLtaken=true;//set Short Leave Taken Status
							$slfrom=new DateTime($intime->format('H:i:s'));
							$slto=new DateTime($actintime->format('H:i:s'));
						}
						else
						{
							if ($actintime>$adjesttime)
							//if employee has exceded the exception time he has to do late covering (came after 8.45)
							{
								echo '<script> alert ("Late Cover Taken");</script>';
								$out = new DateTime($actintime->format('H:i:s'));
								$out->add(new DateInterval('PT'.$ouths.'H'.$outms.'M'));
								//create the day ending time with late covering
								$isLate = true;
							}
						}
					}
					$outtime = new DateTime($out->format('H:i'));
					//omit seconds
					
					$eveningOut=$MYdb->Exe_Qry("SELECT AttendTime FROM Attendance WHERE EmpNo='$empno' AND 
					AttendDate = '$dt' AND AttendTime >= '12:00:00' AND AttendType = 'F2';");
					//get data from DB if the employee has left after 12.00.
					
					$EvOuInfo = $MYdb->Next_Record($eveningOut);
					$actouttime = new DateTime($EvOuInfo['AttendTime']);
					//get the actual time that the employee left the office.
					
					$evslvtime = new DateTime($outtime->format('H:i:s'));
					$evslvtime->sub(new DateInterval('PT01H30M'));
					//time to get a short leave at the end of the day (2.45)
					
					if ($MYdb->Row_Count($eveningOut)== 1)
					{
						if ($actouttime<$evslvtime)
						//if he has left before $evslvtime then it is a half day
						{
							if ($isSLtaken || $isHDtaken)
							{
								$hdout = new DateTime($actintime->format('H:i:s'));
								$hdout->add(new DateInterval('PT04H00M'));
								if ($actouttime<$hdout)
								{
									echo '<script> alert ("FD2 Taken");</script>';
									$isFDLeave=true;//set Full Day Leave Taken Status
									//process full leave
									$isSLtaken = false;
									$isHDtaken = false;
								}
								else
								{
									//f3 f4
									
									echo '<script> alert ("HD2 Taken");</script>';
									$isHDtaken=true;//set Half Day Leave Taken Status
									//process Half days
									$isSLtaken = false;
								}
							}
							else
							{
								if ($isLate)
								{
									$LateHDout = new DateTime($actintime->format('H:i:s'));
									$LateHDout->add(new DateInterval('PT04H00M'));
									if ($actouttime<$hdout)
									{
										echo '<script> alert ("FD3 Taken");</script>';
										$isFDLeave=true;//set Full Day Leave Taken Status
										//process full leave
										$isSLtaken = false;
										$isHDtaken = false;
									}
									else
									{
										//f3 f4
										
										echo '<script> alert ("HD3 Taken");</script>';
										$isHDtaken=true;//set Half Day Leave Taken Status
										//process Half days
										$isSLtaken = false;
									} 
								}
								else
								{
									//f3 f4
									
									echo '<script> alert ("HD4 Taken");</script>';
									$isHDtaken = true;//set Half Day Leave Taken Status
									//process Half days
									$isSLtaken = false;
									
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
									$hdout = new DateTime($actintime->format('H:i:s'));
									$hdout->add(new DateInterval('PT04H00M'));
									if ($actouttime<$hdout)
									{
										echo '<script> alert ("FD4 Taken");</script>';
										$isFDLeave=true;//set Full Day Leave Taken Status
										//process full leave
										//Insert Into attend_tbl
										$isSLtaken = false;
										$isHDtaken = false;
									}
									else
									{
										//f3 f4
										
										echo '<script> alert ("HD5 Taken");</script>';
										$isHDtaken=true;//set Half Day Leave Taken Status
										//process Half days
										//Insert Into attend_tbl
										$isSLtaken = false;
									}
								}
								else
								{
									//f3 f4
									
									//process short leaves
									echo '<script> alert ("SL2 Taken");</script>';
									$isSLtaken=true;//set Short Leave Taken Status
									$slfrom=new DateTime($actouttime->format('H:i:s'));
									$slto=new DateTime($outtime->format('H:i:s'));
									//Insert Into attend_tbl
									$isHDtaken = false;
								}
							}
							else
							{	







//will come back












								
							}
						}	
					}
					else
					//if there are 0 or more than 1 F2s. 
					{
						//Insert into issues_tbl
						
						// Checkkkk
						
						$isIssue=true;//set Issue Status
						$iec+=1;
					}
				}
				else
				//if there are 0 or more than 1 F1s. 
				{
					//Insert into issues_tbl
					$isIssue=true;//set Issue Status
					$iec+=1;
				}
				
				
				}
				else
				{
					//chk for fullday Leave
					
					//else
					
					//Insert into issues_tbl
					$isIssue=true;//set Issue Status
					$iec+=1;
				}	
			}
			$attType=1;
			if ($isIssue)
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
			else if ($isFDLeave || $isAbsent)
			{
				$attType=2;
				$MYdb->Exe_Qry("INSERT INTO emp_lv_tbl (Emp_No,Leave_Type_ID,From_Date,To_Date,No_of_Days) VALUES('$empno','0','$dt','$dt','1')");
				//insert into leave table 1 leave
				if ($isAbsent)
				{
					$MYdb->Exe_Qry("INSERT INTO absent_tbl VALUES('$attend_dt_id','$empno');");
				}
			}
			else if ($isHDtaken)
			{
				$attType=3;
				$MYdb->Exe_Qry("INSERT INTO emp_lv_tbl (Emp_No,Leave_Type_ID,From_Date,To_Date,No_of_Days) VALUES('$empno','0','$dt','$dt','0.5')");
				//insert into leave table 0.5 leave
			}
			else if ($isSLtaken)
			{
				$chk_dt= date_format(date_create($dt), 'Y-m-d');
				
				//$ddatte = new DateTime($actintime->format('H:i:s'))
				
				$test = new DateTime($dt); 
				$yer = date_format($test, 'Y');
				$mon = date_format($test, 'm');
				if ($MYdb->Row_Count($MYdb->Exe_Qry("SELECT Emp_No FROM emp_slv_tbl WHERE ((Emp_No ='$empno') AND (L_date BETWEEN '$yer-$mon-01' AND '$yer-$mon-31'));"))<2)
				{
					$attType=4;
					$MYdb->Exe_Qry("INSERT INTO emp_slv_tbl (Emp_No,L_date,From_Time,To_Time) VALUES('$empno','$dt','".$slfrom->format('H:i:s')."','".$slto->format('H:i:s')."')");
				}
				else
				{
				$attType=3;
				$MYdb->Exe_Qry("INSERT INTO emp_lv_tbl (Emp_No,Leave_Type_ID,From_Date,To_Date,No_of_Days) VALUES('$empno','0','$dt','$dt','0.5')");
				}
				//if 2 short leaves are taken insert into leave table 0.5 leave
				//else insert into short leave tbl
			}
			if ($isIssue==false && $isAbsent==false)
			{
				$MYdb->Exe_Qry("INSERT INTO attend_tbl VALUES('$attend_dt_id', '$empno', '".$actintime->format('H:i:s')."', '".$actouttime->format('H:i:s')."', '$attType', '"."SYSTEM"."');");
			}
			
		}
	?>
    <tr>
    <th>Espected Number</th>
    <th><?php echo $aec;?></th>
    </tr>
    <tr>
    <th>Attended Number</th>
    <th><?php echo $pec;?></th>
    </tr>
    <tr>
    <th>Absent Number</th>
    <th><?php echo $abec;?></th>
    </tr>
    <tr>
    <th>Incomplete Number</th>
    <th><?php echo $iec;?></th>
    </tr>
    <?php
	}
	else
	{
		echo '<script> alert("Update Database");</script>';
	}
	}
	?>
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






<?php
								$SlvOut=$MYdb->Exe_Qry("SELECT AttendTime FROM Attendance WHERE EmpNo='$empno' AND 
								AttendDate = '$dt' AND AttendType = 'F3';");
								if ($MYdb->Row_Count($SlvOut)== 1)
								//check whether he has taken a short leave in the middle of the day (F3)
								{
									$LunchIncOut1 = new DateTime('10:30:00');
									$LunchIncOut2 = new DateTime('11:00:00');
									
									$LunchIncOut3 = new DateTime('12:00:00');
									$LunchIncOut4 = new DateTime('12:30:00');

									$SlvOutInfo = $MYdb->Next_Record($SlvOut);
									$SlvOuttime = new DateTime($SlvOutInfo['AttendTime']);
									//consider lunch time
									if ($SlvOuttime>=$LunchIncOut1 && $SlvOuttime<=$LunchIncOut2)
									{
										$Slvlimittime=new DateTime('12:30:00');
									}
									else if ($SlvOuttime>=$LunchIncOut3 && $SlvOuttime<=$LunchIncOut4)
									{
										$Slvlimittime=new DateTime('14:00:00');
									}
									else
									{
										$Slvlimittime = new DateTime($SlvOuttime->format('H:i:s'));
									$Slvlimittime->add(new DateInterval('PT01H30M'));
									}
									$SlvIn=$MYdb->Exe_Qry("SELECT AttendTime FROM Attendance WHERE EmpNo='$empno' 
									AND AttendDate = '$dt' 
									AND (AttendTime BETWEEN '".$SlvOuttime->format('H:i:s')."' 
									AND '".$Slvlimittime->format('H:i:s')."') AND AttendType = 'F4';");
									if ($MYdb->Row_Count($SlvIn)== 1)
									//check whether he has taken a short leave in the middle of the day (F4)
									{
										$SlvInInfo=$MYdb->Next_Record($SlvIn);
										$SlvIntime=new DateTime($SlvInInfo['AttendTime']);
										//process short leaves
										if ($isSLtaken)
										{
											
											$dummyF1=$actintime;
											$dummyF1->add(new DateInterval('PT04H00M'));
											$dummyF3=$SlvOuttime;
											
											
											$dummyF4=$SlvIntime;
											$dummyF4->add(new DateInterval('PT04H00M'));
											$dummyF2=$actouttime;
											
											if ($dummyF1<= $dummyF3)
											{
												echo '<script> alert ("HD5 Taken");</script>';
												$isHDtaken=true;//set Half Day Leave Taken Status
												//process Half days
												//Insert Into attend_tbl
											}
											else if ($dummyF4<=$dummyF2)
											{
												echo '<script> alert ("HD6 Taken");</script>';
												$isHDtaken=true;//set Half Day Leave Taken Status
												//process Half days
												//Insert Into attend_tbl
											}
											else
											{
												echo '<script> alert ("FD4 Taken");</script>';
												$isFDLeave=true;//set Full Day Leave Taken Status
												//process full leave
												//Insert Into attend_tbl
											}	
										}
										else
										{
										$isSLtaken=true;//set Short Leave Taken Status
										echo '<script> alert ("SL3 Taken");</script>';
										$slfrom=$SlvOuttime;
										$slto=$SlvIntime;
										}
										//Insert Into attend_tbl
									}
									else
									{
										//check for half day
										
										
										
										//if there are 0 or more than 1 F4s.
										$isIssue=true;//set Issue Status
										//Insert into issues_tbl
										$iec+=1;
									}
								}
								else 
								{
									if($MYdb->Row_Count($SlvOut)==0)
									//no Short leaves
									{
										//Insert Into attend_tbl
									}
									else//if there are two or more F3s.
									{
										//Insert into issues_tbl
										$isIssue=true;//set Issue Status
										$iec+=1;
									}
								}

?>




