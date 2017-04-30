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
	$butOp=false;
	if (isset($_POST['txtpr_type_no']) && ($_POST['txtpr_type_no'] != "new")){
		$PurType =  $_POST['txtpr_type_no'];
	}else{
		//unset $PurType;
	}if(isset($_POST['txtdescription'])){
		$description = $_POST['txtdescription'];
	}else{
		$description ="";
	}if(isset($_POST['txtshort_name'])){
		$short_name = $_POST['txtshort_name'];
	}else{
		$short_name ="";
	}
	//----- Edit button------//
	
	
?>


<div id="wrapp">
	<form name = "form1" method="post" action="" >

<table align="center" class="searchResults">
		<table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
			<caption>
			<h1>Status Of PR</h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                <div class="combobox">
                <tr>
                	<?php
					$table1=mysql_query("select*from pc_shdl_task_tbl");
					while($row=mysql_fetch_array($table1))
					{
						 
						echo "<tr>";
						echo "<td>".$row[0];"</td>";
						echo "<td>".$row[1];"</td>";
						echo "</tr>";
					}
					 
					 ?>
                
            	</tr>
				<tr>
                <td>Select status of Pr </td>
                <td>:</td>
                <td> 
				<?php
				
				$values = mysql_query("SELECT * FROM pc_file_tbl");
				echo"<select name='fileno123'>";
				echo "<option >--Select File No--</option>";
										
				while ($row = mysql_fetch_array($values)) {
					$setSelect = "";
					echo "<option value='$row[1]'>$row[1]</option>";
				}
				echo"</select>";
			   ?>
           	    </td>
				</tr>
                
               
                
               
                
				</div>
                
				
			</table><br><br>
            
            <input type="submit" name="view_path" id="view" value="View Path">
             				
	</form>
    
   
    
	<br />
	<br />
     <?php 
	if(isset($_POST['view_path']))
	{
		
		$fileno123=$_POST['fileno123'];
		echo "1";
		$sql1="SELECT * FROM pc_confirm_action where file_no='$fileno123'";
		$sql2=mysql_query($sql1);
		while($row=mysql_fetch_array($sql2))
		{
			echo " -> ".$row['action_to'];
		}
	}
	
	
	?>
</div>
</body>
</html>