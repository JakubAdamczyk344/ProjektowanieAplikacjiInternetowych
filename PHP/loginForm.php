<?php
	
	session_start();
	if ((isset($_SESSION['loggedIn'])) && ($_SESSION['loggedIn']==true))
	{
		header('Location: adminPanel.php');
		exit();
	}

?>

<!DOCTYPE HTML>
<html lang="pl">
<head>
	
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	
	<title>Najciekawsi bohaterowie literaccy</title>
	
	<meta name="description" content="Opis w Google" />
	<meta name="keywords" content="Herkules Poirot, Sherlock Holmes, Geralt z Rivii, Stanisław Wokulski, Śmierć" />
	
	<link href="../CSS/style.css" rel="stylesheet" type="text/css"/>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&amp;subset=latin-ext" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Lobster&amp;subset=latin-ext" rel="stylesheet"> 
	<link href="../CSS/lightbox.css" rel="stylesheet">
	
</head>

<body>
	
	<div class="site">
		<?php include 'header.php';?>
		<?php include 'menu.php';?>
		
		
		<div class="content">
		
			<div class="loginFormTable">
			
				<form action="login.php" method="post">
					
					<label class="formLabel">Login</label>
					<br/>
					<input class="formInput" type="text" name="login" /><br/>
					<label class="formLabel">Hasło</label>
					<br/>
					<input class="formInput" type="password" name="haslo" />
					<br/></br>
					<input class="formSubmit" type="submit" value="Zaloguj się"/>
					<div class="error">
					<?php
						if(isset($_SESSION['error']))	echo $_SESSION['error'];
					?>
					</div>
					
				</form>
					
			
			</div>
			
		</div>
		
		<?php include 'footerDown.php';?>
		
	</div>
	
	<?php include 'stickyMenu.php';?>
	<?php include 'lightbox.php';?>
</body>
</html>