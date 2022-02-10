-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-11-2021 a las 04:07:48
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `viajarg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `finalviajar`
--

DROP TABLE IF EXISTS `finalviajar`;
CREATE TABLE IF NOT EXISTS `finalviajar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `finalviajar`
--

INSERT INTO `finalviajar` (`id`, `usuario`, `password`) VALUES
(1, 'admin', 'd7cd11e1f1fa0e6fc9141bbbb9c6840e'),
(3, 'Sofia', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(50) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `fecha`, `ubicacion`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, '6 de Diciembre', 'San Carlos de Bariloche, Rio Negro', 'Maratón de Montaña', 'BRUT VI edición, Ultra maratón de montaña, con distancias de 10, 25, 50 & 70 Kilómetros, celebra la maravillosa posibilidad de correr en los senderos y montañas clásicos de San Carlos de Bariloche.', 'Este evento estará certificado por la ITRA ( International Trail Running Association) ingresando al mundo de los eventos internacionales con los mas altos estándares de organización y posicionando a la ciudad como un destino internacional en el calendario de esta especialidad deportiva.\r\nEl evento conecta por senderos y caminos algunos de los iconos geográficos y culturales mas destacados de la ciudad, como el cerro Catedral, el cerro San Martin, el cerro bella Vista, el cerro Goye, Colonia Suiza, el  arroyo Casa de Piedra, el lago Moreno.\r\n', 'xyqfzqftierrapwizoxi'),
(3, '19 de Noviembre', 'Villa Carlos Paz, Córdoba', 'Reservas superan el 70% para el próximo finde largo', 'En el marco del último fin de semana largo del año, del viernes 19 al lunes 22 de noviembre, se anticipa un importante movimiento turístico para Carlos Paz.', 'De acuerdo a datos del área de estadísticas de la Secretaría de Turismo,  Deporte y Cultura del Gobierno Municipal, el promedio de reservas en las distintas categorías hoteleras hasta el momento superan el 70% promedio, llegando en las categorías superiores al 83% (tres estrellas) y más del 90 % (cuatro estrellas). Cifras que con el correr de los días de esta semana se incrementarán seguramente.\r\nVilla Carlos Paz será sede durante este fin de semana largo, de un numeroso calendario de eventos deportivos, recreativos y culturales para que disfruten turistas y vecinos, como:\r\nCampeonato Nacional de judo en el Hotel Mónaco.\r\nCampeonato Nacional de Malambo femenino en el complejo Malambo.\r\nTorneo de Lady Tennis en el Club Carlos Paz.\r\n21º Encuentro Nacional de profesores de teatro. Acción dramatiza Córdoba. Auditorio Municipal. ', 'k8plfasdey3xoltvkqgi'),
(4, '10, 11 y 12 de Diciembre', 'Godoy Cruz, Mendoza', 'Fiesta Provincial de la Cerveza', 'La nueva edición de la celebración que reúne cada año a miles de personas.', 'Tras un intenso trabajo y analizar las propuestas de 267 grupos mendocinos que se inscribieron, el jurado eligió a las bandas que participarán de la grilla de la edición 14 de la Fiesta Provincial de la Cerveza.\r\nLas bandas mendocinas elegidas para la Fiesta de la Cerveza:\r\n•Willy Tertulian\r\n•Wachas Negras\r\n•Tren Elefante\r\n•Seterna\r\n•Preso Común\r\n•Entre otras...', 'fdemvaiq7dquf7hdcwrd'),
(5, '21 de Noviembre', 'Puerto Almanza, Tierra del Fuego', 'Descubrí Puerto Almanza', 'Este pequeño pueblo cercano a Ushuaia se caracteriza por la pesca artesanal de centollas y moluscos. ', 'Puerto Almanza hoy cuenta con un ancladero que recibe embarcaciones de pesca y turismo. La actividad que desarrollan los pescadores artesanales se centra en la extracción de centollas y moluscos del Canal Beagle y en la pesca del róbalo. También se han creado emprendimientos dedicados a la cría de mejillones, cholgas, erizos y truchas. Podés vivenciar esta experiencia y degustar estos platos de mar en coloridos sitios gastronómicos.', 'uikpvcsdligzcm8ormid');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
