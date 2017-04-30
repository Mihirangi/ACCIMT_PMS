<?php
	$link = mysql_connect('localhost','root','');
	$db = mysql_select_db("attend_db");
	if (!$link) 
	{
		die('Could not connect: ' . mysql_error());
	}
?>

<html>
<head>
	<title>Leave Type</title>
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
					document.getElementById('selectlv').innerHTML = ajaxRequest.responseText;
					tablelist();
				}
				}
				ajaxRequest.open("GET", "lvtypeselectfullpge.php?", true);
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
					document.getElementById('leavetyperesult').innerHTML = ajaxRequest.responseText;
				}
				}
				ajaxRequest.open("GET", "leavetypeList.php?", true);
				ajaxRequest.send(null); 
		}
		
		
		function selectr(){
			var result = document.getElementById("lvtypecode").value;		
			if(result == "new"){
				document.getElementById('lvtpbtnnew').disabled = false;
				document.getElementById('lvtpbtnedit').disabled = true;
				document.getElementById('lvtpbtndel').disabled = true;
				document.getElementById('txtlvtype').value = "";
			}
			else{
				document.getElementById('lvtpbtnnew').disabled = true;
				document.getElementById('lvtpbtnedit').disabled = false;
				document.getElementById('lvtpbtndel').disabled = false;
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
					document.getElementById('txtlvtype').value = ajaxRequest.responseText;
				}
				}
				ajaxRequest.open("GET", "lvtypeselectpge.php?jj="+result, true);
				ajaxRequest.send(null); 
			}
		}
		
		function createbtn()
		{
			var type = "a";
			var result = document.getElementById("lvtypecode").value;	
			var name = document.getElementById("txtlvtype").value;
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
					document.getElementById('txtlvtype').value = "";
				}
				}
				ajaxRequest.open("GET", "lvtypequerypge.php?jj="+result+"&qq="+type+"&nm="+name, true);
				ajaxRequest.send(null);
			}
		}
		
		function editbtn()
		{
			var type = "b";
			var result = document.getElementById("lvtypecode").value;	
			var name = document.getElementById("txtlvtype").value;
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
					document.getElementById('txtlvtype').value = "";
				}
				}
				ajaxRequest.open("GET", "lvtypequerypge.php?jj="+result+"&qq="+type+"&nm="+name, true);
				ajaxRequest.send(null);
			}
		}
		
		function delbtn()
		{
			var type = "c";
			var result = document.getElementById("lvtypecode").value;	
			var name = document.getElementById("txtlvtype").value;
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
					document.getElementById('txtlvtype').value = "";
				}
				}
				ajaxRequest.open("GET", "lvtypequerypge.php?jj="+result+"&qq="+type+"&nm="+name, true);
				ajaxRequest.send(null);
			}
		}
	</script>
</head>
<body onload = "bodyload()">
	<form name = "form223" method = "POST" onsubmit="return formvalidate()" action = "">
	<h2>Division Form</h2>
	<table>
		<tr><td>Division Code</td><td><div id = "selectlv" name = "selectlv"></div></td></tr>
		<tr><td>Division Name</td><td><input type = "text" name = "txtlvtype" id = "txtlvtype"/></td></tr>
		<tr><td></td><td><input type="button" id="lvtpbtnnew" name="lvtpbtnnew" value="Create" onClick = "createbtn()"/>&nbsp;<input disabled type="button" id="lvtpbtnedit" name="lvtpbtnedit" value="Edit" onClick = "editbtn()"/>&nbsp;<input disabled type="button" id="lvtpbtndel" name="lvtpbtndel" value="Delete" onClick = "delbtn()"/></td></tr>
	</table>
	<input type = "hidden" name = "hddnvalue" id = "hddnvalue"/>
	<div id = "leavetyperesult"></div>
	</form>
</body>
</html>