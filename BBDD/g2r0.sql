-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2020 a las 08:37:59
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `alarmaInsert` (IN `pID_Salas` INT(7), IN `pActivado` INT(40))  NO SQL
INSERT INTO alarma (ID_Sala, activado, fechaMod) VALUES (pID_Salas, pActivado, NOW())$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `alarmaUpdate` (IN `pID_Salas` VARCHAR(7), IN `pActivado` VARCHAR(40))  NO SQL
UPDATE alarma SET activado=pActivado, fechaMod=NOW() WHERE ID_Sala=pID_Salas$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `calefaccionInsert` (IN `pID_Salas` INT(7), IN `pActivado` INT(40))  NO SQL
insert into calefaccion (ID_Sala, activado, fechaMod) VALUES (pID_Salas, pActivado, NOW())$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `calefaccionUpdate` (IN `pID_Salas` INT(7), IN `pActivado` INT(40))  NO SQL
UPDATE calefaccion SET activado=pActivado, fechaMod=NOW() WHERE ID_Sala=pID_Salas$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectAlarma` ()  NO SQL
SELECT * FROM alarma$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectAll` ()  NO SQL
SELECT * FROM salas INNER JOIN calefaccion ON salas.ID_Sala=calefaccion.ID_Sala INNER JOIN alarma ON salas.ID_Sala=alarma.ID_Sala$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectSala` ()  NO SQL
SELECT * FROM salas ORDER BY SalaNum$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectSalaAlarma` ()  NO SQL
SELECT SalaNum, alarma.activado, Piso FROM salas JOIN alarma ON ID_Sala=alarma.ID_Sala$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectSalaCalefaccion` ()  NO SQL
SELECT SalaNum, calefaccion.activado, Piso FROM salas JOIN calefaccion ON ID_Sala=calefaccion.ID_Sala$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alarma`
--

CREATE TABLE `alarma` (
  `ID_Alarma` int(11) NOT NULL,
  `ID_Sala` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fechaMod` date NOT NULL,
  `activado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `alarma`
--

INSERT INTO `alarma` (`ID_Alarma`, `ID_Sala`, `fechaMod`, `activado`) VALUES
(1, 'P1_1', '2020-09-21', 0),
(2, 'P1_2', '2020-09-21', 0),
(3, 'P1_3', '2020-09-21', 0),
(4, 'P1_4', '2020-09-21', 0),
(5, 'P1_5', '2020-09-21', 0),
(6, 'P1_6', '2020-09-21', 0),
(7, 'P1_7', '2020-09-21', 0),
(8, 'P1_8', '2020-09-21', 0),
(9, 'P1_9', '2020-09-21', 0),
(10, 'P1_10', '2020-09-21', 0),
(11, 'P1_11', '2020-09-21', 0),
(12, 'P1_12', '2020-09-21', 0),
(13, 'P2_1', '2020-09-21', 0),
(14, 'P2_2', '2020-09-21', 0),
(15, 'P2_3', '2020-09-21', 0),
(16, 'P2_4', '2020-09-21', 0),
(17, 'P2_5', '2020-09-21', 0),
(18, 'P2_6', '2020-09-21', 0),
(19, 'P2_7', '2020-09-21', 0),
(20, 'P2_8', '2020-09-21', 0),
(21, 'P2_9', '2020-09-21', 0),
(22, 'P2_10', '2020-09-21', 0),
(23, 'P2_11', '2020-09-21', 0),
(24, 'P2_12', '2020-09-21', 0),
(25, 'P3_1', '2020-09-21', 0),
(26, 'P3_2', '2020-09-21', 0),
(27, 'P3_3', '2020-09-21', 0),
(28, 'P3_4', '2020-09-21', 0),
(29, 'P3_5', '2020-09-21', 0),
(30, 'P3_6', '2020-09-21', 0),
(31, 'P3_7', '2020-09-21', 0),
(32, 'P3_8', '2020-09-21', 0),
(33, 'P3_9', '2020-09-21', 0),
(34, 'P3_10', '2020-09-21', 0),
(35, 'P3_11', '2020-09-21', 0),
(36, 'P3_12', '2020-09-21', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calefaccion`
--

CREATE TABLE `calefaccion` (
  `ID_Calefaccion` int(11) NOT NULL,
  `ID_Sala` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fechaMod` date NOT NULL,
  `activado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `calefaccion`
--

INSERT INTO `calefaccion` (`ID_Calefaccion`, `ID_Sala`, `fechaMod`, `activado`) VALUES
(1, 'P1_1', '2020-09-18', 0),
(2, 'P1_2', '2020-09-22', 0),
(3, 'P1_3', '2020-09-22', 0),
(4, 'P1_4', '2020-09-22', 0),
(5, 'P1_5', '2020-09-22', 0),
(6, 'P1_6', '2020-09-22', 0),
(7, 'P1_7', '2020-09-22', 0),
(8, 'P1_8', '2020-09-22', 0),
(9, 'P1_9', '2020-09-22', 0),
(10, 'P1_9', '2020-09-22', 0),
(11, 'P1_10', '2020-09-22', 0),
(12, 'P1_11', '2020-09-22', 0),
(13, 'P1_12', '2020-09-22', 0),
(14, 'P2_1', '2020-09-22', 0),
(15, 'P2_2', '2020-09-22', 0),
(16, 'P2_3', '2020-09-22', 0),
(17, 'P2_4', '2020-09-22', 0),
(18, 'P2_5', '2020-09-22', 0),
(19, 'P2_6', '2020-09-22', 0),
(20, 'P2_7', '2020-09-22', 0),
(21, 'P2_8', '2020-09-22', 0),
(22, 'P2_9', '2020-09-22', 0),
(23, 'P2_10', '2020-09-22', 0),
(24, 'P2_10', '2020-09-22', 0),
(25, 'P2_11', '2020-09-22', 0),
(26, 'P2_12', '2020-09-22', 0),
(27, 'P3_1', '2020-09-22', 0),
(28, 'P3_2', '2020-09-22', 0),
(29, 'P3_3', '2020-09-22', 0),
(30, 'P3_4', '2020-09-22', 0),
(31, 'P3_5', '2020-09-22', 0),
(32, 'P3_6', '2020-09-22', 0),
(33, 'P3_7', '2020-09-22', 0),
(34, 'P3_8', '2020-09-22', 0),
(35, 'P3_9', '2020-09-22', 0),
(36, 'P3_10', '2020-09-22', 0),
(37, 'P3_11', '2020-09-22', 0),
(38, 'P3_12', '2020-09-22', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `ID_Sala` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `SalaNum` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Piso` enum('1','2','3') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Salas en el centro';

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` (`ID_Sala`, `SalaNum`, `Piso`) VALUES
('P1_1', 'sala 001', '1'),
('P1_10', 'sala 010', '1'),
('P1_11', 'sala 011', '1'),
('P1_12', 'sala 012', '1'),
('P1_2', 'sala 002', '1'),
('P1_3', 'sala 003', '1'),
('P1_4', 'sala 004', '1'),
('P1_5', 'sala 005', '1'),
('P1_6', 'sala 006', '1'),
('P1_7', 'sala 007', '1'),
('P1_8', 'sala 008', '1'),
('P1_9', 'sala 009', '1'),
('P2_1', 'sala 101', '2'),
('P2_10', 'sala 110', '2'),
('P2_11', 'sala 111', '2'),
('P2_12', 'sala 112', '2'),
('P2_2', 'sala 102', '2'),
('P2_3', 'sala 103', '2'),
('P2_4', 'sala 104', '2'),
('P2_5', 'sala 105', '2'),
('P2_6', 'sala 106', '2'),
('P2_7', 'sala 107', '2'),
('P2_8', 'sala 108', '2'),
('P2_9', 'sala 109', '2'),
('P3_1', 'sala 201', '3'),
('P3_10', 'sala 210', '3'),
('P3_11', 'sala 211', '3'),
('P3_12', 'sala 212', '3'),
('P3_2', 'sala 202', '3'),
('P3_3', 'sala 203', '3'),
('P3_4', 'sala 204', '3'),
('P3_5', 'sala 205', '3'),
('P3_6', 'sala 206', '3'),
('P3_7', 'sala 207', '3'),
('P3_8', 'sala 208', '3'),
('P3_9', 'sala 209', '3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alarma`
--
ALTER TABLE `alarma`
  ADD PRIMARY KEY (`ID_Alarma`),
  ADD UNIQUE KEY `ID_Sala_2` (`ID_Sala`);

--
-- Indices de la tabla `calefaccion`
--
ALTER TABLE `calefaccion`
  ADD PRIMARY KEY (`ID_Calefaccion`),
  ADD KEY `ID_Sala` (`ID_Sala`);

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
  MODIFY `ID_Alarma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `calefaccion`
--
ALTER TABLE `calefaccion`
  MODIFY `ID_Calefaccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
