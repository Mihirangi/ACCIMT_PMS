<?php
class DBOperations
{
private $ServerCon;
private $DbCon;
	function __construct()
	{
	$this->Connect_to_DB();
	}
	public function Connect_to_DB()
	{
	$this->ServerCon = mysql_connect("localhost","almao","di@mond");
	if (!$this->ServerCon)
		  {
		  die('Could not connect: ' . mysql_error());
		  }
	  else
		  {
			$this->DbCon =mysql_select_db("BoardMeetingDB", $this->ServerCon);
			if (!$this->DbCon)
			  {
			  die('DB Error: ' . mysql_error());
			  }
		  }  
	} 
	public function Disconnect_from_DB()
	{
				if(isset($this->ServerCon))
				{
					mysql_close($this->ServerCon);
					unset($this->ServerCon);
				}
	}
	public function Exe_Qry($query)
	{
			$result = mysql_query($query, $this->ServerCon);
				if(!$result)
				{
					echo '<script> alert ("This Record is Already added or Something is Wrong with Your Values"); </script>';
				} 
				else 
				{ 
					return $result;
				}
	}
	public function Next_Record($result)
	{
			return mysql_fetch_array($result);
	}
	public function Row_Count($result)
	{
			return mysql_num_rows($result);
	}
	public function Row_Affec()
	{
			return mysql_affected_rows();
	}
}
?>
