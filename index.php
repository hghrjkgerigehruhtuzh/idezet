<?php
session_start();
?>

<!DOCTYPE html>
<html lang="hu">
<head>
<meta charset="UTF-8">
<title>Vers Kvíz</title>
<link rel="stylesheet" href="main.css">
</head>

<body>

<nav>
<a href="index.php">Vers Kvíz</a>
<a href="eredmenyek.php">Eredmények</a>
</nav>

<?php

$host="localhost";
$user="root";
$pass="";
$db="idez";

$conn=new mysqli($host,$user,$pass,$db);

if($conn->connect_error){
die("Hiba az adatbázis kapcsolatnál");
}

$conn->set_charset("utf8");

?>

<form method="post">

<div class="main">

<h2>Neved</h2>

<input type="text" name="nev" required>

</div>

<?php

$sql="SELECT * FROM idezetek ORDER BY RAND() LIMIT 5";
$result=$conn->query($sql);

$i=1;

while($row = $result->fetch_assoc()){

$vers = $row["versz_reszlet"];
$kolto = $row["kolto"];

echo "<div class='main'>";

echo "<h3>$i. kérdés</h3>";

echo "<p>" . htmlspecialchars($vers) . "</p>";

echo "<select name='valasz$i' required>";

echo "<option value=''>Válassz költőt</option>";
echo "<option>Petőfi Sándor</option>";
echo "<option>Ady Endre</option>";
echo "<option>Vörösmarty Mihály</option>";
echo "<option>József Attila</option>";
echo "<option>Juhász Gyula</option>";
echo "<option>Radnóti Miklós</option>";

echo "</select>";

echo "<input type='hidden' name='helyes$i' value='".htmlspecialchars($kolto)."'>";

echo "</div>";

$i++;

}

?>

<input type="submit" name="kuldes" value="Ellenőrzés">

</form>

<?php

if(isset($_POST["kuldes"])){

$pont=0;

for($i=1;$i<=5;$i++){

if($_POST["valasz$i"]==$_POST["helyes$i"]){

$pont++;

}

}

$nev = $conn->real_escape_string($_POST["nev"]);

$conn->query("INSERT INTO eredmenyek (nev,pont) VALUES ('$nev','$pont')");

echo "<div class='main'>";

echo "<h2>Pontszám: $pont / 5</h2>";

echo "</div>";

}

$conn->close();

?>

</body>
</html>
