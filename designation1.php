<?PHP
        /*$path = pathinfo($_SERVER['PHP_SELF']);
        $phpPage=$path["basename"]; //get the basename of the page(without path)
        $cfgProgDir =  'login/';
        include("login/secure.php");*/
		
		
?>
<html>
<head>
<title>Designation Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="desingnpages/bpcategoey.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php

							$db = mysql_connect('localhost', 'almao', 'di@mond') or 
  							  die ('Unable to connect. Check your connection parameters.');
								mysql_select_db('newadmindb', $db) or die(mysql_error($db));
				
					$desig="";
					$s_code="";
					$a_tech="";
					$a_ad="";
				if(isset($_POST['add'])) {
				
				
				
							$desig=$_POST['designation'];
							$s_code=$_POST['sal_code'];
							$a_tech=$_POST['technical'];
							$a_ad=$_POST['admin'];
					
					
					
					
							$query1= "select Designation from designation where Designation='$desig'";
								$result1 = mysql_query($query1,$db);
								
								
								
								
								
								
				if(mysql_num_rows($result1)>0){
	
				$PMsg="Designation is already Added to the system.";
 			}
			else
			
			{
			
			$query2 = "Insert into designation(Designation,SalaryCode ) Values('$desig','$s_code')";
			
 			mysql_query($query2) or die(mysql_error($db));
			
			$dd=mysql_insert_id();
			
			
			$query3 = "Insert into desig_cadre(DesigCode,appcp_t, appcp_a) Values('$dd','$a_tech', '$a_ad')";
			
 			mysql_query($query3) or die(mysql_error($db));
			}
			
				}
				
				
				//delete action
				
				if(isset($_POST['delete'])){
				 $checkbox = $_POST['checkbox'];
for($i=0;$i<count($checkbox);$i++){
$del_id = $checkbox[$i];
$sql = "DELETE FROM designation WHERE DesigCode='$del_id'";
print $sql;
$result_d = mysql_query($sql);
}
					
				}
				
				if(isset($_POST['edit'])){
$checkbox = $_POST['checkbox'];
$count_check=count($checkbox);

if($count_check==1){

$del_uid=$checkbox[0];


$desig=$_POST['designation'];
$s_code=$_POST['sal_code'];
$a_tech=$_POST['technical'];
$a_ad=$_POST['admin'];


$sql_u="Update designation Set Designation='$desig',SalaryCode='$s_code' where DesigCode='$del_uid'";
$reult_u=mysql_query($sql_u);
$sql_cadre="Update desig_cadre Set appcp_t='$a_tech',appcp_a='$a_ad' where DesigCode='$del_uid'";
$re1=mysql_query($sql_cadre);
}

}
				
				
				?>
<div id="wrapp">
 <div id="header">
 

 
 </div><!--end header-->
<div id="hidden"></div>
<form id="form1" name="form1" method="post" action="">
  <table bgcolor="#000000" width="100%" border="0" cellpadding="50" cellspacing="10">
    <tr> 
      <td>
  <table width="100%"  border="0" align="center" ce>
          <!--DWLayoutTable-->
          <tr > 
            <td width="1%" rowspan="7">&nbsp;</td>
            <td class="tbrow" colspan="3" bgcolor="#ffffff"> <p align="center"><font color="#ffffff" size="3" face="Verdana, Arial, Helvetica, sans-serif"><strong>ADD 
                NEW DESIGNATION </strong></font></p></td>
            <td  width="2%" rowspan="7">&nbsp;</td>
          </tr>
          <tr> 
            <td class="tbrow" width="20%" bgcolor="#ffffff" align="right"><font color="#ffffff" size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>DESIGNATION </strong></font></td>
            <td class="tbrow" width="6%" bgcolor="#F8F8F8" align="center">:</td>
            

            <td width="74%" class="tbrow" bgcolor="#F8F8F8"><input name="designation" type="text" id="txtid3" size="40"> 
              
            </td>
          </tr>
          <tr> 
            <td class="tbrow" bgcolor="#F8F8F8" align="right" width="20%"><font color="#ffffff" size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong> Salary code  
              </strong></font></td>
            <td class="tbrow" bgcolor="#F8F8F8" align="center" width="6%" >:</td>
            <td class="tbrow" bgcolor="#F8F8F8" width="100%"> 
            <select name="sal_code"  >
                	<?php
					
						
						 $S_Code="";
						$query="Select SalaryCode from salary";
						
						$result = mysql_query($query, $db) or die(mysql_error($db));
						
						while ($row = mysql_fetch_assoc($result)) {
    										foreach ($row as $value) {
        											if ($row['SalaryCode'] == $S_Code) {
            												echo '<option value="'.$row['SalaryCode'].'" selected="selected">';
       												 } else {
            												echo '<option value="' . $row['SalaryCode'] . '">';
      												  }
      													  echo $row['SalaryCode'] . '</option>';
   													 }
								}
						

					?>
                </select>        </td>
          </tr>
          
          <tr> 
            <td class="tbrow" width="20%" bgcolor="#ffffff" align="right"><font color="#ffffff" size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Approved Cadre Position(Technical)</strong></font></td>
            <td class="tbrow" width="6%" bgcolor="#F8F8F8" align="center">:</td>
            

            <td width="74%" class="tbrow" bgcolor="#F8F8F8"><input name="technical" type="text" id="txtid3" size="40"> 
              
            </td>
          </tr>
          
          <tr> 
            <td class="tbrow" width="20%" bgcolor="#ffffff" align="right"><font color="#ffffff" size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Approved Cadre Position(Admin)</strong></font></td>
            <td class="tbrow" width="6%" bgcolor="#F8F8F8" align="center">:</td>
            

            <td width="74%" class="tbrow" bgcolor="#F8F8F8"><input name="admin" type="text" id="txtid3" size="40"> 
              
            </td>
          </tr>
          <tr> 
            <td class="tbrow" colspan="3" bgcolor="#FFAAE3"><table width="100%" border="1">
                <tr bgcolor="#B2B2B2"> 
                  <td class="tbrow" width="6%">&nbsp;</td>
                  <td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC" size="1"> 
                      <input name="add" type="submit" id="btnadd2" value="Add">
                      </font></div></td>
                  <td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC"> 
                      <input name="edit" type="submit" id="btnedit" value="Edit">
                      </font></div></td>
                  <td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC"> 
                      <input name="delete" type="submit" id="btndelete3" value="Delete">
                      </font></div></td>
                  <td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC"> 
                      <input name="btnReset" type="reset" id="btnReset3" value="Reset">
                      </font></div></td>
                  <td class="tbrow"  width="6%">&nbsp;</td>
                </tr>
              </table></td>
          </tr>
          <tr> 
            <td class="tbrow" colspan="3" bgcolor="#FFAAE3"><table class="tbrow" width="100%" border="1">
                <tr bgcolor="#FFEAFF"> 
                  <td class="tbrow" bgcolor="#B2B2B2"><div align="center"> 
                      <input name="txtMsg" type="text" value ="<?php echo"$PMsg"; ?>" id="txtMsg"  size="50">
                    </div></td>
                 
                </tr>
              </table></td>
          </tr>
        </table></td>
    </tr>
  </table>
    
      <div id="Layer1" style="position:absolute; width:566px; height:216px; z-index:1; left: 227px; top: 320px; overflow: auto;"> 
       <?php 
		$result1 = mysql_query("Select designation.DesigCode,designation.Designation,designation.SalaryCode,desig_cadre.appcp_t ,desig_cadre.appcp_a From designation LEFT JOIN desig_cadre on designation.DesigCode=desig_cadre.DesigCode");
if ($myrow = mysql_fetch_array($result1)) {

    // display list if there are records to display
    echo '<br>';
    echo '<table id = "table2" border="1" cellspacing="0" cellpadding="0" width=90% >'."\n";
    echo '<tr></tr>';
    echo '<tr bgcolor="#FFA4D1" height="40">';   //display headers
    echo '<td class="tbrow" ><div align="center">Desig Code</td>';
	echo '<td class="tbrow" ><div align="center">Designation</td>';
	echo '<td class="tbrow" ><div align="center">Salary Code</td>';
	echo '<td class="tbrow" ><div align="center">Approved Cadre Position(Technical)</td>';
	echo '<td class="tbrow" ><div align="center">Approved Cadre Position(Admin)</td>';
	echo '<td class="tbrow" ><div align="center">&nbsp;</td>';
	echo "</tr>\n";
	
	$i=1;
	do{
	if ($i % 2 != 0) # An odd row 
    $rowColor = "#ffffff"; 
  else # An even row 
    $rowColor = "#bababa"; 

?>







 <tr>
                             
  
                            <td class=""><?php echo $myrow['DesigCode']; ?></td>  
                            <td class=""><?php echo $myrow['Designation']; ?></td>  
                            <td class=""><?php echo  $myrow['SalaryCode']; ?></td>  
  							<td class=""><?php echo $myrow['appcp_t']; ?></td>  
                            <td class=""><?php echo  $myrow['appcp_a']; ?></td> 
                             
                            <td class=""><input type="checkbox" name="checkbox[]" value="<?php echo $myrow['DesigCode']?>" /></td> 
                            
                        </tr>  
  
                

<?php 
		$i++;
        } 
		while ($myrow = mysql_fetch_array($result1));


  echo '</table>';
 
  }
  

		?>
		
        
    
      </div>  
</form>
</div>
<!--end wrapp-->
</body>
</html>
