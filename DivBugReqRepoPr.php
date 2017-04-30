<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Districts</title>
<?php
session_start();
if (!isset($_SESSION['proclogin_type']))
{
header('Location: lgin.php');
}
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations();
$fncs= new FRMOperations();
$divitionlist="new";
$BudYerLst="new";

if (isset($_POST['divitionlist']))
{
	$divitionlist=$_POST['divitionlist'];
}

if (isset($_POST['BudYerLst']))
{
	$BudYerLst=$_POST['BudYerLst'];
}
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
<body onLoad="sessSet('DivBugReqRepoPr.php')" onClick="mytstfunc()">
<div id="wrapp">
 <form id="form1" name="form1" method="post" action="" >
  <table id="wrapped2" align="center" width="95%"  border="0" cellpadding="10" cellspacing="1">
   <caption>
   <h1>Buget Request From Divisions</h1>
   </caption>
   <tr>
    <td><table border="0" align="center">
      <tr>
       <th align="left">Divition</th>
       <th>:</th>
       <td><select name="divitionlist" id = "divitionlist" onChange="document.form1.submit()" >
	   <?php 
	   echo'<option value="new">Please Select a Divition</option>';
		$ress = $db->Exe_Qry("select * from division_tbl");
		while ($roww = $db->Next_Record($ress))
	    {
	        echo "<OPTION VALUE=".$roww["DivisionCode"].">".$roww["Division"]."</OPTION>";
		}
	   ?>
       <script language="javascript" type="text/javascript">
document.getElementById("divitionlist").value="<?php  echo $divitionlist;?>";
</script>
       </select></td>
      </tr>
      <tr>
       <th align="left">
         Budget Year</th>
       <th>:</th>
       <td><?php
	   echo'<select name="BudYerLst" id = "BudYerLst" onChange="document.form1.submit()">
	   <option value="new">Select a Year</option>';
	   $ress=($db->Exe_Qry("SELECT DISTINCT budg_year FROM div_budg_tbl;"));
	   while ($roww = $db->Next_Record($ress))
	   {
		  echo'<option value="'.$roww["budg_year"].'">'.$roww["budg_year"].'</option>'; 
	   }
	   echo'</select>'; 
	  if (isset($BudYerLst))
	   {?>
		<script language="javascript" type="text/javascript">
		document.getElementById("BudYerLst").value="<?php echo "$BudYerLst";?>";
		</script>
		 <?php
	   }
	   ?>
       </td>
      </tr>
   </table></td>
   </tr>
  </table>
  <br />
  <br />
  <table id="wrapped" align="center" cellspacing="3" cellpadding="5">
   <tr>
    <th>
    
    <div id="editordiv">
    <textarea class="t2" name="print_area" id="print_area" cols="45" rows="30"><table id="tbl_district" border="1"  align="center" style="font-size:16px;" >
    <tr>
    <th>Division</th>
    <th>Budget Year</th>
    <th>Budget Code</th>
    <th>Description</th>
    <th>Req. Amount</th>
    <th>Appr. Amount</th>
    </tr>
    <?php
	if($divitionlist=="new" && $BudYerLst=="new")
	{
		$ress=($db->Exe_Qry("SELECT * FROM div_budg_tbl;"));
	}
	else if($divitionlist!="new" && $BudYerLst=="new")
	{
		$ress=($db->Exe_Qry("SELECT * FROM div_budg_tbl WHERE div_code='$divitionlist';"));
	}
	else if($divitionlist=="new" && $BudYerLst!="new")
	{
		$ress=($db->Exe_Qry("SELECT * FROM div_budg_tbl WHERE budg_year='$BudYerLst';"));
	}
	else if($divitionlist!="new" && $BudYerLst!="new")
	{
		$ress=($db->Exe_Qry("SELECT * FROM div_budg_tbl WHERE div_code='$divitionlist' AND budg_year='$BudYerLst';"));
	}
	while ($roww = $db->Next_Record($ress))
	    {
			$rrrr=($db->Exe_Qry("SELECT Division FROM division_tbl WHERE DivisionCode='".$roww["div_code"]."';"));
			$rrrrr = $db->Next_Record($rrrr);
	        echo "<tr>
			<th>".$rrrrr["Division"]."</th>
			<th>".$roww["budg_year"]."</th>
			<th>".$roww["budg_code"]."</th>
			<th>".$roww["user_descrip"]."</th>
			<th>".$roww["req_amount"]."</th>
			<th>".$roww["appr_amount"]."</th>
			</tr>";
		}
	?>
	</table></textarea>
    </div>
    </th>
   </tr>
  </table>
 </form>
 <script language="javascript" type="text/javascript">
				document.getElementById("BudCodeLst").value = "<?php  echo $BudCodeLst;?>";
				if (document.getElementById("BudCodeLst").value != "<?php  echo $BudCodeLst;?>" || document.getElementById("BudCodeLst").value=="")
				{
					document.getElementById("BudCodeLst").value= "new";
					document.getElementById("Descript").value= "";
					document.getElementById("ReqAmunt").value= "";
					document.getElementById("btnAdd").disabled=false;
					document.getElementById("btnEdi").disabled=true;
					document.getElementById("btnDel").disabled=true;
				}
		</script>
 <br />
 <br />
</div>
</body>
</html>
