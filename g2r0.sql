-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-09-2020 a las 13:43:21
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `g2r0`
--
CREATE DATABASE IF NOT EXISTS `g2r0` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `g2r0`;

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `AlarmaMod` (IN `pID_Salas` INT(3), IN `pActivado` VARCHAR(40))  NO SQL
UPDATE alarma SET activado=pActivado WHERE alarma.ID_Sala=pID_Salas$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `calefacciónMod` (IN `pID_Salas` INT(3), IN `pActivado` VARCHAR(40))  NO SQL
UPDATE calefaccion SET calefaccion.Activado=pActivado WHERE calefaccion.ID_Sala=pID_Salas$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectAll` ()  NO SQL
SELECT * FROM salas INNER JOIN calefaccion ON salas.ID_Sala=calefaccion.ID_Sala INNER JOIN alarma ON salas.ID_Sala=alarma.ID_Sala$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alarma`
--

CREATE TABLE `alarma` (
  `ID_Sala` int(3) UNSIGNED NOT NULL,
  `ID_Alarma` int(10) UNSIGNED NOT NULL,
  `Activado` enum('Activado','No activado','No hay datos','') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No hay datos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Alarmas en el centro';

--
-- Volcado de datos para la tabla `alarma`
--

INSERT INTO `alarma` (`ID_Sala`, `ID_Alarma`, `Activado`) VALUES
(1, 1, 'No hay datos'),
(2, 2, 'No hay datos'),
(3, 3, 'No hay datos'),
(4, 4, 'No hay datos'),
(5, 5, 'No hay datos'),
(6, 6, 'No hay datos'),
(7, 7, 'No hay datos'),
(8, 8, 'No hay datos'),
(9, 9, 'No hay datos'),
(10, 10, 'No hay datos'),
(11, 11, 'No hay datos'),
(12, 12, 'No hay datos'),
(13, 13, 'No hay datos'),
(14, 14, 'No hay datos'),
(15, 15, 'No hay datos'),
(16, 16, 'No hay datos'),
(17, 17, 'No hay datos'),
(18, 18, 'No hay datos'),
(19, 19, 'No hay datos'),
(20, 20, 'No hay datos'),
(21, 21, 'No hay datos'),
(22, 22, 'No hay datos'),
(23, 23, 'No hay datos'),
(24, 24, 'No hay datos'),
(25, 25, 'No hay datos'),
(26, 26, 'No hay datos'),
(27, 27, 'No hay datos'),
(28, 28, 'No hay datos'),
(29, 29, 'No hay datos'),
(30, 30, 'No hay datos'),
(31, 31, 'No hay datos'),
(32, 32, 'No hay datos'),
(33, 33, 'No hay datos'),
(34, 34, 'No hay datos'),
(35, 35, 'No hay datos'),
(44, 36, 'No hay datos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calefaccion`
--

CREATE TABLE `calefaccion` (
  `ID_Sala` int(3) UNSIGNED NOT NULL,
  `ID_Calefaccion` int(11) UNSIGNED NOT NULL,
  `Activado` enum('Activado','No activado','No hay datos') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No hay datos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `calefaccion`
--

INSERT INTO `calefaccion` (`ID_Sala`, `ID_Calefaccion`, `Activado`) VALUES
(1, 1, 'No hay datos'),
(2, 2, 'No hay datos'),
(3, 3, 'No hay datos'),
(4, 4, 'No hay datos'),
(5, 5, 'No hay datos'),
(6, 6, 'No hay datos'),
(7, 7, 'No hay datos'),
(8, 8, 'No hay datos'),
(9, 9, 'No hay datos'),
(10, 10, 'No hay datos'),
(11, 12, 'No hay datos'),
(12, 13, 'No hay datos'),
(13, 14, 'No hay datos'),
(14, 15, 'No hay datos'),
(15, 16, 'No hay datos'),
(16, 17, 'No hay datos'),
(17, 18, 'No hay datos'),
(18, 19, 'No hay datos'),
(19, 20, 'No hay datos'),
(20, 21, 'No hay datos'),
(21, 22, 'No hay datos'),
(22, 23, 'No hay datos'),
(23, 24, 'No hay datos'),
(24, 25, 'No hay datos'),
(25, 26, 'No hay datos'),
(26, 27, 'No hay datos'),
(27, 28, 'No hay datos'),
(28, 29, 'No hay datos'),
(29, 30, 'No hay datos'),
(30, 31, 'No hay datos'),
(31, 32, 'No hay datos'),
(32, 33, 'No hay datos'),
(33, 34, 'No hay datos'),
(34, 35, 'No hay datos'),
(35, 36, 'No hay datos'),
(44, 37, 'No hay datos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `ID_Sala` int(3) UNSIGNED NOT NULL,
  `SalaNum` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Piso` enum('1','2','3') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Salas en el centro';

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` (`ID_Sala`, `SalaNum`, `Piso`) VALUES
(1, 'sala 001', '1'),
(2, 'sala 002', '1'),
(3, 'sala 003', '1'),
(4, 'sala 004', '1'),
(5, 'sala 005', '1'),
(6, 'sala 006', '1'),
(7, 'sala 007', '1'),
(8, 'sala 008', '1'),
(9, 'sala 009', '1'),
(10, 'sala 010', '1'),
(11, 'sala 011', '1'),
(12, 'sala 012', '1'),
(13, 'sala 101', '2'),
(14, 'sala 102', '2'),
(15, 'sala 103', '2'),
(16, 'sala 104', '2'),
(17, 'sala 105', '2'),
(18, 'sala 106', '2'),
(19, 'sala 107', '2'),
(20, 'sala 108', '2'),
(21, 'sala 109', '2'),
(22, 'sala 110', '2'),
(23, 'sala 111', '2'),
(24, 'sala 112', '2'),
(25, 'sala 201', '3'),
(26, 'sala 202', '3'),
(27, 'sala 203', '3'),
(28, 'sala 204', '3'),
(29, 'sala 205', '3'),
(30, 'sala 206', '3'),
(31, 'sala 207', '3'),
(32, 'sala 208', '3'),
(33, 'sala 209', '3'),
(34, 'sala 210', '3'),
(35, 'sala 211', '3'),
(44, 'sala 212', '3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alarma`
--
ALTER TABLE `alarma`
  ADD PRIMARY KEY (`ID_Alarma`),
  ADD UNIQUE KEY `ID_Sala` (`ID_Sala`);

--
-- Indices de la tabla `calefaccion`
--
ALTER TABLE `calefaccion`
  ADD PRIMARY KEY (`ID_Calefaccion`),
  ADD UNIQUE KEY `ID_Sala` (`ID_Sala`);

--
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`ID_Sala`),
  ADD UNIQUE KEY `UNIQUE` (`SalaNum`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alarma`
--
ALTER TABLE `alarma`
  MODIFY `ID_Alarma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `calefaccion`
--
ALTER TABLE `calefaccion`
  MODIFY `ID_Calefaccion` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `salas`
--
ALTER TABLE `salas`
  MODIFY `ID_Sala` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alarma`
--
ALTER TABLE `alarma`
  ADD CONSTRAINT `alarma_ibfk_1` FOREIGN KEY (`ID_Sala`) REFERENCES `salas` (`ID_Sala`);

--
-- Filtros para la tabla `calefaccion`
--
ALTER TABLE `calefaccion`
  ADD CONSTRAINT `calefaccion_ibfk_1` FOREIGN KEY (`ID_Sala`) REFERENCES `salas` (`ID_Sala`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
