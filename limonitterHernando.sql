-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2023 a las 22:24:13
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `limonitter`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `anuncio`
--

INSERT INTO `anuncio` (`id`, `titulo`, `descripcion`, `fecha`, `idUsuario`) VALUES
(12, 'Magdalena de Limon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vestibulum tellus at enim eleifend vulputate. Pellentesque eu sem quis elit varius pellentesque. Nullam eget nulla elit. Sed ut sem odio. Qu', '2023-02-19 14:49:25', 1),
(13, 'Politica Norte Americana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vestibulum tellus at enim eleifend vulputate. Pellentesque eu sem quis elit varius pellentesque. Nullam eget nulla elit. Sed ut sem odio. Qu', '2023-02-19 14:44:09', 2),
(14, 'Peugeot 306 hdi', 'Pueguet 306 hdi del a&ntilde;o 2006 con tracci&oacute;n turbo motores que se desliza baja el agua , terreneitor es la solucion a todos tus problemas.', '2023-02-19 16:10:48', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id` int(11) NOT NULL,
  `idAnuncio` int(11) NOT NULL,
  `IdUsuarioComenta` int(11) NOT NULL,
  `comentario` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`id`, `idAnuncio`, `IdUsuarioComenta`, `comentario`) VALUES
(40, 12, 2, 'Esto no se ni que es bro'),
(51, 12, 2, 'Patatas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `idAnuncio` int(11) NOT NULL,
  `idUsuarioDaLike` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `likes`
--

INSERT INTO `likes` (`id`, `idAnuncio`, `idUsuarioDaLike`) VALUES
(170, 14, 1),
(193, 13, 1),
(203, 14, 2),
(210, 12, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidor`
--

CREATE TABLE `seguidor` (
  `id` int(11) NOT NULL,
  `idSeguidor` int(11) NOT NULL,
  `idSiguiendo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `seguidor`
--

INSERT INTO `seguidor` (`id`, `idSeguidor`, `idSiguiendo`) VALUES
(53, 2, 3),
(54, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `uid` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `password`, `nombre`, `uid`) VALUES
(1, 'sergio@gmail.com', '$2y$10$6jRNchsXDcJd6RiHv0j6..urRyXMOCLIKLDsWjEns15U2.j.KzH/O', 'Sergio', '068f246fe39d166229af6e4dfb058245b8192354dd2e59b3b487d6654029a947a5a410af'),
(2, 'javier@gmail.com', '$2y$10$vP0YI.2MlYk.okINfKM6yOBjSbiZ4sGOoK1qpGYlRPkARxfA.hg.q', 'Javier', '4db8475ad40ca6b57c09690f664c73bc0422082fc132a63c2a36bcd03d9bdf5dfb676bd0'),
(3, 'alba@gmail.com', '$2y$10$.80gGpRyKKZDDhQkdBPb4.8dNFkKUihW/ujPwRHTdrs9sp2qSYuaC', 'Alba', 'ed7102b161c509ba15dd91504441e646597212fee1b55e6789ce2f3c5bc287e9d7324b2d'),
(4, 'nuevo@gmail.com', '$2y$10$VcHDOZgf61vTqbkU2n3Rhuy6v1yJryTm2l8KW4IRP/ouk71O6cNIK', 'nuevo', '318b2a83bd7dd9cbffe46c83f32a6f0dd25df51abec671100db459f61a310dcdbf46fcc6'),
(5, 'javierjavier@gmail.com', '$2y$10$uLj72BVP.nvlBUxaxUPYm.vpQvgd9m9Qo6SZu8usYe6e7KZc0RM2O', 'Alba Maria Purisima', '58488f9b1ef69a2d391293a10fb3043f9d33bde5f62a3c28f646202aa7693f36d0db2ad7'),
(6, 'pepe@gmail.com', '$2y$10$TnAFZSbVUzelXCo5UcgG6u1qLeQn73XccwlyoBWq6TkOsbMVSFZKy', 'Alba Maria Purisima', '08672106f7db7244e12fd70c34b3d7581be97685f089c92f79f3eb1f0b26a34f4621ec30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idusuario` (`idUsuario`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_anuncio` (`idAnuncio`),
  ADD KEY `fk_usuarioComenta` (`IdUsuarioComenta`);

--
-- Indices de la tabla `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idAnuncio` (`idAnuncio`),
  ADD KEY `fk_idUsuarioDaLike` (`idUsuarioDaLike`);

--
-- Indices de la tabla `seguidor`
--
ALTER TABLE `seguidor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idseguidor` (`idSeguidor`),
  ADD KEY `fk_idsiguiendo` (`idSiguiendo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT de la tabla `seguidor`
--
ALTER TABLE `seguidor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD CONSTRAINT `fk_idusuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `fk_anuncio` FOREIGN KEY (`idAnuncio`) REFERENCES `anuncio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuarioComenta` FOREIGN KEY (`IdUsuarioComenta`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `fk_idAnuncio` FOREIGN KEY (`idAnuncio`) REFERENCES `anuncio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_idUsuarioDaLike` FOREIGN KEY (`idUsuarioDaLike`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `seguidor`
--
ALTER TABLE `seguidor`
  ADD CONSTRAINT `fk_idseguidor` FOREIGN KEY (`idSeguidor`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_idsiguiendo` FOREIGN KEY (`idSiguiendo`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
