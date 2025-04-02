<?php

// Configuración de la base de datos
$host = 'localhost';
$dbname = 'way';
$username = 'root'; 
$password = 'admin'; 

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage());
}




?>