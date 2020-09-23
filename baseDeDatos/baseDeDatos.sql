-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 23-09-2020 a las 17:47:12
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoIntegrador`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_post`
--

CREATE TABLE `comentarios_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_post` int(10) UNSIGNED NOT NULL,
  `id_user_comentario` int(10) UNSIGNED NOT NULL,
  `texto_comentario` varchar(140) DEFAULT NULL,
  `fecha_comentario` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_post`
--

CREATE TABLE `datos_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `imagen_usuario` varchar(100) NOT NULL,
  `texto_post` varchar(140) DEFAULT NULL,
  `fecha_post` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_activos`
--

CREATE TABLE `usuarios_activos` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `fecha_creacion_cuenta` date NOT NULL,
  `numero_seguidores` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios_post`
--
ALTER TABLE `comentarios_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_user_idx` (`id_post`),
  ADD KEY `FK_comentariouser_idx` (`id_user_comentario`);

--
-- Indices de la tabla `datos_post`
--
ALTER TABLE `datos_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_posteousuario_idx` (`id_usuario`);

--
-- Indices de la tabla `usuarios_activos`
--
ALTER TABLE `usuarios_activos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios_post`
--
ALTER TABLE `comentarios_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datos_post`
--
ALTER TABLE `datos_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_activos`
--
ALTER TABLE `usuarios_activos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios_post`
--
ALTER TABLE `comentarios_post`
  ADD CONSTRAINT `FK_comentario_user` FOREIGN KEY (`id_user_comentario`) REFERENCES `usuarios_activos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`id_post`) REFERENCES `datos_post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `datos_post`
--
ALTER TABLE `datos_post`
  ADD CONSTRAINT `FK_idUser` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios_activos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
