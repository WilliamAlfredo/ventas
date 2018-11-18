-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 18-11-2018 a las 03:23:18
-- Versión del servidor: 5.7.23
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tarea_progra1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `codcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tel` int(8) DEFAULT NULL,
  PRIMARY KEY (`codcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`codcliente`, `nombre`, `apellido`, `tel`) VALUES
(1, 'JOSE', 'MENDEZ', 77777777),
(2, 'MARIA', 'LOPEZ', 88888888),
(3, 'jose', 'perez', 7657),
(4, 'julieta', 'romero', 34564686),
(5, 'jesus', 'artiga', 21467899);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion`
--

DROP TABLE IF EXISTS `cotizacion`;
CREATE TABLE IF NOT EXISTS `cotizacion` (
  `cod_cotizacion` int(13) NOT NULL,
  `cod_producto` int(13) NOT NULL,
  `cod_cliente` int(13) NOT NULL,
  `fecha_cotizacion` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cotizacion`
--

INSERT INTO `cotizacion` (`cod_cotizacion`, `cod_producto`, `cod_cliente`, `fecha_cotizacion`) VALUES
(1, 0, 5, '2018-11-17 14:00:00.000000'),
(2, 1, 2, '2018-11-17 14:00:00.000000'),
(3, 2, 3, '2018-11-17 14:00:00.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `codpro` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `existencias` int(11) DEFAULT NULL,
  `fechaingreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`codpro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codpro`, `nombre`, `precio`, `existencias`, `fechaingreso`) VALUES
('00000000', 'PEPSI', 1, 500, '2018-11-08 14:57:49'),
('00000001', 'COCA COLA', 1.5, 800, '2018-11-08 14:57:49'),
('000002', 'leche en polvo NIDO', 2.5, 445, '0000-00-00 00:00:00'),
('00003', 'salsa ranchera ', 0.65, 100, '0000-00-00 00:00:00'),
('00004', 'galletas picnic', 0.2, 2000, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE IF NOT EXISTS `ventas` (
  `codventa` int(11) NOT NULL AUTO_INCREMENT,
  `codpro` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `catidad` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `codcliente` int(11) NOT NULL,
  PRIMARY KEY (`codventa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`codventa`, `codpro`, `catidad`, `fecha`, `codcliente`) VALUES
(1, '00000000', 25, '2018-11-08 08:59:06', 1),
(2, '00000001', 10, '2018-11-08 08:59:06', 2),
(3, '000002', 23, '2018-11-17 11:00:00', 3),
(4, '00003', 45, '2018-11-17 11:00:00', 4),
(5, '00004', 34, '2018-11-17 11:00:00', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
