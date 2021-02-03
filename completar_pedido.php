<?php

session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    require 'funciones.php';
    require 'vendor/autoload.php';

    if (isset($_SESSION['carrito']) && !empty($_SESSION['carrito'])) {
        $cliente = new oneshot\Cliente;

        $_params = array(
            'nombre' => $_POST['nombre'],
            'apellidos' => $_POST['apellidos'],
            'email' => $_POST['email'],
            'telefono' => $_POST['telefono'],
            'direccion' => $_POST['direccion']
        );

        $cliente_id = $cliente->registrar($_params);

        $pedido = new oneshot\Pedido;

        $_params = array(
            'cliente_id' => $cliente_id,
            'total' => calcularTotal(),
            'fecha' => date('Y-m-d')
        );

        $pedidos_id =  $pedido->registrar($_params);

        foreach ($_SESSION['carrito'] as $indice => $value) {
            $_params = array(
                "pedidos_id" => $pedidos_id,
                "bebidas_id" => $value['id'],
                "precio" => $value['precio'],
                "cantidad" => $value['cantidad'],
            );

            $pedido->registrarDetalle($_params);
        }

        $_SESSION['carrito'] = array();

        header('Location: gracias.php');
    }
}
