<div class="menu">
<ol>
<li><a href='index.php'>Strona Główna</a></li>
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
$sql = "SELECT * FROM bohaterowie";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
        echo "<li><a href='article.php?id=".$row["id"].";'".">".$row["bohater"]."</a></li>";
    }
	if ((isset($_SESSION['loggedIn'])) && ($_SESSION['loggedIn']==true))
	{
		echo "<li><a href='logout.php'>Wyloguj</a></li>";
	}
	else
	{
		echo "<li><a href='loginForm.php'>Zaloguj</a></li>";
	}
} else {
    echo "0 results";
}

mysqli_close($conn);
}
?> 
</ol>
</div>
