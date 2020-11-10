-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2020 at 09:54 PM
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
-- Database: `proyectointegrador`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_post` int(10) UNSIGNED NOT NULL,
  `id_user_comment` int(10) UNSIGNED NOT NULL,
  `text_comment` varchar(140) DEFAULT NULL,
  `date_comment` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `id_post`, `id_user_comment`, `text_comment`, `date_comment`) VALUES
(1, 1, 2, 'Pero que rico che!', '2020-12-12'),
(2, 1, 3, 'Se ve delicioso!', '2020-09-04'),
(3, 1, 4, 'Bueniiisimo', '2020-09-04'),
(4, 1, 5, 'Es la que va', '2020-09-05'),
(5, 2, 2, 'Delicioso', '2020-09-03'),
(6, 2, 3, 'Pasa la receta', '2020-09-06'),
(7, 2, 4, 'NANAN genial', '2020-09-07'),
(8, 2, 5, 'No puede ser mejor', '2020-09-08'),
(9, 3, 2, 'Delicioso', '2020-09-09'),
(10, 3, 3, 'Pasa receta', '2020-09-10'),
(11, 3, 4, 'Genial', '2020-09-11'),
(12, 3, 5, 'Noooo', '2020-09-12'),
(13, 4, 2, 'Tremendo', '2020-01-03'),
(14, 4, 3, 'Es la que va', '2020-02-03'),
(15, 4, 4, 'Tremen', '2020-03-03'),
(16, 4, 5, 'Ricardo', '2020-09-03'),
(17, 5, 2, 'Buenardo', '2020-09-03'),
(18, 5, 3, 'Genial', '2020-09-03'),
(19, 5, 4, 'Tremendo', '2020-01-01'),
(20, 5, 5, 'WOWWW', '2020-01-02'),
(21, 6, 2, '<3', '2020-01-04'),
(22, 6, 3, 'Para un poco!', '2020-01-05'),
(23, 6, 4, 'No paras', '2020-01-06'),
(24, 6, 5, 'Ahi no pego la crisis!', '2020-01-07'),
(25, 7, 2, 'Lo hiciste vos?', '2020-01-08'),
(26, 7, 3, 'Tremen', '2020-01-09'),
(27, 7, 4, 'Quedo re rico', '2020-01-03'),
(28, 7, 5, 'Tiene alta pinta', '2020-01-06'),
(29, 8, 2, 'Pinta mal', '2020-01-06'),
(30, 8, 3, 'Que rico', '2020-01-07'),
(31, 8, 4, 'Muy rico', '2020-01-07'),
(32, 8, 5, 'Genial', '2020-01-07'),
(33, 9, 2, 'Se ve tremendo', '2020-01-07'),
(34, 9, 3, 'Naaaa', '2020-01-07'),
(35, 9, 4, 'Alta pinta', '2020-09-03'),
(36, 9, 5, 'Goloza', '2020-09-03'),
(37, 10, 2, 'Tre men do', '2020-09-03'),
(38, 10, 3, 'Ame', '2020-09-03'),
(39, 10, 4, 'Invitame', '2020-09-03'),
(40, 10, 5, 'Quiero probar', '2020-09-03'),
(41, 11, 1, 'No soy perro pero wow', '2020-09-03'),
(42, 11, 3, 'Mucho talento', '2020-09-03'),
(43, 11, 4, 'Asi cualquiera', '2020-09-03'),
(44, 11, 5, 'Colocao', '2020-09-03'),
(45, 12, 1, 'Mucha cultura', '2020-09-03'),
(46, 12, 3, 'Mucha cocina', '2020-09-03'),
(47, 12, 4, 'La rompes', '2020-09-03'),
(48, 12, 5, 'Se ve rico', '2020-09-03'),
(49, 13, 1, 'AME', '2020-09-03'),
(50, 13, 3, 'Amooo', '2020-09-03'),
(51, 13, 4, 'Aiiiii sii', '2020-12-03'),
(52, 13, 5, 'Yo quieroo', '2020-12-03'),
(53, 14, 1, 'Quieroo', '2020-12-03'),
(54, 14, 3, 'DAMEE', '2020-12-03'),
(55, 14, 4, 'OH siii', '2020-12-03'),
(56, 14, 5, 'NAA', '2020-12-03'),
(57, 15, 1, 'Buenardo', '2020-12-03'),
(58, 15, 3, 'Directo de MasterCHEF', '2020-12-03'),
(59, 15, 4, 'RICARDOO', '2020-12-03'),
(60, 15, 5, 'Que rico', '2020-12-03'),
(61, 16, 1, 'Riquisimo', '2020-12-03'),
(62, 16, 3, 'Pinta', '2020-12-03'),
(63, 16, 4, 'Es la que va', '2020-12-03'),
(64, 16, 5, 'Muy lindo', '2020-10-09'),
(65, 17, 1, 'Quieroo', '2020-10-09'),
(66, 17, 3, 'Quieroo', '2020-10-09'),
(67, 17, 4, 'Quieroo', '2020-10-09'),
(68, 17, 5, 'Quieroo', '2020-10-09'),
(69, 18, 1, 'NAA', '2020-10-09'),
(70, 18, 3, 'NAA', '2020-10-09'),
(71, 18, 4, 'Riquisimo!!', '2020-10-09'),
(72, 18, 5, 'Riquisimo', '2020-10-09'),
(73, 19, 1, 'Riquisimo wow', '2020-10-09'),
(74, 19, 3, 'Riquisimo', '2020-10-09'),
(75, 19, 4, 'Se ve rico', '2020-10-09'),
(76, 19, 5, 'Se ve rico', '2020-10-09'),
(77, 20, 1, 'Se ve rico', '2020-10-09'),
(78, 20, 3, 'Se ve rico', '2020-10-09'),
(79, 20, 4, 'Yo quieroo', '2020-10-09'),
(80, 20, 5, 'Yo quieroo', '2020-10-09'),
(81, 21, 1, 'Yo quieroo', '2020-10-09'),
(82, 21, 2, 'Yo quieroo', '2020-10-09'),
(83, 21, 4, 'Es facil?', '2020-10-09'),
(84, 21, 5, 'Es dificil?', '2020-10-09'),
(85, 22, 1, 'Bueniiisimo', '2020-10-09'),
(86, 22, 2, 'Asi cualquiera', '2020-05-05'),
(87, 22, 4, 'EEE', '2020-05-05'),
(88, 22, 5, 'AHHH', '2020-05-05'),
(89, 23, 1, 'Bueniiisimo', '2020-05-05'),
(90, 23, 2, 'Mallll', '2020-05-05'),
(91, 23, 4, 'Cheto', '2020-05-05'),
(92, 23, 5, 'Asi cualquiera', '2020-05-05'),
(93, 24, 1, 'Nooo', '2020-05-05'),
(94, 24, 2, 'DOU', '2020-05-05'),
(95, 24, 4, 'Bueniiisimo', '2020-05-05'),
(96, 24, 5, 'Tremendo', '2020-05-05'),
(97, 25, 1, 'Asi cualquiera', '2020-12-12'),
(98, 25, 2, 'SEEE', '2020-12-12'),
(99, 25, 4, 'Golozo', '2020-12-12'),
(100, 25, 5, 'Bueniiisimo', '2020-12-12'),
(101, 26, 1, ':)', '2020-12-12'),
(102, 26, 2, 'Asi cualquiera', '2020-12-12'),
(103, 26, 4, 'Que ricooo', '2020-12-12'),
(104, 26, 5, 'AIII', '2020-12-12'),
(105, 27, 1, 'siiii', '2020-11-11'),
(106, 27, 2, 'Bueniiisimo', '2020-12-12'),
(107, 27, 4, 'Asi cualquiera', '2020-11-11'),
(108, 27, 5, 'ESOO', '2020-11-11'),
(109, 28, 1, 'Por finn', '2020-11-11'),
(110, 28, 2, 'Linda', '2020-12-12'),
(111, 28, 4, 'Leenda', '2020-11-11'),
(112, 28, 5, 'Asi cualquiera', '2020-11-11'),
(113, 29, 1, 'Wowww', '2020-11-11'),
(114, 29, 2, 'Crackk', '2020-11-11'),
(115, 29, 4, 'TOP', '2020-11-11'),
(116, 29, 5, 'Sos crack', '2020-11-11'),
(117, 30, 1, 'Un lujo', '2020-11-11'),
(118, 30, 2, 'Siempre arriba', '2020-11-11'),
(119, 30, 4, 'Pasa receta!', '2020-01-01'),
(120, 30, 5, 'Enormee', '2020-01-01'),
(121, 31, 1, 'Esaa', '2020-01-01'),
(122, 31, 2, 'Esooo', '2020-11-11'),
(123, 31, 3, 'Bueniiisimo', '2020-01-01'),
(124, 31, 5, 'Bello', '2020-01-01'),
(125, 32, 1, 'Bello', '2020-01-01'),
(126, 32, 2, 'Bello', '2020-01-01'),
(127, 32, 3, 'Naaa', '2020-11-11'),
(128, 32, 5, 'Me tentaste', '2020-01-01'),
(129, 33, 1, 'Quieroo yooo', '2020-01-01'),
(130, 33, 2, 'quieroo', '2020-01-01'),
(131, 33, 3, 'Bello', '2020-01-01'),
(132, 33, 5, 'solidoo', '2020-01-01'),
(133, 34, 1, 'Neaaa', '2020-01-01'),
(134, 34, 2, 'Que ricoo', '2020-01-01'),
(135, 34, 3, 'Tremendoo', '2020-07-01'),
(136, 34, 5, 'NAAA', '2020-07-01'),
(137, 35, 1, 'Bello', '2020-07-01'),
(138, 35, 2, 'vamoo', '2020-07-01'),
(139, 35, 3, 'Solido', '2020-07-01'),
(140, 35, 5, 'Sereno', '2020-07-01'),
(141, 36, 1, 'Kanpai', '2020-07-01'),
(142, 36, 2, 'Bello', '2020-07-01'),
(143, 36, 3, 'Solido', '2020-07-01'),
(144, 36, 5, 'Chin chin', '2020-07-01'),
(145, 37, 1, 'Bello', '2020-07-01'),
(146, 37, 2, 'Que rico', '2020-07-01'),
(147, 37, 3, 'Salud', '2020-07-01'),
(148, 37, 5, 'Provecho', '2020-07-01'),
(149, 38, 1, 'Felicidad', '2020-07-01'),
(150, 38, 2, 'Tremendo', '2020-07-01'),
(151, 38, 3, '!!!', '2020-07-01'),
(152, 38, 5, 'wow!', '2020-07-01'),
(153, 39, 1, 'Donde lo hiciste!', '2020-07-01'),
(154, 39, 2, 'La rompes', '2020-07-01'),
(155, 39, 3, 'Bello', '2020-07-01'),
(156, 39, 5, 'Sereno', '2020-12-12'),
(157, 40, 1, 'See', '2020-12-12'),
(158, 40, 2, 'Es rico?', '2020-12-12'),
(159, 40, 3, 'uffff', '2020-05-12'),
(160, 40, 5, 'Engorda?', '2020-05-12'),
(161, 41, 1, 'AAAA', '2020-05-12'),
(162, 41, 2, 'Es rico?', '2020-05-12'),
(163, 41, 3, 'Me tente', '2020-05-12'),
(164, 41, 4, 'Fuerte', '2020-05-12'),
(165, 42, 1, 'Sos enorme', '2020-05-12'),
(166, 42, 2, 'Grande donato', '2020-05-12'),
(167, 42, 3, 'Es rico?', '2020-05-12'),
(168, 42, 4, 'sos crack', '2020-05-12'),
(169, 43, 1, 'Cheff', '2020-05-12'),
(170, 43, 2, 'Esooo', '2020-05-12'),
(171, 43, 3, 'DOUU', '2020-04-09'),
(172, 43, 4, 'Es rico?', '2020-04-09'),
(173, 44, 1, 'deaaaa', '2020-04-09'),
(174, 44, 2, 'Flash', '2020-04-09'),
(175, 44, 3, 'esooo', '2020-04-09'),
(176, 44, 4, 'wowww', '2020-04-09'),
(177, 45, 1, 'Es rico?', '2020-04-09'),
(178, 45, 2, 'WOWW', '2020-04-09'),
(179, 45, 3, 'Tremen', '2020-04-09'),
(180, 45, 4, 'Placer', '2020-04-09'),
(181, 46, 1, 'No puede serr', '2020-04-09'),
(182, 46, 2, 'Es rico?', '2020-01-06'),
(183, 46, 3, 'Wachiii', '2020-01-06'),
(184, 46, 4, 'Seee', '2020-01-06'),
(185, 47, 1, 'Es por ahi', '2020-01-06'),
(186, 47, 2, 'Tremen', '2020-01-06'),
(187, 47, 3, 'Es rico?', '2020-01-06'),
(188, 47, 4, 'Es rico?', '2020-01-06'),
(189, 48, 1, 'Wow', '2020-01-06'),
(190, 48, 2, 'Tremen', '2020-01-06'),
(191, 48, 3, 'Siii', '2020-01-06'),
(192, 48, 4, 'Es por ahi', '2020-01-06'),
(193, 49, 1, 'Esoo', '2020-01-06'),
(194, 49, 2, 'Tremendo', '2020-01-06'),
(195, 49, 3, 'WEENA', '2020-01-06'),
(196, 49, 4, 'WOW', '2020-01-06'),
(197, 50, 1, 'SIIII', '2020-01-06'),
(198, 50, 2, 'Genial', '2020-01-06'),
(199, 50, 3, 'NOOO', '2020-01-06'),
(200, 50, 4, 'FAA', '2020-01-06');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `image_user` varchar(255) NOT NULL,
  `text_post` varchar(140) DEFAULT NULL,
  `date_post` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `id_user`, `image_user`, `text_post`, `date_post`) VALUES
(1, 1, 'https://s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2018/08/09173312/asado.jpg', 'Un rico asaduki!', '2020-04-08'),
(2, 1, 'https://sevilla.abc.es/gurme/wp-content/uploads/sites/24/2012/01/comida-rapida-casera.jpg', 'Caseritas y ricas!', '2020-01-01'),
(3, 1, 'https://dam.cocinafacil.com.mx/wp-content/uploads/2020/04/comida-china-tipica.jpg', 'Comida china <3', '2020-02-02'),
(4, 1, 'https://ep01.epimg.net/elcomidista/imagenes/2019/11/28/articulo/1574897584_677912_1574946142_media_normal.jpg', 'Para toda la familia', '2020-08-08'),
(5, 1, 'https://www.paulinacocina.net/wp-content/uploads/2020/01/untitled-copy.jpg', 'Taquitos pa la flia', '2020-08-09'),
(6, 1, 'https://www.vivus.es/blog/wp-content/uploads/2018/04/comida-sana-y-barata-612x408.jpg', 'Comida balanceada', '2020-07-07'),
(7, 1, 'https://i2.wp.com/www.cocinaconpoco.com/wp-content/uploads/2018/11/Comida-sana.jpg?fit=750%2C500&ssl=1', 'Riquisimo', '2020-12-12'),
(8, 1, 'https://elviajerofeliz.com/wp-content/uploads/2020/01/Comida-t%C3%ADpica-de-Bangladesh-Platos-Imprescindibles.jpg', 'El color lo dice todo', '2020-09-12'),
(9, 1, 'https://estaticos.miarevista.es/media/cache/1140x_thumb/uploads/images/gallery/59f6f86d5bafe8699bf7fdf3/segundosinterior.jpg', 'Un buen pollito', '2020-04-08'),
(10, 1, 'https://www.ecestaticos.com/image/clipping/1eda44daf5f75ca868b7eb9bf93396e4/opening.jpg', 'Buen desayuno', '2020-05-05'),
(11, 2, 'https://tecnohotelnews.com/wp-content/uploads/2018/04/siete-claves-para-ofrecer-platos-saludables-atractivos-a-los-comensales-1280x720.jpg', 'Empezando dieta!', '2020-09-09'),
(12, 2, 'https://s2.eestatic.com/2015/04/26/cocinillas/Cocinillas_28757194_116165495_855x1140.jpg', 'Caseritas!', '2020-09-12'),
(13, 2, 'https://static.vix.com/es/sites/default/files/styles/1x1/public/imj/elgranchef/R/Recetas-que-rinden-mas-de-una-comida-10.jpg', 'Italianoo', '2020-12-12'),
(14, 2, 'https://img.culturacolectiva.com/cdn-cgi/image/f=auto,w=1600,q=80,fit=contain/content_image/2019/5/2/1556836847320-recetas-de-comida-china-para-preparar-facil-y-rapido.001.jpeg', 'GRANDIOSO', '2020-04-08'),
(15, 2, 'https://ep01.epimg.net/elcomidista/imagenes/2018/06/14/articulo/1528973156_950312_1528981402_media_normal.jpg', 'Facil y rico', '2020-08-09'),
(16, 2, 'https://i.blogs.es/6a128c/pizza-glitter/450_1000.jpg', 'Pizza arcoiris', '2020-04-09'),
(17, 2, 'https://www.ecestaticos.com/image/clipping/1200/675/3db21f0346f8894c7f3682834c13f54a/por-que-la-comida-sabe-mas-dulce-cuando-tiene-forma-redonda.jpg?mtime=1579565836', '<3', '2020-08-12'),
(18, 2, 'https://www.clara.es/medio/2019/10/15/que-comer-hoy-recetas-improvisadas_b33e2a5b_1200x630.jpg', 'La nueva moda', '2020-08-09'),
(19, 2, 'https://staticsnews.medsbla.com/news-es/wp-content/uploads/2018/12/09072545/740f75b9643820069e3c8564e0d1431bd3aa5d06-1024x576.jpg', 'RIQUISIMA', '2020-08-11'),
(20, 2, 'https://media.cnnchile.com/2019/08/papas-fritas-02-740x430.jpg', '100% VEGANAS', '2020-05-09'),
(21, 3, 'https://cdn.ticbeat.com/src/uploads/2019/11/comida-china-600x315.jpg', 'Un lujo', '2020-06-09'),
(22, 3, 'https://www.65ymas.com/uploads/s1/30/59/19/comida-halal.jpeg', 'A pura dieta', '2020-09-09'),
(23, 3, 'https://dam.ngenespanol.com/wp-content/uploads/2019/09/comida-chatarra-ciego.png', 'Placerrr', '2020-10-09'),
(24, 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPoUF9sdlS9NBp2EdObFUsZ3VmPX0B6vjWuw&usqp=CAU', 'Ricarrdoo', '2020-08-10'),
(25, 3, 'https://revistamundodiners.com/wp-content/uploads/2020/06/shutterstock_1488450611-scaled.jpg', 'Dieta life', '2020-11-09'),
(26, 3, 'https://www.medialunamagazine.com/wp-content/uploads/2019/07/tacos-de-lengua-de-res-caseros-700.jpg', 'Ricooo', '2020-08-11'),
(27, 3, 'https://tuhogar.com/cam/wp-content/uploads/sites/14/2019/07/comida-callejera-axion.jpg', '...', '2020-08-12'),
(28, 3, 'https://live.mrf.io/statics/i/ps/www.cocinacaserayfacil.net/wp-content/uploads/2019/11/Comida-espa%C3%B1ola.jpg?width=1200&enable=upscale', 'Para chuparse los dedos', '2020-12-09'),
(29, 3, 'https://okdiario.com/img/2018/06/17/hamburguesa-de-salmon-655x368.jpg', 'Muy rico', '2020-01-01'),
(30, 3, 'https://diariamenteali.com/medias/comida-divertida-para-tus-hijos-1900Wx500H?context=bWFzdGVyfGltYWdlc3wxOTA5NTh8aW1hZ2UvanBlZ3xoNjgvaDE5LzkwNzQyODkwNDk2MzAvY29taWRhLWRpdmVydGlkYS1wYXJhLXR1cy1oaWpvc18xOTAwV3g1MDBIfGM2NjhjZTUxZTUyZjdhYjczNTk0NTRhNmI3NjVjZm', 'Jajaja', '2020-01-09'),
(31, 4, 'https://blog.lewolang.com/images/340a2a5ba54afa16f3c75200a75bf96b.jpg?w=800&h=600&fit=crop', 'Frutilla season', '2020-08-09'),
(32, 4, 'https://content.skyscnr.com/m/6a67db0e3d859594/original/eyeem_69444284-jpg.jpg', 'A puro queso', '2020-03-09'),
(33, 4, 'https://assets.afcdn.com/story/20150820/743004_w980h638c1cx511cy250.jpg', 'Viva!', '2020-08-07'),
(34, 4, 'https://www.elfinancierocr.com/resizer/2Cj8pNxbgPe0mW76B3QsULo9iqs=/600x0/center/middle/filters:quality(100)/arc-anglerfish-arc2-prod-gruponacion.s3.amazonaws.com/public/ZZ3PI4S72ZC5HPAAWDUJDB7UAI.jpg', 'Balance', '2020-08-05'),
(35, 4, 'https://www.cataloniahotels.com/es/blog/wp-content/uploads/2020/01/comida-tipica-dominicana-sancocho-destacada-1920x1280.jpg', NULL, '2020-08-11'),
(36, 4, 'https://cdn-3.expansion.mx/dims4/default/ab3b054/2147483647/strip/true/crop/630x500+0+0/resize/800x635!/quality/90/?url=https%3A%2F%2Fcherry-brightspot.s3.amazonaws.com%2Fgex.lifeandstyle%2Fuploads%2Fasset%2Fasset_file%2F11038%2Fsandiwch-carru.jpg', NULL, '2020-08-12'),
(37, 4, 'https://e.rpp-noticias.io/normal/2019/05/14/513851_789110.jpg', 'Explosion de sabor', '2020-08-02'),
(38, 4, 'https://www.viajarlosangeles.com/img/gastonomia-los-angeles.jpg', 'Muy ricoo', '2020-01-09'),
(39, 4, 'https://www.crearmas.com/wp-content/uploads/2018/11/el-consumo-de-comida-rapida-en-estados-unidos.jpg', 'Buenas salchichas', '2020-02-09'),
(40, 4, 'https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2018/03/293169-comida-china-sal.jpg?itok=ovMXsLyh', 'Hoy toco esto!', '2020-08-08'),
(41, 5, 'https://aristeguinoticias.com/editorial/wp-content/uploads/2020/08/coronavirus-comida-sars-cov-2-oms-riesgo-contagios-muertes-empaquetado-envio-alimentos-13082020.png', 'Leenda zapi', '2020-08-12'),
(42, 5, 'https://www.vozpopuli.com/2019/02/26/bienestar/unicos-alimentos-debes-comer-adelgazar_1222087851_14315002_1280x720.jpg', 'Balance', '2020-12-02'),
(43, 5, 'https://travelandleisure.mx/wp-content/uploads/2019/04/iStock-640071630-1.jpg', 'Sushiii', '2020-12-12'),
(44, 5, 'https://offloadmedia.feverup.com/madridsecreto.co/wp-content/uploads/2020/05/20115438/94556732_224190192345460_5792243782158123008_o-1-1024x597.jpg', NULL, '2020-08-09'),
(45, 5, 'https://okdiario.com/img/2020/11/09/-hambre-a-todas-horas_-como-evitar-la-ansiedad-por-comida-1-620x373.jpg', 'Muy ricoo', '2020-08-09'),
(46, 5, 'https://mejorconsalud.com/wp-content/uploads/2015/04/desayunar-fruta.jpg', 'Delicioso', '2020-08-07'),
(47, 5, 'https://cdn7.kiwilimon.com/galeriahome/829/1280x400/829.jpg.webp', 'Paso receta!', '2020-10-09'),
(48, 5, 'https://www.recreoviral.com/wp-content/uploads/2015/05/20-comidas-para-preparar-aunque-estes-en-quiebra-17.jpg', 'Plenooo', '2020-10-10'),
(49, 5, 'https://img-global.cpcdn.com/recipes/86c604d200ecef2e/400x400cq70/photo.jpg', 'Un salteadito', '2020-08-11'),
(50, 5, 'https://static3.abc.es/media/familia/2018/05/23/Minevera_Pasta-k4KC--620x349@abc.jpg', 'Muy ricas!', '2020-08-12');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`) VALUES
(1, 'Cuál es tu comida favorita?'),
(2, 'Cómo se llamaba tu escuela primaria?'),
(3, 'Cómo se llama tu mascota?'),
(4, 'Cuál es el apellido de tu mamá?');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `birthdate` datetime NOT NULL,
  `securityQuestion` int(11) NOT NULL,
  `securityAnswer` varchar(45) DEFAULT NULL,
  `user_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `birthdate`, `securityQuestion`, `securityAnswer`, `user_picture`) VALUES
(1, 'davidbaastidas', 'dbastidasvelez@udesa.edu.ar', 'hola', '2000-03-08 00:00:00', 1, 'sushi', 'https://quierocuidarme.dkvsalud.es/sites/default/files/styles/vivelasalud_ficha_825x464/public/imagen/2017-09/shutterstock_92854117_0.jpg?itok=pnbGDCQp'),
(2, 'ale_robot1', 'ale@dh.com', 'chau', '1998-03-05 00:00:00', 1, 'pancho', 'https://img.freepik.com/foto-gratis/hombre-guapo-caucasico-aislado-pared-beige-dando-gesto-pulgares-arriba_1368-92335.jpg?size=626&ext=jpg'),
(3, 'CarolinaCocina123', 'caro@gmail.com', 'pollo', '2004-06-06 00:00:00', 3, 'ramona', 'https://www.mutualidadabogacia.com/wp-content/uploads/2019/03/8marzodiamujer.jpg'),
(4, 'Marita123', 'Mara123@hotmail.com', 'arroz123', '2002-08-09 00:00:00', 3, 'pecesito', 'https://www.marketingdirecto.com/wp-content/uploads/2020/03/dia-de-la-mujer-monica-moro.png'),
(5, 'candevinse', 'candevinse@udesa.edu.ar', 'perrito23', '2000-04-08 00:00:00', 2, 'San Jose', 'https://smoda.elpais.com/wp-content/uploads/2017/08/40mujeres14-1-635x480.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_user_idx` (`id_post`),
  ADD KEY `FK_comentariouser_idx` (`id_user_comment`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_posteousuario_idx` (`id_user`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `id_security_question_idx` (`securityQuestion`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_comentario_user` FOREIGN KEY (`id_user_comment`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`id_post`) REFERENCES `post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
