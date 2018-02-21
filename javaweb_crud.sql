-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2018 a las 10:34:32
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `javaweb_crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(10) NOT NULL,
  `origen` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `destino` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `paquete` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `remitente` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `transportista` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `precio` double(6,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `origen`, `destino`, `paquete`, `fecha`, `remitente`, `transportista`, `precio`) VALUES
(9, 'Madrid', 'barcelona', 'Grande', NULL, 'Kepa', 'Peio', 43.00),
(8, 'madrid', 'sevilla', 'grande', '2018-02-27 00:00:00', 'juan', 'maria', 15.00),
(2, 'Madrid, España', 'Barcelona, España', 'grande', '2018-02-16 00:00:00', 'juan', 'pepe', 15.00),
(10, 'Madrid', 'Barcelona', 'Grande', NULL, 'Kepa', 'Peio', 33.00),
(11, 'Madrid', 'Barcelona', 'Grande', NULL, 'Kepa', 'Peio', 33.00),
(12, 'Madrid', 'Barcelona', 'Grande', NULL, 'Kepa', 'Peio', 43.00),
(13, 'Madrid', 'Barcelona', 'Grande', NULL, 'Kepa', 'Peio', 33.00),
(14, 'o', 'd', 'Grande', NULL, 's', 's', 5.00),
(15, 'Madrid', 'Barcelona', 'Grande', NULL, 'Kepa', 'Peio', 333.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
