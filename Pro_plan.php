<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Procument Plan</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js">
</script>

<?php
session_start();
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db = new DBOperations("attend_db");
$fncs= new FRMOperations();
$timezone = new DateTimeZone('America/New_York');
?>

</head>
<body >	
		<!----table for topic--->

		  <caption ><h1 align="center">Arthur C Clarke Institute for Modern Technologies</h1>
		  </caption>
          <caption >
          <div align="center"><span class="style2"><h2>Procument Division</h2></span>
            </caption>
            <caption >
          </div>
          <h1 align="center"><u> Procument Plan for Year 2016</u></h1>
           </caption>

        
   
        
 <div style="color:#0000FF">
        
<table  align="center" cellspacing="3" cellpadding="5" border="0" width="200%"  >
			<tr>
				<th>
			    <?php 		
				
					$result1=$db->Exe_Qry("SELECT pr_dtls_code,serial_no,DivisionCode,pr_no,Dtls_of_equipment, est_cost, file_no, remarks,
					pr_date FROM pr_dtls_tbl ORDER BY pr_dtls_code");
					//, division_tbl WHERE DivisionCode=DivisionCode
					if(mysql_num_rows($result1)>0){
					echo '<table id = "table2" align="center" border="1" cellspacing="0" cellpadding="0">';
					echo '<tr bgcolor="#B3ABAB" height="30">';   //display headers
					echo '<th class="tbrow" >Se No</th>';
					echo '<th class="tbrow" >Division</th>';
					echo '<th class="tbrow" >PR/WO.No</th>';
					echo '<th class="tbrow" >Description</th>';
					echo '<th class="tbrow" >Budget Code</th>';
					echo '<th class="tbrow" >Estm.Cost (RS.000)</th>';
 					echo '<th class="tbrow" >File Ref No</th>'; 
					echo '<th class="tbrow" >Schedule/Actual</th>';
					echo '<th class="tbrow" >PR Received Date</th>';
					
					
					while ($myrow = mysql_fetch_array($result1)) {

					 $pr_dtls_code =$myrow['pr_dtls_code'];
					 $values =$db->Exe_Qry("SELECT sh_no, sh_des FROM shdl_task_tbl");		
				while ($column = mysql_fetch_array($values)) 
				{
					echo '<td>'.$column[1].'</td>';
					$v22=$column[0];
						$rc=$db->Row_Count($db->Exe_Qry("SELECT * FROM act_dte_tbl WHERE pr_dtls_code='$pr_dtls_code' AND sh_no='$v22';"));
						if ($rc==0)
						{
					$db->Exe_Qry("INSERT INTO act_dte_tbl SET pr_dtls_code='$pr_dtls_code',sh_no='$v22';");
					}
				}
					echo '<th class="tbrow" >Remarks</th>';


					//echo "</tr>"; 
						
				?> 
                </th> 
             <!--------------------------------------------->
             
                <tr>
                	<td class="" rowspan="2" ><?php echo $pr_dtls_code; ?></td> 
					<td width="17" class="" rowspan="2"><?php echo $myrow['DivisionCode']; ?></td>  
					<td width="17" class="" rowspan="2"><?php echo $myrow['pr_no']; ?></td> 
					<td width="17" class="" rowspan="2"><?php echo $myrow['Dtls_of_equipment']; ?></td> 
                    
					<td width="17" class="" rowspan="2"><?php 
					
					$ro1=$db->Next_Record($db->Exe_Qry("SELECT pr_no, serial_no FROM pr_dtls_tbl WHERE pr_dtls_code='$pr_dtls_code';"));
					$vvv=$ro1[0];
					$yyy=$ro1[1];
					$ro2=$db->Exe_Qry("SELECT budg_code FROM div_budg_tbl WHERE divb_code IN (SELECT DISTINCT divb_code FROM ibudg_alloc_tbl WHERE pr_no='$vvv' AND serial_no='$yyy');");
					
					while ($rovals=$db->Next_Record($ro2))
					{
					echo $rovals[0]."<br>";
					}
					?></td> 
    				<td width="17" class="" rowspan="2"><?php echo $myrow['est_cost']; ?></td>  
					<td width="17" class="" rowspan="2"><?php echo $myrow['file_no']; ?></td> 
    <!--Add rows in a row-->
    
    
    <td width="107" class="" >Schedule</td><td width="107" class="" ><?php echo $myrow['pr_date'];?></td>
   
    <?php 
	//add date range to a date
	$values2 =$db->Exe_Qry("SELECT sh_no, date_range FROM shdl_task_tbl ");
	$dummy_dt = date_format(date_create($myrow['pr_date']), 'Y-m-d');
	$date = new DateTime($myrow['pr_date']);

	while ($column2 = mysql_fetch_array($values2)) {
	$days= $column2[1];
	$v22= $column2[0];
	$date->add(new DateInterval('P'.$days.'D'));
	$mydate=$date->format('Y-m-d');
	echo '<td width="130">'.$mydate.'</td>';

	
			$query22 =("UPDATE act_dte_tbl SET shdl_dte='$mydate' WHERE  pr_dtls_code='$pr_dtls_code' AND sh_no='$v22'");
	
			mysql_query($query22);

}
	
	 ?>
     <td width="17" class="" rowspan="2"><?php echo $myrow['remarks'];?></td> 
     </tr>
     
     <tr>
     <td width="107" class="" >Actual</td><td width="107" class="" ><?php echo $myrow['pr_date'];?></td>
     <?php 
	$values22 =$db->Exe_Qry("SELECT act_dte FROM act_dte_tbl ");
	while($column22 = mysql_fetch_array($values22)){
	$date=$column22[0];
	
					echo '<td width="130">'.$date.'</td>';}
				
	 ?> 
  </tr>
  
</tr>
 
  
				<?php 
				
}
				
	echo '</table>';				
	}
	//else
	//{
	//	echo "No Result to Display";
	//}
				?>
  </table>  
 </div>
</body>
</html>