-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-12-2015 a las 10:58:36
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actores`
--

CREATE TABLE `actores` (
  `Nombre` varchar(45) NOT NULL,
  `Pais` varchar(45) DEFAULT NULL,
  `Descripcion` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Foto` text,
  `Papel` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `actores`
--

INSERT INTO `actores` (`Nombre`, `Pais`, `Descripcion`, `Foto`, `Papel`) VALUES
('Adrien Brody', 'Estados Unidos', 'Adrien Brody (n. Nueva York, 14 de abril de 1973) es un actor y productor estadounidense. Ganador del premio Óscar a mejor actor por su actuación en la película El Pianista en el 2002, convirtiéndose en el actor más joven de la historia en haber ganado en esa categoría (tenía 29 años).', 'img/ab', 'Wladyslaw Szpilman'),
('Alan Rickman', 'Inglaterra', 'Alan Sidney Patrick Rickman, conocido simplemente como Alan Rickman (Hammersmith, Londres; 21 de febrero de 1946), es un actor y director de cine británico.', 'img/ar', 'Severus Snape'),
('Bradley Cooper', 'Estados Unidos', 'Bradley Charles Cooper (Philadelphia, Pennsylvania; 5 de enero de 1975) es un actor y ex modelo estadounidense.', 'img/bc', 'Ejecutivo de la Home Shopping Network'),
('Daniel Radcliffe', 'Inglaterra', 'Daniel Jacob Radcliffe (Fulham, Londres, 23 de julio de 1989) es un actor inglés, popular sobre todo por haber protagonizado la saga cinematográfica de Harry Potter.', 'img/dr', 'Harry Potter'),
('Dascha Polanco', 'Republica Dominicana', 'Dascha "Dash" Polanco es una actriz dominicana, conocida por su personaje Dayanara Diaz en Orange Is the New Black.', 'img/dp', 'Jackie, mejor amiga de Joy'),
('Ed Stoppard', 'Inglaterra', 'Edmund "Ed" Stoppard, es un actor ingles mejor conocido por haber interpretado a Sir Hallam Holland en la serie Upstairs, Downstairs.', 'img/es', 'Henryk Szpilman'),
('Édgar Ramírez', 'Venezuela', 'Édgar Filiberto Ramírez Arellano (San Cristóbal, Táchira, 25 de marzo de 1977) es un actor venezolano, de cine y televisión, ganador de un Premio César.', 'img/er', 'Tony Miranne'),
('Elisabeth Röhm', 'Estados Unidos', 'Elisabeth Röhm (Düsseldorf, Alemania, 28 de abril de 1973-) es una actriz alemana-estadounidense mejor conocida por haber interpretado a Serena Southerlyn en la serie Law & Order y a Kate Lockley en l', 'img/ero', 'Peggy'),
('Emilia Fox', 'Inglaterra', 'Emilia Rose Elizabeth Fox (Londres, 31 de julio de 1974) es una actriz británica, conocida por su papel como Jeannie Hurst en la serie de televisión Randall & Hopkirk (Deceased).', 'img/ef', 'Dorota'),
('Emma Watson', 'Inglaterra', 'Emma Charlotte Duerre Watson (París, 15 de abril de 1990) es una actriz, modelo y filántropa británica, conocida por interpretar a Hermione Granger en la serie de películas de Harry Potter. ', 'img/ew', 'Hermione Granger'),
('Frank Finlay', 'Inglaterra', 'Francis "Frank" Finlay CBE (Lancashire, Inglaterra; 6 de agosto de 1926).Fue educado en la St. Gregory the Great School y se formó para carnicero como su padre, ganando un diploma de gremios del comercio.', 'img/ff', 'El padre de Wladyslaw Szpilman'),
('Helena Bonham Carter', 'Inglaterra', 'Helena Bonham Carter,(n. Londres, 26 de mayo de 1966) es una actriz británica, ganadora del premio BAFTA y nominada al Óscar en dos ocasiones.', 'img/hbc', 'Bellatrix Lestrange'),
('Jennifer Lawrence', 'Estados Unidos', 'Jennifer Shrader Lawrence(Louisville, Kentucky, 15 de agosto de 1990) es una actriz estadounidense de cine y televisión. Su carrera comenzó con trabajos ocasionales en televisión.', 'img/jl', 'Joy Mangano'),
('Maggie Smith', 'Inglaterra', 'Dame Margaret Natalie Smith (Ilford, Inglaterra, 28 de diciembre de 1934), más conocida como Maggie Smith, es una consagrada actriz de cine, teatro y televisión británica.', 'img/ms', 'Minerva McGonagall'),
('Ralph Fiennes', 'Inglaterra', 'Ralph Nathaniel Twisleton-Wykeham-Fiennes (Suffolk, Inglaterra; 22 de diciembre de 1962), es un actor británico nominado dos veces al premio Oscar.', 'img/rf', 'Lord Voldemort'),
('Robert De Niro', 'Estados Unidos', 'Robert De Niro Jr. (Nueva York; 17 de agosto de 1943), más conocido como Robert De Niro, es un actor, director y productor de cine estadounidense.', 'img/rdn', 'Es como el padre de Joy'),
('Rupert Grint', 'Inglaterra', 'Rupert Alexander Lloyd Grint (Stevenage, Hertfordshire, 24 de agosto de 1988) es un actor inglés, conocido por interpretar a Ron Weasley en la serie de películas de Harry Potter.', 'img/rg', 'Ron Weasley'),
('Thomas Kretschmann', 'Alemania', 'Thomas Kretschmann es un actor alemán nacido en Dessau, (Alemania) el 8 de septiembre de 1962. Ha participado en alrededor de 70 películas y varias series de televisión.', 'img/tk', 'El capitán Wilm Hosenfeld'),
('Tom Felton', 'Inglaterra', 'Thomas Andrew Felton Anstey, mejor conocido como Tom Felton (nacido en Epsom, Surrey, Reino Unido, 22 de septiembre de 1987) es un actor y músico británico.', 'img/tm', 'Draco Malfoy'),
('Wanja Mues', 'Alemania', 'Wanja Mues es un actor alemán.Wanja es hijo del actor alemán Joachim Dietmar Mues y de Sibylle Mues, sus hermanos son los actores Woody Mues y Jona Mues. ', 'img/wm', 'Oficial alemán que golpea al padre de Szpilman.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificacion`
--

CREATE TABLE `clasificacion` (
  `idClasificacion` varchar(45) NOT NULL,
  `valor` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clasificacion`
--

INSERT INTO `clasificacion` (`idClasificacion`, `valor`) VALUES
('1', 1),
('2', 2),
('3', 3),
('4', 4),
('5', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `director`
--

CREATE TABLE `director` (
  `Nombre` varchar(45) NOT NULL,
  `Pais` varchar(45) DEFAULT NULL,
  `Foto` text,
  `Descripcion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `director`
--

INSERT INTO `director` (`Nombre`, `Pais`, `Foto`, `Descripcion`) VALUES
('David O. Russell', 'Estados Unidos', 'img/joy', 'David Owen Russell (Nueva York, 20 de agosto de 1958) es un director, guionista y productor estadounidense de cine y televisión. Candidato a los premios Óscar y Globo de Oro.'),
('David Yates', 'Inglaterra', 'img/DY', 'David Yates (n. Saint Helens, Merseyside, Inglaterra; 30 de noviembre de 1963) es un director, guionista y productor de cine y televisión británico que ha desarrollado una larga carrera televisiva.'),
('Roman Polanski', 'Francia', 'img/rp', 'Roman Polanski (en polaco: Roman Rajmund Thierry Pola?ski; París, 18 de agosto de 1933) es un director de cine, productor, guionista y actor polaco nacido en Francia.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `Nombre` varchar(45) NOT NULL,
  `Descripcion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`Nombre`, `Descripcion`) VALUES
('Accion', NULL),
('Aventura', NULL),
('Comedia', NULL),
('Drama', NULL),
('Fantastico, Aventuras, Drama', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `Nombre` varchar(45) NOT NULL,
  `Sinopsis` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Idioma` varchar(45) DEFAULT NULL,
  `Foto` text,
  `Trailer` text,
  `Calidad` varchar(45) DEFAULT NULL,
  `anio` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Premio` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`Nombre`, `Sinopsis`, `Idioma`, `Foto`, `Trailer`, `Calidad`, `anio`, `Premio`) VALUES
('El pianista', 'Wladyslaw Szpilman, un brillante pianista polaco de origen judío, vive con su familia en el ghetto de Varsovia. Cuando, en 1939, los alemanes invaden Polonia, consigue evitar la deportación gracias a la ayuda de algunos amigos. Pero tendrá que vivir escondido y completamente aislado durante mucho tiempo, y para sobrevivir tendrá que afrontar constantes peligros.', 'Ingles', 'img/pianista.jpg', '<iframe width="480" height="360" src="https://www.youtube.com/embed/u_jE7-6Uv7E" frameborder="0" allowfullscreen></iframe>', 'HD', '2002', NULL),
('Exorcismo en el Vaticano', 'Angela Holmes (Olivia Taylor Dudley) es una joven de 27 años que debido a un accidente, se corta en un dedo y termina en un hospital. La herida se le infecta y comenzará a sufrir un extraño comportamiento con las personas que están cerca de ella, causándoles graves heridas e incluso la muerte.', 'Ingles', 'img/vaticano.jpg', '<iframe width="640" height="360" src="https://www.youtube.com/embed/Yelog-WwqD4" frameborder="0" allowfullscreen></iframe>', '1080p', '2015', NULL),
('Harry Potter y las Reliquias de la Muerte - 2', 'El final ha llegado. Harry, Hermione y Ron tendrán que recuperar la espada de Gryffindor para encontrar y destruir los últimos horrocruxes.', 'Ingles', 'img/HP_7P2.jpg', '<iframe width="640" height="360" src="https://www.youtube.com/embed/5NYt1qirBWg" frameborder="0" allowfullscreen></iframe>', 'HD', '2011', NULL),
('Joy: El nombre del exito', 'Lawrence interpretará a Joy Mangano, una humilde trabajadora de Long Island que acabó convirtiéndose en una notable inventora de productos del hogar y también en uno de los rostros más reconocibles de la teletienda americana.', 'Ingles', 'img/joy.jpg', '<iframe width="640" height="360" src="https://www.youtube.com/embed/uR-2TiQVY-k" frameborder="0" allowfullscreen></iframe>', 'SD', '2015', NULL),
('The Lord of the Rings', 'Trilogía  Basada en el libro de J.r.r Tolkien, nos muestra el mundo de la tierra media, en donde existen los elfos, orcos,hombres múltiples criaturas.\r\nGanadora de 11 premios oscares. ', 'ingles', 'img/mejorPeli.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/V75dMMIW2B4" frameborder="0" allowfullscreen></iframe>', '1080p', '2002', NULL),
('Vengadores: La Era de Ultrón', 'En un país de Europa del Este llamado Sokovia, Los Vengadores conformados por Tony Stark/Iron Man, Steve Rogers/Capitán América, Thor, Bruce Banner/Hulk, Natasha Romanoff/Black Widow y Clint Barton/Hawkeye atacan una fortaleza de HYDRA, con la misión de recuperar el Cetro de Loki de manos de Barón Wolfgang Von Strucker, quien ha estado experimentando con humanos usando el cetro. Pese a los esfuerzos de Strucker por ocultar a sus dos únicos éxitos (Los gemelos Pietro, que posee supervelocidad, y Wanda Maximoff, que puede manipular mentes y proyectar energía) – ambos terminan enfrentándose a los héroes y escapan, mientras Strucker es capturado.', 'Ingles', 'img/vengadores.jpg', '<iframe width="640" height="360" src="https://www.youtube.com/embed/JAUoeqvedMo" frameborder="0" allowfullscreen></iframe>', '1080p', '2015', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula_has_actores`
--

CREATE TABLE `pelicula_has_actores` (
  `Pelicula_Nombre` varchar(45) NOT NULL,
  `Actores_Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pelicula_has_actores`
--

INSERT INTO `pelicula_has_actores` (`Pelicula_Nombre`, `Actores_Nombre`) VALUES
('El pianista', 'Adrien Brody'),
('El pianista', 'Ed Stoppard'),
('El pianista', 'Emilia Fox'),
('El pianista', 'Frank Finlay'),
('El pianista', 'Thomas Kretschmann'),
('El pianista', 'Wanja Mues'),
('Harry Potter y las Reliquias de la Muerte - 2', 'Alan Rickman'),
('Harry Potter y las Reliquias de la Muerte - 2', 'Daniel Radcliffe'),
('Harry Potter y las Reliquias de la Muerte - 2', 'Emma Watson'),
('Harry Potter y las Reliquias de la Muerte - 2', 'Helena Bonham Carter'),
('Harry Potter y las Reliquias de la Muerte - 2', 'Maggie Smith'),
('Harry Potter y las Reliquias de la Muerte - 2', 'Ralph Fiennes'),
('Harry Potter y las Reliquias de la Muerte - 2', 'Rupert Grint'),
('Harry Potter y las Reliquias de la Muerte - 2', 'Tom Felton'),
('Joy: El nombre del exito', 'Bradley Cooper'),
('Joy: El nombre del exito', 'Dascha Polanco'),
('Joy: El nombre del exito', 'Édgar Ramírez'),
('Joy: El nombre del exito', 'Elisabeth Röhm'),
('Joy: El nombre del exito', 'Jennifer Lawrence'),
('Joy: El nombre del exito', 'Robert De Niro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula_has_clasificacion`
--

CREATE TABLE `pelicula_has_clasificacion` (
  `Pelicula_Nombre` varchar(45) NOT NULL,
  `Clasificacion_idClasificacion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pelicula_has_clasificacion`
--

INSERT INTO `pelicula_has_clasificacion` (`Pelicula_Nombre`, `Clasificacion_idClasificacion`) VALUES
('Harry Potter y las Reliquias de la Muerte - 2', '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula_has_director`
--

CREATE TABLE `pelicula_has_director` (
  `Pelicula_Nombre` varchar(45) NOT NULL,
  `Director_Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula_has_genero`
--

CREATE TABLE `pelicula_has_genero` (
  `Pelicula_Nombre` varchar(45) NOT NULL,
  `Genero_Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pelicula_has_genero`
--

INSERT INTO `pelicula_has_genero` (`Pelicula_Nombre`, `Genero_Nombre`) VALUES
('El pianista', 'Drama'),
('Harry Potter y las Reliquias de la Muerte - 2', 'Accion'),
('Harry Potter y las Reliquias de la Muerte - 2', 'Aventura'),
('Joy: El nombre del exito', 'Aventura'),
('The Lord of the Rings', 'Accion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula_premios`
--

CREATE TABLE `pelicula_premios` (
  `id` int(11) NOT NULL,
  `Pelicula` varchar(50) COLLATE utf8_bin NOT NULL,
  `premio` varchar(50) COLLATE utf8_bin NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `pelicula_premios`
--

INSERT INTO `pelicula_premios` (`id`, `Pelicula`, `premio`, `Descripcion`) VALUES
(1, 'The Lord of the Rings', 'Oscar', 'The lord of the Rings ha ganado 19 premios oscares, entre sus tres películas.'),
(2, 'El pianista', 'Oscar', 'Ganó 7 premios Oscares entre ellos mejor película y mejor director.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `premio`
--

CREATE TABLE `premio` (
  `Tipo` varchar(30) COLLATE utf8_bin NOT NULL,
  `Descripción` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `premio`
--

INSERT INTO `premio` (`Tipo`, `Descripción`) VALUES
('Globo', NULL),
('Oscar', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Username` varchar(45) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Foto` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Username`, `Nombre`, `Email`, `Password`, `Foto`) VALUES
('Daguir', 'Aaron', 'leo_1189@hotmail.com', 'contraseña', 'img/yo.jpg'),
('hola', 'hola', 'leo_1189@hotmail.com', 'hola', 'img/portada quinto libro.jpg'),
('hola2', 'hola2', 'hola2', 'olorin', 'img/portada quinto libro.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariofavorito`
--

CREATE TABLE `usuariofavorito` (
  `NombreUsuario` varchar(50) COLLATE utf8_bin NOT NULL,
  `NombrePeli` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuariofavorito`
--

INSERT INTO `usuariofavorito` (`NombreUsuario`, `NombrePeli`) VALUES
('Daguir', 'The Lord of the Rings'),
('Daguir', ''),
('Daguir', ''),
('Daguir', 'El pianista'),
('Daguir', 'El pianista'),
('Daguir', 'Harry Potter y las Reliquias de la Muerte - 2'),
('Daguir', 'Harry Potter y las Reliquias de la Muerte - 2'),
('Daguir', ''),
('Daguir', ''),
('Daguir', ''),
('Daguir', ''),
('Daguir', ''),
('Daguir', ''),
('Daguir', ''),
('', ''),
('Daguir', ''),
('', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actores`
--
ALTER TABLE `actores`
  ADD PRIMARY KEY (`Nombre`);

--
-- Indices de la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  ADD PRIMARY KEY (`idClasificacion`);

--
-- Indices de la tabla `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`Nombre`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`Nombre`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`Nombre`);

--
-- Indices de la tabla `pelicula_has_actores`
--
ALTER TABLE `pelicula_has_actores`
  ADD PRIMARY KEY (`Pelicula_Nombre`,`Actores_Nombre`),
  ADD KEY `fk_Pelicula_has_Actores_Pelicula1` (`Pelicula_Nombre`),
  ADD KEY `fk_Pelicula_has_Actores_Actores1` (`Actores_Nombre`);

--
-- Indices de la tabla `pelicula_has_clasificacion`
--
ALTER TABLE `pelicula_has_clasificacion`
  ADD PRIMARY KEY (`Pelicula_Nombre`,`Clasificacion_idClasificacion`),
  ADD KEY `fk_Pelicula_has_Clasificacion_Pelicula1` (`Pelicula_Nombre`),
  ADD KEY `fk_Pelicula_has_Clasificacion_Clasificacion1` (`Clasificacion_idClasificacion`);

--
-- Indices de la tabla `pelicula_has_director`
--
ALTER TABLE `pelicula_has_director`
  ADD PRIMARY KEY (`Pelicula_Nombre`,`Director_Nombre`),
  ADD KEY `fk_Pelicula_has_Director_Pelicula` (`Pelicula_Nombre`),
  ADD KEY `fk_Pelicula_has_Director_Director` (`Director_Nombre`);

--
-- Indices de la tabla `pelicula_has_genero`
--
ALTER TABLE `pelicula_has_genero`
  ADD PRIMARY KEY (`Pelicula_Nombre`,`Genero_Nombre`),
  ADD KEY `fk_Pelicula_has_Genero_Pelicula1` (`Pelicula_Nombre`),
  ADD KEY `fk_Pelicula_has_Genero_Genero1` (`Genero_Nombre`);

--
-- Indices de la tabla `pelicula_premios`
--
ALTER TABLE `pelicula_premios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `premio`
--
ALTER TABLE `premio`
  ADD PRIMARY KEY (`Tipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pelicula_premios`
--
ALTER TABLE `pelicula_premios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pelicula_has_actores`
--
ALTER TABLE `pelicula_has_actores`
  ADD CONSTRAINT `fk_Pelicula_has_Actores_Actores1` FOREIGN KEY (`Actores_Nombre`) REFERENCES `actores` (`Nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pelicula_has_Actores_Pelicula1` FOREIGN KEY (`Pelicula_Nombre`) REFERENCES `pelicula` (`Nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pelicula_has_clasificacion`
--
ALTER TABLE `pelicula_has_clasificacion`
  ADD CONSTRAINT `fk_Pelicula_has_Clasificacion_Clasificacion1` FOREIGN KEY (`Clasificacion_idClasificacion`) REFERENCES `clasificacion` (`idClasificacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pelicula_has_Clasificacion_Pelicula1` FOREIGN KEY (`Pelicula_Nombre`) REFERENCES `pelicula` (`Nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pelicula_has_director`
--
ALTER TABLE `pelicula_has_director`
  ADD CONSTRAINT `fk_Pelicula_has_Director_Director` FOREIGN KEY (`Director_Nombre`) REFERENCES `director` (`Nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pelicula_has_Director_Pelicula` FOREIGN KEY (`Pelicula_Nombre`) REFERENCES `pelicula` (`Nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pelicula_has_genero`
--
ALTER TABLE `pelicula_has_genero`
  ADD CONSTRAINT `fk_Pelicula_has_Genero_Genero1` FOREIGN KEY (`Genero_Nombre`) REFERENCES `genero` (`Nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pelicula_has_Genero_Pelicula1` FOREIGN KEY (`Pelicula_Nombre`) REFERENCES `pelicula` (`Nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
