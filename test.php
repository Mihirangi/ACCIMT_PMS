<!DOCTYPE html>
<html>
<head>
    <style>
        #tablepr
            {
                margin-left: 120px;
            }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
    <title>Field Number</title>
    <link href="css/Css_file.css" rel="stylesheet" type="text/css">
    <script language="javascript" src="jss/Js_Funcs.js"></script>
    <script language="javascript" src="calendar/calendar.js"></script>

<?php
session_start();
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db = new DBOperations("misaccdb");
$fncs= new FRMOperations();
   
?>

</head> 

    
<body>

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
            <caption><h1>Genarate File View</h1></caption>
                <tr>
                    <th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                    <div class="combobox">
				    <tr>
                        <th valign="top" scope="row">
                            <div align="left">File No</div>
                        </th>
					    <th valign="top">:</th>
				        <td align="left">
							<?php
								$select_top = "SELECT*FROM pc_file_tbl";
								$result = mysql_query ($select_top);
								echo '<select name="file_no" id="myId" onchange="onChangeId()" class="form-control">'; // Open your drop down box
								echo '<option>select File no</option>';
								while ($row = mysql_fetch_array($result)){
									echo '<option value="'.$row['file_no'].'">'.$row['file_no'].'</option>';
								}
								echo '</select>';// Close your drop down box
							?>
                        </td>
                        <td>
                            <th valign="top" scope="row">
                                <div align="left">Description</div>
                            </th>
                            <th valign="top">:</th>
                            <td align="left">
				                <?php
                                    $select_top = "SELECT*FROM pc_file_tbl";
                                    $result = mysql_query ($select_top);
                                    echo '<select name="description" id="myName" onchange="myFunction()" class="form-control">'; // Open your drop down box
                                    echo '<option>select Description</option>';
                                    while ($row = mysql_fetch_array($result)){
                                        echo '<option value="'.$row['file_no'].'">'.$row['description'].'</option>';
                                    }
                                    echo '</select>';// Close your drop down box
                                ?>
                            </td>
                        </td>
                        <td>
                            &nbsp; &nbsp;<input type="submit" name="btn" value="View">
                        </td>
			        </tr>
                    <tr>
                      <td>Selected file no : 
					  <?php 
					  if(isset($_POST['btn'])){
                                    $fno=$_POST['file_no'];
					 					 echo $fno."<br><br>";
										 
										 
										 $select=mysql_query("select description from pc_file_tbl where file_no=$fno");
										 $row=mysql_fetch_array($select);
										 echo "Selected file name : ".$row['description'];
										 
										 }
					  ?>
                      
                      
                      
                      
                      <td>
                    </tr>
                   
                    </div>
                    <br/><br/><br/>
                   
                     <br/><br/><br/>
                      
                    
               
                    <table id=tablepr>
                    <tr>
                        <td>
                        <div>
                        <table width="" height="">
                            <th ><font size="+1">PR Nomber </font></th>&nbsp;&nbsp;
                            <th ><font size="+1">PR Description</font></th>
                            <?php
//                                if(isset($_POST['btn'])){
//                                    $fno=$_POST['file_no'];
//                                    $result = mysql_query("SELECT * FROM pc_file_tbl WHERE file_no=$fno");//execute the sql query
//                                    while($row = mysql_fetch_array($result)){
//                                     echo "<tr><td>".$row['pr_no']. "</td><td> " . $row['Dtls_of_equipment'] ."</td></tr>";
//                                    }
//                                }
                                
                                //mysql_close();// Close the database connection
                            ?>
                            <?php
                                 if(isset($_POST['btn'])){
                                    $fno=$_POST['file_no'];
                                    $join="SELECT * FROM pc_file_tbl JOIN pc_pr_dtls_tbl WHERE pc_file_tbl.file_no = pc_pr_dtls_tbl.file_no AND pc_file_tbl.file_no=$fno AND pc_pr_dtls_tbl.file_no=$fno";
//                                    $join="SELECT pc_file_tbl.pr_no, pc_pr_dtls_tbl.Dtls_of_equipment FROM pc_file_tbl JOIN pc_pr_dtls_tbl WHERE pc_file_tbl.pr_no = pc_pr_dtls_tbl.pr_no AND pc_file_tbl.file_no=$fno";
                                    $result = mysql_query($join);//execute the sql query
                                    while($row = mysql_fetch_array($result)){
                                        $pr=$row['pr_no'];
                                        echo "<tr><td><a href='pr_request_view.php?id=$pr'>".$pr. "</a></td><td> " . $row['Dtls_of_equipment'] ."</td></tr>";
                                    }
                                 }
                                    //mysql_close();// Close the database connection
                                ?>
                               
                        </table>
                        </div>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;</td>
                        <td>
                             <div>
                                 <?php
                                 $fno=$_POST['file_no'];
                                    $join="SELECT * FROM pc_file_tbl JOIN pc_pdf_tbl WHERE pc_file_tbl.pr_no = pc_pdf_tbl.pr_no AND pc_file_tbl.file_no='$fno'";
                                 
			                     $result= mysql_query($join) or die("SELECT Error: ".mysql_error()); 

                                print "<table>\n";
                                ?>
                                <th ><font size="+1">File </font></th>&nbsp;&nbsp;
                                <th ><font size="+1">Description</font></th>
                                <?php 
                                while ($row = mysql_fetch_array($result)){ 
                                $files_field= $row['filename'];
                                $files_show= "Uploads/files/$files_field";
                                $descriptionvalue= $row['description'];
                                print "<tr>\n"; 
                                print "\t<td>\n"; 
                                echo "<div align=center><a href='$files_show'>$files_field</a></div>";
                                print "</td>\n";
                                print "\t<td>\n"; 
                                echo "<font face=arial size=4/>$descriptionvalue</font>";
                                print "</td>\n";
                                print "</tr>\n"; 
                                } 
                                print "</table>\n"; 
                                ?>
                                
                                
                             </div>
                             
                        </td>
                    </tr>
                    </table>    
<!--
                    <tr>
				        <td align="center">Method: <input type="text" name="method " id="cupw" value="<?php echo $empt;?>"</td>
				    </tr>  
-->						
                    </table>
                    </th>             
                </tr>
                
            </table>
        </table>
    </form>
</div>
</body>
</html>

