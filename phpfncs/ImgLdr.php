<?php
$s= $_GET['s'];
$str= $_GET['t'];
$srchtst=false;
if ($str!='')
{
	$srchtst=true;
}
if ($s=="s")
{
	$ppaath='../sinuploads'.'/{*.jpg,*.gif,*.png}';
}
else
{
	$ppaath='../enguploads'.'/{*.jpg,*.gif,*.png}';
}
$imgarray=glob($ppaath,GLOB_BRACE)?glob($ppaath,GLOB_BRACE):array();
echo '<p>';
for ($x=0; $x<sizeof($imgarray); $x++) {
	
	if (($srchtst && strpos(substr($imgarray[$x],14),$str) !== false) || (!$srchtst) )
	{
	echo'<div id="div'.$imgarray[$x].'" class="pic1">
			 <div class="pic2">
				<div class="text1">
					<img class="adds" id="img_'.$imgarray[$x].'" src="'.substr($imgarray[$x],3).'" width="255px" />
				</div>
				<div class="text2">
					<table width="100%" border="0" align="center">
						<tr>
							<th colspan="2" style="width:!important;color:#000000;background:#FFF;">'.substr($imgarray[$x],14)
							.'</th>
						</tr>
						<tr>
							<th style="color:#000000;opacity:1;"><input class="text3" type="button" id="'.substr($imgarray[$x],3)
							.'" onClick="appendimg(this.id)" value="Add" /></th>
							<th style="color:#000000;opacity:1;"><input class="text3" type="button" id="'.$imgarray[$x]
							.'" onClick="delpic(this,'."'".$s."'".')" value="Delete" /></th>
						</tr>
					</table>
				</div>
			 </div>
		 </div>';
	}	 
} 
echo '</p>';
?>