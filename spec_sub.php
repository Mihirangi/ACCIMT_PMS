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

    $sql=mysql_query("INSERT INTO pc_sub_specification (equipment, main_spec, sub_spec1, sub_spec2, sub_spec3, sub_spec4, sub_spec5)  VALUES ('$subspec', '$mainspec', '$req1', '$req2', '$req3', '$req4', '$req5')");
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////

?>


<body onload = "bodyload()">
<div id="wrapp">
    <form name = "form1" method = "POST" onSubmit="return formvalidate()" action = "">
        <table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
            <caption>
                <h1>Add Specification</h1>
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
                            <td></td>
                        </tr>
                        <tr>
                            <td>Main Specification</td>
                            <td>:</td>
                            <td>
                                <?php
                                $sql = mysql_query("SELECT * FROM pc_spec_main_cat");
                                echo"<select name='mainspec' id='mainspec'>";
                                echo "<option >--Select Specification--</option>";

                                while ($row = mysql_fetch_array($sql)) {
                                    $setSelect = "";
                                    echo "<option value='$row[0]'>$row[1]</option>";
                                }
                                echo"</select>";
                                ?>
                            </td>
                        </tr>

                        <tr>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Sub Specification</td>
                            <td>:</td>
                            <td>
                                <input type="text" name="sub1"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Sub Specification</td>
                            <td>:</td>
                            <td>
                                <input type="text" name="sub2"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Sub Specification</td>
                            <td>:</td>
                            <td>
                                <input type="text" name="sub3"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Sub Specification</td>
                            <td>:</td>
                            <td>
                                <input type="text" name="sub4"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Sub Specification</td>
                            <td>:</td>
                            <td>
                                <input type="text" name="sub5"/>
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