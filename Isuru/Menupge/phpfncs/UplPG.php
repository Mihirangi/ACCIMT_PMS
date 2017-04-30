<?php
$flst="";
$y=sizeof($_FILES["files"]["name"]);
$s = $_POST['soe'];
if ($s=="s")
{
	$ppp = "../sinuploads/";
	$bkfrm = "UplFrames.php";
}
else
{
	$ppp= "../enguploads/";
	$bkfrm = "UplFramee.php";
}
for ($x=0; $x<$y; $x++)
{
	if ((($_FILES["files"]["type"][$x] == "image/gif") || ($_FILES["files"]["type"][$x] == "image/jpeg") || ($_FILES["files"]["type"][$x] == "image/jpg") || ($_FILES["files"]["type"][$x] == "image/pjpeg") || ($_FILES["files"]["type"][$x] == "image/x-png") || ($_FILES["files"]["type"][$x] == "image/png")) && ($_FILES["files"]["size"][$x] < 104857600))
	{
	  if ($_FILES["files"]["error"][$x] > 0) 
	  {
		$flst.= "Error : " . $_FILES["files"]["error"][$x] . ",";
	  } 
	  else
	  {
		if (file_exists($ppp.$_FILES["files"]["name"][$x])) 
		{
		  $flst.= $_FILES["files"]["name"][$x] . " already Uploaded. Please Rename and Upload This File Or Just Select From Uploaded Files,";
		}
		else
		{
		  move_uploaded_file($_FILES["files"]["tmp_name"][$x],$ppp.$_FILES["files"]["name"][$x]);
		  $flst.= $_FILES["files"]["name"][$x]. ",";
		}
	  }
	}
	else
	{
		$flst.= $_FILES["files"]["name"][$x]." is an invalid file type or larger than 100MB,";
	}
}
?>
<form name="tstfrm" id="tstfrm" action="<?php echo $bkfrm; ?>" method="POST">
<input type="text" name="tsttxt" value="<?php echo $flst; ?>" />
</form>
<script>
document.tstfrm.submit()
</script>