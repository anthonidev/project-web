-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-12-2020 a las 16:08:40
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bebidas`
--

CREATE TABLE `bebidas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `categoria_id` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `bebidas`
--

INSERT INTO `bebidas` (`id`, `titulo`, `descripcion`, `foto`, `precio`, `categoria_id`, `fecha`, `estado`) VALUES
(5, 'Vino Don Glauber Borgoña ', 'Botella 750ml ', 'Borgoña.png', '14', 7, '2020-12-22', 1),
(6, 'Cantine Pellegrino Marsala Superiore', 'Botella 750 ml', 'Glauber.png', '46', 7, '2020-12-22', 1),
(7, 'Vino Don Glauber Rose 750 ml', 'Botella 750ml', 'rose.png', '39', 7, '2020-12-22', 1),
(8, 'Vino Tinto MARQUES DE GRIÑÓN ', 'Botella 750ml ', 'vino_marquesdegriñon.png', '69', 7, '2020-12-22', 1),
(9, 'CONCHA Y TORO ', 'Frontera Malbec\r\nBotella 750ml ', 'vino_conchaytoro.jpg', '21', 7, '2020-12-22', 1),
(10, 'Vino VALDIVIESO Caballo Loco ', 'Botella 750ml', 'Vino_VALDIVIESO .png', '210', 7, '2020-12-22', 1),
(11, 'PILSEN BOTELLA ', 'Botella 630ml ', 'cerveza01.jpg', '6', 1, '2020-12-22', 1),
(12, 'CUSQUEÑA RED LAGER ', 'Botella 330ml ', 'cerveza02.jpg', '5', 1, '2020-12-22', 1),
(13, 'CUSQUEÑA BOTELLA ', 'Botella 330ml ', 'cerveza03.jpg', '5', 1, '2020-12-22', 1),
(14, 'CUSQUEÑA MALTA ', 'Botella 330ml ', 'cerveza04.jpg', '5', 1, '2020-12-22', 1),
(15, 'CUSQUEÑA TRIGO', 'Botella 330ml', 'cerveza05.jpg', '5', 1, '2020-12-22', 1),
(16, 'CUSQUEÑA MALTA NEGRA', 'Botella 750ml', 'cerveza06.jpg', '7', 1, '2020-12-22', 1),
(17, 'VODKA SMIRNOFF RED', 'Botella 750ml ', 'vodka01.jpg', '26', 2, '2020-12-22', 1),
(18, 'ABSOLUT ', 'Botella 750ml ', 'vodka02.jpg', '46', 2, '2020-12-22', 1),
(19, 'GREY GOOSE ', 'Botella 750ml', 'vodka03.jpg', '162', 2, '2020-12-22', 1),
(20, 'SKYY ', 'Botella 1lt ', 'vodka04.jpg', '50', 2, '2020-12-22', 1),
(21, 'SKYY CITRUS ', 'Botella 750ml ', 'vodka05.jpg', '39', 2, '2020-12-22', 1),
(22, 'VODKA STOLICHNAYA ', 'Botella 750ml', 'vodka06.jpg', '39', 2, '2020-12-22', 1),
(23, 'RON ZACAPA CENTENARIO XO ', 'Botella 750ml ', 'ron01.jpg', '360', 3, '2020-12-22', 1),
(24, 'CARTAVIO SUPERIOR', 'Botella 750ml ', 'ron02.jpg', '21', 3, '2020-12-22', 1),
(25, 'CARTAVIO BLACK ', 'Botella 750ml', 'ron03.jpg', '22', 3, '2020-12-22', 1),
(26, 'ABUELO 12 AÑOS ', 'Botella 750ml ', 'ron04.jpg', '117', 3, '2020-12-22', 1),
(27, 'BARCELO GRAN AÑEJO ', 'Botella 75cl ', 'ron05.jpg', '38', 3, '2020-12-22', 1),
(28, 'RON PARCE 12 AÑOS ', 'Botella 750ml', 'ron06.jpg', '132', 3, '2020-12-22', 1),
(29, 'JOHNNIE WALKER RED', 'Botella 750ml ', 'whisky01.jpg', '47', 4, '2020-12-22', 1),
(30, 'CHIVAS 12 AÑOS ', 'Botella 750ml ', 'whisky02.jpg', '81', 4, '2020-12-22', 1),
(31, 'JACK DANIELS FRANK SINATRA WHISKY ', 'Botella 1000ml', 'whisky03.jpg', '800', 4, '2020-12-22', 1),
(32, 'WHISKY JOHNNIE WALKER BLUE x2 ', 'Botella 750ml y 200ml ', 'whisky05.jpg', '1000', 4, '2020-12-22', 1),
(33, 'WHISKY OLD PARR CON ESTUCHE ', 'Botella 750ml ', 'whisky05.jpg', '46', 4, '2020-12-22', 1),
(34, 'WHISKY GLENFIDDICH', 'Botella 750ml', 'whisky06.jpg', '300', 4, '2020-12-22', 1),
(35, 'JOSÉ CUERVO ESPECIAL REPOSADO ', 'Botella 750ml ', 'tequila01.webp', '60', 5, '2020-12-22', 1),
(36, 'JOSÉ CUERVO Especial Silver ', 'Botella 750ml ', 'tequila02.webp', '60', 5, '2020-12-22', 1),
(37, 'SAUZA FRESH BLUE AGAVE ', 'Botella 750ml', 'tequila03.webp', '64', 5, '2020-12-22', 1),
(38, 'TANQUERAY ', 'Botella 750ml ', 'ginebra01.jpg', '88', 6, '2020-12-22', 1),
(39, 'BEEFEATER ', 'Botella 75cl', 'ginebra02.jpg', '58', 6, '2020-12-22', 1),
(40, 'BULLDOG ', 'Botella 750ml', 'ginebra03.jpg', '130', 6, '2020-12-22', 1),
(41, 'BEEFEATER PINK ', 'Botella 750ml ', 'ginebra04.jpg', '81', 6, '2020-12-22', 1),
(42, 'GIN CITADELLE ', 'Botella 75cl ', 'ginebra05.jpg', '131', 6, '2020-12-22', 1),
(43, 'BOMBAY', 'Botella 750ml', 'ginebra06.jpg', '78', 6, '2020-12-22', 1),
(44, 'EL CORTE INGLES', 'Botella 750ml', 'jerez01.webp', '21', 8, '2020-12-22', 1),
(45, 'JEREZ TÍO PEPE ', 'Botella 330ml ', 'jerez02.webp', '76', 8, '2020-12-22', 1),
(46, 'JEREZ DRY SACK MEDIUM ', 'Botella 330ml ', 'jerez03.webp', '255', 8, '2020-12-22', 1),
(47, 'PISCO SANTIAGO QUEIROLO QUEBRANTA', 'Botella 750ml ', 'pisco01.jpg', '29', 9, '2020-12-22', 1),
(48, 'PORTON MV ACHOLADO ', 'Botella 750ml', 'pisco02.jpg', '46', 9, '2020-12-22', 1),
(49, 'PISCO 4 GALLOS PURO ACHOLADO ', 'Botella 750ml', 'pisco03.jpg', '35', 9, '2020-12-22', 1),
(50, 'VARGAS ', 'Botella 750ml ', 'pisco04.jpg', '36', 9, '2020-12-22', 1),
(51, 'PISCO 4 GALLOS PURO ITALIA ', 'Botella 75cl ', 'pisco05.jpg', '35', 9, '2020-12-22', 1),
(52, 'PISCO BIONDI QUEBRANTA ', 'Botella 500ml', 'pisco06.jpg', '67', 9, '2020-12-22', 1),
(53, 'CREMA BAILEY\'S STRAWBERRY', 'Botella 700ml ', 'bai01.jpg', '65', 10, '2020-12-22', 1),
(54, 'BAILEYS TRES LECHES', 'Botella 700ml ', 'bai02.jpg', '65', 10, '2020-12-22', 1),
(55, 'BAILEYS Original ', 'Botella 750ml', 'bai03.jpg', '36', 10, '2020-12-22', 1),
(56, 'LICOR DE CREMA BURGOS LECHE ', 'Botella 750ml ', 'burgos01.webp', '35', 10, '2020-12-22', 1),
(57, 'LICOR DE CREMA BURGOS LÚCUMA', 'Botella 750ml', 'burgos02.webp', '35', 10, '2020-12-22', 1),
(58, 'LICOR DE CREMA DE CAFÉ BURGOS ', 'Botella 750ml', 'burgos03.webp', '35', 10, '2020-12-22', 1),
(59, 'MARSALA OLD SECCO', 'Botella 750ml ', 'marsala01.jpg', '147', 11, '2020-12-22', 1),
(60, 'MALVASIA SICILIANA', 'Botella 750ml ', 'marsala02.jpg', '70', 11, '2020-12-22', 1),
(61, 'MARSALA LOMBARDO FINE ', 'Botella 750ml', 'marsala03.jpg', '60', 11, '2020-12-22', 1),
(62, 'SUPERIORE GARIBALDI DOLCE ', 'Botella 750ml', 'marsala04.png', '60', 11, '2020-12-22', 1),
(63, 'MARSALA FINE IP AMBRA DRY ', 'Botella 750ml', 'marsala05.jpg', '97', 11, '2020-12-22', 1),
(64, 'VINO MARSALA EL ABUELO ', 'Botella 750ml', 'marsala06.jpg', '30', 11, '2020-12-22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(10) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'cerveza'),
(2, 'vodka'),
(3, 'rom'),
(4, 'whisky'),
(5, 'tequila'),
(6, 'ginebra'),
(7, 'vinos'),
(8, 'jerez'),
(9, 'pisco'),
(10, 'licores y cremas'),
(11, 'marsala');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) NOT NULL,
  `nombre` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidos`, `email`, `telefono`, `direccion`) VALUES
(1, 'Anthoni', 'Portocarrero', 'lco@gmai.com', '858585', 'ventanilla'),
(2, 'carlos', 'queloqe', 'Anthoni@gmail.com', '8585', 'sadasdas'),
(3, 'Luis', 'Chilon', 'luis@gmial.com', '9586318563', 'Ventanilla'),
(4, 'luisa', 'perez', 'afafafa@mail.com', '9850547', 'ventanilla'),
(5, 'alvaro', 'chota', 'cachis@gmail.com', '9549874854', 'lima'),
(6, 'lucia', 'salas', 'salas.11@gmail.com', '956545578', 'lima'),
(7, 'fernanda', 'huamani', 'fer.huamani@gmail.com', '987518445', 'cusco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `pedidos_id` int(11) NOT NULL,
  `bebidas_id` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id`, `pedidos_id`, `bebidas_id`, `precio`, `cantidad`, `estado`) VALUES
(1, 2, 9, '21.00', 1, 1),
(2, 2, 62, '60.00', 1, 1),
(3, 2, 64, '30.00', 1, 1),
(4, 3, 62, '60.00', 4, 1),
(5, 3, 58, '35.00', 4, 1),
(6, 3, 55, '36.00', 1, 1),
(7, 4, 62, '60.00', 1, 1),
(8, 4, 63, '97.00', 1, 1),
(9, 4, 54, '65.00', 1, 1),
(10, 4, 51, '35.00', 1, 1),
(11, 4, 46, '255.00', 10, 1),
(12, 4, 28, '132.00', 1, 1),
(13, 5, 61, '60.00', 1, 1),
(14, 5, 58, '35.00', 1, 1),
(15, 5, 63, '97.00', 1, 1),
(16, 6, 61, '60.00', 1, 1),
(17, 6, 57, '35.00', 1, 1),
(18, 6, 58, '35.00', 10, 1),
(19, 7, 63, '97.00', 1, 1),
(20, 7, 48, '46.00', 1, 1),
(21, 7, 41, '81.00', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(10) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `fecha` date NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `cliente_id`, `total`, `fecha`, `estado`) VALUES
(1, 1, '767', '2020-12-23', 1),
(2, 2, '111', '2020-12-23', 1),
(3, 3, '416', '2020-12-23', 1),
(4, 4, '2939', '2020-12-23', 1),
(5, 5, '192', '2020-12-23', 1),
(6, 6, '445', '2020-12-23', 1),
(7, 7, '224', '2020-12-23', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre_usuario`, `clave`, `estado`) VALUES
(1, 'Admin', '123', 1),
(2, 'anthoni', '123', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bebidas`
--
ALTER TABLE `bebidas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bebidas`
--
ALTER TABLE `bebidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
