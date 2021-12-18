-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql
-- Tiempo de generación: 18-12-2021 a las 02:37:37
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tSeriesDB`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruleEngine`
--

CREATE TABLE `ruleEngine` (
  `id` int NOT NULL,
  `ruleName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `active` binary(1) NOT NULL,
  `topicPattern` varchar(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payloadPattern` varchar(2048) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `method` varchar(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'GET',
  `webHook` varchar(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ruleEngine`
--

INSERT INTO `ruleEngine` (`id`, `ruleName`, `active`, `topicPattern`, `payloadPattern`, `method`, `webHook`) VALUES
(1, 'timestamp rule', 0x31, 'time%', '%', 'POST', 'http://127.0.0.1:1880/modifiedTime/rule-engine-working'),
(2, 'timestamp_rule_2', 0x31, 'timestamp%', '%', 'POST', 'http://127.0.0.1:1880/modifiedTime/rule-engine-working-again'),
(3, 'again rule', 0x31, '%', '%again', 'POST', 'http://127.0.0.1:1880/modifiedTime/again-found');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thingData`
--

CREATE TABLE `thingData` (
  `id` int NOT NULL,
  `topic` varchar(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payload` varchar(2048) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `timestamp` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deleted` binary(1) NOT NULL DEFAULT '\0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `thingData`
--

INSERT INTO `thingData` (`id`, `topic`, `payload`, `timestamp`, `deleted`) VALUES
(1, 'local', 'sss', '1637354272.618', 0x30),
(2, 'local', 'prueba', '1637354311.482', 0x30),
(3, 'local', 'Acceso', '1637354316.687', 0x30),
(4, 'local', 'Funciona%20bien', '1637354323.731', 0x30),
(5, 'local', 'Test', '1637642482.779', 0x30),
(6, 'local', 'Mi%20primer%20sa', '1637642529.462', 0x30),
(7, 'local1', 'Mi%20primer%20saeefnefhehjfjejhf', '1637642578.389', 0x30),
(8, 'local', 'Hola%20mike', '1637643838.977', 0x30),
(9, 'local09', 'Hola%20mike', '1637643867.870', 0x30),
(19, 'timestamp', '1638930428425', '1638930428.429', 0x31),
(20, 'timestamp', '1638930429967', '1638930429.983', 0x31),
(22, 'timestamp', '1638930431726', '1638930431.732', 0x31),
(55, 'local_temp', 'Hola%20mike', '1639618690.481', 0x30),
(56, 'local_temp', 'Hola%20mike', '1639618709.137', 0x30),
(57, 'local_temp', '1638930428425', '1639618815.947', 0x30),
(58, 'local_temp', '1638930428425', '1639618841.678', 0x30),
(59, 'local_temp', '1638930428425', '1639618879.865', 0x30),
(60, 'local_temp', '1638930428425', '1639618909.471', 0x30),
(61, 'local_temp', '1638930428425', '1639618919.614', 0x30),
(62, 'local_temp', '1638930428425', '1639618992.021', 0x30),
(63, 'local_temp', 'test', '1639618998.970', 0x30),
(64, 'local_temp', 'test', '1639619001.128', 0x30),
(65, 'local_temp', 'test', '1639619005.696', 0x30),
(66, 'local_temp1', 'test1', '1639620736.458', 0x30),
(67, 'time', '1', '1639622971.025', 0x30),
(68, 'time', '1', '1639622977.336', 0x30);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ruleEngine`
--
ALTER TABLE `ruleEngine`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `thingData`
--
ALTER TABLE `thingData`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ruleEngine`
--
ALTER TABLE `ruleEngine`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `thingData`
--
ALTER TABLE `thingData`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
