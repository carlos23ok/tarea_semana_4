-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2025 a las 19:33:36
-- Versión del servidor: 8.0.17
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tareasemana4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `Id_inscripción` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Id_estudiante` int(11) DEFAULT NULL,
  `Id_curso` int(11) NOT NULL,
  `Inscripcionescol` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`Id_inscripción`, `Fecha`, `Id_estudiante`, `Id_curso`, `Inscripcionescol`) VALUES
(44, '2025-02-01', 33, 2, ''),
(55, '2025-02-02', 34, 1, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`Id_inscripción`),
  ADD KEY `Id_estudiantes_idx` (`Id_estudiante`),
  ADD KEY `Id_curso_idx` (`Id_curso`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `Id_curso` FOREIGN KEY (`Id_curso`) REFERENCES `cursos` (`Id_curso`),
  ADD CONSTRAINT `Id_estudiantes` FOREIGN KEY (`Id_estudiante`) REFERENCES `estudiantes` (`Id_estudiante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
