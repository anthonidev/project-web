<?php
session_start();
require 'funciones.php';
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>OneShot</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/estilos.css">


    <script src="https://kit.fontawesome.com/1e7079d68f.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>


</head>

<body>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">OneShot</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">OneShot</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">


                <ul class="nav navbar-nav pull-right">
                    <li>
                        <a href="carrito.php" class="btn">CARRITO <span class="badge"><?php print calcularBebida() ?>
                            </span></a>
                    </li>
                </ul>
                <ul class="nav navbar-nav pull-right">
                    <li>
                        <a href="panel/index.php" class="btn">ADMIN
                            <span class="glyphicon glyphicon-lock">
                            </span></a>
                    </li>
                </ul>
                <ul class="nav navbar-nav pull-right">
                    <li>
                        <a href="contacto.php"><i class="fas fa-id-card-alt"></i> CONTACTO</a>

                    </li>
                </ul>
                <ul class="nav navbar-nav pull-right">
                    <li>
                        <a href="./Productos.php"><i class="glyphicon glyphicon-tags"></i> PRODUCTOS</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav pull-right">
                    <li>
                        <a href="./index.php"><i class="fas fa-wine-glass-alt"></i> INICIO</a>
                    </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>

    <main class="container ">
        <article class="contacto">
            <div class="contactinfo">

                <div>
                    <h2>Información de Contacto</h2>
                    <ul class="info">
                        <li>
                            <span><i class="fas fa-map-marker-alt"></i></span>
                            <span>
                                calle 13 <br>
                                Ventanilla,Callao
                            </span>
                        </li>
                        <li>
                            <span><i class="fas fa-envelope-open-text"></i></span>
                            <span>
                                oneshot@oneshot.com
                            </span>
                        </li>
                        <li>
                            <span><i class="fas fa-phone-volume"></i></i></span>
                            <span>
                                958920823
                            </span>
                        </li>
                    </ul>
                </div>
                <ul class="sci">
                    <li>
                        <a href=""><span class="fab fa-facebook-f"></span></a>
                    </li>
                    <li>
                        <a href=""><span class="fab fa-twitter"></span></a>
                    </li>
                    <li>
                        <a href=""><span class="fab fa-instagram"></span></a>
                    </li>
                    <li>
                        <a href=""><span class="fab fa-youtube"></span></a>
                    </li>
                </ul>

            </div>

            <div>
                <form class="contactForm" action="" name="formContacto" method="post">

                    <h2>Emviar Mensaje</h2>
                    <div class="formBox">
                        <div class="inputBox w50">
                            <input type="text" name="nombre" required>
                            <label for="nombre">Nombre</label>
                        </div>
                        <div class="inputBox w50">
                            <input type="text" name="apellido" required>
                            <label for="apellido">apellido</label>
                        </div>
                        <div class="inputBox w50">
                            <input type="email" name="email" required>
                            <label for="email">Correo Electrónico</label>
                        </div>
                        <div class="inputBox w50">
                            <input type="tel" name="phone" required pattern="[0-9]{9}">
                            <label for="phone">Número de Télefono</label>

                        </div>
                        <div class="inputBox w100">
                            <textarea name="mensaje" id="" cols="30" rows="10" required></textarea>
                            <label for="mensaje">Escribe tu mensaje aquí...</label>
                        </div>
                        <div class="inputBox w100">
                            <input type="reset" name="btnLimpiar" value="Limpiar">
                            <input type="submit" name="btnEnviar" value="Enviar">

                        </div>
                    </div>

                </form>

            </div>

        </article>
    </main>


    </div> <!-- /container -->
    <footer>
        <div class="main-content ">
            <div class="left box ">
                <h2>Nosotros</h2>
                <div class="content ">
                    <p>Somos una tienda de bebidas alcohólicas con los precios más competitivos del mercado y un equipo
                        multidisplinar, profesional y cualificado.</p>
                    <div class="social ">
                        <a href=" "><span class="fab fa-facebook-f "></span></a>
                        <a href=" "><span class="fab fa-twitter "></span></a>
                        <a href=" "><span class="fab fa-instagram "></span></a>
                        <a href=" "><span class="fab fa-youtube "></span></a>
                    </div>
                </div>
            </div>

            <div class="center box ">
                <h2>Dirección</h2>
                <div class="content ">
                    <div class="place ">
                        <span class="fas fa-map-marker-alt "></span>
                        <span class="text ">ventanilla, callao</span>
                    </div>
                    <div class="phone ">
                        <span class="fas fa-phone-alt "></span>
                        <span class="text ">+51-958920823</span>
                    </div>
                    <div class="email ">
                        <span class="fas fa-envelope "></span>
                        <span class="text ">oneshot@oneshot.com</span>
                    </div>
                </div>
            </div>

            <div class="ring box ">
                <div>
                    <a href=" ">
                        <img src="assets/imagenes/footerlogo5.png " alt=" ">
                    </a>

                </div>
                <div class="cop ">
                    <p>Copyright © 2020 OneShot. Todos los derrechos reservados.</p>


                </div>
            </div>
        </div>

    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

</body>


</html>