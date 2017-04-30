function loadcombos(str,ttbl,rtbl) {
var element =  document.getElementById("cmb_"+rtbl);
var eletbl =  document.getElementById("tbl_"+rtbl);
if (typeof(element) != 'undefined' && element != null)
{
  if (str=="New" || str=="") {
	document.getElementById("txtid2").value="";
  	document.getElementById("txtid3").value="";
	if (ttbl=="province")
	{
		document.getElementById("cmb_district").innerHTML="Select a Province";
		var ele1 = document.getElementById("cmb_electorate");
		if (typeof(ele1) != 'undefined' && ele1 != null)
		{
		ele1.innerHTML="Select a District";
		}
		
		var ele2 = document.getElementById("cmb_gn_division");
		
		if (typeof(ele2) != 'undefined' && ele2 != null)
		{
		ele2.innerHTML="Select an Electorate";
		}
	}
	else if (ttbl=="district")
	{
		document.getElementById("cmb_electorate").innerHTML="Select a District";
		var ele3 = document.getElementById("cmb_gn_division");	
		if (typeof(ele3) != 'undefined' && ele3 != null)
		{
		ele3.innerHTML="Select an Electorate";
		}
	}
	else if (ttbl=="electorate")
	{
		document.getElementById("cmb_gn_division").innerHTML="Select an Electorate";
	}
	Disableadd(false);
	var tbl1 = document.getElementById("tbl_province");
	var tbl2 = document.getElementById("tbl_district");
	var tbl3 = document.getElementById("tbl_electorate");
	var tbl4 = document.getElementById("tbl_gn_division");
	if (typeof(tbl1) != 'undefined' && tbl1 != null)
	{
		tbl1.style.display = 'none';	
	}
	else if (typeof(tbl2) != 'undefined' && tbl2 != null)
	{
		tbl2.style.display = 'none';	
	}
	else if (typeof(tbl3) != 'undefined' && tbl3 != null)
	{
		tbl3.style.display = 'none';	
	}
	else if (typeof(tbl4) != 'undefined' && tbl4 != null)
	{
		tbl4.style.display = 'none';	
	}
    return;
  } 
  if (window.XMLHttpRequest) {
    // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp=new XMLHttpRequest();
  } else { // code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.onreadystatechange=function() {
    if (xmlhttp.readyState==4 && xmlhttp.status==200) {
		  document.getElementById("cmb_"+rtbl).innerHTML=xmlhttp.responseText;
		  document.getElementById("txtid2").value="";
		  document.getElementById("txtid3").value="";
		  if (ttbl=="province")
			{
				var ele1 = document.getElementById("cmb_electorate");
				if (typeof(ele1) != 'undefined' && ele1 != null)
				{
				ele1.innerHTML="Select a District";
				}
				var ele2 = document.getElementById("cmb_gn_division");
				if (typeof(ele2) != 'undefined' && ele2 != null)
				{
				ele2.innerHTML="Select an Electorate";
				}
			}
			else if (ttbl=="district")
			{
				var ele3 = document.getElementById("cmb_gn_division");	
				if (typeof(ele3) != 'undefined' && ele3 != null)
				{
				ele3.innerHTML="Select an Electorate";
				}
			}
			Disableadd(false);
			
			if (typeof(eletbl) == 'undefined' || eletbl == null)
			{
			alert (eletbl);			
			/*alert (str+ " - "+ttbl+ " - " +rtbl);*/
				var tbl1 = document.getElementById("tbl_province");
				var tbl2 = document.getElementById("tbl_district");
				var tbl3 = document.getElementById("tbl_electorate");
				var tbl4 = document.getElementById("tbl_gn_division");
				if (typeof(tbl1) != 'undefined' && tbl1 != null)
				{
					tbl1.style.display = 'none';	
				}
				else if (typeof(tbl2) != 'undefined' && tbl2 != null)
				{
					tbl2.style.display = 'none';	
				}
				else if (typeof(tbl3) != 'undefined' && tbl3 != null)
				{
					
					tbl3.style.display = 'none';	
				}
				else if (typeof(tbl4) != 'undefined' && tbl4 != null)
				{
					tbl4.style.display = 'none';	
				}
			}
		}
  }
  if (typeof(eletbl) != 'undefined' && eletbl != null)
	{
		var xxxx = "END";	
	}
  else
    {
		var xxxx = "NEND";
	}
  xmlhttp.open("GET","comboloader.php?p="+str+"&q="+ttbl+"&r="+rtbl+"&e="+xxxx,true);
  xmlhttp.send();
  document.getElementById("txtid2").value="";
  document.getElementById("txtid3").value="";
  Disableadd(false);
		if (typeof(eletbl) != 'undefined' && eletbl != null)
		{
			if (window.XMLHttpRequest) {
				// code for IE7+, Firefox, Chrome, Opera, Safari
				xmlhttp2=new XMLHttpRequest();
			} else { // code for IE6, IE5
				xmlhttp2=new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp2.onreadystatechange=function() {
				if (xmlhttp2.readyState==4 && xmlhttp2.status==200) {
				  document.getElementById("tbl_"+rtbl).innerHTML=xmlhttp2.responseText;
				  document.getElementById("tbl_"+rtbl).style.display = 'table';
				}
			}
			xmlhttp2.open("GET","tblloader.php?p="+str+"&q="+ttbl+"&r="+rtbl,true);
			xmlhttp2.send();	
		}
}
else
{
	/*alert (str+ " - "+ttbl+ " - " +rtbl);*/
	if (str=="New" || str=="") {
		document.getElementById("txtid2").value="";
		document.getElementById("txtid3").value="";
		Disableadd(false);
		return;
	} 
	if (window.XMLHttpRequest) {
		// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	} else { // code for IE6, IE5
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function() {
		if (xmlhttp.readyState==4 && xmlhttp.status==200) {
		  document.getElementById("txt_txts").innerHTML=xmlhttp.responseText;
		  Disableadd(true);
		}
	}
	xmlhttp.open("GET","txtloader.php?p="+str+"&q="+ttbl,true);
	xmlhttp.send();	
}
}
function attachfunc(nme)
{
alert ("attachments of record  - "+ nme.id);	
}
function unico(fld)
	{
	var ssss =	document.getElementById(fld.id).value;

	if (ssss.match(/[a-zA-Z]/g)) {
		
	var	newstr=ssss.substring(0,ssss.length - 1);
	alert ("සිංහලින් පමනයි");
	fld.value=newstr;
	}
	}
function delpic(pixname)
	{
	document.getElementById('deltxt').value=pixname.id;
	if (confirmEdiDel())
		{
			document.form1.submit();
		}
		else
		{
			document.getElementById('deltxt').value="";
		}
	}
function appendimg(buttt)
	{
		tinymce.activeEditor.execCommand('mceInsertContent', false, '<p><img src="'+ buttt.id +'" width="650px" /></p>');
		document.form1.submit();
	}
function startTime() 
	{
		var today=new Date();
		var h=today.getHours();
		var m=today.getMinutes();
		var s=today.getSeconds();
		m = checkTime(m);
		s = checkTime(s);
		document.getElementById('divclock').innerHTML = h+":"+m+":"+s;
		var t = setTimeout(function(){startTime()},1000);
	}
function checkTime(i) 
	{
		if (i<10) {i = "0" + i};
		return i;
	}
function scrollpg()
	{
		document.getElementById('menubackg').scrollIntoView();
	}
function confirmEdiDel()
	{
		var conf = prompt("Type \"Y\" to Proceed", "N");
		if (conf == "Y" || conf == "y"){
			return true;
		}
		else {
			return false;
		}
	}
function Disableadd(tval)
	{
		if (tval)
		{
			document.getElementById("btnAdd").disabled = true;
			document.getElementById("btnEdi").disabled = false;
			document.getElementById("btnDel").disabled = false;
		}
		else
		{
			document.getElementById("btnAdd").disabled = false;
			document.getElementById("btnEdi").disabled = true;
			document.getElementById("btnDel").disabled = true;
		}
	}
function conf()
	{
		return confirm('Are You Sure to Add this Record???');
	}
function chktst(butname,rc)
	{
	var str=butname.id;
	var rowCou= rc;
	var y="";
	if (rowCou>99)
		{
		y=str.substring(6, 9);
		}
	else if(rowCou>9)
		{
		y=str.substring(6, 8);
		}
	else if(rowCou>0)
		{
		y=str.substring(6, 7);
		}
		//alert (butname.id+ " " + rc+ " " + y);
		var foundcount=0;
		for (var x=0; x<=rowCou; x++)
		{
		if(document.getElementById('MATRAD'+y+x).checked) {
		  if (document.getElementById('MATRAD'+y+x)!=document.getElementById(butname.id))
		  {
		  document.getElementById('MATRAD'+y+x).checked = false;
		  }
		}
	}
}
function display()
    {
		var d1 = new Date(document.getElementById("MtDt").value);
		var YYY= d1.getFullYear();
		var MMM= d1.getUTCMonth()+1;
		if (MMM>=1 && MMM<=9 && YYY != 0)		
		{
		document.getElementById("MtId").value= YYY+"/0"+MMM;
		}else if (MMM>=10 && MMM<=12 && YYY != 0){
		document.getElementById("MtId").value= YYY+"/"+MMM;
		}else{
		document.getElementById("MtId").value="Select Date and Cleck Here";
		alert("Please Select a Valid Date");
		}
    }

function mtdtload()
{
	
		var id = document.getElementById("MtId").value.length;
		if (id==7)
		{
			document.Cr_Mt.submit();
		}
}


function validateFormOnSubmitMeeting(theForm)
	{
	  var reason = "";
	  reason += validateEmpty(theForm.MtId);
	  reason += validateNum(theForm.MtId);
	if (reason != "")
  	{
    alert("Form is not properly filled:\n.................................\n" + reason);
    return false;
  	}
    return true;
	}
	function validateEmpty(fld)
	{
    var error = "";
    if (fld.value.length != 7)
	{
        fld.style.background = '#afd3f2';
        error =  "Meeting Number is Invalid.\n"
    }
    else
    {
        fld.style.background = 'White';
    }
    return error;
	}
	
	function validateNum(fld)
	{
    var error = "";
	var ssss =fld.value;
	if (ssss.match(/[a-zA-Z]/g)) {
	fld.style.background = '#afd3f2';
    error =  "Meeting Number Contains Alphabetic Chars.\n"
	}
    else
    {
        fld.style.background = 'White';
    }
    return error;
	}
	
	function suboptsclear()
{ 
var selectbox=document.getElementById("SubMatTy");
var i;
    for(i=selectbox.options.length-1;i>=0;i--)
    {
        selectbox.remove(i);
    }
}