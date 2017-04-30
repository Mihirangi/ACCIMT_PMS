 <!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Purchase Description</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js">
</script>


</head>
	<body onLoad="sessSet('pur_type.php')" >
    
	<?php
	require_once ("phpfncs/Database.php");
	require_once ("phpfncs/Funcs.php");
	$db = new DBOperations("attend_db");
	
    if (isset($_POST['slctname']) && ($_POST['slctname'] != "new")){
		$Ch = $_POST['slctname']; 
            //echo $Ch;

            $select1=mysql_query("select*from pc_confirm_action where file_no='$Ch'");
            $count = mysql_num_rows($select1);// counting table rows


        if($count==0)
        {
            $val=1;
            $vall=$val+1;
            //echo $vall;
        }	
		else
		{
			
			$select2=mysql_query("SELECT MAX(confirm_id) from pc_confirm_action where file_no='$Ch'");
			$row2=mysql_fetch_array($select2);
			$confirmid=$row2[0];
			//echo $confirmid;
			
			$select3=mysql_query("SELECT action_to from pc_confirm_action where confirm_id='$confirmid';");
			$row3=mysql_fetch_array($select3);
			$val=$row3[0];
			$vall=$val+1;
			//echo $val;
		}
    }
	

	//----- Add button------//
	
		if (isset($_POST['submit_path'])){
                
                $fileno=$_POST['fileno'];
                $actionfrom=$_POST['actionfrom'];
                $actionto=$_POST['mainactionto'];
				//$subactionto=$_POST['subactionto'];
                $minute=$_POST['minute'];
                
            
                
                mysql_query("INSERT INTO pc_confirm_action (file_no, action_from,action_to, minute) VALUES ('$fileno', '$actionfrom' ,'$actionto', '$minute')");
		}

	
?>


<div id="wrapp">
	<form name = "form" id="form" method="post" action="action_path.php">

<table align="center" class="searchResults">
		<table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
			<caption>
			<h1>Select File No</h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                <div class="combobox">
                
				<tr>
                <td>Select File No </td>
                <td>:</td>
                <td> 
				<?php
				
				$values = mysql_query("SELECT * FROM pc_file_tbl");
				echo"<select name='slctname' onChange='this.form.submit()' id='slctname'>";
				echo "<option >--Select File No--</option>";
										
				while ($row = mysql_fetch_array($values)) {
					$setSelect = "";
					echo "<option value='$row[1]'>$row[1]</option>";
				}
				echo"</select>";
                ?> 
                    
            </td>
            
				</tr>
                <tr>
                    
                </tr>
                
                <tr>
               	<td>Action From </td>
                <td>:</td>
                <!--------------------------------get dropdown value------------------------------->
        <?php
//        if($_SERVER['REQUEST_METHOD'] == 'POST') {
//
//
//            $Ch = $_POST['slctname']; 
//            //echo $Ch;
//
//            $select1=mysql_query("select*from pc_confirm_action where file_no='$Ch'");
//            $count = mysql_num_rows($select1);// counting table rows
//
//
//        if($count==0)
//        {
//            $val=1;
//            $vall=$val+1;
//            //echo $vall;
//        }	
//		else
//		{
//			
//			$select2=mysql_query("SELECT MAX(confirm_id) from pc_confirm_action where file_no='$Ch'");
//			$row2=mysql_fetch_array($select2);
//			$confirmid=$row2[0];
//			//echo $confirmid;
//			
//			$select3=mysql_query("SELECT action_to from pc_confirm_action where confirm_id='$confirmid';");
//			$row3=mysql_fetch_array($select3);
//			$val=$row3[0];
//			$vall=$val+1;
//			//echo $val;
//		}
//	
//	
// }
    ?>
                <td><input type="text" name="actionfrom" id="actionfrom"  value="<?php echo $val;?>"></td>
                </tr>
                
                 <tr>
               	<td>Main Action To</td>
                <td>:</td>
                <td>
                    <?php

                    $values = mysql_query("SELECT * FROM pc_shdl_task_tbl");
                    echo"<select name='mainactionto' value=''>";
                    echo "<option>--Select main action--</option>";

                    while ($row = mysql_fetch_array($values)) {
                        $setSelect = "";
                        echo "<option value='$row[0]'>$row[0] - $row[1]</option>";
                    }
                    echo"</select>";
                    ?>
                </td>
                </tr>
                    
                <tr>
               	<td>Sub Action To</td>
                <td>:</td>
                <td>
                    <?php

                    $values = mysql_query("SELECT * FROM pc_sub_action_tbl");
                    echo"<select name='subactionto' value=''>";
                    echo "<option>--Select sub action--</option>";

                    while ($row = mysql_fetch_array($values)) {
                        $setSelect = "";
                        echo "<option value='$row[0]'>$row[0] - $row[1]</option>";
                    }
                    echo"</select>";
                    ?>
                </td>
                </tr>
                
                <tr>
                    <td>Minute</td>
                    <td>:</td>
                    <td><textarea name="minute" id="minute" cols="20" rows="4"></textarea></td>
                </tr>
                    
                <tr>
                    <td><input type="hidden" name="fileno" id="fileno"  value="<?php echo $Ch;?>"</td>
                </tr>
                
				</div>
                
				
			</table><br><br>
            
            <input type="submit" name="submit_path" id="submit_path">
                
			<script>
                document.getElementById('slctname').value="<?php echo $Ch;?>";
                if (document.getElementById("slctname").value != "<?php  echo $Ch;?>" || document.getElementById("slctname").value==""){
                        document.getElementById("slctname").value= "new";
                        document.getElementById("actionfrom").value= "";
                        document.getElementById("actionto").value= "";
                        document.getElementById("submit_path").disabled=false;
                }
		  </script>
                        
	</form>
	<br />
	<br />
</div>
</body>
</html>