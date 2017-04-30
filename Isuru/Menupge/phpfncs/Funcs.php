<?php
require_once('calendar/classes/tc_calendar.php');
require_once("Database.php");
require_once("MS_Database.php");
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
		   <div id="site_title"> Attendance Management System </div>
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
			   <a href="">Home</a>
			  </center>
			 </li>
			 <li>
			  <center>
			   <span class="dir">Attendance</span>
			  </center>
			  <ul>';
			  if ($utype != 'V')
			  {
			  echo '<li><a href="DlyPro.php" onClick="scrollpg()" target="datafrm">Daily Process</a></li>
			  <li><a href="WlyPro.php" onClick="scrollpg()" target="datafrm">Weekly Process</a></li>
			  <li><a href="MlyPro.php" onClick="scrollpg()" target="datafrm">Monthly Process</a></li>
			  <li><a href="YlyPro.php" onClick="scrollpg()" target="datafrm">Yearly Process</a></li>';
			  }
			  
			  echo '<li><a href="AttView.php" onClick="scrollpg()" target="datafrm">';
			   $this->HeadingEcho($utype);
			   echo ' Attendance</a></li>
			  </ul>
			 </li>
			 <li>
			  <center>
			   <span class="dir">Issues</span>
			  </center>
			  <ul>
			  <li><a href="Absent.php" onClick="scrollpg()" target="datafrm">Absence</a></li>
			  <li><a href="Issues.php" onClick="scrollpg()" target="datafrm">Improper Attendance</a></li>
			  </ul>
			 </li>
			 <li>
			  <center>
			   <span class="dir">Employees</span>
			  </center>
			  <ul>
			  <li><a href="EmpDeta.php" onClick="scrollpg()" target="datafrm">';
			   $this->HeadingEcho($utype);
			   echo ' Details</a></li>
			  <li><a href="EntLvs.php" onClick="scrollpg()" target="datafrm">';
			   $this->HeadingEcho($utype);
			   echo ' Entitled Leaves</a></li>
			  <li><a href="TknLvs.php" onClick="scrollpg()" target="datafrm">';
			   $this->HeadingEcho($utype);
			   echo ' Taken Leaves</a></li>
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
		
}

?>