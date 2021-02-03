<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nombre_usuario = $_POST['nombre_usuario'];
    $clave = $_POST['clave'];

    require '../vendor/autoload.php';
    $usuario = new oneshot\Usuario;
    $resultado = $usuario->login($nombre_usuario, $clave);

    if ($resultado) {
        session_start();
        $_SESSION['usuario_info'] = array(
            'nombre_usuario' => $resultado['nombre_usuario'],
            'estado' => 1
        );
        header('Location: dashboard.php');
    } else {
        print 'error al iniciar';
    }
}
