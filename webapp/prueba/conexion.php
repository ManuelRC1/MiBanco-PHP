<?php
	$host = 'db';
	$user = 'quevedo';
	$password = 'quevedo';
	$db = 'quevedodb';

	$conection = @mysqli_connect($host,$user,$password,$db);
	if(!$conection){
		echo "Error en la conexión";
	}

?>