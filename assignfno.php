<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Assign File Number</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js">
</script>

<?php
//session_start();
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db = new DBOperations("misaccdb");
$fncs= new FRMOperations();

    
    /*if (isset($_POST['file_no']) && ($_POST['file_no'] != "--Select Project Code--")){
		$file_no =  $_POST['file_no'];
		//print $pt_code; 
	}

    
    if(isset($_POST['file_no']) && ($_POST['file_no']!="--Select File Number--")){
        $result= $db->Exe_Qry("SELECT * FROM pc_file_tbl where file_no='$file_no'");
			if ($db->Row_Count($result) == 1){
				$vallst=$db->Next_Record($result);
				$description = $vallst['description'];	
			}
		}else if (isset($_POST['file_no']) && ($_POST['file_no'] != "new")){
				$description = "";
		}
    */
/*
if(!empty($_POST))
{
$file_no= $_POST['file_no'];
$year= $_POST['BudYerLst'];
$frdt=$year.'-01-01';
$todt=$year.'-12-31';


if (isset($_POST['submit']))
{
	$recordset=$db->Exe_Qry("SELECT * FROM pr_dtls_tbl WHERE file_no='' AND pr_type_no='$pr_type_no' AND pr_date BETWEEN '$frdt' AND '$todt';");
	
}

if (isset($_POST['btnAdd']))
	{
	$recordset2=$db->Row_Count($db->Exe_Qry("SELECT * FROM pr_dtls_tbl WHERE file_no='' AND pr_type_no='$pr_type_no' AND pr_date BETWEEN '$frdt' AND '$todt';"));
		$numbercount=$db->Row_Count($db->Exe_Qry("SELECT * FROM pr_dtls_tbl WHERE file_no LIKE 'ACC/p$year%'"));
		$nextF_No="ACC/p".$year."/00".($numbercount+1);
		$s=1;
		while ($s<=$recordset2)
		{
		if (isset($_POST['chkbx'.$s]))
		{
		$myyyyid= $_POST['chkbx'.$s];
			$db->Exe_Qry("UPDATE pr_dtls_tbl SET file_no='$nextF_No' WHERE pr_dtls_code= '$myyyyid';");
		}
		$s++;
		}
	}
}
*/   
    
 if(isset($_POST['submit'])){
     $file_no = $_POST['myId'];
     $description = $_POST['myName'];
     $pr_no = $_POST['checkbox'];
     
     
        if(!empty($_POST['checkbox'])) {
             foreach($_POST['checkbox'] as $mdiv) {
             $sql_query = "UPDATE pc_pr_dtls_tbl SET file_no='$file_no' WHERE pr_no='$mdiv'";
             mysql_query($sql_query);
             }
            echo '<script>alert("Assigning successfuly")</script>';
        }
     
        else{
          echo "<b>Please Select at least One division.</b>";
         }
    }   
?>

</head> 

    
<body >
    
  <script>
    function onChangeId() {
        var selectedId = $("#myId").val();
        $("#myName").val(selectedId);
    }
    function myFunction() {
        var selectedName = $("#myName").val();
        $("#myId").val(selectedName);
    }
</script>
    
<div id="wrapp">
<form method="post" action="" class="plain" id="form1" name="form1">
<table align="center" class="searchResults">
		<table width="94%" height="297"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
		  <caption><h1>Assign New PR To the File Number</h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                    <div class="combobox">
				    <tr>
					   <th valign="top" scope="row">
                            <div align="left">File No</div>
                        </th>
					       <th valign="top">:</th> 
                            <!--<div class="col-md-4">-->
							<td align="left">
                                
				            <?php
								$select_top = "SELECT*FROM pc_file_tbl";
								$result = mysql_query ($select_top);
								echo '<select name="file_no" id="myId" onchange="onChangeId()" class="form-control">'; // Open your drop down box
								echo '<option selected disabled hidden>select File no</option>';
								while ($row = mysql_fetch_array($result)){
									echo '<option value="'.$row['file_no'].'">'.$row['file_no'].'</option>';
								}
								echo '</select>';// Close your drop down box
							?>
                           <?php
                                    $select_top = "SELECT*FROM pc_file_tbl";
                                    $result = mysql_query ($select_top);
                                    echo '<select name="description" id="myName" onchange="myFunction()" class="form-control">'; // Open your drop down box
                                    echo '<option selected disabled hidden>select Description</option>';
                                    while ($row = mysql_fetch_array($result)){
                                        echo '<option value="'.$row['file_no'].'">'.$row['description'].'</option>';
                                    }
                                    echo '</select>';// Close your drop down box
                                ?>
                        </td>
                        
                        </tr>  
				</div>
			<tr ></tr><br/>
    
     <div class="form-group">
         <tr>
             <th valign="top" scope="row">
                <div align="left">Select PR No</div>
                </th>
                 <th valign="top">:</th>
                <td align="left">   
                   <?php
                    $file_no=$_POST['myId'];
                    $select='SELECT * FROM pc_pr_dtls_tbl WHERE file_no=" "' ;
                    $result=mysql_query ($select);
                    while($row= mysql_fetch_array($result)){
                        echo '<div class="checkbox">'.'<input type="checkbox" name="checkbox[]" value="'.$row ['pr_no'].'">';
                        echo '<lable>'.$row[pr_no].'-'.$row[descrip];
                        echo '<lable>'.'</div>';   
                    }
                    ?>
                </td>  
            </tr>
    </div>
</table>
</th>
</tr>
    
			<tr align="center"> 
				<td class="tbrow" colspan="3" >
				<table width="100%"align="center" >
					<tr > 
						<td class="tbrow" width="22%" >
                            <div align="center">
							<input align="center" name="submit" type="submit" value="Assign" align ="right" class="button" />
							</div>
						</td>		   
				    </tr>  		
				</table>
				</td>
			</tr>
			</table>
<br/>
    
			

    </table>
</form>
</div>
</body>
</html>

