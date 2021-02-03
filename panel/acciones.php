<?php
require '../vendor/autoload.php';
$bebida = new oneshot\bebida;
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if ($_POST['accion'] === 'Registrar') {
        if (empty($_POST['titulo']))
            exit('Completar titulo');
        if (empty($_POST['descripcion']))
            exit('Completar descripcion');
        if (empty($_POST['categoria_id']))
            exit('Seleccionar una categoria');
        if (!is_numeric($_POST['categoria_id']))
            exit('Seleccionar una categoria valida');


        $_params = array(
            'titulo' => $_POST['titulo'],
            'descripcion' => $_POST['descripcion'],
            'foto' => subirfoto(),
            'precio' => $_POST['precio'],
            'categoria_id' => $_POST['categoria_id'],
            'fecha' => date('Y-m-d')
        );

        $respuesta = $bebida->registrar($_params);

        if ($respuesta)
            header('Location: bebidas/index.php');
        else
            print 'error al registrar pelicula';
    }








    if ($_POST['accion'] === 'Actualizar') {

        if (empty($_POST['titulo']))
            exit('Completar titulo');
        if (empty($_POST['descripcion']))
            exit('Completar descripcion');
        if (empty($_POST['categoria_id']))
            exit('Seleccionar una categoria');
        if (!is_numeric($_POST['categoria_id']))
            exit('Seleccionar una categoria valida');


        $_params = array(
            'titulo' => $_POST['titulo'],
            'descripcion' => $_POST['descripcion'],

            'precio' => $_POST['precio'],
            'categoria_id' => $_POST['categoria_id'],
            'fecha' => date('Y-m-d'),
            'id' => $_POST['id']
        );

        if (!empty($_POST['foto_temp']))
            $_params['foto'] = $_POST['foto_temp'];
        if (!empty($_FILES['foto']['name']))
            $_params['foto'] = subirfoto();


        $respuesta = $bebida->actualizar($_params);

        if ($respuesta)
            header('Location: bebidas/index.php');
        else
            print 'error al actualizar bebida';
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'GET') {

    $id = $_GET['id'];
    $respuesta = $bebida->eliminar($id);

    if ($respuesta)
        header('Location: bebidas/index.php');
    else
        print 'error al actualizar bebida';
}


function subirfoto()
{
    $carpeta = __DIR__ . '/../upload/';
    $archivo = $carpeta . $_FILES['foto']['name'];
    move_uploaded_file($_FILES['foto']['tmp_name'], $archivo);
    return $_FILES['foto']['name'];
}
