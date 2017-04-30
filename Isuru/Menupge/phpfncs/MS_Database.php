<?php
class DBOperations_MS
{
private $ServerCon;
private $DbCon;
	function __construct()
	{
	$this->Connect_to_DB();
	}
	public function Connect_to_DB()
	{
	$this->ServerCon = mssql_connect("_-_-_-_-_\SQLEXPRESS","sa","1234");
	if (!$this->ServerCon)
		  {
		  die('Couldn`t connect: '. mssql_get_last_message());
		  }
	  else
		  {
			$this->DbCon =mssql_select_db("Attdb", $this->ServerCon);
			if (!$this->DbCon)
			  {
			  die('Database error: '. mssql_get_last_message());
			  }
		  }  
	} 
	public function Disconnect_from_DB()
	{
				if(isset($this->ServerCon))
				{
					mssql_close($this->ServerCon);
					unset($this->ServerCon);
				}
	}
	public function Exe_Qry($query)
	{
			$result = mssql_query($query, $this->ServerCon);
				if(!$result)
				{
					echo '<script>alert("Error while executing query : '. mssql_get_last_message().'");</script>';
					//die("Error while executing query: " . mssql_get_last_message());
				} 
				else 
				{ 
					return $result;
				}
	}
	public function Next_Record($result)
	{
			return mssql_fetch_array($result);
	}
	public function Row_Count($result)
	{
			return mssql_num_rows($result);
	}
}
?>