<?php
$s = $_GET['s'];
$prvVal;
$clrtst='';
  if (isset ($_GET['g']))
  {
	  $clrtst= ' style="color:#000" ';
	  $gr=$_GET['g'];
	  $tstgr=false;
	  if ($s=='s')
	  {
		  if ($gr=='pro_Code')
		  {
			  $rhd='පළාත';
			  $tstsql="SELECT Sin_Nme FROM province WHERE pro_Code='";
			  $tstgr=true;
		  }
		  else if ($gr=='dis_Code')
		  {
			  $rhd='දිස්ත්‍රික්කය';
			  $tstsql="SELECT Sin_Nme FROM district WHERE dis_Code='";
			  $tstgr=true;
		  }
		  else if ($gr=='ele_Code')
		  {
			  $rhd='මැතිවරණ කොට්ඨාශය';
			  $tstsql="SELECT Sin_Nme FROM electorate WHERE ele_Code='";
			  $tstgr=true;
		  }
		  else if ($gr=='Age')
		  {
			  $rhd='වයස';
		  }
		  else if ($gr=='Qualification')
		  {
			  $rhd='සුදුසුකම';
		  }
		  else if ($gr=='Introducer')
		  {
			  $rhd='හදුන්වා දෙන පුද්ගලයා';
		  }
	  }
	  else
	  {
		  if ($gr=='pro_Code')
		  {
			  $rhd='Province';
			  $tstsql="SELECT Eng_Nme FROM province WHERE pro_Code='";
			  $tstgr=true;
		  }
		  else if ($gr=='dis_Code')
		  {
			  $rhd='Dictrict';
			  $tstsql="SELECT Eng_Nme FROM district WHERE dis_Code='";
			  $tstgr=true;
		  }
		  else if ($gr=='ele_Code')
		  {
			  $rhd='Electorate';
			  $tstsql="SELECT Eng_Nme FROM electorate WHERE ele_Code='";
			  $tstgr=true;
		  }
		  else if ($gr=='gn__Code')
		  {
			  $rhd='GN Division';
			  $tstsql="SELECT Eng_Nme FROM gn_division WHERE gn__Code='";
			  $tstgr=true;
		  }
		  else if ($gr=='Request')
		  {
			  $rhd='Request';
		  }
		  else if ($gr=='Submit')
		  {
			  $rhd='Submit';
		  }
	  }
  }
require_once("Database.php");
$db=new DBOperations();
echo '<table align="center" border="1"  width="100%">';
if ($s=="s")
{
	if (isset($_GET['q']))
	  {
		  $sql2=$_GET['q'];
	  }
	  else
	  {
		  $sql2="SELECT * FROM sin_form ";
		  if (isset ($gr))
		  {
			  $sql2.="ORDER BY ".$gr." ";
			  if ($_GET['o']=='d')
			  {
				  $sql2.="DESC;"; 
			  }
			  else
			  {
				 $sql2.=";";  
			  }
		  }
		  else
		  {
			  $sql2.="ORDER BY Sin_Frm_Code DESC;";
		  }
	  }
	if (isset($gr)==false)
	  {
		  echo'<caption>
		  <h3 style="color:#FFFFFF">ඇතුලත් කර ඇති ඉල්ලීම්</h3>
		  </caption>';
	  }
}
else
{
	if (isset($_GET['q']))
	  {
		  $sql2=$_GET['q'];
	  }
	  else
	  {
		  $sql2="SELECT * FROM eng_form ";
		  if (isset ($gr))
		  {
			  $sql2.="ORDER BY ".$gr." ";
			  if ($_GET['o']=='d')
			  {
				  $sql2.="DESC;"; 
			  }
			  else
			  {
				 $sql2.=";";  
			  }
		  }
		  else
		  {
			  $sql2.="ORDER BY Eng_Frm_Code DESC;";
		  }
	  }
	  if (isset($gr)==false)
	  {
		  echo'<caption>
		  <h3 style="color:#FFFFFF">Added Requests</h3>
		  </caption>';
	  }
}
if (isset($rhd))
{
	$row3 = $db->Next_Record($db->Exe_Qry($sql2));
	$prvVal=$row3[$gr];
	echo '<tr><td'.$clrtst.' colspan="'.sizeof($row3).'">'.$rhd.' - ';
	if ($tstgr)
	{
		$tstval=$db->Next_Record($db->Exe_Qry($tstsql.$prvVal."';"));
		echo $tstval[0];
	}
	else
	{
		echo $prvVal;
	}
	echo '.</td></tr>';
}
if ($s=="s")
{
	  echo'<tr>
	  <th'.$clrtst.'>#</th>
	  <th'.$clrtst.'>පළාල</th>
	  <th'.$clrtst.'>දිස්ත්‍රික්කය</th>
	  <th'.$clrtst.'>මැතිවරණ කොට්ඨාශය</th>
	  <th'.$clrtst.'>ලැබූ දිනය</th>
	  <th'.$clrtst.'>ලිපිගොනු අංකය</th>
	  <th'.$clrtst.'>නම</th>
	  <th'.$clrtst.'>ජා. හැ. අංකය</th>
	  <th'.$clrtst.'>වයස</th>
	  <th'.$clrtst.'>සුදුසුකම</th>';
	  if (isset($gr))
			{
				echo '<th style="color:#000;width:200px;">ලිපිනය</th>';
			}
			else
			{
				echo '<th style="width:200px;">ලිපිනය</th>';
			}
	  echo '<th'.$clrtst.'>දුරකනය</th>
	  <th'.$clrtst.'>හදුන්වා දෙන්නේ කවුරැන්ද</th>';
	  if (isset($gr)==false)
			{
				echo '<th'.$clrtst.'>ඇමුණූ ලිපි</th>';
			}
	  echo '</tr>';
	  if (isset($gr)==false)
	  {
	  echo'<tr>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="num_txt" name="num_txt" onkeyup="filtdata('."'s'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="pro_txt" name="pro_txt" onkeyup="filtdata('."'s'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="dis_txt" name="dis_txt" onkeyup="filtdata('."'s'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="ele_txt" name="ele_txt" onkeyup="filtdata('."'s'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="rdt_txt" name="rdt_txt" onkeyup="filtdata('."'s'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="fno_txt" name="fno_txt" onkeyup="filtdata('."'s'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="nme_txt" name="nme_txt" onkeyup="filtdata('."'s'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="nic_txt" name="nic_txt" onkeyup="filtdata('."'s'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="age_txt" name="age_txt" onkeyup="filtdata('."'s'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="qua_txt" name="qua_txt" onkeyup="filtdata('."'s'".',this.id)" /></th>
	  <th style="width:200px"><input style="width:100%" type="text" id="adr_txt" name="adr_txt" onkeyup="filtdata('."'s'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="tel_txt" name="tel_txt" onkeyup="filtdata('."'s'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="int_txt" name="int_txt" onkeyup="filtdata('."'s'".',this.id)" /></th>
	  <th'.$clrtst.'><p>&nbsp;</p></th>
	  </tr>';
	  }
}
else
{
	echo'<tr>
	  <th'.$clrtst.'>#</th>
	  <th'.$clrtst.'>Province</th>
	  <th'.$clrtst.'>District</th>
	  <th'.$clrtst.'>Electorate</th>
	  <th'.$clrtst.'>GN Division</th>
	  <th'.$clrtst.'>Received Date</th>
	  <th'.$clrtst.'>Address</th>
	  <th'.$clrtst.'>Request</th>
	  <th'.$clrtst.'>Submit</th>
	  <th'.$clrtst.'>Submit Date</th>';
	  if (isset($gr)==false)
			{
				echo '<th'.$clrtst.'>Attached File</th>';
			}
	  echo '</tr>';
	  if (isset($gr)==false)
	  {
	  echo'<tr>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="num_txt" name="num_txt" onkeyup="filtdata('."'e'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="pro_txt" name="pro_txt" onkeyup="filtdata('."'e'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="dis_txt" name="dis_txt" onkeyup="filtdata('."'e'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="ele_txt" name="ele_txt" onkeyup="filtdata('."'e'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="gnd_txt" name="gnd_txt" onkeyup="filtdata('."'e'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="rdt_txt" name="rdt_txt" onkeyup="filtdata('."'e'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="adr_txt" name="adr_txt" onkeyup="filtdata('."'e'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="rqt_txt" name="rqt_txt" onkeyup="filtdata('."'e'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="sut_txt" name="sut_txt" onkeyup="filtdata('."'e'".',this.id)" /></th>
	  <th'.$clrtst.'><input style="width:100%" type="text" id="sdt_txt" name="sdt_txt" onkeyup="filtdata('."'e'".',this.id)" /></th>
	  <th'.$clrtst.'><p>&nbsp;</p></th>
	  </tr>';
	  }
}
		$result2 =$db->Exe_Qry($sql2);
		while($row2 = $db->Next_Record($result2))
			{ 
			if (isset($rhd))
			{
				$newVal=$row2[$gr];
				if ($prvVal != $newVal)
				{
					$prvVal = $newVal;
					
					echo'</table>
					<!-- pagebreak -->
					<table align="center" border="1"  width="100%">';
					echo '<tr><td'.$clrtst.' colspan="'.sizeof($row2).'">'.$rhd.' - ';
					if ($tstgr)
					{
						$tstval=$db->Next_Record($db->Exe_Qry($tstsql.$prvVal."';"));
						echo $tstval[0];
					}
					else
					{
						echo $prvVal;
					}
					echo '.</td></tr>';
					echo'<tr>
					<th'.$clrtst.'>#</th>';
					if ($s=="s")
					{
						echo '<th'.$clrtst.'>පළාල</th>
						<th'.$clrtst.'>දිස්ත්‍රික්කය</th>
						<th'.$clrtst.'>මැතිවරණ කොට්ඨාශය</th>
						<th'.$clrtst.'>ලැබූ දිනය</th>
						<th'.$clrtst.'>ලිපිගොනු අංකය</th>
						<th'.$clrtst.'>නම</th>
						<th'.$clrtst.'>ජා. හැ. අංකය</th>
						<th'.$clrtst.'>වයස</th>
						<th'.$clrtst.'>සුදුසුකම</th>
						<th'.$clrtst.' style="color:#000;width:200px;">ලිපිනය</th>
						<th'.$clrtst.'>දුරකනය</th>
						<th'.$clrtst.'>හදුන්වා දෙන්නේ කවුරැන්ද</th>';
					}
					else
					{					
						echo '<th'.$clrtst.'>Province</th>
						<th'.$clrtst.'>District</th>
						<th'.$clrtst.'>Electorate</th>
						<th'.$clrtst.'>GN Division</th>
						<th'.$clrtst.'>Received Date</th>
						<th'.$clrtst.'>Address</th>
						<th'.$clrtst.'>Request</th>
						<th'.$clrtst.'>Submit</th>
						<th'.$clrtst.'>Submit Date</th>';
					}
					echo '</tr>';
				}
			}
			echo '<tr>';
			$ind=0;
			$test=true;
				while ($test)
				{
					if (isset($row2[$ind]))
					{
						if ($s=='s')
						{
							if ($ind=='1')
							{
								$val=$db->Next_Record($db->Exe_Qry("SELECT Sin_Nme FROM province WHERE pro_Code='$row2[$ind]';"));
								$thval = $val[0];
							}
							else if ($ind=='2')
							{
								$val=$db->Next_Record($db->Exe_Qry("SELECT Sin_Nme FROM district WHERE dis_Code='$row2[$ind]';"));
								$thval = $val[0];
							}
							else if ($ind=='3')
							{
								$val=$db->Next_Record($db->Exe_Qry("SELECT Sin_Nme FROM electorate WHERE ele_Code='$row2[$ind]';"));
								$thval = $val[0];
							}
							else
							{
								$thval = $row2[$ind];
							}
							if ($ind=='4')
							{
								echo '<td'.$clrtst.'><p style="white-space:nowrap;">'.$thval.'</p></td>';
							}
							else if ($ind=='6' || $ind=='10')
							{
								echo '<td'.$clrtst.'><p style="min-width:200px;">'.$thval.'</p></td>';
							}
							else 
							{
								echo '<td'.$clrtst.'><p>'.$thval.'</p></td>';
							}
							/*if ($ind!=1)
							{
								if ($ind==10)
								{
									echo '<td'.$clrtst.'><p>'.$thval.'</p></td>';
								}
								else
								{
									echo '<td'.$clrtst.'><p><span style="white-space:nowrap">'.$thval.'</span></p></td>';
								}
							}*/
						}
						else
						{
							if ($ind=='1')
							{
								$val=$db->Next_Record($db->Exe_Qry("SELECT Eng_Nme FROM province WHERE pro_Code='$row2[$ind]';"));
								$thval = $val[0];
							}
							else if ($ind=='2')
							{
								$val=$db->Next_Record($db->Exe_Qry("SELECT Eng_Nme FROM district WHERE dis_Code='$row2[$ind]';"));
								$thval = $val[0];
							}
							else if ($ind=='3')
							{
								$val=$db->Next_Record($db->Exe_Qry("SELECT Eng_Nme FROM electorate WHERE ele_Code='$row2[$ind]';"));
								$thval = $val[0];
							}
							else if ($ind=='4')
							{
								$val=$db->Next_Record($db->Exe_Qry("SELECT Eng_Nme FROM gn_division WHERE gn__Code='$row2[$ind]';"));
								$thval = $val[0];
							} 
							else
							{
								$thval = $row2[$ind];
							}
							//echo '<td'.$clrtst.'><p><span style="white-space:nowrap">'.$thval.'</span></p></td>';
							if ($ind=='5' || $ind=='9')
							{
								echo '<td'.$clrtst.'><p style="white-space:nowrap;">'.$thval.'</p></td>';
							}
							else if ($ind=='6' || $ind=='7')
							{
								echo '<td'.$clrtst.'><p style="min-width:200px;">'.$thval.'</p></td>';
							}
							else
							{
								echo '<td'.$clrtst.'><p>'.$thval.'</p></td>';
							}
						}
						$ind++;
					}
					else
					{
						$test=false;
					}
				}
				
				
			if (isset($gr)==false)
			{	
				echo '<th align="center"><i id="'.$row2[0].'" name="'.$row2[0].'" onClick="attachfunc(this.id,'."'".$s."'".')" title="';
				if ($s=='s')
				{
					echo 'ඇමුණුම්';
				}
				else
				{
					echo 'Attachments';
				}
				echo '"></i></th>';
			}
			
			
			echo '</tr>';
			}
         echo '</table>';
 ?>