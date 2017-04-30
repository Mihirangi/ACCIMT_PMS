<!DOCTYPE html>
<html>
<head>
<?php
session_start();
if (!isset($_SESSION['proclogin_type']))
{
header('Location: lgin.php');
}?>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<title>Division Budget Transaction</title>
<link href="css/Css_file.css" rel="stylesheet" type="text/css">
<script language="javascript" src="jss/Js_Funcs.js">
</script>
<script language="javascript" src="calendar/calendar.js">
</script>
</head>
	<body onLoad="sessSet('DivBudget.php');">
	<?php
	mysql_connect ("localhost","root","pwditlinux")or die ('Cannot connect to MySQL: ' . mysql_error());
	mysql_select_db ("attend_db") or die ('Cannot connect to the database: ' . mysql_error());

		if (isset($_POST['btnSubmit']))
		{
		
	    
		$budg_code = $_POST['txtbudg_code'];
		$Amount = $_POST['txtAmount'];
		$Year = $_POST['txtYear'];
		$div_nm =$_POST['txtDivision'];
		
		
		
		$Division = $_POST['txtDivision'];
/*$query1=("SELECT DivisionCode FROM division_tbl WHERE Division ='$txtDivision'");
$Division = $_POST['txtDivision'];
mysql_query($query1);*/
			$sqlpt1="SELECT DivisionCode FROM division_tbl where Division ='$div_nm'";
			//print $sqlpt1;
     			    $resultspt1=mysql_query($sqlpt1);
				    $numspt1=mysql_numrows($resultspt1);
					//print $numspt1;
					 if ($numspt1==1)
				    {
					//print 'kkk';
		                 $div_code=mysql_result($resultspt1,0,"DivisionCode");   
	                }
					//print $div_code;
		$query = "INSERT INTO div_budg_tbl(div_code, budg_code, amount, budg_year)  values('$div_code', '$budg_code', '$Amount' , '$Year')";
		mysql_query($query);	
	  

}
?>
<div id="wrapp">
	<form method="post" action="" onsubmit="return validate_form(this);" class="plain">


<table align="center" class="searchResults">
		<table align="center" width="95%" id="wrapped2"  border="0" cellpadding="10" cellspacing="1">
<caption><h1>Division Budget</h1></caption>

	<tr>
					<th> 
					<table align="center"  border="0" cellpadding="4" cellspacing="1" style="color:#000000">
                <div class="combobox">
				<tr>
					<th valign="top" scope="row"><div align="left">Division</div></th>
					<th valign="top">:</th>
					<td align="left">
			<select name = "txtDivision" id = "txtDivision" onChange = "buttonfun()">
            <?php
				mysql_connect('localhost', 'root', '');
				mysql_select_db('attend_db');
				
				$values = mysql_query("SELECT Division FROM division_tbl");
				echo "<option >--Select--</option>";
										
				while ($row = mysql_fetch_array($values)) {
					$setSelect = "";
					echo "<option value='$row[0]' $setSelect>$row[0]</option>";
				}
			?>
			</td>
    </tr>
			<tr>
					<th valign="top" scope="row"><div align="left">Budget Code</div></th>
					<th valign="top">:</th>
					<td align="left">
			<select name = "txtbudg_code" id = "txtbudg_code" onChange = "buttonfun()">
            <?php
				mysql_connect('localhost', 'root', '');
				mysql_select_db('attend_db');
				
				$values = mysql_query("SELECT budg_code FROM budget_tbl");
				echo "<option >--Select--</option>";
										
				while ($row = mysql_fetch_array($values)) {
					$setSelect = "";
					echo "<option value='$row[0]' $setSelect>$row[0]</option>";
				}
			?>
			</td>
    </tr>
		<tr>
					<th valign="top" scope="row"><div align="left">Year </div></th>
					<th valign="top">:</th>
					<td align="left">
                    <input name="txtYear" id="txtYear" type="text"></td>
		
	
    </tr>
			<tr>
					<th valign="top" scope="row"><div align="left">Amount </div></th>
					<th valign="top">:</th>
					<td align="left"><input name="txtAmount" id="txtAmount" type="text"></td>
		
	
    </tr>

   
</table>
<br/><br/>	<tr> 
				<td class="tbrow" colspan="3" >
				<table width="100%" >
					<tr > 
							<td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC" size="1"> 
							<input name="btnSubmit" type="submit" value="Submit" class="button" />
							</font></div>
						</td>
					
						<td class="tbrow" width="22%"> <div align="center"><font color="#FF33CC"> 
							<input  name="btnCancel" type="submit" value="Cancel" onclick="document.location.href = 'div_budgnew.php';"  class="button"/>
							</font></div>
					
						</td>
					</tr>
</form>
</body>
</html>