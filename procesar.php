<?php
// Procesar insertar, actualizar y eliminar
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    try {
        $pdo = new PDO("mysql:host=localhost;dbname=way;charset=utf8", "root", "admin");

        if ($_POST['accion'] == 'agregar') {
            $stmt = $pdo->prepare("INSERT INTO usuarios (nombre, telefono, correo, compania, calle, latitud, longitud) VALUES (?, ?, ?, ?, ?, ?, ?)");
            $stmt->execute([$_POST['nombre'], $_POST['telefono'], $_POST['correo'], $_POST['compania'], $_POST['calle'], $_POST['latitud'], $_POST['longitud']]);
        }

        if ($_POST['accion'] == 'editar') {
            $stmt = $pdo->prepare("UPDATE usuarios SET nombre=?, telefono=?, correo=?, compania=?, calle=?, latitud=?, longitud=? WHERE id=?");
            $stmt->execute([$_POST['nombre'], $_POST['telefono'], $_POST['correo'], $_POST['compania'], $_POST['calle'], $_POST['latitud'], $_POST['longitud'], $_POST['id']]);
        }

        if ($_POST['accion'] == 'eliminar') {
            $stmt = $pdo->prepare("DELETE FROM usuarios WHERE id=?");
            $stmt->execute([$_POST['id']]);
        }

        header("Location: crud_usuarios.php"); // Redirigir después de la acción
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}
?>
