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
	<title>Division</title>
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
					document.getElementById('selectdiv').innerHTML = ajaxRequest.responseText;
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
					document.getElementById('divisionresult').innerHTML = ajaxRequest.responseText;
				}
				}
				ajaxRequest.open("GET", "divisionList.php?", true);
				ajaxRequest.send(null); 
		}
		
		
		function selectr(){
			var result = document.getElementById("divisioncode").value;		
			if(result == "new"){
				document.getElementById('divbtnnew').disabled = false;
				document.getElementById('divbtnedit').disabled = true;
				document.getElementById('divbtndel').disabled = true;
				document.getElementById('txtdivision').value = "";
			}
			else{
				document.getElementById('divbtnnew').disabled = true;
				document.getElementById('divbtnedit').disabled = false;
				document.getElementById('divbtndel').disabled = false;
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
					document.getElementById('txtdivision').value = ajaxRequest.responseText;
				}
				}
				ajaxRequest.open("GET", "selectpge.php?jj="+result, true);
				ajaxRequest.send(null); 
			}
		}
		
		function createbtn()
		{
			var type = "a";
			var result = document.getElementById("divisioncode").value;	
			var name = document.getElementById("txtdivision").value;
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
					//document.getElementById('txtdivision').value = ajaxRequest.responseText;
					alert("Success Saving Record");
					bodyload();
					document.getElementById('txtdivision').value = "";
				}
				}
				ajaxRequest.open("GET", "querypge.php?jj="+result+"&qq="+type+"&nm="+name, true);
				ajaxRequest.send(null);
			}
		}
		
		function editbtn()
		{
			var type = "b";
			var result = document.getElementById("divisioncode").value;	
			var name = document.getElementById("txtdivision").value;
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
					//document.getElementById('txtdivision').value = ajaxRequest.responseText;
					alert("Success Saving Record");
					bodyload();
					document.getElementById('txtdivision').value = "";
				}
				}
				ajaxRequest.open("GET", "querypge.php?jj="+result+"&qq="+type+"&nm="+name, true);
				ajaxRequest.send(null);
			}
		}
		
		function delbtn()
		{
			var type = "c";
			var result = document.getElementById("divisioncode").value;	
			var name = document.getElementById("txtdivision").value;
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
					//document.getElementById('txtdivision').value = ajaxRequest.responseText;
					alert("Success Deleting Record");
					bodyload();
					document.getElementById('txtdivision').value = "";
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
	<h2>Division Form</h2>
	<table>
		<tr><td>Division Code</td><td><div id = "selectdiv" name = "selectdiv"></div></td></tr>
		<tr><td>Division Name</td><td><input type = "text" name = "txtdivision" id = "txtdivision"/></td></tr>
		<tr><td></td><td><input type="button" id="divbtnnew" name="divbtnnew" value="Create" onClick = "createbtn()"/>&nbsp;<input disabled type="button" id="divbtnedit" name="divbtnedit" value="Edit" onClick = "editbtn()"/>&nbsp;<input disabled type="button" id="divbtndel" name="divbtndel" value="Delete" onClick = "delbtn()"/></td></tr>
	</table>
	<input type = "hidden" name = "hddnvalue" id = "hddnvalue"/>
	<div id = "divisionresult"></div>
	</form>
</body>
</html>