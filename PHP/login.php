<?php
	session_start();
	
	if ((!isset($_POST['login'])) || (!isset($_POST['haslo'])))
	{
		header('Location: loginForm.php');
		exit();
	}

	require_once "connect.php";
	
	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);
	mysqli_set_charset( $conn, 'utf8');

	// Check connection
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}
	else
	{
	$login = $_POST['login'];
	$haslo = $_POST['haslo'];
	
	$sql = "SELECT * FROM administratorzy WHERE login = '$login' AND haslo = '$haslo'";
	if($result = mysqli_query($conn, $sql))
	{
		if (mysqli_num_rows($result) > 0)
		{
			$_SESSION['loggedIn'] = true;
			$row = mysqli_fetch_assoc($result);
			
			$_SESSION['adminID'] = $row['login'];
			unset($_SESSION['error']);
			$result->free_result();
			header('Location: adminPanel.php');
		}
		else
		{
			$_SESSION['error'] = "Nieprawidłowy login lub hasło!";
			header('Location: loginForm.php');
		}
	}
	mysqli_close($conn);
	}
?>