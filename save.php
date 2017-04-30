<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Districts</title>
<?php
session_start();
//if (!isset($_SESSION['proclogin_type']))
//{
//header('Location: lgin.php');
//}
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations();
$fncs= new FRMOperations();

?>
    <script language="javascript" src="jss/Js_Funcs.js">
</script>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="jss/tinymce/tinymce.full.js"></script>
<script type="text/javascript">
tinymce.init({
	content_css : "css/Boardmeetings2.css",
	visual: false,
	width : "900px",
	height : "1000px",
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
</head>
<body >


<div id="wrapp">

  <table id="wrapped2" align="center" width="95%"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1>Upload the saved files to DataBase</h1>
   </caption>
   <tr>
    <td>
        <form enctype=multipart/form-data action=save.php method=post>
            <table border="0" align="center">
            <tr>
                <th align="left">Pr_No</th>
                <th>:</th>
                <td><?php

                    $sql="SELECT DISTINCT pr_no FROM pc_pur_request";

                    $result=mysql_query($sql);

                    echo "<select name='prnum'>";
                    echo "<option>" . "Select the pr no" . "</option>";
                    while ($row = mysql_fetch_array($result)) {
                        echo "<option value='" . $row['pr_no'] ."'>" . $row['pr_no']."</option>";
                    }
                    echo "</select>";

                    echo "<br/> ";
                    ?>
                </td>
            </tr>
      <tr>
       <th align="left">
         Document Type</th>
       <th>:</th>
       <td>
           <?php $sql="SELECT DISTINCT * FROM pc_doc_type_tbl";

           $result=mysql_query($sql);

           echo "<select name='type'>";
           echo "<option>" . "Select the type" . "</option>";
           while ($row = mysql_fetch_array($result)) {
               echo "<option value='" . $row['doc_type_id'] ."'>" . $row['doc_type']."</option>";
           }
           echo "</select>";

           echo "<br/> ";
           ?>
       </td>
      </tr>

   </table>
    </td>
   </tr>
  </table>
  <br />
  <br />
  <table id="wrapped" align="center" cellspacing="3" cellpadding="5">
   <tr>
    <th>
    
    <div id="editordiv">

        <div id="editordiv" align="center">

            <?php

            $name= $_FILES['file']['name'];

            $tmp_name= $_FILES['file']['tmp_name'];

            $submitbutton= $_POST['submit'];

            $position= strpos($name, ".");

            $fileextension= substr($name, $position + 1);

            $fileextension= strtolower($fileextension);

            $description= $_POST['description_entered'];

            if (isset($name)) {

                $path= 'Uploads/files/';

                if (!empty($name)){
                    if (move_uploaded_file($tmp_name, $path.$name)) {
                        echo 'Uploaded!';

                    }
                }
            }


            $user = "root";
            $password = "";
            $host = "localhost";
            $dbase = "misaccdb";
            $table = "pc_pdf_tbl";


            $connection= mysql_connect ($host, $user, $password);
            if (!$connection)
            {
                die ('Could not connect:' . mysql_error());
            }
            mysql_select_db($dbase, $connection);


            if(!empty($description)){
                $prnum= $_POST[prnum];
                $docType= $_POST[type];
                mysql_query("INSERT INTO $table (pr_no, doc_type,  description, filename) VALUES ( '$prnum','$docType','$description', '$name' )");
            }


            mysql_close($connection);

            ?>
                <br>
                Description of File: <input type="text" name="description_entered"/><br><br>
                <input type="file" name="file"/><br><br>

                <input type="submit" name="submit" value="Upload"/>
                <br>




            </form><br>
        </div>
    </div>
    </th>
   </tr>
  </table>

 <br />
 <br />
</div>
</body>
</html>
