<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="jss/tinymce/tinymce.full.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
    <script type="text/javascript">
tinymce.init({
	content_css : "css/Boardmeetings2.css",
	visual: false,
	width : "900px",
	height : "1000px",
	
	aligncenter: "5px",
    selector: "textarea",
	theme: "modern",
	skin: "heshan",
    plugins: [
        "advlist autolink lists link image charmap print preview hr anchor pagebreak",
        "searchreplace wordcount visualblocks visualchars code fullscreen",
        "insertdatetime nonbreaking save table directionality",
        "template textcolor colorpicker textpattern"
    ],
    toolbar1: "insertfile undo redo |  forecolor backcolor | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | print preview",
    toolbar2: "fontselect | fontsizeselect | styleselect",
    image_advtab: true,
    templates: [
        {title: 'Test template 1', content: 'Test 1'},
        {title: 'Test template 2', content: 'Test 2'}
    ]
});
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Capital Items Requisition Form</title>
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

    
   
    
if(isset($_POST['submit'])){
     $pr_dtls_code = $_POST['myId'];
     //$descrip = $_POST['myName'];
     $descrip = $_POST['checkbox'];
     
     
        if(!empty($_POST['checkbox'])) {
             foreach($_POST['checkbox'] as $mdiv) {
             $sql_query = "UPDATE pc_pr_dtls_tbl SET pr_dtls_code='$pr_dtls_code' WHERE descrip='$mdiv'";
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
    
<div id="wrapp">
<form method="post" action="" class="plain" id="form1" name="form1">
<table align="center" class="searchResults">
		<table width="94%" border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
		  <caption><h1>Capital Items Requisition Form</h1></caption>
			<tr>
				<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                     <div class="combobox">
				       <tr>
					   <th valign="top" scope="row">
                            <div align="left">PR Details Code</div>
                        </th>
					       <th valign="top">:</th>
							<td align="left">   
				            <?php
								$select_top = "SELECT*FROM pc_file_tbl";
								$result = mysql_query ($select_top);
								echo '<select name="myId" id="myId" onchange="onChangeId()" class="form-control">'; // Open your drop down box
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
			             <tr ></tr>
                        <br/>
                    </table>
                </th>
                </tr>	
        </table>
   <br/>  
</table>


    <br/>
    
<table id="wrapped" align="center" cellspacing="0" cellpadding="7" border="0">
       <tr>
           <th>
				<br>
                <br> 
      
            <textarea class="t2" name="print_area" id="print_area" cols="45" rows="30">
                
                <table align="center" style="width:75%;height:100%;">
                    
                <tr>
                <tr><td><h1 align="center"><font size="+2"><img align="center" src="images/logo.jpg" alt="logo" style="width:60px;height:60px;">Arthur C Clarke Institute for Modern Technologies</font></h1>
                </td></tr>
                    
                    <tr><td align="center"><u><b>Memo</b></u></td></tr>
                    <tr><td></td></tr>
                <tr>
                    <td> My ref </td>
                </tr>
                    <tr>
                    <td> Date : <?php echo "" . date("Y/m/d") . "<br>"; ?></td>
                </tr>
                </tr>
                <tr><td></td></tr>
                
                <tr>
                    <td>Chairmen </td>
                </tr>
                <tr>
                    <td>Director General </td>
                </tr>
                <tr>
                    <td>DDG (TO)</td>
                </tr>
                <tr>
                    <td>DDG (A&F)</td>
                </tr>
                <tr>
                    <td>SDD (F)</td>
                </tr>
                <tr>
                    <td>SDD (Technology Transfer)</td>
                </tr>
                <tr>
                    <td>Acting SDD (ELEC)</td>
                </tr>
                <tr>
                    <td>Acting SDD (COM)</td>
                </tr>
                <tr>
                    <td>Acting SDD (ISD)</td>
                </tr>
                <tr>
                    <td>Acting SDD (SA)</td>
                </tr>
                <tr>
                    <td>Acting SDD (IT)</td>
                </tr>
                <tr>
                    <td>AD (A)</td>
                </tr>
                <tr>
                    <td>DD (HR)</td>
                </tr>
                <tr>
                    <td>DD (Library Services)</td>
                </tr>
                <tr>
                    <td>DD (Internal Audit)</td>
                </tr>
                <tr>
                    <td>DD (M)</td>
                </tr>
                <tr>
                    <td>SK</td>
                </tr>
                
                <tr><td></td></tr>
                <tr><td></td></tr>
                
                <tr>
                    <td><u><b>Budget Estimates-2017</b></u></td>
                </tr>
                <tr><td>Please be kind enough to send your budget estimates for the year 2017 for the following items to reach Finance Division on or before 11 th August 2016.</td></tr>
                <tr>
                    <td><ol>(i) Recurrent Budget (Use the attached format)</ol>
                        <ol>(ii) Capital budget with the targeted month of purchase (Use the attached format)</ol>
                        <ol>(iii) Project Income with the targeted month (Use the attached format)</ol>
                        
                    </td>
                </tr>
                
                <tr>
                    <td>Budget 2017 should be prepared in line with the Action Plane 2017. </td>
                </tr>
                <tr>
                    <td>Technical Divisions please forword your budget through Director General/DDG(TO) and other Divisions through Director General/DDG(A&F)</td>
                </tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td>SDD(Finance)</td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                
                </table>
                
            </textarea>        
           </th>
    </tr>
</table>
  
</table>
 </form>
</div>
<script>
    function onChangeId() {
        var selectedId = $("#myId").val();
        $("#myName").val(selectedId);
        
        document.getElementsByTagName("iframe")[0].contentDocument.getElementsByTagName("td")[3].innerHTML = "My ref "+selectedId;
       
    }
    function myFunction() {
        var selectedName = $("#myName").val();
        $("#myId").val(selectedName);
        
        var selectedId = $("#myId").val();
        document.getElementsByTagName("iframe")[0].contentDocument.getElementsByTagName("td")[3].innerHTML = "My ref "+selectedId;
    }
        
        
</script>

</body>
</html>

