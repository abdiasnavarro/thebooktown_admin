-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2018 a las 17:33:30
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `thebookbase`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(10) NOT NULL,
  `clave` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `correo_usuario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `clave_producto` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `producto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(3) NOT NULL,
  `precio` decimal(8,0) NOT NULL,
  `total` decimal(8,0) NOT NULL,
  `fecha` date NOT NULL,
  `status_envio` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `status_compra` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `direccion_envio` text COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `clave`, `correo_usuario`, `clave_producto`, `producto`, `foto`, `descripcion`, `cantidad`, `precio`, `total`, `fecha`, `status_envio`, `status_compra`, `direccion_envio`, `nombre`) VALUES
(9, '46bd94efa0bd9d783c85d66fbdfcc0e110fd0ead', 'abdias@gmail.com', 'c1e29c53f2f56a807303f7d9cf29b1db33b410ea', 'Matar a un ruise&ntilde;or', 'foto_producto/c1e29c53f2f56a807303f7d9cf29b1db33b410ea.jpg', 'Matar un ruise&ntilde;or es una novela de 1960 de la escritora estadounidense Harper Lee. Su publicaci&oacute;n tuvo un &eacute;xito instant&aacute;neo, ganando el premio Pulitzer y pasando a convertirse en un cl&aacute;sico de la literatura estadounidense.', 1, '34', '34', '2018-07-15', 'POR ENVIAR', 'COMPRADO', 'Ciudad de Panama Calle 50', 'Abdias Navarro'),
(11, '165091c312ae80557839e557391836ef72b9dc93', 'abdias@gmail.com', '67558cda28e3f7f9c69b31611c9cc580d51cd957', 'El hobbit', 'foto_producto/67558cda28e3f7f9c69b31611c9cc580d51cd957.jpg', 'El hobbit es una novela fant&aacute;stica del fil&oacute;logo y escritor brit&aacute;nico J. R. R. Tolkien. Fue escrita por partes desde finales de los a&ntilde;os 1920 hasta principios de los a&ntilde;os 1930.', 2, '45', '90', '2018-07-15', 'POR ENVIAR', 'COMPRADO', 'Ciudad de Panama Calle 50', 'Abdias Navarro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deseos`
--

CREATE TABLE `deseos` (
  `id` int(10) NOT NULL,
  `clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `clave_producto` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `deseos`
--

INSERT INTO `deseos` (`id`, `clave`, `correo`, `clave_producto`) VALUES
(2, 'd28a3fd9d1a10edae0460907408a0c27781d48b0', 'abdias@gmail.com', '6545aaeab5ba69dfa1a27f8a5c1196ea1b050faa'),
(3, '17e7d675327b7cf17858c237dfcc6794cc94a4e5', 'abdias@gmail.com', '6287aca3434c9236b1f843367e1d52014110bc44'),
(4, '65d610940ffa5680a2ef24f4a6e750fdb2a71293', 'abdias@gmail.com', '3be84c90e01d5f7ed4018fc0dba6076a7113b718');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id` int(10) NOT NULL,
  `clave` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `clave_producto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ruta` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id`, `clave`, `clave_producto`, `ruta`) VALUES
(1, 'a2d4d64ee244f718903fe5ee01ecf5546882281f', '64687d98742caa06c4cc74df6e3b474b7e5fb82f', 'fotos/a2d4d64ee244f718903fe5ee01ecf5546882281f8951.jpg'),
(5, '9ff4ce4994631ab7aaeb186ec9be64826b5afbbc', '6287aca3434c9236b1f843367e1d52014110bc44', 'fotos/9ff4ce4994631ab7aaeb186ec9be64826b5afbbc1011.jpg'),
(6, '6109b2c556a29bba27f3a9a661013997e7da4303', '6545aaeab5ba69dfa1a27f8a5c1196ea1b050faa', 'fotos/6109b2c556a29bba27f3a9a661013997e7da43038541.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(10) NOT NULL,
  `clave` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `producto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(5) NOT NULL,
  `precio` decimal(8,0) NOT NULL,
  `categoria` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `clave`, `producto`, `cantidad`, `precio`, `categoria`, `descripcion`, `foto`) VALUES
(3, '64687d98742caa06c4cc74df6e3b474b7e5fb82f', 'El Retrato de Dorian Gray', 10, '20', 'Clasico', 'El retrato de Dorian Gray o El cuadro de Dorian Gray (original en ingl&eacute;s: The Picture of Dorian Gray) es una novela escrita por el autor irland&eacute;s Oscar Wilde.', 'foto_producto/64687d98742caa06c4cc74df6e3b474b7e5fb82f.jpg'),
(6, '6287aca3434c9236b1f843367e1d52014110bc44', 'La Historia del Loco', 23, '13', 'NoFiccion', 'La Historia del Loco es un Thriller y una de las novelas m&aacute;s destacadas del escritor estadounidense John Katzenbach, publicado en 2004.', 'foto_producto/6287aca3434c9236b1f843367e1d52014110bc44.jpg'),
(7, '6545aaeab5ba69dfa1a27f8a5c1196ea1b050faa', 'Las Ventajas de Ser Invisible', 23, '20', 'Juvenil', 'The Perks of Being a Wallflower es una novela epistolar escrita por el autor estadounidense Stephen Chbosky. Fue publicada el 1 de febrero de 1999 por MTV Books.', 'foto_producto/6545aaeab5ba69dfa1a27f8a5c1196ea1b050faa.jpg'),
(8, 'c1e29c53f2f56a807303f7d9cf29b1db33b410ea', 'Matar a un ruise&ntilde;or', 11, '34', 'Drama', 'Matar un ruise&ntilde;or es una novela de 1960 de la escritora estadounidense Harper Lee. Su publicaci&oacute;n tuvo un &eacute;xito instant&aacute;neo, ganando el premio Pulitzer y pasando a convertirse en un cl&aacute;sico de la literatura estadounidense.', 'foto_producto/c1e29c53f2f56a807303f7d9cf29b1db33b410ea.jpg'),
(9, 'f5c443d18ffa123e81c49c5667fa8545c55ad7ad', 'The Maze Runner', 50, '50', 'Ficcion', 'The Maze Runner (El corredor del laberinto en Espa&ntilde;a y Maze Runner: Correr o morir en Hispanoam&eacute;rica), es una novela dist&oacute;pica escrita por el autor estadounidense James Dashner, como primer libro de la trilog&iacute;a hom&oacute;nima. Fue publicado en octubre de 2009 por Delacorte Press, divisi&oacute;n de Random House Mondadori.', 'foto_producto/f5c443d18ffa123e81c49c5667fa8545c55ad7ad.jpg'),
(10, '67558cda28e3f7f9c69b31611c9cc580d51cd957', 'El hobbit', 11, '45', 'Ficcion', 'El hobbit es una novela fant&aacute;stica del fil&oacute;logo y escritor brit&aacute;nico J. R. R. Tolkien. Fue escrita por partes desde finales de los a&ntilde;os 1920 hasta principios de los a&ntilde;os 1930.', 'foto_producto/67558cda28e3f7f9c69b31611c9cc580d51cd957.jpg'),
(11, '3be84c90e01d5f7ed4018fc0dba6076a7113b718', 'El cuervo', 3, '12', 'Clasico', 'El cuervo es un poema narrativo escrito por Edgar Allan Poe, publicado por primera vez en 1845. Constituye su composici&oacute;n po&eacute;tica m&aacute;s famosa, ya que le dio reconocimiento internacional.', 'foto_producto/3be84c90e01d5f7ed4018fc0dba6076a7113b718.jpg'),
(12, 'a005ae0a2b36c2e782270025046851cfb656de61', 'Cien a&ntilde;os de soledad', 10, '23', 'Clasico', 'Cien a&ntilde;os de soledad es una novela del escritor colombiano Gabriel Garc&iacute;a M&aacute;rquez, ganador del Premio Nobel de Literatura en 1982. Es considerada una obra maestra de la literatura hispanoamericana y universal, as&iacute; como una de las obras m&aacute;s traducidas y le&iacute;das en espa&ntilde;ol.', 'foto_producto/a005ae0a2b36c2e782270025046851cfb656de61.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rating`
--

CREATE TABLE `rating` (
  `id` int(10) NOT NULL,
  `clave_producto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `id_user` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `comentario` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `rating` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rating`
--

INSERT INTO `rating` (`id`, `clave_producto`, `id_user`, `fecha`, `comentario`, `usuario`, `rating`) VALUES
(7, '58e67c7cbe47fa6ea0794d0deb85843be6a3572a', 13, '2018-07-14', 'Prueba', 'abdias', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `verificacion` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `password`, `email`, `foto`, `verificacion`, `fecha`) VALUES
(13, 'abdias', '$2a$07$usesomesillystringforeh13SwIG2YuGjH7WNZPTqAnpzOR7aksC', 'abdias@gmail.com', '', 1, '2018-07-14 03:18:39');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deseos`
--
ALTER TABLE `deseos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `deseos`
--
ALTER TABLE `deseos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
