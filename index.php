<?php
// Paramètres de connexion MySQL
$host = 'mysql-container';
$dbname = 'mydatabase';
$user = 'root';
$pass = 'password';

// Connexion à MySQL
try {
    $db = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);
} catch (PDOException $e) {
    die('Connexion échouée : ' . $e->getMessage());
}

// Création de la table
$query = 'CREATE TABLE IF NOT EXISTS mytable (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255))';
$db->exec($query);

// Insertion de données
$query = 'INSERT INTO mytable (name) VALUES ("Jody")';
$db->exec($query);

// Récupération des données
$result = $db->query('SELECT * FROM mytable');
foreach ($result as $row) {
    echo 'Salut ' . $row['name'] . '<br>';
    echo '<img src="/public/img/memedev2.jpg">';
}

// Fermer la connexion à la base de données
$db = null;
?>
