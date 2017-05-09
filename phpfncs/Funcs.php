<?php
require_once('calendar/classes/tc_calendar.php');
require_once("Database.php");
//require_once("Database.php");
class FRMOperations
{
	public function CrtCalender($name,$setdt,$ay)
	{
		$myCalendar = new tc_calendar($name, true, true);
		$myCalendar->setIcon("calendar/images/iconCalendar.gif");
		$myCalendar->setPath("calendar/");
		$myCalendar->setYearInterval(2013,2100);
		$myCalendar->dateAllow('2013-01-01', '2100-12-31');
		$myCalendar->setDateFormat('j F Y');
		$myCalendar->setAlignment('left', 'bottom');
		$day = date("d",strtotime($setdt));
		$month = date("m",strtotime($setdt));
		$year = date("Y",strtotime($setdt))+$ay;
		$myCalendar->setDate($day,$month,$year);
		$myCalendar->writeScript();
	}
	public function HeaddernMenu($utype)
	{
	echo '<div id="templatemo_header_wrapper">
		 <div id="templatemo_header">
		  <div id="site_title_section">
		   <div id="site_title"> Procurement Management System </div>
		   <div id="salogon"> <br />
			Arthur C Clarke Institute for Modern Technologies</div>
		   <div class="cleaner">&nbsp;</div>
		  </div>
		  <div id="search_section">
		   <form action="#" method="get">
		   </form>
		  </div>
		 </div>
		 <!-- end of header -->
		</div>
		<!-- end of header wrapper -->
		<div id="templatemo_banner_wrapper">
		 <div id="templatemo_banner">
		 <table width="50%" height="100%" align="left">
		 <tr>
		 <th style="vertical-align:middle">
		 <div id="divclock"></div>';
		 echo '<div id="divclock2">'.date('j<\sup>S</\sup>-F-Y').'</div>';
		 echo '</th>
		 </tr>
		 </table>
		 </div>
		 <!-- end of banner -->
		</div>
		<!-- end of banner wrapper -->
		<div id="menubackg">
		 <table align="center">
		  <tr>
		   <td><ul id="nav" class="dropdown dropdown-horizontal">
			 <li id="n-home">
			  <center>
			   <a onclick="sessSet('."'lgin.php'".');" href="" >Home</a>
			  </center>
			 </li>
			 <li>
			  <center>
			   <span class="dir">System Data</span>
			  </center>
			  <ul>';
			  if ($utype != 'V')
			  {
			  echo '<li><a href="budget.php" onClick="scrollpg()" target="datafrm">Budget Types</a></li>
			  <li><a href="pur_type.php" onClick="scrollpg()" target="datafrm">Purchase Types</a></li>
			  <li><a href="action_path.php" onClick="scrollpg()" target="datafrm">Action Path</a></li>
			  <li><a href="status_pr.php" onClick="scrollpg()" target="datafrm">Status of Pr</a></li>
              
              <li><span class="dir">Supplier</span>
              <ul>
              <li><a href="supplier_detail.php" onClick="scrollpg()" target="datafrm">Registration of Suppliers</a></li>
              <li><a href="supplier_item1.php" onClick="scrollpg()" target="datafrm">Supplier Item</a></li>
              <li><a href="Reg_supplies.php" onClick="scrollpg()" target="datafrm">Add Items</a></li>
              </ul>
              </li>

			  <li><a href="usage_type.php" onClick="scrollpg()" target="datafrm">Usage Types</a></li>
			   <li><a href="schedule_task.php" onClick="scrollpg()" target="datafrm">Add Schedule Task</a></li>
			   <li><a href="Pro_method.php" onClick="scrollpg()" target="datafrm">Procurement Method</a></li>
			   ';
			  }
			   
			   echo '
			  </ul>
			 </li>
			 <li>
			  <center>
			   <span class="dir">Data Process</span>
			  </center>
			  <ul>
			  <li>
			  <span class="dir">Request Yearly Budget</span>
			  <ul>
			  <li><a href="budget_rquest.php" onClick="scrollpg()" target="datafrm">User Budget Request</a></li>
			   <li>
			  <span class="dir">Budget Approvals</span>
			  <ul>
			  <li><a href="head_rec.php" onClick="scrollpg()" target="datafrm">Recommendation of HOD</a></li>
			  <li><a href="DivBugRec_DDG.php" onClick="scrollpg()" target="datafrm">Recommendation of DDG</a></li>
			  
			  <li><a href="DivBugRec_DG.php" onClick="scrollpg()" target="datafrm">Approval of DG </a></li>	
			   <li><a href="DivBugRec_Finance.php" onClick="scrollpg()" target="datafrm">Approval of Finance Division </a></li>			  
			  </ul>
			  
			  </li>
			 
			 
			  <li><a href="DivBudgConfirm.php" onClick="scrollpg()" target="datafrm">Budget allocation by Finance division</a></li>
			  <li>
			  <span class="dir">P.R. Approvals</span>
			  <ul>
			  <li><a href="head_rec.php" onClick="scrollpg()" target="datafrm">Recommendation of HOD</a></li>
			  <li><a href="DivBugReqRepo1234.php" onClick="scrollpg()" target="datafrm">Recommendation of DDG</a></li>
			  <li><a href="dg_rec.php" onClick="scrollpg()" target="datafrm">Approval of DG</a></li>			  
			  </ul>
			  
			  </li>
			  </ul>
			  </li>
			  <li><span class="dir">Purchase Requisition</span>
			  <ul>
			  <li><a href="pr_request.php" onClick="scrollpg()" target="datafrm">Purchase Requisition</a></li>
              <li><a href="pr_report1.php" onClick="scrollpg()" target="datafrm">PR report</a></li>
              <li><a href="budget_request2.php" onClick="scrollpg()" target="datafrm">New Budget Request</a></li>
			  <li><a href="budget_requestalt.php" onClick="scrollpg()" target="datafrm">Alternative Budget Request</a></li>
              <li><a href="budget_transfer.php" onClick="scrollpg()" target="datafrm">Alternative Budget Confirm</a></li>
			   			  
			  </ul>
			  
			  </li>
			  <li>
			   <span class="dir">Schedule Details</span>
			  <ul>
			  
              <li> <span class="dir">Allocate File</span>
				  <ul>
				  <li><a href="generatefno.php" onClick="scrollpg()" target="datafrm">Generate File No</a></li>
				  <li><a href="assignfno.php" onClick="scrollpg()" target="datafrm">Assign File No</a></li>
				  </ul></li>
                  
                  <li><a href="add_pmethod.php" onClick="scrollpg()" target="datafrm">Add Procurement Method</a></li>
                  
                  <li><span class="dir">Preperation of BID Document</span>
				  <ul>
				  <li><a href="save.php" onClick="scrollpg()" target="datafrm">Upload</a></li>
				  <li><a href="test.php" onClick="scrollpg()" target="datafrm">View</a></li>
				  
				  </ul></li>
			  <li><a href="appoint_tec.php" onClick="scrollpg()" target="datafrm">Appoint TEC</a></li>
              <li><span class="dir">Specification</span>
				<ul>
				<li><a href="spec.php" onClick="scrollpg()" target="datafrm">Add Main Specification</a></li>
			    <li><a href="sub_spec.php" onClick="scrollpg()" target="datafrm">Add Specification Equipment</a></li>
              	<li><a href="spec_requirement.php" onClick="scrollpg()" target="datafrm">Add Specification requirement</a></li>
				<li><a href="create_spec.php" onClick="scrollpg()" target="datafrm">Create Specification </a></li>
			  	<li><a href="spec_report.php" onClick="scrollpg()" target="datafrm">Specification Report</a></li>
			  	</ul></li>
			  
			  
			  </ul>
			  </li>
			  </li>
			  </ul>
			  </li>
			 <li>
			  <center>
			   <span class="dir">Reports</span>
			  </center>
			  <ul>
			  <li>
			  <span class="dir">Requested Yearly Budgets</span>
			  	<ul>
					<li><a href="DivBugReqRepo.php" onClick="scrollpg()" target="datafrm">View</a></li>
					<li><a href="DivBugReqRepoPr.php" onClick="scrollpg()" target="datafrm">Print</a></li>
				</ul>
			  </li>
			  <li><a href="Pro_plan.php" onClick="scrollpg()" target="datafrm">';
			  // $this->HeadingEcho($utype);
			   echo ' Procurement Plan</a></li>
			  <li><a href="aa.php" onClick="scrollpg()" target="datafrm">';
			   $this->HeadingEcho($utype);
			   echo ' Report</a></li>
			   
			  </ul>
			 </li> 
			 <li>
			  <center>
			   <span class="dir">System Users</span>
			  </center>
			  <ul>
			   <li><a href="Cr_User.php" target="datafrm">';
			   $this->HeadingEcho($utype);
			   echo ' Users</a></li>
			   <li><a href="Ed_Pwd.php" target="datafrm">Change Password</a></li>
			  </ul>
			 </li>
			</ul></td>
		  </tr>
		 </table>
		 <!-- end of menu -->
		</div>
		<br />
		<br />';
	}
	public function HeadingEcho($utype)
	{
			   if ($utype!="V")
			   {
				   echo 'Manage';
			   }
			   else
			   {
				   echo 'View';
			   }
	}
	
	public function HeadingEcho2($utype)
	{
			   if ($utype=="A")
			   {
				   echo 'Manage';
			   }
			   else
			   {
				   echo 'View';
			   }
	}
	
	public function GetUserName($uid)
	{
		$db = new DBOperations();
		$sqlqry="SELECT Title, Fullname FROM emp_details_tbl WHERE EmpNo ='$uid';";
		$recSet=$db->Exe_Qry($sqlqry);
		$row = $db->Next_Record($recSet);
		return $row['Title'].'. '.$row['Fullname'];
	}
	public function GetDivision($d_id)
	{
		$db = new DBOperations();
		$sqlqry="SELECT Division FROM division_tbl WHERE DivisionCode ='$d_id';";
		$recSet=$db->Exe_Qry($sqlqry);
		$row = $db->Next_Record($recSet);
		return $row['Division'];
	}
	public function GetUsage($usid)
	{
		$db = new DBOperations();
		$sqlqry="SELECT usage_nm FROM usage_dtls_tbl WHERE usage_no ='$usid';";
		$recSet=$db->Exe_Qry($sqlqry);
		$row = $db->Next_Record($recSet);
		return $row['usage_nm'];
	}
	public function GetProject($p_id)
	{
		$db = new DBOperations();
		$sqlqry="SELECT pro_name FROM pro_dtls_tbl WHERE pro_code = '$p_id';";
		$recSet=$db->Exe_Qry($sqlqry);
		$row = $db->Next_Record($recSet);
		return $row['pro_name'];
	}
	
	public function GetPrDetails($prid)
	{
		$db =new DBOperations();
		$ssqqll="SELECT * FROM pr_dtls_tbl WHERE pr_dtls_code='$prid';";
		$db->Exe_Qry($ssqqll);
		$prRecord=$db->Exe_Qry($ssqqll);
		$prRecordVal=$db->Next_Record($prRecord);
		$_SESSION['pr_dtls_code']=$prRecordVal['pr_dtls_code'];
		$_SESSION['pr_no']=$prRecordVal['pr_no'];
		$_SESSION['serial_no']=$prRecordVal['serial_no'];
		$_SESSION['pr_date']=$prRecordVal['pr_date'];
		$_SESSION['descrip']=$prRecordVal['descrip'];
		$_SESSION['quantity']=$prRecordVal['quantity'];
		$_SESSION['est_cost']=$prRecordVal['est_cost'];
		$_SESSION['bud_pro_des']=$prRecordVal['bud_pro_des'];
		$_SESSION['alter_source']=$prRecordVal['alter_source'];
		$_SESSION['simiar_item']=$prRecordVal['simiar_item'];
		$_SESSION['similar_des']=$prRecordVal['similar_des'];
		$_SESSION['req_fulfill']=$prRecordVal['req_fulfill'];
		$_SESSION['div_code']=$this->GetDivision($prRecordVal['div_code']);
		$_SESSION['applicant']=$this->GetUserName($prRecordVal['applicant']);
		$_SESSION['usage_no']=$this->GetUsage($prRecordVal['usage_no']);
		$_SESSION['pro_code']=$this->GetProject($prRecordVal['pro_code']);
	}
	public function HeadRecDDL($uid)
	{
		$sqlqry="SELECT pr_dtls_code, pr_no, serial_no, applicant, pr_date FROM pr_dtls_tbl WHERE div_code=(SELECT DivisionCode FROM emp_details_tbl WHERE EmpNo='$uid') AND head_rec='0';";
		$this->DDRW($sqlqry,"HeReDDL");
	}
	public function DdgRecDDL($uid)
	{
		$sqlqry="SELECT pr_dtls_code, pr_no, serial_no, applicant, pr_date, Division FROM pr_dtls_tbl, division_tbl WHERE div_code=DivisionCode AND head_rec_sta='Y' AND rec_ddg='0';";
		$this->DDRW($sqlqry,"DdReDDL");
	}
	public function DgRecDDL($uid)
	{
		$sqlqry="SELECT pr_dtls_code, pr_no, serial_no, applicant, pr_date, Division FROM pr_dtls_tbl, division_tbl WHERE div_code=DivisionCode AND head_rec_sta='Y' AND rec_ddg_sta='Y' AND autri_dg='0';";
		$this->DDRW($sqlqry,"DdReDDL");
	}
	public function DDRW($sqlqry,$type)
	{
		$db = new DBOperations("ttt");
		$recSet=$db->Exe_Qry($sqlqry);
		$rowCount=$db->Row_Count($recSet);
		
		for ($x=1; $x<=$rowCount; $x++)
		{
			$row = $db->Next_Record($recSet);
			if ($type=="HeReDDL")
			{
			$this->EchoOptHeRe($row);
			}
			else if ($type=="DdReDDL")
			{
			$this->EchoOptDdRe($row);
			}
		}	
	}
	public function EchoOptHeRe($row)
	{
		echo '<option value="'.$row['pr_dtls_code'].'" >'. $row['pr_no'].' - '.$row['serial_no'].' . '. $row['applicant']. ' - '. $row['pr_date'].'. </option>';
	}	
	public function EchoOptDdRe($row)
	{
		echo '<option value="'.$row['pr_dtls_code'].'" >'. $row['pr_no'].' - '.$row['serial_no'].' . '. $row['applicant']. ' - '. $row['Division']. ' - '. $row['pr_date'].'. </option>';
	}
	
	
	
	
	
		
}

?>