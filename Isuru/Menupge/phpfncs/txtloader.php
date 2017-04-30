<?php
$p = $_GET['p'];
$q = $_GET['q'];
require_once("Database.php");
$db=new DBOperations();
$fld=substr($q,0,3)."_Code";
$qry = "SELECT * FROM $q WHERE $fld='$p';";
$user_data=$db->Next_Record($db->Exe_Qry($qry));
			


echo '<tr>
       <td><input name="engtxt" type="text" id="engtxt" size="75" value="'.$user_data['1'].'" /></td>
      </tr>
      <tr>
       <td><input name="sintxt" style="font-size:15px;" type="text" id="sintxt" onKeyDown="unico(this)" onKeyUp="unico(this)" size="65" value="'.$user_data['2'].'" /></td>
      </tr>';
	  $db->Disconnect_from_DB();
?>