-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql212.byetcluster.com
-- Tiempo de generación: 23-05-2025 a las 14:32:15
-- Versión del servidor: 10.6.19-MariaDB
-- Versión de PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `if0_39062269_dc_villains`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `villains`
--

CREATE TABLE `villains` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `alias` varchar(150) DEFAULT NULL,
  `first_appearance` varchar(100) DEFAULT NULL,
  `powers` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `villains`
--

INSERT INTO `villains` (`id`, `name`, `alias`, `first_appearance`, `powers`, `image`) VALUES
(1, 'Joker', 'The Clown Prince of Crime', 'Batman #1 (1940)', 'Alta inteligencia, naturaleza impredecible, experiencia química.', 'joker.jpg'),
(2, 'Lex Luthor', 'The Greatest Criminal Mind of Our Time', 'Action Comics #23 (1940)', 'Intelecto de nivel de genio, vastos recursos, tecnología.', 'lex_luthor.jpg'),
(3, 'Harley Quinn', 'Dr. Harleen Quinzel', 'Batman: The Animated Series (1992)', 'Habilidades gimnásticas, experto con armas, impredecible y lo mas importante a recalcar: esta como un quesito.', 'harley_quinn.jpg'),
(4, 'Bane', 'The Man Who Broke the Bat', 'Batman: Vengeance of Bane #1 (1993)', 'Súper fuerza, genio táctico, usa la droga Venom.', 'bane.jpg'),
(5, 'Darkseid', 'Lord of Apokolips', 'Superman\'s Pal Jimmy Olsen #134 (1970)', 'Poderes divinos, Rayos Omega, súper fuerza, invulnerabilidad.', 'darkseid.jpg'),
(6, 'Deathstroke', 'The Terminator', 'The New Teen Titans #2 (1980)', 'Estratega experto, fuerza aumentada, reflejos sobrehumanos, maestro en combate armado.', 'deathstroke.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `villains`
--
ALTER TABLE `villains`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `villains`
--
ALTER TABLE `villains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
