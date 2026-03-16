<!DOCTYPE html>
<html lang="hu">
<head>
<meta charset="UTF-8">
<title>Eredmények</title>
<link rel="stylesheet" href="main.css">
</head>

<body>

<nav>
<a href="index.php">Vers Kvíz</a>
<a href="eredmenyek.php">Eredmények</a>
</nav>

<div class="main">

<h2>Eredmények</h2>

<?php

$host="localhost";
$user="root";
$pass="";
$db="idez";

$conn=new mysqli($host,$user,$pass,$db);

$conn->set_charset("utf8");

$sql="SELECT * FROM eredmenyek ORDER BY pont DESC";

$result = $conn->query($sql);
if (!$result) {
    die("Hiba a lekérdezésben: " . $conn->error);
}


while($row=$result->fetch_assoc()){

echo "<p>".$row["nev"]." - ".$row["pont"]." - ".$row["kitöltés"]." pont</p>";

}

$conn->close();

?>

</div>

</body>
</html>
