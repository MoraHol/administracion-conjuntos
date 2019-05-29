-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-05-2019 a las 22:11:04
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `admin-conjuntos`
--
CREATE DATABASE `admin-conjuntos`;
USE `admin-conjuntos`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrators`
--

CREATE TABLE `administrators` (
  `id_administrators` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `identification_number` varchar(45) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrators`
--

INSERT INTO `administrators` (`id_administrators`, `name`, `identification_number`, `password`) VALUES
(4, 'alexis holguin', '1002262656', '895d196a3ec8b67ff75fb6bd278bcef9c992838f0e67fd999460721800988918');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aptos`
--

CREATE TABLE `aptos` (
  `id_aptos` int(11) NOT NULL,
  `number` varchar(45) DEFAULT NULL,
  `towers_id_towers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notices`
--

CREATE TABLE `notices` (
  `id_notice` int(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notices`
--

INSERT INTO `notices` (`id_notice`, `title`, `content`) VALUES
(1, 'Primera noticia del administrador', 'Esta es la primer noticia del administrador.'),
(2, 'Segunda noticia de prueba', 'Segunda noticia del administrador para poder realiza sus correspondientes comentarios.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residents`
--

CREATE TABLE `residents` (
  `id_residents` int(11) NOT NULL,
  `identification_number` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `residentscol` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `tel1` varchar(45) DEFAULT NULL,
  `tel2` varchar(45) DEFAULT NULL,
  `cell_phone_number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `Aptos_id_aptos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `towers`
--

CREATE TABLE `towers` (
  `id_towers` int(11) NOT NULL,
  `number` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id_administrators`);

--
-- Indices de la tabla `aptos`
--
ALTER TABLE `aptos`
  ADD PRIMARY KEY (`id_aptos`),
  ADD KEY `fk_Aptos_towers_idx` (`towers_id_towers`);

--
-- Indices de la tabla `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id_notice`);

--
-- Indices de la tabla `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id_residents`),
  ADD KEY `fk_residents_Aptos1_idx` (`Aptos_id_aptos`);

--
-- Indices de la tabla `towers`
--
ALTER TABLE `towers`
  ADD PRIMARY KEY (`id_towers`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id_administrators` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `notices`
--
ALTER TABLE `notices`
  MODIFY `id_notice` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aptos`
--
ALTER TABLE `aptos`
  ADD CONSTRAINT `fk_Aptos_towers` FOREIGN KEY (`towers_id_towers`) REFERENCES `towers` (`id_towers`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `residents`
--
ALTER TABLE `residents`
  ADD CONSTRAINT `fk_residents_Aptos1` FOREIGN KEY (`Aptos_id_aptos`) REFERENCES `aptos` (`id_aptos`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;