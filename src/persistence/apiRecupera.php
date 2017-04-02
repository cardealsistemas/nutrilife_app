<?php

header("Access-Control-Allow-Origin: *");
header('Content-Type: text/html; charset=utf-8');

$dns = "mysql:host=localhost;dbname=bd_nutrilife";
$user = "root";
$pass = "";

	try {

		$con = new PDO($dns, $user, $pass);
		if(!$con) {

			echo "Não foi possivel conectar com Banco de Dados!";
		}

			$key 	= strip_tags($_REQUEST['key']);
			$data = array();

			switch($key) {
				 // Add a new record to the technologies table
				 case "getCategorias": {

					 try {

							$query = $con->prepare('SELECT * FROM CATEGORIAS');
							$query->execute();

							while($row = $query->fetch(PDO::FETCH_OBJ)) {

									// Assign each row of data to associative array
									$data[] = $row;
							 }

							 // Return data as JSON
							 echo json_encode($data);
					 } catch(PDOException $e) {

	            echo "Erro: ".$e->getMessage();
	         }

					 break;
				 } case "getSub": {

					 try {

							$query = $con->prepare('SELECT * FROM SUBCATEGORIAS');
							$query->execute();

							while($row = $query->fetch(PDO::FETCH_OBJ)) {

									// Assign each row of data to associative array
									$data[] = $row;
							 }

							 // Return data as JSON
							 echo json_encode($data);
					 } catch(PDOException $e) {

	            echo "Erro: ".$e->getMessage();
	         }

					 break;
				 } case "getPromocoes": {

					 try {

							$query = $con->prepare('SELECT * FROM PROMOCOES ORDER BY ID_Promocao DESC LIMIT 4');
							$query->execute();

							while($row = $query->fetch(PDO::FETCH_OBJ)) {

									// Assign each row of data to associative array
									$data[] = $row;
							 }

							 // Return data as JSON
							 echo json_encode($data);
					 } catch(PDOException $e) {

	            echo "Erro: ".$e->getMessage();
	         }

					 break;
				 }
			 }

	 } catch (Exception $e) {

		 echo "Erro: ".$e->getMessage();
	 };
