<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Idézet teszt</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
    <nav>
        <a href="index.html">Vers Kvíz</a>
        <a href="">Eredmények</a>
    </nav>
    <div class="main">
      <br><br><br>
    <?php
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "idez";


$conn = new mysqli($host, $user, $pass, $dbname);


if ($conn->connect_error) {
    die("Sikertelen kapcsolódás: " . $conn->connect_error);
}

$conn->set_charset("utf8mb4");


$sql = "SELECT versz_reszlet FROM idezetek ORDER BY RAND() LIMIT 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        
        echo htmlspecialchars($row["versz_reszlet"]) . "<br>";
    }
} else {
    echo "Nincsenek idézetek az adatbázisban.";
}

$conn->close();
?><br><br><br><br><br>
<form action=""  method="post">
   <select  size=”3”>
      <option value="">Komplett PC</option>
      <option value="">Laptop</option>
      <option value="" >Alaplap</option>
      <option value="">Gyártó 1</option>
      <option value="">Gyártó 2</option>
      <option value="">Gyártó 3</option>
      <option value="" >Gyártó 4</option>
   </select>
  
  		

    </div>
    <br><br>
    <div class="main">
    <br><br><br>
    <?php
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "idez";


$conn = new mysqli($host, $user, $pass, $dbname);


if ($conn->connect_error) {
    die("Sikertelen kapcsolódás: " . $conn->connect_error);
}

$conn->set_charset("utf8mb4");


$sql = "SELECT versz_reszlet FROM idezetek ORDER BY RAND() LIMIT 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        
        echo htmlspecialchars($row["versz_reszlet"]) . "<br>";
    }
} else {
    echo "Nincsenek idézetek az adatbázisban.";
}

$conn->close();
?><br><br><br><br><br>
 <select  size=”3”>
      <option value="">Komplett PC</option>
      <option value="">Laptop</option>
      <option value="" >Alaplap</option>
      <option value="">Gyártó 1</option>
      <option value="">Gyártó 2</option>
      <option value="">Gyártó 3</option>
      <option value="" >Gyártó 4</option>
   </select>
    </div>
    <br><br>
    <div class="main">
    <br><br><br>
    <?php
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "idez";


$conn = new mysqli($host, $user, $pass, $dbname);


if ($conn->connect_error) {
    die("Sikertelen kapcsolódás: " . $conn->connect_error);
}

$conn->set_charset("utf8mb4");


$sql = "SELECT versz_reszlet FROM idezetek ORDER BY RAND() LIMIT 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        
        echo htmlspecialchars($row["versz_reszlet"]) . "<br>";
    }
} else {
    echo "Nincsenek idézetek az adatbázisban.";
}

$conn->close();
?>
<br><br><br><br><br>
<select  size=”3”>
      <option value="">Arany János</option>
      <option value="">Petőfi Sándor</option>
      <option value="" >Alaplap</option>
      <option value="">Gyártó 1</option>
      <option value="">Gyártó 2</option>
      <option value="">Gyártó 3</option>
      <option value="" >Gyártó 4</option>
    
      
   </select>
    </div>
    <br><br>
    <br>
    <input type="submit" name="submit"  >		
    </form>
    
</body>
</html>