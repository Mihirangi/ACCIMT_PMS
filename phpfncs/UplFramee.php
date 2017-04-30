<html>
<head>
<title>Untitled Document</title>
<script language="javascript" src="../jss/jq.js">
</script>

<link href="../css/Css_file.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-left:0px">
<form name="guestForm" id="guestForm" action="<?php echo $_SERVER["PHP_SELF"];?>" method="POST" enctype="multipart/form-data">
   <i id="clck" title="අලුත් ඇමුණුම් ඇතුලත් කරන්න"></i>
                <input type="file" class="_n" name="files[]" id="heshaaaaa" accept="image/*" onChange="document.guestForm.submit(guestForm.action='UplPG.php')" multiple title="අලුත් ඇමුණුම් ඇතුලත් කරන්න"/>
                <input type="hidden" id="soe" name="soe" value="e" />
                <input id="ttttt" type="hidden" name="ttttt" value="<?php if (isset($_POST['tsttxt'])){ echo $_POST['tsttxt'];}?>"/>
<script>
$("#clck").click(function () {
$("#heshaaaaa").trigger('click');
});
</script>
</form>
</body>
</html>