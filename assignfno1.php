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

    
if(isset ($_POST['code']) && ($_POST['code'] != "new" )){
    $code=$_POST['code']; 
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
		  <caption><h1>Personal Computers and Workstation</h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                     <div class="combobox">
				       <tr>
					   <th valign="top" scope="row">
                            <div align="left">Item Code</div>
                        </th>
					       <th valign="top">:</th> 
                            <!--<div class="col-md-4">-->
							<td align="left">
                                
				            <?php
								$select_top = "SELECT*FROM pc_itemcode";
								$result = mysql_query ($select_top);
								echo "<select name='code' id='myId' onchange='this.form.submit()' class='form-control'>"; // Open your drop down box
								echo "<option>select code</option>";
								while ($row = mysql_fetch_array($result)){
									echo "<option value='$row[0]'>$row[0] - $row[1]</option>";
								}
								echo "</select>";// Close your drop down box
							?>
                        </td>
                        
                        </tr>
                         <script>
                            
				            document.getElementById('myId').value="<?php echo $code;?>";
                            if(document.getElementById('myId').value!="<?php echo $code;?>" || document.getElementById('myId').value==""){
                                document.getElementById('myId').value="new";
                            }
                         </script>
				</div>
			<tr ></tr>
            <br/>
    
    
               </table>
              </th>
             </tr>	
    </table>
   <br/>
    
</table>
	
<textarea class="t2" name="print_area" id="print_area" cols="45" rows="30">
     
    <?php 
    $code=$_POST['code'];
    //echo $code; 
    ?>
     
  <table id="wrapped" border="1" align="center" cellspacing="3" cellpadding="5">
      <tr>
        <?php
         $query1=mysql_query("SELECT * FROM pc_itemcode WHERE code = '$code'");
         $row = mysql_fetch_array($query1);
         echo "<h3>$row[0] - $row[1]</h3>";
          ?>
       </tr>
    
    <tr>
      <!--th align="center" width="200px"><h3>Project Type</h3></th-->
      <th align="center" width="200px"><h3>No</h3></th>
      <th align="center" width="200px"><h3>Name of Supplier</h3></th> 
      <th align="center" width="200px"><h3>Address</h3></th> 
      <th align="center" width="200px"><h3>Telephone</h3></th> 
      <th align="center" width="200px"><h3>Fax</h3></th>
      <th align="center" width="200px"><h3>Credit</h3></th>
      <th align="center" width="200px"><h3>Value of Credit</h3></th>
      <th align="center" width="200px"><h3>File Ref</h3></th>
    </tr>
        
      <?php
      $query=mysql_query("SELECT * FROM pc_supplier WHERE code = '$code'");
      while ($row = mysql_fetch_array($query)) 
      {
      echo "<tr><td>".$row[0]."</td><td>".$row[1]."</td><td>".$row[2]."</td><td>".$row[3]."</td><td>".$row[4]."</td><td>".$row[5]."</td><td>".$row[6]."</td><td>".$row[7]."</td> 
      </tr>";
      }
      ?>
   </table>
  </textarea>
 </form>
</div>
</body>
</html>

