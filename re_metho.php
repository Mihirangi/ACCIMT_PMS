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
	var  pr_type_no=document.getElementById("txtpr_type_no").value;	
	
	//alert(pr_no);
	
	if ( 	pr_type_no=="--Select--") {
		alert("Select pr_type_no")
    }
	else{
		showHint(pr_type_no);
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
	var url="sp.php";
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
				
				
				//document.getElementById("pr_type_no").value=update[1];
				document.getElementById("txtdescription").value=update[1];
				document.getElementById("txtshort_name").value=update[2];
			
			
		}else{
				// The format is not as per what you thought
				// S do some procesing if you need
		}
	}
}

</script>
</head>
	<body onLoad="sessSet('pur_type.php')" >
    
	<?php
	
	
	require_once ("phpfncs/Database.php");
$db = new DBOperations("attend_db");

	
	//----- Delete button------//

  


/////////////////////////////////////////////////////

	//----- Add button------//
	
		if (isset($_POST['savebtn']))
		{
			$file_no=$_POST['txtfile_no'];
			$pr_method=$_POST['txtpr_method'];
			$db->Exe_Qry("update file_tbl set pro_id='$pr_method' where file_no='$file_no'");
				

}

///////////////////////////////////////////////////////

	//----- Edit button------//
	
	
?>



	<body onLoad="sessSet('file_pro_meth.php')">
    <div id="wrapp">
<form action="" name="frm1" method="post">
<div id="wrapp">
          
         <br />
<br />

<table  border="0" align="center" id="wrappedh">
  <tr>
  <th height="150">
  <table width="100%" border="0" align="center" >
  <tr>
    <td width="50%" height="45" align="left">File No</td>
    
    <td width="50%" align="left"><select name = "txtfile_no" id = "txtfile_no">
    
            <?php
				
				$values =$db->Exe_Qry("SELECT file_no FROM file_tbl ");
				echo "<option>--Please Select File NO--</option>";
										
				while ($row = mysql_fetch_array($values)) {
					
					echo "<option value='$row[0]'>$row[0]</option>";
				}
			?>
            </select></td>
  </tr>
  <tr>
    <td height="51" align="left">Procurement Methord</td>
   
    <td align="left"><select name = "txtpr_method" id = "txtpr_method">
            <?php
				
				$values =$db->Exe_Qry("SELECT pro_id,description FROM procurement_method_tbl");
				echo "<option >-- Please Select Procurement Methord--</option>";
										
				while ($row = mysql_fetch_array($values)) {
					$setSelect = "";
					echo "<option value='$row[0]'>$row[1]</option>";
				}
			?>
            </select></td>
  </tr>
  <tr>
    <th colspan="2"><br />
<input type="submit"  name="savebtn"/></th>
    </tr>
    </table>
</th>
  </tr>
</table>

</form>
			
			<br/>
			<br/>
			<tr> 
				<td class="tbrow" colspan="3" >
				<table width="100%" >
					<tr > 
						<td class="tbrow" width="22%">&nbsp;</td>
					    <td class="tbrow" width="22%">
		         <td class="tbrow" width="22%">&nbsp;</td>
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
						$result1 = mysql_query("SELECT f.file_no, p.description FROM file_tbl f, procurement_method_tbl p where f.pro_id!='0' and f.pro_id=p.pro_id");
					if(mysql_num_rows($result1)>0){
					if ($myrow = mysql_fetch_array($result1)) {

					// display list if there are records to display
					echo '<br>';
					echo '<table id = "table2" align="center" border="1" cellspacing="0" cellpadding="0" width=50% >'."\n";
					echo '<tr></tr>';
					echo '<tr></tr>';
					echo '<tr height="30">';   //display headers
					echo '<td class="tbrow" ><div align="center">File NO</td>';
					echo '<td class="tbrow" ><div align="center">Procurement Method</td>';
					
					
					echo "</tr>";

					//display list if there are records to display
					$i=1;
					do {  
						
				?>
	 
				<tr>
                	<td class="" ><?php echo $myrow['0']; ?></td> 
					<td class="" ><?php echo $myrow['1']; ?></td>  
					
					
					
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