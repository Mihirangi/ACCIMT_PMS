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
            $mainspec=$_POST['mainspec'];
            $subspec=$_POST['subspec'];
            $req1=$_POST['sub1'];
            $req2=$_POST['sub2'];
            $req3=$_POST['sub3'];
            $req4=$_POST['sub4'];
            $req5=$_POST['sub5'];
            
			$sql=mysql_query("INSERT INTO pc_sub_specification (equipment, main_spec, sub_spec1, sub_spec2, sub_spec3, sub_spec4, sub_spec5)  VALUES ('$mainspec', '$subspec', '$req1', '$req2', '$req3', '$req4', '$req5')");
        }
////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
?>


<body onload = "bodyload()">
<div id="wrapp">
	<form name = "form1" method = "POST" onSubmit="return formvalidate()" action = "">
    <table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
   <caption>
      <h1>Sub Specification Requirements</h1>
   </caption>
   <tr>
    <th>
	<table align="center">
    	 <tr>
            <td>PR No</td>
            <td>:</td>
            <td>
                <?php
                    $sql = mysql_query("SELECT * FROM pc_pr_dtls_tbl");
                    echo"<select name='prno' id='prno'>";
                    echo "<option >--Select Pr No--</option>";

                    while ($row = mysql_fetch_array($sql)) {
                        $setSelect = "";
                        echo "<option value='$row[1]'>$row[1]</option>";
                    }
                    echo"</select>";
                ?> 
            </td>
        </tr>
        
        <tr>
            <td>Equipment</td>
            <td>:</td>
            <td>
                <?php
                    $sql = mysql_query("SELECT * FROM pc_spec_equipment");
                    echo"<select name='subspec' id='subspec'>";
                    echo "<option >--Select Equipment--</option>";

                    while ($row = mysql_fetch_array($sql)) {
                        $setSelect = "";
                        echo "<option value='$row[0]'>$row[1]</option>";
                    }
                    echo"</select>";
                ?> 
            </td>
        </tr>
        <tr>
        	<td>
            Technical Specifications
            </td>
            <td>:</td>
        </tr><tr>
        	<td>
            General Specifications
            </td>
            <td>:</td>
        </tr>
        
        <tr>
            <td></td>
        </tr>
        
        <tr>
            <td></td>
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