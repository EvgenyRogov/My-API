<?php
use \Slim\Http\Request as Request;
use \Slim\Http\Response as Response;

require_once $_SERVER['DOCUMENT_ROOT'].'/src/config/dbconn.php';
require_once $_SERVER['DOCUMENT_ROOT'].'/vendor/autoload.php';

$app = new \Slim\App();

$app->get('/', function()
{
	require_once $_SERVER['DOCUMENT_ROOT'].'/submit.html';
});

$app->get('/retrive/{id}', function (Request $request, Response $response) {
    $id = $request->getAttribute('id');

    $sql = "SELECT * FROM `randomnuber` WHERE id=$id;";

	try{
		$db = new db;
	    $connect = $db->connect();
	    
	    $stmt = $connect->query($sql);
	    $numbers = $stmt->fetchAll(PDO::FETCH_OBJ);
	    $db =null;
	    echo json_encode($numbers);
	}catch(PDOException $e) {
		echo 'Error: ' . $e->getMessage();
	}
    
});

$app->post('/generate', function (Request $request, Response $response)
{
	$value = rand();
	$sql = "INSERT INTO `randomnuber` (`number`) VALUES (:value);";

	try{
		$db = new db;
	    $db = $db->connect();
	    
	    $stmt = $db->prepare($sql);
	    $stmt->bindParam(':value', $value);
	    $stmt->execute();
	    $lastId = $db->lastInsertId();
	    $db =null;
	    echo '{"your_id": "'.$lastId.'"}';
	}catch(PDOException $e) {
		echo 'Error: ' . $e->getMessage();
	}
});
$app->run();
?>