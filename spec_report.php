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
    <table width="60%" height="100"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
        <caption><h1>Report</h1></caption>

            <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td align="left">Pr_No</td>
                    <td>:</td>
                    <td>
                        <?php
                        echo'<select name="BudYerLst" id = "BudYerLst" >
	                   <option value="new">Select the pr_no</option>';
                        $ress=($db->Exe_Qry("SELECT  pr_no FROM pc_pr_dtls_tbl;"));
                        while ($roww = $db->Next_Record($ress))
                        {
                            echo'<option value="'.$roww["pr_no"].'">'.$roww["pr_no"].'</option>';
                        }
                        echo'</select>';
                        if (isset($BudYerLst))
                        {
                        ?>
                            <script language="javascript" type="text/javascript">
                                document.getElementById("BudYerLst").value="<?php echo "$BudYerLst";?>";
                            </script>
                        <?php
                        }
                        ?>
                    </td>
                </tr>
        
            <table border="0" align="center">
                
            </table>
        <br/><br/>

    </table>
<form method="post" action="" class="plain" id="form1" name="form1">
<table align="center" class="searchResults">

    <table width="94%" height="297"  border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">

            <tr>
            <th> 
                <table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                <div class="combobox">
                    <tr>
                    <textarea class="t2" name="print_area" id="print_area" cols="45" rows="30">
                    <table>
                        <tr>
                            <th>Arthur C Clarke Institute for Modern Technologies</th>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                    <table>
                        <tr>
                            <td><?php $mainspec;?></td>
                        </tr>
                    </table>
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

