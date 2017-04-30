<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Home</title>
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<link href="css/dropdown/dropdown.css" media="screen" rel="stylesheet" type="text/css" />
<link href="css/dropdown/themes/mtv.com/default.ultimate.css" media="screen" rel="stylesheet" type="text/css" />





	<?php
    session_start();
    require_once ("phpfncs/Database.php");
    require_once ("phpfncs/Funcs.php");
    $db =new DBOperations();
    $fncs= new FRMOperations();
    ?>
	
<link rel="stylesheet" href="jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="jquery-1.12.4.js"></script>
  <script src="jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#dialog-message" ).dialog({
      modal: true,
      buttons: {
        Ok: function() {
          $( this ).dialog( "close" );
        }
      }
    });
  } );
  </script>
<?php
session_start();
if (isset($_SESSION['procdatapg']))
{
	$dpg=$_SESSION['procdatapg'];
}
else
{
	$dpg='lgin.php';
}
require_once ("phpfncs/Funcs.php");
$db =new DBOperations("attend_db");
$fncs= new FRMOperations();
?>
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="jss/jq.js">
</script>
</head>
<body onLoad="startTime()" id="mainfrmbdy">
<?php $fncs->HeaddernMenu(@$_SESSION['proclogin_type']);?>
<iframe src="<?php echo $dpg;?>" frameborder="0" id="datafrm" name="datafrm" style="min-height:1000px" width="100%" />
<br>
<br>
</body>
</html>