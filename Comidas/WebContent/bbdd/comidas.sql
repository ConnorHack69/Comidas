-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2016 a las 10:30:52
-- Versión del servidor: 5.5.39
-- Versión de PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `comidas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingrediente`
--

CREATE TABLE IF NOT EXISTS `ingrediente` (
`id` int(11) NOT NULL,
  `nombre` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `descripcion` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `calorias` double NOT NULL,
  `categoria` text NOT NULL,
  `subcategoria` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=155 ;

--
-- Volcado de datos para la tabla `ingrediente`
--

INSERT INTO `ingrediente` (`id`, `nombre`, `descripcion`, `calorias`, `categoria`, `subcategoria`) VALUES
(1, 'Aceite de soja', '-', 0, '0', '0'),
(2, 'Aceite de maiz', '-', 0, '0', '0'),
(3, 'Aceite de oliva', '-', 0, '0', '0'),
(4, 'Nata o crema de leche', '-', 0, '0', '0'),
(5, 'Yogur', '-', 0, '0', '0'),
(6, 'Leche', '-', 0, '0', '0'),
(7, 'Helado', '-', 0, '0', '0'),
(8, 'Queso', '-', 0, '0', '0'),
(9, 'Setas', '-', 0, '0', '0'),
(10, 'Hongos', '-', 0, '0', '0'),
(11, 'Coles', '-', 0, '0', '0'),
(12, 'Legumbres', '-', 0, '0', '0'),
(13, 'Alubias', '-', 0, '0', '0'),
(14, 'Garbanzos', '-', 0, '0', '0'),
(15, 'Lentejas', '-', 0, '0', '0'),
(16, 'Soja', '-', 0, '0', '0'),
(17, 'Pimientas', '-', 0, '0', '0'),
(18, 'Patata', '-', 0, '0', '0'),
(19, 'Raices y tuberculos', '-', 0, '0', '0'),
(20, 'Lechugas', '-', 0, '0', '0'),
(21, 'Acelga', '-', 0, '0', '0'),
(22, 'Alcachofa', '-', 0, '0', '0'),
(23, 'Batata', '-', 0, '0', '0'),
(24, 'Berenjena', '-', 0, '0', '0'),
(25, 'Berro', '-', 0, '0', '0'),
(26, 'Brocoli', '-', 0, '0', '0'),
(27, 'Brecol', '-', 0, '0', '0'),
(28, 'Calabacin', '-', 0, '0', '0'),
(29, 'Calabaza', '-', 0, '0', '0'),
(30, 'Cardo', '-', 0, '0', '0'),
(31, 'Aguacate', '-', 0, '0', '0'),
(32, 'Albaricoque', '-', 0, '0', '0'),
(33, 'Almeja', '-', 0, '0', '0'),
(34, 'Ancas de rana', '-', 0, '0', '0'),
(35, 'Anchoa', '-', 0, '0', '0'),
(36, 'Arroz', '-', 0, '0', '0'),
(37, 'Atun', '-', 0, '0', '0'),
(38, 'Avestruz', '-', 0, '0', '0'),
(39, 'Bacalao', '-', 0, '0', '0'),
(40, 'Bison', '-', 0, '0', '0'),
(41, 'Bonito', '-', 0, '0', '0'),
(42, 'Boqueron', '-', 0, '0', '0'),
(43, 'Buey', '-', 0, '0', '0'),
(44, 'Caballa', '-', 0, '0', '0'),
(45, 'Caballo', '-', 0, '0', '0'),
(46, 'Cabra', '-', 0, '0', '0'),
(47, 'Calamar', '-', 0, '0', '0'),
(48, 'Camaron', '-', 0, '0', '0'),
(49, 'capones', '-', 0, '0', '0'),
(50, 'Caracoles', '-', 0, '0', '0'),
(51, 'Cebolla', '-', 0, '0', '0'),
(52, 'Cebolleta', '-', 0, '0', '0'),
(53, 'Cerdo', '-', 0, '0', '0'),
(54, 'Cereales', '-', 0, '0', '0'),
(55, 'Cereza', '-', 0, '0', '0'),
(56, 'Chicharro', '-', 0, '0', '0'),
(57, 'Ciervo', '-', 0, '0', '0'),
(58, 'Cigala', '-', 0, '0', '0'),
(59, 'Ciruela', '-', 0, '0', '0'),
(60, 'Coles de Bruselas', '-', 0, '0', '0'),
(61, 'Coliflor', '-', 0, '0', '0'),
(62, 'Conejo', '-', 0, '0', '0'),
(63, 'Cordero', '-', 0, '0', '0'),
(64, 'Corvina', '-', 0, '0', '0'),
(65, 'Dorada', '-', 0, '0', '0'),
(66, 'Endivia', '-', 0, '0', '0'),
(67, 'Escarola', '-', 0, '0', '0'),
(68, 'Esparrago', '-', 0, '0', '0'),
(69, 'Espinaca', '-', 0, '0', '0'),
(70, 'Faisanes', '-', 0, '0', '0'),
(71, 'Frambuesa', '-', 0, '0', '0'),
(72, 'Fresa', '-', 0, '0', '0'),
(73, 'Fruta del bosque', '-', 0, '0', '0'),
(74, 'Fruta seca', '-', 0, '0', '0'),
(75, 'Frutos secos', '-', 0, '0', '0'),
(76, 'Gallinas', '-', 0, '0', '0'),
(77, 'Gamba', '-', 0, '0', '0'),
(78, 'Granada', '-', 0, '0', '0'),
(79, 'Guisante', '-', 0, '0', '0'),
(80, 'Habas', '-', 0, '0', '0'),
(81, 'Harinas', '-', 0, '0', '0'),
(82, 'Higos', '-', 0, '0', '0'),
(83, 'Hinojo', '-', 0, '0', '0'),
(84, 'Huevos: Clara, yema', '-', 0, '0', '0'),
(85, 'Jabali', '-', 0, '0', '0'),
(86, 'Judias', '-', 0, '0', '0'),
(87, 'Kiwi', '-', 0, '0', '0'),
(88, 'Langostino', '-', 0, '0', '0'),
(89, 'Lenguado', '-', 0, '0', '0'),
(90, 'Liebre', '-', 0, '0', '0'),
(91, 'Limon', '-', 0, '0', '0'),
(92, 'Lubina', '-', 0, '0', '0'),
(93, 'Maiz', '-', 0, '0', '0'),
(94, 'Mandarina', '-', 0, '0', '0'),
(95, 'Mango', '-', 0, '0', '0'),
(96, 'Manzanas', '-', 0, '0', '0'),
(97, 'Mejillon', '-', 0, '0', '0'),
(98, 'Melocotones', '-', 0, '0', '0'),
(99, 'Melon', '-', 0, '0', '0'),
(100, 'Membrillo', '-', 0, '0', '0'),
(101, 'Merluza', '-', 0, '0', '0'),
(102, 'Mero', '-', 0, '0', '0'),
(103, 'Naranja', '-', 0, '0', '0'),
(104, 'Nectarina', '-', 0, '0', '0'),
(105, 'Ocas', '-', 0, '0', '0'),
(106, 'Ocas salvajes.', '-', 0, '0', '0'),
(107, 'Oso', '-', 0, '0', '0'),
(108, 'Ostra', '-', 0, '0', '0'),
(109, 'Ovejas', '-', 0, '0', '0'),
(110, 'Palmito', '-', 0, '0', '0'),
(111, 'Paloma', '-', 0, '0', '0'),
(112, 'Palometa', '-', 0, '0', '0'),
(113, 'Panes', '-', 0, '0', '0'),
(114, 'Pasta', '-', 0, '0', '0'),
(115, 'Patos', '-', 0, '0', '0'),
(116, 'Patos', '-', 0, '0', '0'),
(117, 'Pavos', '-', 0, '0', '0'),
(118, 'Pejerrey', '-', 0, '0', '0'),
(119, 'Pepino', '-', 0, '0', '0'),
(120, 'Peras', '-', 0, '0', '0'),
(121, 'Percebe', '-', 0, '0', '0'),
(122, 'Perdiz', '-', 0, '0', '0'),
(123, 'Pimiento', '-', 0, '0', '0'),
(124, 'Pi', '-', 0, '0', '0'),
(125, 'Platano', '-', 0, '0', '0'),
(126, 'Pollo', '-', 0, '0', '0'),
(127, 'Pomelo', '-', 0, '0', '0'),
(128, 'Puerro', '-', 0, '0', '0'),
(129, 'Pulpo', '-', 0, '0', '0'),
(130, 'Rape', '-', 0, '0', '0'),
(131, 'Remolacha', '-', 0, '0', '0'),
(132, 'Rodaballo', '-', 0, '0', '0'),
(133, 'Salmon', '-', 0, '0', '0'),
(134, 'Sandia', '-', 0, '0', '0'),
(135, 'Sardina', '-', 0, '0', '0'),
(136, 'Sepia', '-', 0, '0', '0'),
(137, 'Ternera', '-', 0, '0', '0'),
(138, 'Tomate', '-', 0, '0', '0'),
(139, 'Trucha', '-', 0, '0', '0'),
(140, 'Uvas', '-', 0, '0', '0'),
(141, 'Vaca', '-', 0, '0', '0'),
(142, 'Vieira', '-', 0, '0', '0'),
(143, 'Zanahoria', '-', 0, '0', '0'),
(144, 'Arroz Basmati', 'Arroz Basmati', 345, '', ''),
(145, 'Canela', '', 18, '', ''),
(146, 'Agua', 'Agua Mineral', 0, '', ''),
(147, 'Hoja de Laurel', 'Hoja de Laurel', 6, '', ''),
(148, 'Sal', 'Sal', 0, 'Sal fina', 'Sal fina'),
(149, 'Sal gorda', 'Sal gorda', 0, '', ''),
(150, 'Sal', 'Sal', 0, '', ''),
(151, 'Sal fina', 'Sal fina', 0, '', ''),
(152, 'Sal', 'Sal', 0, '', ''),
(153, 'Sal fina', 'Sal fina', 0, '', ''),
(154, 'Sal gorda', 'Sal gorda', 0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingrediente_receta`
--

CREATE TABLE IF NOT EXISTS `ingrediente_receta` (
  `id_receta` int(11) NOT NULL,
  `id_ingrediente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingrediente_receta`
--

INSERT INTO `ingrediente_receta` (`id_receta`, `id_ingrediente`) VALUES
(2, 3),
(1, 6),
(1, 36),
(2, 144),
(2, 145),
(2, 146),
(2, 147),
(2, 152);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta`
--

CREATE TABLE IF NOT EXISTS `receta` (
`id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `preparacion` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `receta`
--

INSERT INTO `receta` (`id`, `nombre`, `descripcion`, `preparacion`) VALUES
(1, 'Arroz con Leche', 'Arroz con Leche y Canela', 'Se pone la leche con el arroz a calentar y se le echa canela cuando lleva unos 10 minutos'),
(2, 'Arroz Basmati', 'El Basmati es un tipo de arroz que se diferencia del resto por su cualidades aromáticas y su grano fino y largo, de hecho, en Hindi, Basmati significa "reina de las fragancias". En Mayura servimos dos tipos arroces tradicionales, uno de ellos el famoso arroz Basmati, cuya receta compartimos para puedan disfrutar de esta delicia de la cocina India en casa.', 'El secreto de un arroz Basmati suelto y suave está en su preparación así que lo primero que debes hacer es poner el arroz en remojo con abundante agua.\r\n\r\nMientras, pon a hervir agua con los condimentos. Añade la canela, las hojas de laurel y la sal.\r\n\r\nEscurre muy bien el arroz Basmati y enjuaga para eliminar el exceso de almidón. Cuando el agua hierva, llévalo a cocción de forma tradicional, moviendo de vez en cuando.\r\n\r\nCuando el grano haya llegado al punto deseado, retira del fuego y escurre el resto de agua. Conserva la rama de canela y las hojas de laurel dentro del arroz Basmati.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta_usada_usuario`
--

CREATE TABLE IF NOT EXISTS `receta_usada_usuario` (
`id` int(11) NOT NULL,
  `id_receta` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `usada` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta_usada_usuario_fecha`
--

CREATE TABLE IF NOT EXISTS `receta_usada_usuario_fecha` (
  `id_receta_usada_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock_usuario`
--

CREATE TABLE IF NOT EXISTS `stock_usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_ingrediente` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `apellido_uno` text NOT NULL,
  `apellido_dos` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ingrediente`
--
ALTER TABLE `ingrediente`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ingrediente_receta`
--
ALTER TABLE `ingrediente_receta`
 ADD PRIMARY KEY (`id_ingrediente`,`id_receta`);

--
-- Indices de la tabla `receta`
--
ALTER TABLE `receta`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `receta_usada_usuario`
--
ALTER TABLE `receta_usada_usuario`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `receta_usada_usuario_fecha`
--
ALTER TABLE `receta_usada_usuario_fecha`
 ADD PRIMARY KEY (`id_receta_usada_usuario`,`fecha`);

--
-- Indices de la tabla `stock_usuario`
--
ALTER TABLE `stock_usuario`
 ADD PRIMARY KEY (`id_usuario`,`id_ingrediente`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ingrediente`
--
ALTER TABLE `ingrediente`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT de la tabla `receta`
--
ALTER TABLE `receta`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `receta_usada_usuario`
--
ALTER TABLE `receta_usada_usuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
