<?php
	
	session_start();

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
			<?php
			
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
			$numer = $_GET['id'];
			$sql = "SELECT a.tekst1, a.tekst2, a.tekst3, a.podpis1, a.podpis2, a.img1, a.img2 FROM artykuly as a WHERE a.bohaterowie_id = $numer";
			$result = mysqli_query($conn, $sql);

			if (mysqli_num_rows($result) > 0) {
					// output data of each row
					while($row = mysqli_fetch_assoc($result)) {
						echo $row["tekst1"].$row["img1"].$row["podpis1"].$row["tekst2"].$row["img2"].$row["podpis2"].$row["tekst3"];
					}
				} else {
					echo "0 results";
				}
			
			mysqli_close($conn);
			}
			?> 
		</div>
		
		<?php include 'footer.php';?>
		
	</div>
	
	<?php include 'stickyMenu.php';?>
	<?php include 'lightbox.php';?>
</body>
</html>