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
$butOp=false;
?>

<html>
<head>
	<title>Budget Details</title>
   
    <link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
<?php
	

	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//----- Edit button------//
	   
    
		if (isset($_POST['btnadd'])){
            $equip=$_POST['equip'];
			
			$sql=mysql_query("INSERT INTO pc_spec_equipment(equip_desc) VALUES ('$equip')");
        }
////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
?>


<body onload = "bodyload()">
<div id="wrapp">
	<form name = "form1" method = "POST" onSubmit="return formvalidate()" action = "">
    <table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
   <caption>
      <h1>Add Specification Equipments</h1>
   </caption>
   <tr>
    <th>
	<table align="center"> 
    	
        <tr>
            <td>Equipments</td>
            <td>:</td>
            <td>
                <input type="text" name="equip"/>
            </td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>
                <input type="submit" id="btnadd" name="btnadd" value="Add"/>
            </td>
        </tr>
	</table>
    </th>
    </tr>
    </table><br>
<br>
    
        
        <script>
			document.getElementById('txtcustomer_id').value="<?php echo $budgetNo;?>";
			if (document.getElementById("txtcustomer_id").value != "<?php  echo $budgetNo;?>" || document.getElementById("txtcustomer_id").value==""){
					document.getElementById("txtcustomer_id").value= "new";
					document.getElementById("txtdescription").value= "";
					document.getElementById("txtdsdescription").value= "";
					document.getElementById("txtbudcode").value= "";
					document.getElementById("budbtnnew").disabled=false;
					document.getElementById("budbtnedit").disabled=true;
					document.getElementById("budbtndel").disabled=true;
			}
		</script>
          
	</form>
	
    </div>
</body>
</html>