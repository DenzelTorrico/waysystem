<?php

// Configuración de la base de datos
$host = 'localhost';
$dbname = 'way';
$username = 'root'; // Cambiar según configuración
$password = 'admin'; // Cambiar según configuración

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage());
}

// Obtener todos los usuarios
function obtenerUsuarios($pdo) {
    $stmt = $pdo->query("SELECT * FROM usuarios");
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

$usuarios = obtenerUsuarios($pdo);

?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD Usuarios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
    <h2 class="mb-4">CRUD de Usuarios</h2>

    <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#crearUsuarioModal">Agregar Usuario</button>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Teléfono</th>
                <th>Correo</th>
                <th>Compañía</th>
                <th>Calle</th>
                <th>Latitud</th>
                <th>Longitud</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($usuarios as $usuario): ?>
            <tr>
                <td><?= $usuario['id'] ?></td>
                <td><?= $usuario['nombre'] ?></td>
                <td><?= $usuario['telefono'] ?></td>
                <td><?= $usuario['correo'] ?></td>
                <td><?= $usuario['compania'] ?></td>
                <td><?= $usuario['calle'] ?></td>
                <td><?= $usuario['latitud'] ?></td>
                <td><?= $usuario['longitud'] ?></td>
                <td>
                    <button class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#editarUsuarioModal<?= $usuario['id'] ?>">Editar</button>
                    <form action="procesar.php" method="POST" style="display:inline;">
                        <input type="hidden" name="id" value="<?= $usuario['id'] ?>">
                        <button class="btn btn-danger btn-sm" type="submit" name="accion" value="eliminar">Eliminar</button>
                    </form>
                </td>
            </tr>

            <!-- Modal para editar usuario -->
            <div class="modal fade" id="editarUsuarioModal<?= $usuario['id'] ?>" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Editar Usuario</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="procesar.php" method="POST">
                                <input type="hidden" name="id" value="<?= $usuario['id'] ?>">
                                <div class="mb-2"><input class="form-control" type="text" name="nombre" value="<?= $usuario['nombre'] ?>" required></div>
                                <div class="mb-2"><input class="form-control" type="text" name="telefono" value="<?= $usuario['telefono'] ?>" required></div>
                                <div class="mb-2"><input class="form-control" type="email" name="correo" value="<?= $usuario['correo'] ?>" required></div>
                                <div class="mb-2"><input class="form-control" type="text" name="compania" value="<?= $usuario['compania'] ?>" required></div>
                                <div class="mb-2"><input class="form-control" type="text" name="calle" value="<?= $usuario['calle'] ?>" required></div>
                                <div class="mb-2"><input class="form-control" type="text" name="latitud" value="<?= $usuario['latitud'] ?>" required></div>
                                <div class="mb-2"><input class="form-control" type="text" name="longitud" value="<?= $usuario['longitud'] ?>" required></div>
                                <button class="btn btn-success" type="submit" name="accion" value="editar">Actualizar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <?php endforeach; ?>
        </tbody>
    </table>

    <!-- Modal para agregar usuario -->
    <div class="modal fade" id="crearUsuarioModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Agregar Usuario</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="procesar.php" method="POST">
                        <div class="mb-2"><input class="form-control" type="text" name="nombre" placeholder="Nombre" required></div>
                        <div class="mb-2"><input class="form-control" type="text" name="telefono" placeholder="Teléfono" required></div>
                        <div class="mb-2"><input class="form-control" type="email" name="correo" placeholder="Correo" required></div>
                        <div class="mb-2"><input class="form-control" type="text" name="compania" placeholder="Compañía" required></div>
                        <div class="mb-2"><input class="form-control" type="text" name="calle" placeholder="Calle" required></div>
                        <div class="mb-2"><input class="form-control" type="text" name="latitud" placeholder="Latitud" required></div>
                        <div class="mb-2"><input class="form-control" type="text" name="longitud" placeholder="Longitud" required></div>
                        <button class="btn btn-primary" type="submit" name="accion" value="agregar">Agregar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>