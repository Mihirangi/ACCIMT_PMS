<?php
$delfile=$_GET['s'];
if (unlink($delfile))
{
	echo "Attachment File Was Deleted";
}
else
{
	echo "Something Went Wrong, Attachment File Was Not Deleted";
}
?>