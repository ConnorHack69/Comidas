-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2016 a las 12:43:59
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
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
`id` int(11) NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Aceites y materias grasas'),
(2, 'Productos lácteos'),
(4, 'Setas y verduras'),
(5, 'Frutas'),
(6, 'Marisco'),
(7, 'Carne'),
(8, 'Pescado'),
(9, 'Cereales, harinas y masas'),
(10, 'Bebida'),
(11, 'Especias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingrediente`
--

CREATE TABLE IF NOT EXISTS `ingrediente` (
`id` int(11) NOT NULL,
  `nombre` varchar(60) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `descripcion` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `calorias` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `subcategoria` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=155 ;

--
-- Volcado de datos para la tabla `ingrediente`
--

INSERT INTO `ingrediente` (`id`, `nombre`, `descripcion`, `calorias`, `categoria`, `subcategoria`) VALUES
(1, 'Aceite de soja', 'Aceite de soja', 0, 1, 0),
(2, 'Aceite de maiz', 'Aceite de maiz', 0, 1, 0),
(3, 'Aceite de oliva', 'Aceite de oliva', 0, 1, 0),
(4, 'Nata o crema de leche', 'Nata o crema de leche', 0, 2, 0),
(5, 'Yogur', 'Yogur', 0, 2, 0),
(6, 'Leche', 'Leche', 0, 2, 0),
(7, 'Helado', 'Helado', 0, 2, 0),
(8, 'Queso', 'Queso', 0, 2, 0),
(9, 'Setas', 'Setas', 0, 4, 0),
(10, 'Hongos', 'Hongos', 0, 4, 0),
(11, 'Coles', 'Coles', 0, 4, 0),
(12, 'Legumbres', 'Legumbres', 0, 4, 0),
(13, 'Alubias', 'Alubias', 0, 4, 0),
(14, 'Garbanzos', 'Garbanzos', 0, 4, 0),
(15, 'Lentejas', 'Lentejas', 0, 4, 0),
(16, 'Soja', 'Soja', 0, 4, 0),
(17, 'Pimientas', 'Pimientas', 0, 4, 0),
(18, 'Patata', 'Patata', 0, 4, 0),
(19, 'Raices y tuberculos', 'Raices y tuberculos', 0, 4, 0),
(20, 'Lechugas', 'Lechugas', 0, 4, 0),
(21, 'Acelga', 'Acelga', 0, 4, 0),
(22, 'Alcachofa', 'Alcachofa', 0, 4, 0),
(23, 'Batata', 'Batata', 0, 4, 0),
(24, 'Berenjena', 'Berenjena', 0, 4, 0),
(25, 'Berro', 'Berro', 0, 4, 0),
(26, 'Brocoli', 'Brocoli', 0, 4, 0),
(27, 'Brecol', 'Brecol', 0, 4, 0),
(28, 'Calabacin', 'Calabacin', 0, 4, 0),
(29, 'Calabaza', 'Calabaza', 0, 4, 0),
(30, 'Cardo', 'Cardo', 0, 4, 0),
(31, 'Aguacate', 'Aguacate', 0, 5, 0),
(32, 'Albaricoque', 'Albaricoque', 0, 5, 0),
(33, 'Almeja', 'Almeja', 0, 6, 0),
(34, 'Ancas de rana', 'Ancas de rana', 0, 7, 14),
(35, 'Anchoa', 'Anchoa', 0, 8, 0),
(36, 'Arroz', 'Arroz', 0, 9, 0),
(37, 'Atun', 'Atun', 0, 8, 0),
(38, 'Avestruz', 'Avestruz', 0, 7, 11),
(39, 'Bacalao', 'Bacalao', 0, 8, 0),
(40, 'Bison', 'Bison', 0, 7, 12),
(41, 'Bonito', 'Bonito', 0, 8, 0),
(42, 'Boqueron', 'Boqueron', 0, 8, 0),
(43, 'Buey', 'Buey', 0, 7, 13),
(44, 'Caballa', 'Caballa', 0, 8, 0),
(45, 'Caballo', 'Caballo', 0, 7, 13),
(46, 'Cabra', 'Cabra', 0, 7, 13),
(47, 'Calamar', 'Calamar', 0, 6, 0),
(48, 'Camaron', 'Camaron', 0, 6, 0),
(49, 'Capones', 'Capones', 0, 7, 11),
(50, 'Caracoles', 'Caracoles', 0, 7, 0),
(51, 'Cebolla', 'Cebolla', 0, 4, 0),
(52, 'Cebolleta', 'Cebolleta', 0, 4, 0),
(53, 'Cerdo', 'Cerdo', 0, 7, 13),
(54, 'Cereales', 'Cereales', 0, 9, 0),
(55, 'Cereza', 'Cereza', 0, 5, 0),
(56, 'Chicharro', 'Chicharro', 0, 8, 0),
(57, 'Ciervo', 'Ciervo', 0, 7, 12),
(58, 'Cigala', 'Cigala', 0, 6, 0),
(59, 'Ciruela', 'Ciruela', 0, 5, 0),
(60, 'Coles de Bruselas', 'Coles de Bruselas', 0, 4, 0),
(61, 'Coliflor', 'Coliflor', 0, 4, 0),
(62, 'Conejo', 'Conejo', 0, 7, 12),
(63, 'Cordero', 'Cordero', 0, 7, 13),
(64, 'Corvina', 'Corvina', 0, 8, 0),
(65, 'Dorada', 'Dorada', 0, 8, 0),
(66, 'Endivia', 'Endivia', 0, 4, 0),
(67, 'Escarola', 'Escarola', 0, 4, 0),
(68, 'Esparrago', 'Esparrago', 0, 4, 0),
(69, 'Espinaca', 'Espinaca', 0, 4, 0),
(70, 'Faisanes', 'Faisanes', 0, 7, 10),
(71, 'Frambuesa', 'Frambuesa', 0, 5, 0),
(72, 'Fresa', 'Fresa', 0, 5, 0),
(73, 'Fruta del bosque', 'Fruta del bosque', 0, 5, 0),
(74, 'Fruta seca', 'Fruta seca', 0, 5, 0),
(75, 'Frutos secos', 'Frutos secos', 0, 5, 0),
(76, 'Gallinas', 'Gallinas', 0, 7, 11),
(77, 'Gamba', 'Gamba', 0, 6, 0),
(78, 'Granada', 'Granada', 0, 5, 0),
(79, 'Guisante', 'Guisante', 0, 4, 0),
(80, 'Habas', 'Habas', 0, 4, 0),
(81, 'Harinas', 'Harinas', 0, 9, 0),
(82, 'Higos', 'Higos', 0, 5, 0),
(83, 'Hinojo', 'Hinojo', 0, 4, 0),
(84, 'Huevos: Clara, yema', 'Huevos: Clara, yema', 0, 7, 11),
(85, 'Jabali', 'Jabali', 0, 7, 12),
(86, 'Judias', 'Judias', 0, 4, 0),
(87, 'Kiwi', 'Kiwi', 0, 5, 0),
(88, 'Langostino', 'Langostino', 0, 6, 0),
(89, 'Lenguado', 'Lenguado', 0, 8, 0),
(90, 'Liebre', 'Liebre', 0, 7, 12),
(91, 'Limon', 'Limon', 0, 5, 0),
(92, 'Lubina', 'Lubina', 0, 8, 0),
(93, 'Maiz', 'Maiz', 0, 4, 0),
(94, 'Mandarina', 'Mandarina', 0, 5, 0),
(95, 'Mango', 'Mango', 0, 5, 0),
(96, 'Manzanas', 'Manzanas', 0, 5, 0),
(97, 'Mejillon', 'Mejillon', 0, 5, 0),
(98, 'Melocotones', 'Melocotones', 0, 6, 0),
(99, 'Melon', 'Melon', 0, 5, 0),
(100, 'Membrillo', 'Membrillo', 0, 5, 0),
(101, 'Merluza', 'Merluza', 0, 8, 0),
(102, 'Mero', 'Mero', 0, 8, 0),
(103, 'Naranja', 'Naranja', 0, 5, 0),
(104, 'Nectarina', 'Nectarina', 0, 5, 0),
(105, 'Ocas', 'Ocas', 0, 7, 11),
(106, 'Ocas salvajes.', 'Ocas salvajes.', 0, 7, 10),
(107, 'Oso', 'Oso', 0, 7, 12),
(108, 'Ostra', 'Ostra', 0, 6, 0),
(109, 'Ovejas', 'Ovejas', 0, 7, 13),
(110, 'Palmito', 'Palmito', 0, 4, 0),
(111, 'Paloma', 'Paloma', 0, 7, 11),
(112, 'Palometa', 'Palometa', 0, 8, 0),
(113, 'Panes', 'Panes', 0, 9, 0),
(114, 'Pasta', 'Pasta', 0, 9, 0),
(115, 'Patos', 'Patos', 0, 7, 11),
(117, 'Pavos', 'Pavos', 0, 7, 11),
(118, 'Pejerrey', 'Pejerrey', 0, 8, 0),
(119, 'Pepino', 'Pepino', 0, 4, 0),
(120, 'Peras', 'Peras', 0, 5, 0),
(121, 'Percebe', 'Percebe', 0, 6, 0),
(122, 'Perdiz', 'Perdiz', 0, 7, 11),
(123, 'Pimiento', 'Pimiento', 0, 4, 0),
(124, 'Piña', 'Piña', 0, 5, 0),
(125, 'Platano', 'Platano', 0, 5, 0),
(126, 'Pollo', 'Pollo', 0, 7, 11),
(127, 'Pomelo', 'Pomelo', 0, 5, 0),
(128, 'Puerro', 'Puerro', 0, 4, 0),
(129, 'Pulpo', 'Pulpo', 0, 6, 0),
(130, 'Rape', 'Rape', 0, 8, 0),
(131, 'Remolacha', 'Remolacha', 0, 4, 0),
(132, 'Rodaballo', 'Rodaballo', 0, 8, 0),
(133, 'Salmon', 'Salmon', 0, 8, 0),
(134, 'Sandia', 'Sandia', 0, 5, 0),
(135, 'Sardina', 'Sardina', 0, 8, 0),
(136, 'Sepia', 'Sepia', 0, 6, 0),
(137, 'Ternera', 'Ternera', 0, 7, 13),
(138, 'Tomate', 'Tomate', 0, 4, 0),
(139, 'Trucha', 'Trucha', 0, 8, 0),
(140, 'Uvas', 'Uvas', 0, 5, 0),
(141, 'Vaca', 'Vaca', 0, 7, 13),
(142, 'Vieira', 'Vieira', 0, 6, 0),
(143, 'Zanahoria', 'Zanahoria', 0, 4, 0),
(144, 'Arroz Basmati', 'Arroz Basmati', 345, 9, 0),
(145, 'Canela', 'Canela', 18, 11, 0),
(146, 'Agua', 'Agua', 0, 10, 0),
(147, 'Hoja de Laurel', 'Hoja de Laurel', 6, 11, 0),
(152, 'Sal', 'Sal', 0, 11, 0),
(153, 'Sal fina', 'Sal fina', 0, 11, 0),
(154, 'Sal gorda', 'Sal gorda', 0, 11, 0);

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

--
-- Volcado de datos para la tabla `stock_usuario`
--

INSERT INTO `stock_usuario` (`id_usuario`, `id_ingrediente`, `cantidad`) VALUES
(1, 3, 2),
(1, 6, 4),
(1, 8, 10),
(1, 20, 1),
(1, 46, 1),
(1, 62, 1),
(1, 84, 12),
(1, 137, 200),
(1, 138, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoria`
--

CREATE TABLE IF NOT EXISTS `subcategoria` (
`id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `idCategoria` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `subcategoria`
--

INSERT INTO `subcategoria` (`id`, `nombre`, `idCategoria`) VALUES
(10, 'Aves de Caza', 7),
(11, 'Aves de Corral', 7),
(12, 'Mamíferos', 7),
(13, 'Animal', 7),
(14, 'Otros', 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido_uno`, `apellido_dos`, `email`, `password`, `fecha_registro`) VALUES
(1, 'Ivan', 'Corcoles', 'Martinez', 'cgehminecraft@gmail.com', 'asdasdasd', '1995-06-21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
 ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
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
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
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
-- AUTO_INCREMENT de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
