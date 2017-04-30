

<html>
<head>
<title>--Division--</title>

</head>

<body>
<?php
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db = new DBOperations("attend_db");
$fncs= new FRMOperations();
$butOp=false;

$division="";
$PMsg="";
if(isset($_POST['add'])){
	if (empty($_POST["Division"])){
		echo '<script language="javascript">';
         echo 'alert("Please Fill the Data ")';
         echo '</script>';
		//$PMsg="Please Fill the Data";
	}
	else
		{
			$division=$_POST['Division'];
			$query = "select Division from division where Division='".$division."'";
			$result = mysql_query($query,$MYdb);
			if(mysql_num_rows($result)>0){
				echo '<script language="javascript">';
         echo 'alert("Division is already Added to the system. ")';
         echo '</script>';
				//echo 'Division is already Added to the system.';
 			}
			else
			{
				$query2 = "Insert division(Division) Values('".$division."');";
				mysql_query($query2) or die(mysql_error($MYdb));{
					echo '<script language="javascript">';
         echo 'alert("Record Inserted Successfully")';
         echo '</script>';
				}
				//$PMsg="Record Inserted Successfully";
			}
		}//end of else
}// end add button action
 
if(isset($_POST['delete'])){
	$checkbox = $_POST['checkbox'];
	for($i=0;$i<count($checkbox);$i++){
		$del_id = $checkbox[$i];
		$sql = "DELETE FROM division WHERE DivisionCode='$del_id'";
		//print $sql;
		$result_d = mysql_query($sql);
	}
}
if(isset($_POST['edit'])){
	$checkbox = $_POST['checkbox'];
	$count_check=count($checkbox);
	//check whether more than one colummn selected
	if($count_check==1){
		$del_uid=$checkbox[0];
		//echo $del_uid;
		$division=$_POST['Division'];
		$sql_u="Update division Set Division='$division' where DivisionCode='$del_uid'";
		$reult_u=mysql_query($sql_u);
	}
	//echo "not access";
}				
?>

<div id="wrapp">
 <div id="header">
 </div><!--end header-->
<div id="hidden"></div>
<form id="form1" name="form1" method="post" action="">
  <table  width="100%" border="0" cellpadding="50" cellspacing="10">
    <tr> 
      <td>
		<table width="100%"  border="0" align="center" >
          <!--DWLayoutTable-->
          <tr > 
            <td width="1%" rowspan="7">&nbsp;</td>
            <td class="tbrow" colspan="3"  <p align="center"><font color="#000000" size="3" face="Verdana, Arial, Helvetica, sans-serif"><strong> 
              DIVISION </strong></font></p></td>
            <td  width="2%" rowspan="7">&nbsp;</td>
          </tr>
          <tr> 
            <td class="tbrow" width="20%"  align="right"><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Division </strong></font></td>
            <td class="tbrow" width="6%"  align="center">:</td>
            

            <td width="74%" class="tbrow"><input name="Division" type="text" id="txtid3" size="40"> 
              
            </td>
          </tr>
          
          
                <tr> 
                  <p>
                  <td align="center"> 
                      <input name="add" type="submit" id="btnadd2" value="Add" style="width:60px;">&nbsp;&nbsp;&nbsp;&nbsp;
                      
                 
                      <input name="edit" type="submit" id="btnedit" value="Edit" style="width:60px;">&nbsp;&nbsp;&nbsp;&nbsp;
                      
                  
                      <input name="delete" type="submit" id="btndelete3" value="Delete" style="width:60px;">
                     </td></p>
    
                </tr>
              </table></td>
          </tr>
          <tr> 
            <td class="tbrow" colspan="3" <table class="tbrow" width="100%" border="1">
                
              </table></td>
          </tr>
        </table>
		</td>
    </tr>
  </table>
    
       <div id="Layer1" style="position:absolute; width:566px; height:500px; z-index:1; left: 227px; top: 241px; overflow: auto;"> 
      <?php 
		$result1 = mysql_query("SELECT * FROM division ORDER BY DivisionCode");
		if ($myrow = mysql_fetch_array($result1)) {

    // display list if there are records to display
    echo '<br>';
    echo '<table id = "table2" border="1" cellspacing="0" cellpadding="0" width=90% >'."\n";
    echo '<tr></tr>';
    echo '<tr  height="40">';   //display headers
    echo '<td class="tbrow" ><div align="center">Division Code</td>';
	echo '<td class="tbrow" ><div align="center">Division Name</td>';
	echo '<td class="tbrow" ><div align="center">&nbsp;</td>';

    echo "</tr>\n";

   //display list if there are records to display
   	 $i=1;

    do {  
	// row colors
   if ($i % 2 != 0) # An odd row 
    $rowColor = "#ffffff"; 
  else # An even row 
    $rowColor = "#bababa"; 
	?>
	
	 
		 <tr>
                             
  
                            <td class=""><?php echo $myrow['DivisionCode']; ?></td>  
                            <td class=""><?php echo $myrow['Division']; ?></td>  
                             
  
                             
                            <td class=""><input type="checkbox" name="checkbox[]" value="<?php echo $myrow['DivisionCode']?>" /></td> 
                            
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
</div><!--end wrapp-->
</body>
</html>
