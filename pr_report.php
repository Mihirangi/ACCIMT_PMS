<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="jss/tinymce/tinymce.full.js"></script>

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

    
?>

</head> 

    
<body >
    
<div id="wrapp">
<form method="post" action="" class="plain" id="form1" name="form1">
<table align="center" class="searchResults">
    <table width="94%" height="100"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
        <caption><h1>Report</h1></caption>
    </table>
    <br/><br/>
    <table width="94%" height="297"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
            <tr>
            <th>
                <table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                <div class="combobox">
                    <tr>
                    <textarea class="t2" name="print_area" id="print_area" cols="45" rows="30">
                    <table>
                        <tr>
                            <th>Arthur C Clarke Institute for Modern Technologies<br/><u>PROCUREMENT REQUISITION FOR CAPITAL GOODS/ WORKS/ SERVICES</u></th>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr>
                            <td><b>Name of the item and quantity: </b></td>
                        </tr>
                        <tr>
                            <td>(If you request computers or office equippment please attached committee recommendation)</td>
                        </tr>
                        <tr>
                            <td><b>Use:</b> Individual/Divisional/Project: </td>
                        </tr>
                        <tr>
                            <td>Project Name (if applicable): </td>
                        </tr>
                        <tr>
                            <td>
                                1) Name of Applicant: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Division: 
                            </td>
                        </tr>
                        <tr>
                            <td>2) Brief Description of the Usage: (Specification/BOQ/Drawings are enclosed herewith): </td>
                        </tr>
                        <tr>
                            <td>3) Indicate whether similar item available in the Institute/Division/Personal use:  &nbsp;Yes/No</td>
                        </tr>
                        <tr>
                            <td>4) If yes, justify the purchase similar equipment: </td>
                        </tr>
                        <tr>
                            <td>5) How do you fulfill your current requirement?: </td>
                        </tr>
                        <tr>
                            <td>6) Estimated value:Rs.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Budgeted amount Rs:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Budgeted year:</td>
                        </tr>
                        <tr>
                            <td>7) Budget code: </td>
                        </tr>
                        <tr>
                            <td>8) Description of budgetary provision mentioned in the budget: </td>
                        </tr>
                        <tr>
                            <td>9) If not available budgetary provision in the respective year indicate the alternative source with Budget code: </td>
                        </tr>
                        <tr>
                            <td>10) Certification for the alternative funds:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Signature: </td>
                        </tr>
                        <tr>
                            <td>Signature of Applicant:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date: </td>
                        </tr>
                        <tr>
                            <td>----------------------------------------------------------------------------------------------------------------------------------------------</td>
                        </tr>
                        <tr>
                            <td><b><u>Certification of Divisional Head</u></b></td>
                        </tr>
                        <tr>    <td>Signature:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date: </td>
                        </tr>
                        <tr>
                            <td>----------------------------------------------------------------------------------------------------------------------------------------------</td>
                        </tr>
                        <tr>
                            <td><b><u>Recommendation of SDD(A&HR)/DDG(A&F)/DDG(TO)/Director General</u></b></td>
                        </tr>
                        <tr>    <td>Signature:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date: </td>
                        </tr>
                        <tr>
                            <td>----------------------------------------------------------------------------------------------------------------------------------------------</td>
                        </tr>
                        <tr>
                            <td><b><u>Authorization of the DDG(A&F)/DDG(TO)/Director General</u></b></td>
                        </tr>
                        <tr>    <td>Signature:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date: </td>
                        </tr>
                    </table>
                    </textarea>
                    </tr>
                </div>            
                </table>
            </th>
            </tr>
    </table>
   <br/>
    
</table>

 </form>
</div>
</body>
</html>

