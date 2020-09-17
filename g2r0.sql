-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-09-2020 a las 11:18:52
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alarma`
--

CREATE TABLE `alarma` (
  `ID_Sala` int(3) UNSIGNED NOT NULL,
  `ID_Alarma` int(10) UNSIGNED NOT NULL,
  `Activado` enum('Activado','No activado','No hay datos','') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No hay datos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Alarmas en el centro';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calefaccion`
--

CREATE TABLE `calefaccion` (
  `ID_Sala` int(3) UNSIGNED NOT NULL,
  `ID_Calefaccion` int(11) UNSIGNED NOT NULL,
  `Activado` set('Activado','No activado','No hay datos') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No hay datos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alarma`
--
ALTER TABLE `alarma`
  ADD PRIMARY KEY (`ID_Alarma`),
  ADD UNIQUE KEY `UNIQUE` (`ID_Sala`);

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
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alarma`
--
ALTER TABLE `alarma`
  ADD CONSTRAINT `alarma_ibfk_1` FOREIGN KEY (`ID_Sala`) REFERENCES `salas` (`ID_Sala`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `calefaccion`
--
ALTER TABLE `calefaccion`
  ADD CONSTRAINT `calefaccion_ibfk_1` FOREIGN KEY (`ID_Sala`) REFERENCES `salas` (`ID_Sala`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
