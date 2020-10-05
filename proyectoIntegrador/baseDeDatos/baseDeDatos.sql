-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2020 at 11:24 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodiegram`
--
CREATE DATABASE IF NOT EXISTS `foodiegram` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `foodiegram`;

-- --------------------------------------------------------

--
-- Table structure for table `comentarios_post`
--

CREATE TABLE `comentarios_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_post` int(10) UNSIGNED NOT NULL,
  `id_user_comentario` int(10) UNSIGNED NOT NULL,
  `texto_comentario` varchar(140) NOT NULL,
  `fecha_comentario` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comentarios_post`
--

INSERT INTO `comentarios_post` (`id`, `id_post`, `id_user_comentario`, `texto_comentario`, `fecha_comentario`) VALUES
(1, 3, 2, 'Pero que rico se ve!', '2020-01-03'),
(2, 3, 3, 'Me tentaste!', '2020-02-03'),
(3, 3, 4, 'UUUU tremendo!!', '2020-03-03'),
(4, 3, 5, 'Buenarrrdoo', '2020-04-03'),
(5, 4, 2, 'Pero que rico se ve!', '2020-12-03'),
(6, 4, 3, 'Me tentaste!', '2020-11-03'),
(7, 4, 4, 'UUUU tremendo!!', '2020-07-03'),
(8, 4, 5, 'Buenarrrdoo', '2020-08-03'),
(9, 5, 2, 'Pero que rico se ve!', '2020-01-03'),
(10, 5, 3, 'Me tentaste!', '2020-09-03'),
(11, 5, 4, 'UUUU tremendo!!', '2020-12-03'),
(12, 5, 5, 'Buenarrrdoo', '2020-09-03'),
(13, 6, 2, 'Pero que rico se ve!', '2020-05-03'),
(14, 6, 3, 'Me tentaste!', '2020-05-03'),
(15, 6, 4, 'UUUU tremendo!!', '2020-11-03'),
(16, 6, 5, 'Buenarrrdoo', '2020-10-03'),
(17, 7, 2, 'Pero que rico se ve!', '2020-03-03'),
(18, 7, 3, 'Me tentaste!', '2019-01-03'),
(19, 7, 4, 'UUUU tremendo!!', '2020-02-03'),
(20, 7, 5, 'Buenarrrdoo', '2020-10-03'),
(21, 8, 2, 'Pero que rico se ve!', '2019-01-03'),
(22, 8, 3, 'Me tentaste!', '2020-01-03'),
(23, 8, 4, 'UUUU tremendo!!', '2020-01-03'),
(24, 8, 5, 'Buenarrrdoo', '2020-11-03'),
(25, 9, 2, 'Pero que rico se ve!', '2020-01-03'),
(26, 9, 3, 'Me tentaste!', '2020-10-03'),
(27, 9, 4, 'UUUU tremendo!!', '2020-01-03'),
(28, 9, 5, 'Buenarrrdoo', '2020-01-03'),
(29, 10, 2, 'Pero que rico se ve!', '2020-01-03'),
(30, 10, 3, 'Me tentaste!', '2020-01-03'),
(31, 10, 4, 'UUUU tremendo!!', '2020-01-03'),
(32, 10, 5, 'Buenarrrdoo', '2020-05-03'),
(33, 11, 2, 'Pero que rico se ve!', '2020-01-16'),
(34, 11, 3, 'Me tentaste!', '2020-05-03'),
(35, 11, 4, 'UUUU tremendo!!', '2020-01-03'),
(36, 11, 5, 'Buenarrrdoo', '2020-01-03'),
(37, 12, 2, 'Pero que rico se ve!', '2020-01-03'),
(38, 12, 3, 'Me tentaste!', '2019-01-03'),
(39, 12, 4, 'UUUU tremendo!!', '2019-06-03'),
(40, 12, 5, 'Buenarrrdoo', '2020-01-03'),
(41, 13, 1, 'Pero que rico se ve!', '2020-01-03'),
(42, 13, 3, 'Me tentaste!', '2020-01-03'),
(43, 13, 4, 'UUUU tremendo!!', '2020-01-03'),
(44, 13, 5, 'Buenarrrdoo', '2020-01-03'),
(45, 14, 1, 'Pero que rico se ve!', '2020-02-03'),
(46, 14, 3, 'Me tentaste!', '2020-01-03'),
(47, 14, 4, 'UUUU tremendo!!', '2020-01-03'),
(48, 14, 5, 'Buenarrrdoo', '2020-01-03'),
(49, 15, 1, 'Pero que rico se ve!', '2020-01-03'),
(50, 15, 3, 'Me tentaste!', '2020-01-03'),
(51, 15, 4, 'UUUU tremendo!!', '2020-01-03'),
(52, 15, 5, 'Buenarrrdoo', '2020-01-03'),
(53, 16, 1, 'Pero que rico se ve!', '2020-01-03'),
(54, 16, 3, 'Me tentaste!', '2020-01-03'),
(55, 16, 4, 'UUUU tremendo!!', '2020-01-03'),
(56, 16, 5, 'Buenarrrdoo', '2020-01-03'),
(57, 17, 1, 'Pero que rico se ve!', '2020-01-03'),
(58, 17, 3, 'Me tentaste!', '2020-01-03'),
(59, 17, 4, 'UUUU tremendo!!', '2020-01-03'),
(60, 17, 5, 'Buenarrrdoo', '2020-01-03'),
(61, 18, 1, 'Pero que rico se ve!', '2020-01-03'),
(62, 18, 3, 'Me tentaste!', '2020-01-03'),
(63, 18, 4, 'UUUU tremendo!!', '2020-01-03'),
(64, 18, 5, 'Buenarrrdoo', '2020-01-03'),
(65, 19, 1, 'Pero que rico se ve!', '2020-01-03'),
(66, 19, 3, 'Me tentaste!', '2020-01-03'),
(67, 19, 4, 'UUUU tremendo!!', '2020-01-03'),
(68, 19, 5, 'Buenarrrdoo', '2020-01-03'),
(69, 20, 1, 'Pero que rico se ve!', '2020-09-03'),
(70, 20, 3, 'Me tentaste!', '2020-01-03'),
(71, 20, 4, 'UUUU tremendo!!', '2020-01-03'),
(72, 20, 5, 'Buenarrrdoo', '2020-01-03'),
(73, 21, 1, 'Pero que rico se ve!', '2020-07-03'),
(74, 21, 3, 'Me tentaste!', '2020-01-03'),
(75, 21, 4, 'UUUU tremendo!!', '2020-01-03'),
(76, 21, 5, 'Buenarrrdoo', '2020-01-03'),
(77, 22, 1, 'Pero que rico se ve!', '2020-01-03'),
(78, 22, 3, 'Me tentaste!', '2020-01-03'),
(79, 22, 4, 'UUUU tremendo!!', '2020-01-03'),
(80, 22, 5, 'Buenarrrdoo', '2020-01-03'),
(81, 23, 1, 'Pero que rico se ve!', '2020-01-03'),
(82, 23, 2, 'Me tentaste!', '2020-01-03'),
(83, 23, 4, 'UUUU tremendo!!', '2020-01-03'),
(84, 23, 5, 'Buenarrrdoo', '2020-01-03'),
(85, 24, 1, 'Pero que rico se ve!', '2020-01-03'),
(86, 24, 2, 'Me tentaste!', '2020-01-03'),
(87, 24, 4, 'UUUU tremendo!!', '2020-01-03'),
(88, 24, 5, 'Buenarrrdoo', '2020-01-03'),
(89, 25, 1, 'Pero que rico se ve!', '2020-01-03'),
(90, 25, 2, 'Me tentaste!', '2020-01-03'),
(91, 25, 4, 'UUUU tremendo!!', '2020-01-03'),
(92, 25, 5, 'Buenarrrdoo', '2020-01-03'),
(93, 26, 1, 'Pero que rico se ve!', '2019-01-03'),
(94, 26, 2, 'Me tentaste!', '2020-01-03'),
(95, 26, 4, 'UUUU tremendo!!', '2020-01-03'),
(96, 26, 5, 'Buenarrrdoo', '2020-01-03'),
(97, 27, 1, 'Pero que rico se ve!', '2020-01-03'),
(98, 27, 2, 'Me tentaste!', '2019-01-03'),
(99, 27, 4, 'UUUU tremendo!!', '2020-01-03'),
(100, 27, 5, 'Buenarrrdoo', '2020-01-03'),
(101, 28, 1, 'Pero que rico se ve!', '2020-01-03'),
(102, 28, 2, 'Me tentaste!', '2020-01-03'),
(103, 28, 4, 'UUUU tremendo!!', '2020-01-03'),
(104, 28, 5, 'Buenarrrdoo', '2020-01-03'),
(105, 29, 1, 'Pero que rico se ve!', '2020-01-03'),
(106, 29, 2, 'Me tentaste!', '2020-01-03'),
(107, 29, 4, 'UUUU tremendo!!', '2019-01-03'),
(108, 29, 5, 'Buenarrrdoo', '2020-01-03'),
(109, 30, 1, 'Pero que rico se ve!', '2020-01-03'),
(110, 30, 2, 'Me tentaste!', '2020-01-03'),
(111, 30, 4, 'UUUU tremendo!!', '2020-01-03'),
(112, 30, 5, 'Buenarrrdoo', '2020-01-03'),
(113, 31, 1, 'Pero que rico se ve!', '2020-01-03'),
(114, 31, 2, 'Me tentaste!', '2020-01-03'),
(115, 31, 4, 'UUUU tremendo!!', '2020-01-03'),
(116, 31, 5, 'Buenarrrdoo', '2020-01-03'),
(117, 32, 1, 'Pero que rico se ve!', '2020-01-03'),
(118, 32, 2, 'Me tentaste!', '2020-01-03'),
(119, 32, 4, 'UUUU tremendo!!', '2020-01-03'),
(120, 32, 5, 'Buenarrrdoo', '2020-01-03'),
(121, 33, 1, 'Pero que rico se ve!', '2020-01-03'),
(122, 33, 2, 'Me tentaste!', '2020-01-03'),
(123, 33, 3, 'UUUU tremendo!!', '2020-01-03'),
(124, 33, 5, 'Buenarrrdoo', '2020-01-03'),
(125, 34, 1, 'Pero que rico se ve!', '2020-01-03'),
(126, 34, 2, 'Me tentaste!', '2020-01-03'),
(127, 34, 3, 'UUUU tremendo!!', '2020-01-03'),
(128, 34, 5, 'Buenarrrdoo', '2020-01-03'),
(129, 35, 1, 'Pero que rico se ve!', '2020-01-03'),
(130, 35, 2, 'Me tentaste!', '2020-01-03'),
(131, 35, 3, 'UUUU tremendo!!', '2020-01-03'),
(132, 35, 5, 'Buenarrrdoo', '2020-01-03'),
(133, 36, 1, 'Pero que rico se ve!', '2020-01-03'),
(134, 36, 2, 'Me tentaste!', '2020-01-03'),
(135, 36, 3, 'UUUU tremendo!!', '2020-01-03'),
(136, 36, 5, 'Buenarrrdoo', '2020-01-03'),
(137, 37, 1, 'Pero que rico se ve!', '2020-01-03'),
(138, 37, 2, 'Me tentaste!', '2020-01-03'),
(139, 37, 3, 'UUUU tremendo!!', '2020-01-03'),
(140, 37, 5, 'Buenarrrdoo', '2020-01-03'),
(141, 38, 1, 'Pero que rico se ve!', '2020-01-03'),
(142, 38, 2, 'Me tentaste!', '2020-01-03'),
(143, 38, 3, 'UUUU tremendo!!', '2020-01-03'),
(144, 38, 5, 'Buenarrrdoo', '2020-01-03'),
(145, 39, 1, 'Pero que rico se ve!', '2020-01-03'),
(146, 39, 2, 'Me tentaste!', '2020-01-03'),
(147, 39, 3, 'UUUU tremendo!!', '2020-01-03'),
(148, 39, 5, 'Buenarrrdoo', '2020-01-03'),
(149, 40, 1, 'Pero que rico se ve!', '2020-01-03'),
(150, 40, 2, 'Me tentaste!', '2020-01-03'),
(151, 40, 3, 'UUUU tremendo!!', '2020-01-03'),
(152, 40, 5, 'Buenarrrdoo', '2020-01-03'),
(153, 41, 1, 'Pero que rico se ve!', '2020-01-03'),
(154, 41, 2, 'Me tentaste!', '2020-01-03'),
(155, 41, 3, 'UUUU tremendo!!', '2020-01-03'),
(156, 41, 5, 'Buenarrrdoo', '2020-01-03'),
(157, 42, 1, 'Pero que rico se ve!', '2020-01-03'),
(158, 42, 2, 'Me tentaste!', '2020-01-03'),
(159, 42, 3, 'UUUU tremendo!!', '2020-01-03'),
(160, 42, 5, 'Buenarrrdoo', '2020-01-03'),
(161, 43, 1, 'Pero que rico se ve!', '2020-01-03'),
(162, 43, 2, 'Me tentaste!', '2020-01-03'),
(163, 43, 3, 'UUUU tremendo!!', '2020-01-03'),
(164, 43, 4, 'Buenarrrdoo', '2020-01-03'),
(165, 44, 1, 'Pero que rico se ve!', '2020-01-03'),
(166, 44, 2, 'Me tentaste!', '2020-01-03'),
(167, 44, 3, 'UUUU tremendo!!', '2020-01-03'),
(168, 44, 4, 'Buenarrrdoo', '2020-01-03'),
(169, 45, 1, 'Pero que rico se ve!', '2020-01-03'),
(170, 45, 2, 'Me tentaste!', '2020-01-03'),
(171, 45, 3, 'UUUU tremendo!!', '2020-01-03'),
(172, 45, 4, 'Buenarrrdoo', '2020-01-03'),
(173, 46, 1, 'Pero que rico se ve!', '2020-01-03'),
(174, 46, 2, 'Me tentaste!', '2020-01-03'),
(175, 46, 3, 'UUUU tremendo!!', '2020-01-03'),
(176, 46, 4, 'Buenarrrdoo', '2019-01-03'),
(177, 47, 1, 'Pero que rico se ve!', '2020-02-03'),
(178, 47, 2, 'Me tentaste!', '2020-01-03'),
(179, 47, 3, 'UUUU tremendo!!', '2020-07-03'),
(180, 47, 4, 'Buenarrrdoo', '2020-01-03'),
(181, 48, 1, 'Pero que rico se ve!', '2020-04-03'),
(182, 48, 2, 'Me tentaste!', '2020-01-03'),
(183, 48, 3, 'UUUU tremendo!!', '2020-01-03'),
(184, 48, 4, 'Buenarrrdoo', '2020-04-03'),
(185, 49, 1, 'Pero que rico se ve!', '2020-01-03'),
(186, 49, 2, 'Me tentaste!', '2020-01-03'),
(187, 49, 3, 'UUUU tremendo!!', '2020-01-03'),
(188, 49, 4, 'Buenarrrdoo', '2020-01-03'),
(189, 50, 1, 'Pero que rico se ve!', '2020-01-03'),
(190, 50, 2, 'Me tentaste!', '2020-01-03'),
(191, 50, 3, 'UUUU tremendo!!', '2020-01-03'),
(192, 50, 4, 'Buenarrrdoo', '2020-01-03'),
(193, 51, 1, 'Pero que rico se ve!', '2020-01-03'),
(194, 51, 2, 'Me tentaste!', '2020-01-03'),
(195, 51, 3, 'UUUU tremendo!!', '2020-01-03'),
(196, 51, 4, 'Buenarrrdoo', '2020-01-03'),
(197, 52, 1, 'Pero que rico se ve!', '2020-01-03'),
(198, 52, 2, 'Me tentaste!', '2020-01-03'),
(199, 52, 3, 'UUUU tremendo!!', '2020-01-03'),
(200, 52, 4, 'Buenarrrdoo', '2020-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `datos_post`
--

CREATE TABLE `datos_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `imagen_usuario` varchar(100) NOT NULL,
  `texto_post` varchar(140) DEFAULT NULL,
  `fecha_post` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datos_post`
--

INSERT INTO `datos_post` (`id`, `id_usuario`, `imagen_usuario`, `texto_post`, `fecha_post`) VALUES
(3, 1, 'alfajores.jpeg', 'Hola, me gusta el alfajor!!!', '2020-01-03'),
(4, 1, 'asado.jpeg', 'No hay nada mejor que un asado con la familia!!', '2019-01-30'),
(5, 1, 'pasta.jpeg', 'Hoy toco italiano!', '2020-05-03'),
(6, 1, 'pizza.jpeg', 'Amo la pizza <3', '2019-01-30'),
(7, 1, 'salmon.jpeg', 'El chef!', '2020-01-03'),
(8, 1, 'torta.jpeg', 'Feliz cumple Cande!', '2019-09-30'),
(9, 1, 'dumplings.jpeg', 'Un poco de cultura japonesa al paladar!', '2017-01-03'),
(10, 1, 'sushi.jpeg', 'Que rico que es el sushi!!', '2019-10-10'),
(11, 1, 'empanada.jpeg', 'Soy fan de la empanada de humita.', '2019-01-03'),
(12, 1, 'asado.jpeg', 'Mi comida favorita, con las personas favoritas.', '2019-01-30'),
(13, 2, 'alfajores.jpeg', 'Son lo mejor del planeta!', '2020-12-03'),
(14, 2, 'asado.jpeg', 'Esto es lo que va.', '2019-10-30'),
(15, 2, 'pasta.jpeg', 'Pasta Italiana!!', '2020-08-03'),
(16, 2, 'pizza.jpeg', NULL, '2019-06-30'),
(17, 2, 'salmon.jpeg', 'El salmon es lo mejor del mundo', '2020-02-03'),
(18, 2, 'torta.jpeg', NULL, '2019-06-30'),
(19, 2, 'dumplings.jpeg', ':D', '2020-07-03'),
(20, 2, 'sushi.jpeg', NULL, '2019-09-30'),
(21, 2, 'empanada.jpeg', NULL, '2020-01-03'),
(22, 2, 'asado.jpeg', NULL, '2019-11-30'),
(23, 3, 'alfajores.jpeg', 'Cosas ricas para los chicos!', '2020-12-03'),
(24, 3, 'asado.jpeg', 'Amo estos momentos con la familia', '2019-10-30'),
(25, 3, 'pasta.jpeg', 'Pasta ricarda.', '2020-08-03'),
(26, 3, 'pizza.jpeg', 'Que rica la pizza con los chicos', '2019-06-30'),
(27, 3, 'salmon.jpeg', 'Uh la la la !', '2020-02-03'),
(28, 3, 'torta.jpeg', 'Feliz cumple David!', '2019-06-30'),
(29, 3, 'dumplings.jpeg', 'Amo esto!', '2020-07-03'),
(30, 3, 'sushi.jpeg', 'Mi comida favorita, lejos!', '2019-09-30'),
(31, 3, 'empanada.jpeg', 'De las mejores que probe!', '2020-01-03'),
(32, 3, 'asado.jpeg', 'Dia de asado', '2019-04-30'),
(33, 4, 'alfajores.jpeg', 'RICARDO', '2020-06-03'),
(34, 4, 'asado.jpeg', NULL, '2019-12-30'),
(35, 4, 'pasta.jpeg', 'amoooo', '2020-12-03'),
(36, 4, 'pizza.jpeg', 'La receta de mi mama!', '2019-09-30'),
(37, 4, 'salmon.jpeg', NULL, '2020-04-03'),
(38, 4, 'torta.jpeg', NULL, '2019-04-30'),
(39, 4, 'dumplings.jpeg', NULL, '2020-01-03'),
(40, 4, 'sushi.jpeg', 'Que RICO', '2019-09-30'),
(41, 4, 'empanada.jpeg', NULL, '2020-01-03'),
(42, 4, 'asado.jpeg', NULL, '2019-11-30'),
(43, 5, 'alfajores.jpeg', NULL, '2020-06-03'),
(44, 5, 'asado.jpeg', 'Que rico sabe esto!', '2019-12-30'),
(45, 5, 'pasta.jpeg', NULL, '2020-12-03'),
(46, 5, 'pizza.jpeg', 'Hago la mejor pizza al horno del mundo!', '2019-09-30'),
(47, 5, 'salmon.jpeg', NULL, '2020-04-03'),
(48, 5, 'torta.jpeg', 'La torta oreo es la mejor del planeta', '2019-04-30'),
(49, 5, 'dumplings.jpeg', NULL, '2020-01-03'),
(50, 5, 'sushi.jpeg', 'Vos, yo, sushi?', '2019-09-30'),
(51, 5, 'empanada.jpeg', NULL, '2020-01-03'),
(52, 5, 'asado.jpeg', 'Lo mejor del mundo.', '2019-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios_activos`
--

CREATE TABLE `usuarios_activos` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `fecha_creacion_cuenta` date NOT NULL,
  `numero_seguidores` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios_activos`
--

INSERT INTO `usuarios_activos` (`id`, `usuario`, `fecha_creacion_cuenta`, `numero_seguidores`) VALUES
(1, 'davidbaastidas', '2020-02-03', 35000),
(2, 'tomi23', '2019-12-05', 367),
(3, 'candevinse', '2020-04-20', 1890),
(4, 'ale_robot1', '1999-04-05', 1200),
(5, 'agusgamer33', '2015-08-09', 999);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentarios_post`
--
ALTER TABLE `comentarios_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_user_idx` (`id_post`),
  ADD KEY `FK_comentariouser_idx` (`id_user_comentario`);

--
-- Indexes for table `datos_post`
--
ALTER TABLE `datos_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_posteousuario_idx` (`id_usuario`);

--
-- Indexes for table `usuarios_activos`
--
ALTER TABLE `usuarios_activos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios_post`
--
ALTER TABLE `comentarios_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `datos_post`
--
ALTER TABLE `datos_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `usuarios_activos`
--
ALTER TABLE `usuarios_activos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comentarios_post`
--
ALTER TABLE `comentarios_post`
  ADD CONSTRAINT `FK_comentario_user` FOREIGN KEY (`id_user_comentario`) REFERENCES `usuarios_activos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`id_post`) REFERENCES `datos_post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `datos_post`
--
ALTER TABLE `datos_post`
  ADD CONSTRAINT `FK_idUser` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios_activos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
