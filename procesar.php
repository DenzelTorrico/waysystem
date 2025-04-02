<?php
// Configuración de la base de datos
$host = 'localhost';
$dbname = 'way';
$username = 'root';  // Cambia según tu configuración
$password = 'admin';      // Cambia según tu configuración

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage());
}

// Método para insertar usuario
function insertarUsuario($nombre, $telefono, $correo, $compania, $calle, $latitud, $longitud) {
    global $pdo;
    $stmt = $pdo->prepare("INSERT INTO usuarios (nombre, telefono, correo, compania, calle, latitud, longitud) VALUES (?, ?, ?, ?, ?, ?, ?)");
    return $stmt->execute([$nombre, $telefono, $correo, $compania, $calle, $latitud, $longitud]);
}

// Método para actualizar usuario
function actualizarUsuario($id, $nombre, $telefono, $correo, $compania, $calle, $latitud, $longitud) {
    global $pdo;
    $stmt = $pdo->prepare("UPDATE usuarios SET nombre=?, telefono=?, correo=?, compania=?, calle=?, latitud=?, longitud=? WHERE id=?");
    return $stmt->execute([$nombre, $telefono, $correo, $compania, $calle, $latitud, $longitud, $id]);
}

// Método para eliminar usuario
function eliminarUsuario($id) {
    global $pdo;
    $stmt = $pdo->prepare("DELETE FROM usuarios WHERE id=?");
    return $stmt->execute([$id]);
}

// Método para obtener usuario por ID
function obtenerUsuarioPorId($id) {
    global $pdo;
    $stmt = $pdo->prepare("SELECT * FROM usuarios WHERE id = ?");
    $stmt->execute([$id]);
    return $stmt->fetch(PDO::FETCH_ASSOC);
}

// Procesar la acción según el valor del formulario
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if ($_POST['accion'] == 'agregar') {
        $resultado = insertarUsuario($_POST['nombre'], $_POST['telefono'], $_POST['correo'], $_POST['compania'], $_POST['calle'], $_POST['latitud'], $_POST['longitud']);
        if ($resultado) {
            header("Location: crud_usuarios.php"); // Redirigir después de insertar
        }
    }

    if ($_POST['accion'] == 'editar') {
        $resultado = actualizarUsuario($_POST['id'], $_POST['nombre'], $_POST['telefono'], $_POST['correo'], $_POST['compania'], $_POST['calle'], $_POST['latitud'], $_POST['longitud']);
        if ($resultado) {
            header("Location: crud_usuarios.php"); // Redirigir después de actualizar
        }
    }

    if ($_POST['accion'] == 'eliminar') {
        $resultado = eliminarUsuario($_POST['id']);
        if ($resultado) {
            header("Location: crud_usuarios.php"); // Redirigir después de eliminar
        }
    }
}
?>
