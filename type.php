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

<script>
function buttonfun() {
	var  type_id=document.getElementById("txttype_id").value;	
	
	//alert(pr_no);
	
	if ( 	type_id=="--Select--") {
		alert("Select type_id")
    }
	else{
		showHint(type_id);
	}
}

var xmlhttp;
function GetXmlHttpObject()
{
	if (window.XMLHttpRequest)
	{
		// code for IE7+, Firefox, Chrome, Opera, Safari
		return new XMLHttpRequest();
	}
	if (window.ActiveXObject)
	{
		// code for IE6, IE5
		return new ActiveXObject("Microsoft.XMLHTTP");
	}
	return null;
}

function showHint(str)
{
	if (str.length==0)
	{
		document.getElementById("txtHint").value="";
		return;
	}
	xmlhttp=GetXmlHttpObject();
	if (xmlhttp==null)
	{
		alert ("Your browser does not support XMLHTTP!");
		return;
	}	
	var url="type_ajax.php";
	url=url+"?q="+str;
	
	xmlhttp.onreadystatechange=stateChanged;
	xmlhttp.open("GET",url,true);
	xmlhttp.send(null);
}


function stateChanged()
{
	if (xmlhttp.readyState==4)
	{
		var response=xmlhttp.responseText;
		//alert(response);// remove this later

	   	var update = new Array();

		if(response.indexOf('|$|'!= -1)) {
				update = response.split('|$|');
				
				document.getElementById("txttype_desc").value=update[1];
				
			
			
		}else{
				
		}
	}
}

</script>
</head>
	<body onLoad="sessSet('type.php')" >
    
	<?php
	
	
	require_once ("phpfncs/DP_Database.php");
$db = new DBOperations("dp");

	
	//----- Delete button------//

  if(isset($_POST['btndelete'])){
     $type_id = $_POST['txttype_id'];
	 $db->Exe_Qry("DELETE FROM pro_dtl_type  WHERE type_id ='$type_id'");
}

/////////////////////////////////////////////////////

	//----- Add button------//
	
		if (isset($_POST['btnadd']))
		{
		
	    //$pr_type_no = $_POST['txtdescription'];
		$description = $_POST['txttype_desc'];
		
		
		
		$db->Exe_Qry("INSERT INTO pro_dtl_type SET type_desc='$description'");		

}

///////////////////////////////////////////////////////

	//----- Edit button------//
	
		if (isset($_POST['btnEdit']))
		{
		
		 $description=$_POST['txttype_desc'];
		  $type_id = $_POST['txttype_id'];
		 $db->Exe_Qry("UPDATE pro_dtl_type  SET type_desc='$description' WHERE type_id='$type_id'");
	}
?>


<div id="wrapp">
	<form method="post" action="" onSubmit="return validate_form(this);" class="plain">

<table align="center" class="searchResults">
		<table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
			<caption>
			<h1>Project Type</h1></caption>
				<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                <div class="combobox">
				<tr>
					<th valign="top" scope="row"><div align="left">Type ID</div></th>
					<th valign="top">:</th>

							<td align="left">
							<select name = "txttype_id" id = "txttype_id" onChange = "buttonfun()">
            <?php
				mysql_connect('localhost', 'root', '');
				mysql_select_db('dp');
				
				$values = mysql_query("SELECT type_id FROM pro_dtl_type");
				echo "<option >--New Entry--</option>";
										
				while ($row = mysql_fetch_array($values)) {
					$setSelect="";
					echo "<option value='$row[0]' $setSelect>$row[0]</option>";
				}
			?>
			</td>
    </tr>
                            </select>
						

							</td>
				</tr>
				</div>
				<tr>
					<th valign="top" scope="row"><div align="left">Description</div></th>
					<th valign="top">:</th>
					<td align="left">
                    
					<input name="txttype_desc" id="txttype_desc" type="text"></td>
				</tr>
				
				
					</table></th>
				</tr>
			
			<br/>
			<br/>
			<tr> 
				<td class="tbrow" colspan="3" >
				<table width="100%" >
					<tr > 
						<td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC" size="1"> 
							<input name="btnadd" type="submit" id="btnadd" value="Add" onClick="myfunction()">
							</font></div>
						</td>
					<td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC"> 
							<input name="btnEdit" type="submit" value="Edit" onClick="document.location.href ='p.php?type_id=<?php echo $row['type_id'] ?>'" class="button" style="width:60px;"/>
							</font></div>
			
						   <td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC">
						   <input name="btndelete" id="btndelete" type="submit" value="Delete" class="button" onClick="document.location..href ='p.php?cmd=delete&type_id=<?php echo $row['type_id'] ?>'" style="width:60px;" />
							</font></div>
						</td>
				</tr>  
  
						
						
				
				</table>
				</td>
			</tr>
			</table>
<br/>
			
			<table id="wrapped" align="center" cellspacing="3" cellpadding="5" border="0">
			<tr>
				<th>
				
				
				<?php 
				
				//-------------- Display the data in the Usage Table-----------------------//
					$result1 = mysql_query("SELECT * FROM pro_dtl_type ORDER BY type_id");
					if(mysql_num_rows($result1)>0){
					if ($myrow = mysql_fetch_array($result1)) {

					// display list if there are records to display
					echo '<br>';
					echo '<table id = "table2" align="center" border="1" cellspacing="0" cellpadding="0" width=50% >'."\n";
					echo '<tr></tr>';
					echo '<tr height="30">';   //display headers
					echo '<td class="tbrow" ><div align="center">Type ID</td>';
					echo '<td class="tbrow" ><div align="center">Description</td>';
					
					echo "</tr>\n";

					//display list if there are records to display
					$i=1;
					do {  
						// row colors
						if ($i % 2 != 0) # An odd row 
							$bla = "#FFFFFF"; 
						else # An even row 
							$bla = "#FFFFFF"; 
				?>
	 
				<tr>
                	<td class="" ><?php echo $myrow['type_id']; ?></td> 
					<td class="" ><?php echo $myrow['type_desc']; ?></td>  
					
				<?php 
					$i++;
					} 
					while ($myrow = mysql_fetch_array($result1));
					echo '</table>';
					}
					}
					else{
						echo "No Result to Display";
					}
				?>
				
				</div>
				</th>
			</table>
								
	</form>
	<br />
	<br />
</div>
</body>
</html>