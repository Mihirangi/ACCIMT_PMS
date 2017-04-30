<?php
	if (!isset($_SESSION['proclogin_type']))
{
header('Location: lgin.php');
}
require_once ("phpfncs/Database.php");
require_once ("phpfncs/Funcs.php");
$db =new DBOperations();
$fncs= new FRMOperations();
?>

<html>
<head>
	<title>Budget Details</title>
	<script type="text/javascript">
	
		function bodyload()
		{
			var ajaxRequest;  // The variable that makes Ajax possible!
	
				try{
					// Opera 8.0+, Firefox, Safari
					ajaxRequest = new XMLHttpRequest();
				} catch (e){
				// Internet Explorer Browsers
					try{
						ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
					} catch (e) {
						try{
							ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
						} catch (e){
						// Something went wrong
							alert("Your browser broke!");
							return false;
						}
					}
				}
				// Create a function that will receive data sent from the server
				ajaxRequest.onreadystatechange = function(){
				if(ajaxRequest.readyState == 4){
				//alert (ajaxRequest.responseText);
					document.getElementById('selectbud').innerHTML = ajaxRequest.responseText;
					tablelist();
				}
				}
				ajaxRequest.open("GET", "Test/selectfullpge.php?", true);
				ajaxRequest.send(null); 
		}
		
		function tablelist()
		{
			var ajaxRequest;  // The variable that makes Ajax possible!
	
				try{
					// Opera 8.0+, Firefox, Safari
					ajaxRequest = new XMLHttpRequest();
				} catch (e){
				// Internet Explorer Browsers
					try{
						ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
					} catch (e) {
						try{
							ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
						} catch (e){
						// Something went wrong
							alert("Your browser broke!");
							return false;
						}
					}
				}
				// Create a function that will receive data sent from the server
				ajaxRequest.onreadystatechange = function(){
				if(ajaxRequest.readyState == 4){
				//alert (ajaxRequest.responseText);
					document.getElementById('budgetresult').innerHTML = ajaxRequest.responseText;
				}
				}
				ajaxRequest.open("GET", "Test/budgetList.php?", true);
				ajaxRequest.send(null); 
		}
		
		
		function selectr(){
			var result = document.getElementById("BudgetNo").value;		
			if(result == "new"){
				document.getElementById('budbtnnew').disabled = false;
				document.getElementById('budbtnedit').disabled = true;
				document.getElementById('budbtndel').disabled = true;
				document.getElementById('txtdescription').value = "";
				document.getElementById('txtbudcode').value = "";
				document.getElementById('txtsdescription').value = "";
			}
			else{
				document.getElementById('budbtnnew').disabled = true;
				document.getElementById('budbtnedit').disabled = false;
				document.getElementById('budbtndel').disabled = false;
				//document.getElementById('txtdesignation').value = result;
		
				var ajaxRequest;  // The variable that makes Ajax possible!
	
				try{
					// Opera 8.0+, Firefox, Safari
					ajaxRequest = new XMLHttpRequest();
				} catch (e){
				// Internet Explorer Browsers
					try{
						ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
					} catch (e) {
						try{
							ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
						} catch (e){
						// Something went wrong
							alert("Your browser broke!");
							return false;
						}
					}
				}
				// Create a function that will receive data sent from the server
				ajaxRequest.onreadystatechange = function(){
				if(ajaxRequest.readyState == 4){
				//alert (ajaxRequest.responseText);
					document.getElementById('tbl_bud').innerHTML = ajaxRequest.responseText;
				}
				}
				ajaxRequest.open("GET", "Test/selectpge.php?jj="+result, true);
				ajaxRequest.send(null); 
			}
		}
		
		function createbtn()
		{
			var type = "a";
			var result = document.getElementById("BudgetNo").value;	
			var descrip = document.getElementById("txtdescription").value;
			var sdescrip = document.getElementById("txtsdescription").value;
			var budcode = document.getElementById("txtbudcode").value;
			if((descrip == "") || (sdescrip == "") ||(budcode == ""))
			{
				alert("description must be filled out");
				return false;
			}
			else
			{
				var ajaxRequest;  // The variable that makes Ajax possible!
	
				try{
					// Opera 8.0+, Firefox, Safari
					ajaxRequest = new XMLHttpRequest();
				} catch (e){
				// Internet Explorer Browsers
					try{
						ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
					} catch (e) {
						try{
							ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
						} catch (e){
						// Something went wrong
							alert("Your browser broke!");
							return false;
						}
					}
				}
				// Create a function that will receive data sent from the server
				ajaxRequest.onreadystatechange = function(){
				if(ajaxRequest.readyState == 4){
				//alert (ajaxRequest.responseText);
					//document.getElementById('txtdesignation').value = ajaxRequest.responseText;
					alert("Success Saving Record");
					bodyload();
					document.getElementById('txtdescription').value = "";
					document.getElementById('txtsdescription').value = "";
					document.getElementById('txtbudcode').value = "";
				}
				}
				ajaxRequest.open("GET", "Test/querypge.php?jj="+result+"&qq="+type+"&descrip="+descrip+"&sdescrip="+sdescrip+"&budcode="+budcode, true);
				ajaxRequest.send(null);
			}
		}
		
		function editbtn()
		{
			var type = "b";
			var result = document.getElementById("BudgetNo").value;	
			var descrip = document.getElementById("txtdescription").value;
			var sdescrip = document.getElementById("txtsdescription").value;
			var budcode = document.getElementById("txtbudcode").value;
			if((descrip == "") || (sdescrip == "") || (budcode == ""))
			{
				alert("Description must be filled out");
				return false;
			}
			else
			{
				var ajaxRequest;  // The variable that makes Ajax possible!
	
				try{
					// Opera 8.0+, Firefox, Safari
					ajaxRequest = new XMLHttpRequest();
				} catch (e){
				// Internet Explorer Browsers
					try{
						ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
					} catch (e) {
						try{
							ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
						} catch (e){
						// Something went wrong
							alert("Your browser broke!");
							return false;
						}
					}
				}
				// Create a function that will receive data sent from the server
				ajaxRequest.onreadystatechange = function(){
				if(ajaxRequest.readyState == 4){
				//alert (ajaxRequest.responseText);
					//document.getElementById('txtdesignation').value = ajaxRequest.responseText;
					alert("Success Saving Record");
					bodyload();
					document.getElementById('txtdescription').value = "";
					document.getElementById('txtsdescription').value = "";
					document.getElementById('txtbudcode').value = "";
				}
				}
				ajaxRequest.open("GET", "Test/querypge.php?jj="+result+"&qq="+type+"&descrip="+descrip+"&sdescrip="+sdescrip+"&budcode="+budcode, true);
				ajaxRequest.send(null);
			}
		}
		
		function delbtn()
		{
			var type = "c";
			var result = document.getElementById("budgetcode").value;	
			var descrip = document.getElementById("txtdescription").value;
			var sdescrip = document.getElementById("txtsdescription").value;
			var budcode = document.getElementById("txtbudcode").value;
			if (confirm('Are You Sure Want to Delete?'))
			{
				var ajaxRequest;  // The variable that makes Ajax possible!
	
				try{
					// Opera 8.0+, Firefox, Safari
					ajaxRequest = new XMLHttpRequest();
				} catch (e){
				// Internet Explorer Browsers
					try{
						ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
					} catch (e) {
						try{
							ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
						} catch (e){
						// Something went wrong
							alert("Your browser broke!");
							return false;
						}
					}
				}
				// Create a function that will receive data sent from the server
				ajaxRequest.onreadystatechange = function(){
				if(ajaxRequest.readyState == 4){
				//alert (ajaxRequest.responseText);
					//document.getElementById('txtdesignation').value = ajaxRequest.responseText;
					alert("Success Deleting Record");
					bodyload();
					document.getElementById('txtdescription').value = "";
					document.getElementById('txtsdescription').value = "";
					document.getElementById('txtbudcode').value = "";
				}
				}
				ajaxRequest.open("GET", "Test/querypge.php?jj="+result+"&qq="+type+"&descrip="+descrip+"&sdescrip="+sdescrip+"&budcode="+budcode, true);
				ajaxRequest.send(null);
			}
		}
	</script>
    <link href="css/Css_file.css" rel="stylesheet" type="text/css">
</head>
<body onload = "bodyload()">
<div id="wrapp">
	<form name = "form223" method = "POST" onSubmit="return formvalidate()" action = "">
    <table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
   <caption>
      <h1>Budget Details</h1>
   </caption>
   <tr>
    <th>
	<table align="center">
		<tr><td width="116">Budget No</td><td width="257"><div id = "selectbud" name = "selectbud"></div></td></tr>
        
		<tr><td>Budget Description</td><td rowspan="3"><div id="tbl_bud"><table><tr><td width="271"><input type = "text" size="60" name = "txtdescription" id = "txtdescription"/></td></tr><tr><td><input type = "text" name = "txtdsdescription" id = "txtsdescription"/></td></tr><tr><td><input type = "text" name = "txtbudcode" id = "txtbudcode"/></td></tr></table></div></td></tr>
		<tr><td>Short Description</td></tr>
		<tr><td>Budget Code</td></tr>
		<tr><td></td><td><input type="button" id="budbtnnew" name="budbtnnew" value="Create" onClick = "createbtn()"/>&nbsp;<input disabled type="button" id="budbtnedit" name="budbtnedit" value="Edit" onClick = "editbtn()"/>&nbsp;<input disabled type="button" id="budbtndel" name="budbtndel" value="Delete" onClick = "delbtn()"/></td></tr>
	</table>
	<input type = "hidden" name = "hddnvalue" id = "hddnvalue"/>
    </th></tr></table><br>
<br>
    <table align="center" width="70%" id="wrapped"  border="0" cellpadding="10" cellspacing="1">
   <tr>
    <th>
	<div id = "budgetresult"></div>
    </th></tr></table>
	</form>
	
    </div>
</body>
</html>