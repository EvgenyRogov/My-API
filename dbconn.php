<?php
class db
{
	private $dbType = 'mysql';
	private $host = 'localhost';
	private $dbName = 'apidb';
	private $user = 'root';
	private $pwd = '';

	public function connect()
	{
		try {
			$db = new PDO("$this->dbType:host=$this->host;dbname=$this->dbName;", $this->user, $this->pwd);
	    	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	    	$db->exec("set names utf8");

	    	return $db;

		} catch (PDOException $e) {
		    echo 'Подключение не удалось: ' . $e->getMessage();
		}
		
	}
	
}




?>