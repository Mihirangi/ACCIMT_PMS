<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Field Number</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js">
</script>

<?php
//session_start();
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db = new DBOperations("attend_db(1)");
$fncs= new FRMOperations();


if(!empty($_POST))
{
$year=$_POST['BudYerLst'];
//$year= $_POST['Year'];
$pr_no=$_POST['pr_no'];    
$pr_type_no= $_POST['txt_pr_type_no'];
//$file_no=$year

    

                                
    
if (isset($_POST['submit']))
{
 //$recordset=$db->Exe_Qry("SELECT * FROM pr_dtls_tbl WHERE file_no='' AND pr_type_no='$pr_type_no' AND pr_date BETWEEN '$frdt' AND '$todt';");
    $sql_query1="SELECT * FROM pc_file_tbl WHERE pr_type_no='$pr_type_no'";
    $recordset=mysql_query($sql_query1);
    
    $max_file_no=mysql_num_rows($recordset)+1;
    
                            if($pr_type_no==1){
                                    $pr_type_letter= "W";
                               }
                             if($pr_type_no==2){
                                   $pr_type_letter="G" ;
                                }
                            if($pr_type_no==3){
                                 $pr_type_letter="S" ;
                               }
                               
    $pr_type_letter="$pr_type_letter";
    $fileno='AC/P'.$year.$pr_type_letter.$max_file_no;
    
   /* 
    $pr_type_letter="G";
    $fileno='AC/P'.$year.$pr_type_letter.$max_file_no;
    
      $pr_type_letter="S";
    $fileno='AC/P'.$year.$pr_type_letter.$max_file_no;
    */
    
    // if Works is selected $pr_type_no=1.
    // if Goods is selected $pr_type_no=2.
    // if Services is selected $pr_type_no=3.
    $query ="INSERT INTO pc_file_tbl(year,pr_type_no,file_no,pr_no,description) VALUES('$year','$pr_type_no','$fileno','$pr_no','$description')";
    
    
    //print $pr_no;
    //print $pr_type_no;
    //$sql_query = "INSERT INTO projects(year,div_code,pt_code,description,code,pname,apcode,startdate,enddate,ptype,cname) VALUES('$year','$div_code','$pt_code','$description','$code','$pname','$apcode','$startdate','$enddate','$ptype','$cname')";
    
	if(mysql_query($query))
 {
  ?>
  <script type="text/javascript">
  alert('Data Inserted Successfully ');
  //window.location.href='ProjectView.php';
  </script>
  <?php
 }
 else
 {
  ?>
  <script type="text/javascript">
  alert('error occured while inserting your data');
  
  </script>
  <?php
 }
}
}

?>

    
    

</head> 

<body>


<div id="wrapp">
<form method="post" action="fnogen.php" >
<table align="center" class="searchResults">
		<table width="94%" height="297"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
		   <caption><h1> Genarate New File No</h1></caption>
				   <tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                        
                        
                        
                        <tr></tr><br/>
			
				    <tr>
					<th valign="top" scope="row"><div align="left"> Select Year</div></th>
					<th valign="top">:</th>
					<td align="left">
                    <?php 
                        
					$yr=date('y');
	                $yr2=date('Y');	   
	            echo'<select name = "BudYerLst" id = "BudYerLst" >
		        <option value="'.($yr-2).'">'.($yr2-2).'</option>
		        <option value="'.($yr-1).'">'.($yr2-1).'</option>
		        <option selected value="'.($yr).'">'.($yr2).'</option>
		        <option value="'.($yr+1).'">'.($yr2+1).'</option>
		        <option value="'.($yr+2).'">'.($yr2+2).'</option>';
		           echo'</select>';
	   
					?>
                    </td>
				    </tr>
                        
                        
                  <div class="combobox">
				   <tr>
					<th valign="top" scope="row"><div align="left">PR No</div></th>
					<th valign="top">:</th>
				      <td align="left">
							
                       <?php 
                           $select = "SELECT * FROM pc_pr_dtls_tbl";
						   //$select_top="SELECT * FROM pc_pr_dtls_tbl A INNER JOIN pc_bud_req_tbl B ON A.applicant = B.user";
						  //$select="SELECT * FROM pc_pr_dtls_tbl A INNER JOIN pc_bud_req_tbl B ON A.applicant=B.user INNER JOIN emp_details_tbl C ON 					A.applicant=C.EmpNo"; 
						
						   
                            $result = mysql_query ($select);
                            while ($row = mysql_fetch_array($result))
                            {
								$pr=$row['pr_no'];
								//echo $pr;
                            echo '<div class="checkbox">' .'<input type="checkbox" name="pr_no" value="'.$row['pr_no'].'">';
				            echo"<label><a href='pr_request_view.php?id=$pr'>".$pr.'</a>'."&nbsp;&nbsp;".$row['descrip']."<br><br>".'</label>'.'</div>';
                            				
                            }
                         ?>
                       </td>
                      </tr>
				    </div>
			     <tr></tr><br/>
			
				<tr>
					<th valign="top" scope="row">
                    <div align="left">Purchase Type</div></th>
					<th valign="top">:</th>

				    <td align="left">
                        <select name = "txt_pr_type_no" id ="txt_pr_type_no" onchange = "document.form1.submit()">
                            <?php
                                mysql_connect('localhost', 'root', '');
                                mysql_select_db('misaccdb');
                                $values = mysql_query("SELECT * FROM pc_pr_type");
                                echo "<option >--New Entry--</option>";
										 while ($row = mysql_fetch_array($values)) 
                                            {
					                       $setSelect = "";
					                       echo "<option value='$row[0]'>$row[1]</option>";
				                            }
			                 ?>
                        </select>
                    </td>
                </tr>
                        
                        
                        
                        
                    <tr>
				         <th valign="top" scope="row"><div align="left">File Name</div></th>
				       <th valign="top">:</th>
                        <td align="left">
                        <input type="text" name="cupw" id="cupw" value="<?php echo $empt;?>"></td>
				   </tr>

				
					</table>
                    </th>
				   </tr>
			
		
			     <tr align="center"> 
				 <td class="tbrow" colspan="3" >
				  <table width="100%"align="center" >
					<tr > 
						<td class="tbrow" width="22%" >
                            <div align="center">
							<input align="center" name="submit" id="submit" type="submit" value="Genarate" align ="right" class="button" />
                                
							</div>
						</td>
					
			
						   
				</tr>  
  
						
						
				
				</table>
				</td>
			   </tr>
  </table>
  </table>
			
			


</form>





</div>
</body>
	



</html>

