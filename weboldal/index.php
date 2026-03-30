<?php
session_start();


$host = "localhost";
$user = "root";
$pass = "";
$db = "idez";
$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) die("Hiba az adatbázis kapcsolatnál");
$conn->set_charset("utf8");


if (!isset($_SESSION['kviz_kerdesek']) || isset($_POST['uj_kviz'])) {
    $sql = "SELECT * FROM idezetek ORDER BY RAND() LIMIT 5";
    $result = $conn->query($sql);
    $_SESSION['kviz_kerdesek'] = [];
    while ($row = $result->fetch_assoc()) {
        $_SESSION['kviz_kerdesek'][] = $row;
    }
}
?>

<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vers Kvíz</title>
    <link rel="stylesheet" href="main.css">
    <style>
       
    </style>
</head>
<body>

<nav>
    <a href="index.php">Vers Kvíz</a>
    <a href="eredmenyek.php">Eredmények</a>
</nav>

<form method="post">
    <div class="main">
       
        <label for="nev" class="nev-label">Neved</label>
        <input type="text" id="nev" name="nev" value="<?php echo $_POST['nev'] ?? ''; ?>" placeholder="Írd be a neved..." required>
    </div>

    <?php
    $koltok = ["Petőfi Sándor", "Ady Endre", "Vörösmarty Mihály", "József Attila", "Juhász Gyula", "Radnóti Miklós"];
    
    foreach ($_SESSION['kviz_kerdesek'] as $index => $sor) {
        $i = $index + 1;
        $vers = $sor["versz_reszlet"];
        $helyes_kolto = $sor["kolto"];
        
        echo "<div class='main'>";
        echo " <h3> <label for='s$i'>$i. kérdés </label></h3> " ;
        echo "<p><i>" . nl2br(htmlspecialchars($vers)) . "</i></p>";

        $disabled = isset($_POST['kuldes']) ? "disabled" : "";
        echo "<select id='s$i' name='valasz$i' required $disabled>";
        echo "<option value=''>Válassz költőt</option>";
        foreach ($koltok as $k) {
            $selected = (isset($_POST["valasz$i"]) && $_POST["valasz$i"] == $k) ? "selected" : "";
            echo "<option $selected>$k</option>";
        }
        echo "</select>";

        if (isset($_POST['kuldes'])) {
            $valasz = $_POST["valasz$i"] ?? "";
            echo "<div class='visszajelzes'>";
            if ($valasz == $helyes_kolto) {
                echo "<span class='helyes'>✔ Helyes!</span>";
            } else {
                echo "<span class='hibas'>✘ Hibás!</span> A helyes megoldás: <b>$helyes_kolto</b>";
            }
            echo "</div>";
        }
        echo "</div>";
    }
    ?>

    
        <?php if (!isset($_POST['kuldes'])): ?>
            <input type="submit" name="kuldes" value="Ellenőrzés" style="cursor:pointer;">
        <?php else: ?>
            <?php
            $pont = 0;
            for ($i = 1; $i <= 5; $i++) {
                if (($_POST["valasz$i"] ?? "") == $_SESSION['kviz_kerdesek'][$i-1]['kolto']) {
                    $pont++;
                }
            }
            $nev = $conn->real_escape_string($_POST["nev"]);
            $conn->query("INSERT INTO eredmenyek (nev, pont) VALUES ('$nev', '$pont')");
            
            echo "<h2>Végső pontszám: $pont / 5</h2>";
            ?>
            <input type="submit" name="uj_kviz" value="Új kvíz indítása" style="cursor:pointer; background-color: #27ae60; color: white; border: none; padding: 10px 20px; border-radius: 5px;">
        <?php endif; ?>
    
</form>

<?php $conn->close(); ?>
</body>
</html>
