<?php
class SecondDBOperations
{
private $ServerCon2;
private $DbCon2;
private $ttttt2;
	function __construct()
	{
	$this->Connect_to_DB2();
	}
	public function Connect_to_DB2()
	{
	$this->ServerCon2 = mysql_connect("localhost","root","1234");
	if (!$this->ServerCon2)
		  {
		  die('Could not connect: ' . mysql_error());
		  }
	  else
		  {
			$this->DbCon2 =mysql_select_db('attend_cpy', $this->ServerCon2);
			if (!$this->DbCon2)
			  {
			  die('DB Error: ' . mysql_error());
			  }
		  }  
	} 
	public function Disconnect_from_DB2()
	{
				if(isset($this->ServerCon2))
				{
					mysql_close($this->ServerCon2);
					unset($this->ServerCon2);
				}
	}
	public function Exe_Qry2($query)
	{
		$this->ttttt2=$query;
			$result = mysql_query($query, $this->ServerCon2);
				if(!$result)
				{
					die('DB Error: ' . mysql_error());
					echo '<script> alert ("'. mysql_error() .'"); </script>';
					/*echo '<script> alert ("This Record is Already Added or Something is Wrong with Your Values"); </script>';*/
				} 
				else 
				{ 
					return $result;
				}
	}
	public function Next_Record2($result)
	{
			return mysql_fetch_array($result);
	}
	public function Row_Count2($result)
	{
			return mysql_num_rows($result);
	}
	public function Row_Affec2()
	{
			return mysql_affected_rows();
	}
}
?>
