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
	   if(isset ($_POST['subspec']) && ($_POST['subspec'] != "new" )){
            $equip=$_POST['subspec'];
            $prno=$_POST['prno'];
        }
    
    
		if (isset($_POST['btnadd'])){
            $prno=$_POST['prno'];
            $subspec=$_POST['subspec'];
            $tec=$_POST['tec'];
            $gen=$_POST['gen'];
            
			mysql_query("INSERT INTO pc_create_spec (pr_no, equipment, technical, general) VALUES ('$prno','$subspec', '$tec','$gen')");
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
            <td>Equipment</td>
            <td>:</td>
            <td>
                <?php
                    $sql = mysql_query("SELECT * FROM pc_spec_equipment");
                    echo"<select name='subspec' onChange='this.form.submit()' id='myId'>";
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
            <td>PR No</td>
            <td>:</td>
            <td>
                <?php
                    $sql = mysql_query("SELECT * FROM pc_pr_dtls_tbl");
                    echo"<select name='prno'>";
                    echo "<option >--Select Pr No--</option>";

                    while ($row = mysql_fetch_array($sql)) {
                        echo "<option value='$row[1]'>$row[1]</option>";
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
            <td>
                <?php
                    $equip=$_POST['subspec'];
                    $sql1=mysql_query("SELECT * FROM pc_sub_specification WHERE equipment='$equip' and main_spec='1'");
                    $row1 = mysql_fetch_array($sql1);
                ?>
                    <textarea name="tec" cols="20" rows="5"><?php echo $row1[3]; echo "\n".$row1[4]; echo "\n".$row1[5]; echo "\n".$row1[6]; echo "\n".$row1[7];?></textarea>
            </td>
        </tr>
        <tr></tr>
        <tr>
        	<td>
            General Specifications
            </td>
            <td>:</td>
            <td>
                <?php
                    $equip=$_POST['subspec'];
                    $sql2=mysql_query("SELECT * FROM pc_sub_specification WHERE equipment='$equip' and main_spec='2'");
                    $row2 = mysql_fetch_array($sql2);
                ?>
                    <textarea name="gen" cols="20" rows="5"><?php echo $row2[3]; echo "\n".$row2[4]; echo "\n".$row2[5]; echo "\n".$row2[6]; echo "\n".$row2[7];?></textarea>
            </td>
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
			document.getElementById('myId').value="<?php echo $equip;?>";
            if(document.getElementById('myId').value!="<?php echo $equip;?>" || document.getElementById('myId').value==""){
                document.getElementById('myId').value="new";
                document.getElementById('prno').value="<?php echo $prno;?>";
            }
		</script>
          
	</form>
	
    </div>
</body>
</html>