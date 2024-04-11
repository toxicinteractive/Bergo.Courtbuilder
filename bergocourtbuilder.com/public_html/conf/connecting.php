<?php



	$host = 'mysql579.loopia.se';

	$db   = 'bergocourtbuilder_com';

	# For live
	#$user = 'bergo@b181598';

	# For local testing
	$user = 'bergophp@b181598';

	$pass = 'Database4Design!';

	$charset = 'utf8mb4';



	$dsn = "mysql:host=$host;dbname=$db;charset=$charset";

	$opt = [

		PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,

		PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,

		PDO::ATTR_EMULATE_PREPARES   => false,

	];

	$pdo = new PDO($dsn, $user, $pass, $opt);

	

?>