<?php

require 'config.php';

// Crear tabla si no existe
$pdo->exec("CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(20),
    correo VARCHAR(100),
    compania VARCHAR(100),
    calle VARCHAR(100),
    latitud VARCHAR(50),
    longitud VARCHAR(50)
)");

// Función para insertar un usuario
function insertarUsuario($pdo, $nombre, $telefono, $correo, $compania, $calle, $latitud, $longitud) {
    $sql = "INSERT INTO usuarios (nombre, telefono, correo, compania, calle, latitud, longitud) VALUES (?, ?, ?, ?, ?, ?, ?)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$nombre, $telefono, $correo, $compania, $calle, $latitud, $longitud]);
    return $pdo->lastInsertId();
}

// Consumir la API y almacenar datos
$json = file_get_contents("https://jsonplaceholder.typicode.com/users");
$usuarios = json_decode($json, true);

foreach ($usuarios as $usuario) {
    insertarUsuario(
        $pdo,
        $usuario['name'],
        $usuario['phone'],
        $usuario['email'],
        $usuario['company']['name'],
        $usuario['address']['street'],
        $usuario['address']['geo']['lat'],
        $usuario['address']['geo']['lng']
    );
}

echo "Usuarios insertados correctamente";

?>