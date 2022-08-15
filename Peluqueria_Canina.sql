-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-08-2022 a las 02:33:55
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Peluqueria_Canina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Dueño`
--

CREATE TABLE `Dueño` (
  `DNI` int(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Teléfono` int(50) NOT NULL,
  `Dirección` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Dueño`
--

INSERT INTO `Dueño` (`DNI`, `Nombre`, `Apellido`, `Teléfono`, `Dirección`) VALUES
(18505201, 'Carlos', 'Galvan', 1156897, 'Calle Roja 879'),
(18755401, 'Pedro', 'Alvarez', 1165984, 'Calle Rosario 605'),
(23546987, 'Maria', 'Perez', 4789689, 'Pueyrredon  811'),
(28957346, 'Juan', 'Perez', 4789689, 'Belgrano 101'),
(30216598, 'Mario', 'Tevez', 1505328, 'Calle Azul 205'),
(32548796, 'Rosario', 'Cuevas', 2546792, 'Calle Roja 450');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Historial`
--

CREATE TABLE `Historial` (
  `ID_Historial` int(11) NOT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Perro_fk` int(11) DEFAULT NULL,
  `Descripción` varchar(500) NOT NULL,
  `Monto` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Historial`
--

INSERT INTO `Historial` (`ID_Historial`, `Fecha`, `Perro_fk`, `Descripción`, `Monto`) VALUES
(1, '2022-05-12 00:00:00', 1, 'lavado y corte', '8900'),
(2, '2022-06-10 00:00:00', 2, 'lavado', '1500'),
(3, '2022-06-18 00:00:00', 3, 'lavado y corte', '2300'),
(4, '2022-07-19 00:00:00', 4, 'lavado y corte', '2300'),
(5, '2022-07-25 00:00:00', 5, 'lavado', '1500'),
(6, '2022-08-10 00:00:00', 6, 'lavado', '1500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Perro`
--

CREATE TABLE `Perro` (
  `ID_Perro` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Fecha_nac` date DEFAULT NULL,
  `Sexo` varchar(10) NOT NULL,
  `DNI_Dueño` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Perro`
--

INSERT INTO `Perro` (`ID_Perro`, `Nombre`, `Fecha_nac`, `Sexo`, `DNI_Dueño`) VALUES
(1, 'Pupy', '2012-12-12', 'Hembra', 18505201),
(2, 'Fido', '2012-10-12', 'Macho', 23546987),
(3, 'Tito', '2015-08-15', 'Macho', 28957346),
(4, 'Reina', '2018-04-10', 'Hembra', 30216598),
(5, 'Magno', '2019-08-12', 'Macho', 32548796),
(6, 'Toto', '0201-11-25', 'Macho', 32548796);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Dueño`
--
ALTER TABLE `Dueño`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `Historial`
--
ALTER TABLE `Historial`
  ADD PRIMARY KEY (`ID_Historial`),
  ADD KEY `Perro_fk` (`Perro_fk`);

--
-- Indices de la tabla `Perro`
--
ALTER TABLE `Perro`
  ADD PRIMARY KEY (`ID_Perro`),
  ADD KEY `DNI_Dueño` (`DNI_Dueño`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Historial`
--
ALTER TABLE `Historial`
  MODIFY `ID_Historial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `Perro`
--
ALTER TABLE `Perro`
  MODIFY `ID_Perro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Historial`
--
ALTER TABLE `Historial`
  ADD CONSTRAINT `Historial_ibfk_1` FOREIGN KEY (`Perro_fk`) REFERENCES `Perro` (`ID_Perro`);

--
-- Filtros para la tabla `Perro`
--
ALTER TABLE `Perro`
  ADD CONSTRAINT `Perro_ibfk_1` FOREIGN KEY (`DNI_Dueño`) REFERENCES `Dueño` (`DNI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123

UPDATE Dueño
SET Dirección='Calle Libertad 123'
WHERE DNI='32548796'
