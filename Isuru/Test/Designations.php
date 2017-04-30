<?php
	$link = mysql_connect('localhost','root','');
	$db = mysql_select_db("testing");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}
?>

<html>
<head>
	<title>Designation</title>
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
					document.getElementById('selectdes').innerHTML = ajaxRequest.responseText;
					tablelist();
				}
				}
				ajaxRequest.open("GET", "selectfullpge.php?", true);
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
					document.getElementById('designationresult').innerHTML = ajaxRequest.responseText;
				}
				}
				ajaxRequest.open("GET", "designationList.php?", true);
				ajaxRequest.send(null); 
		}
		
		
		function selectr(){
			var result = document.getElementById("designationcode").value;		
			if(result == "new"){
				document.getElementById('desbtnnew').disabled = false;
				document.getElementById('desbtnedit').disabled = true;
				document.getElementById('desbtndel').disabled = true;
				document.getElementById('txtdesignation').value = "";
			}
			else{
				document.getElementById('desbtnnew').disabled = true;
				document.getElementById('desbtnedit').disabled = false;
				document.getElementById('desbtndel').disabled = false;
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
					document.getElementById('txtdesignation').value = ajaxRequest.responseText;
				}
				}
				ajaxRequest.open("GET", "selectpge.php?jj="+result, true);
				ajaxRequest.send(null); 
			}
		}
		
		function createbtn()
		{
			var type = "a";
			var result = document.getElementById("designationcode").value;	
			var name = document.getElementById("txtdesignation").value;
			if(name == "")
			{
				alert("Division must be filled out");
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
					document.getElementById('txtdesignation').value = "";
				}
				}
				ajaxRequest.open("GET", "querypge.php?jj="+result+"&qq="+type+"&nm="+name, true);
				ajaxRequest.send(null);
			}
		}
		
		function editbtn()
		{
			var type = "b";
			var result = document.getElementById("designationcode").value;	
			var name = document.getElementById("txtdesignation").value;
			if(name == "")
			{
				alert("Division must be filled out");
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
					document.getElementById('txtdesignation').value = "";
				}
				}
				ajaxRequest.open("GET", "querypge.php?jj="+result+"&qq="+type+"&nm="+name, true);
				ajaxRequest.send(null);
			}
		}
		
		function delbtn()
		{
			var type = "c";
			var result = document.getElementById("designationcode").value;	
			var name = document.getElementById("txtdesignation").value;
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
					document.getElementById('txtdesignation').value = "";
				}
				}
				ajaxRequest.open("GET", "querypge.php?jj="+result+"&qq="+type+"&nm="+name, true);
				ajaxRequest.send(null);
			}
		}
	</script>
</head>
<body onload = "bodyload()">
	<form name = "form223" method = "POST" onsubmit="return formvalidate()" action = "">
	<h2>Designation Form</h2>
	<table>
		<tr><td>Designation Code</td><td><div id = "selectdes" name = "selectdes"></div></td></tr>
		<tr><td>Designation Name</td><td><input type = "text" name = "txtdesignation" id = "txtdesignation"/></td></tr>
		<tr><td></td><td><input type="button" id="desbtnnew" name="desbtnnew" value="Create" onClick = "createbtn()"/>&nbsp;<input disabled type="button" id="desbtnedit" name="desbtnedit" value="Edit" onClick = "editbtn()"/>&nbsp;<input disabled type="button" id="desbtndel" name="desbtndel" value="Delete" onClick = "delbtn()"/></td></tr>
	</table>
	<input type = "hidden" name = "hddnvalue" id = "hddnvalue"/>
	<div id = "designationresult"></div>
	</form>
</body>
</html>