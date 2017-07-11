<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="jss/tinymce/tinymce.full.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--<link href="https://fonts.googleapts.com/css?family=Lobster" rel="stylesheet" type="trxt/css">-->
<link href="css/Css_file.css" rel="stylesheet" type="text/css">

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
        
        var x;
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
?>
   
    
    <style >
       .dotted{
          border-bottom: 1px dashed #999;
            text-decoration: none; 

        }
    </style>
</head> 

    
<body >
    
    
    
    
<div id="wrapp">
<form method="post" action="" class="plain" id="form1" name="form1">
<table align="center" class="searchResults">
		<table width="94%" border="0" align="center" cellpadding="10" cellspacing="1" id="wrapped2">
		  <caption><h1>2. Performance Security</h1></caption>
			<tr>
				<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                     <div class="combobox">
				       <tr>
					   <th valign="top" scope="row">
                            <div align="left">Select File No </div>
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
                    <tr><td>
                        <h1 align="center"><font size="+2"><img align="center" src="images/logo.jpg" alt="logo" style="width:60px;height:60px;">Arthur C Clarke Institute for Modern Technologies</font></h1>
                    </td></tr>
                    <tr><td align="center"><u>Manufacturer’s Authorization</u></td></tr>
                    <tr><td></td></tr>
                    <tr><td>
[The Bidder shall require the Manufacturer to fill in this Form in accordance with the instructions indicated. This letter of authorization should be on the letterhead of the Manufacturer and should be signed by a person with the proper authority to sign documents that are binding on the Manufacturer.]
                    </td></tr>
                    <tr><td></td></tr>
                    
                </table>
                
                
                <table align="center" style="width:75%;height:100%;">
                    <tr><td style="width:400px"></td><td>Date:</td></tr>
                    <tr><td style="width:400px"></td><td>Bid Ref. No:
                        </td></tr>
                </table>
                <table align="center" style="width:75%;height:100%;">
                    <tr><td>WHEREAS</td></tr>

                    <tr><td>We [insert complete name of Manufacturer], who are official manufacturers of [insert type of goods manufactured], having factories at [insert full address of Manufacturer’s factories], do hereby authorize [insert complete name of Bidder] to submit a quotation the purpose of which is to provide the following Goods, manufactured by us [insert name and or brief description of the Goods], and to subsequently negotiate and supply the goods.
</td></tr>

                    <tr><td>We hereby extend our full guarantee and warranty, with respect to the Goods offered by
the above firm.
</td></tr>

<tr><td>Signed: [insert signature(s) of authorized representative(s) of the Manufacturer]</td></tr>
<tr><td>Name: [insert complete name(s) of authorized representative(s) of the Manufacturer]</td></tr>
<tr><td>Title: [insert title]</td></tr>
<tr><td>Duly authorized to sign this Authorization on behalf of: [insert complete name of Bidder]</td></tr>
<tr><td>Dated on ......... day of ................ [insert date of signing]</td></tr>

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
        
        document.getElementsByTagName("iframe")[0].contentDocument.getElementsByTagName("td")[8].innerHTML = "Bid Ref. No: "+selectedId;
       
    }
    function myFunction() {
        var selectedName = $("#myName").val();
        $("#myId").val(selectedName);
        
        var selectedId = $("#myId").val();
        document.getElementsByTagName("iframe")[0].contentDocument.getElementsByTagName("td")[8].innerHTML = "Bid Ref. No: "+selectedId;
    }
        
        
</script>
</body>
</html>

