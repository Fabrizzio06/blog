-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-06-2023 a las 15:30:29
-- Versión del servidor: 8.0.33-0ubuntu0.20.04.2
-- Versión de PHP: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int NOT NULL,
  `titulo` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenido` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen_principal` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagenes_extra` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` int NOT NULL,
  `fecha_creacion` date NOT NULL,
  `categoria` int NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `titulo`, `contenido`, `imagen_principal`, `imagenes_extra`, `autor`, `fecha_creacion`, `categoria`, `status`) VALUES
(1, 'ChatGPT y Google BARD: la próxima generación de tecnología basada en IA', '{\"parrafo1\": \"La inteligencia artificial (IA) ha experimentado un impresionante avance en los últimos años, impulsando la innovación y transformando numerosos aspectos de nuestras vidas. Dos de los protagonistas destacados en este campo son ChatGPT, una potente plataforma de lenguaje natural desarrollada por OpenAI, y Google BARD (Binary AutoRegressive Decoder), un revolucionario modelo de IA basado en texto. Ambos sistemas han dejado una huella significativa en el mundo de la tecnología y están abriendo nuevas fronteras en la interacción entre humanos y máquinas.\",\"subtitulo1\": \"ChatGPT: Una revolución en la conversación inteligente\",\"imagen1\": {\"url\": \"htpps://localhost/blog/assets/images/articulos/logo-chatgpt.png\",\"alt\": \"Logo de la AI chatGPT\"},\"parrafo2\": \"ChatGPT, desarrollado por OpenAI, ha sido un hito en la inteligencia artificial. Aprovechando la arquitectura GPT-3.5, este modelo de lenguaje se ha destacado por su capacidad para mantener conversaciones fluidas y coherentes con los usuarios. Basado en un extenso entrenamiento con grandes cantidades de datos, ChatGPT puede comprender y responder preguntas, brindar información, entretener e incluso realizar tareas específicas.\\n\\nEl modelo ha sido utilizado en una amplia variedad de aplicaciones, desde asistentes virtuales en sitios web y aplicaciones móviles hasta soporte al cliente automatizado. Su capacidad para adaptarse a diferentes contextos y responder de manera contextualmente relevante ha abierto nuevas posibilidades para mejorar la interacción entre humanos y máquinas.\",  \r\n  \"subtitulo2\": \"Google BARD: Rompiendo barreras en la generación de texto\",\r\n\r\n  \"imagen2\": {\r\n    \"url\": \"htpps://localhost/blog/assets/images/articulos/logo-googlebard.png\",\r\n    \"alt\": \"Logo de la IA google bard\"\r\n  },\r\n\r\n  \"parrafo2\": \"Google BARD ha sido una revelación en el ámbito de la generación de texto. Basado en técnicas avanzadas de IA, BARD es capaz de crear textos coherentes y de alta calidad con mínima intervención humana. A través de algoritmos de aprendizaje profundo y modelos de lenguaje de última generación, BARD es capaz de producir contenido original y convincente en diversos dominios.\\n\\nLa tecnología detrás de Google BARD ha encontrado aplicaciones en ámbitos como la redacción de noticias, la generación de contenido para empresas y la producción de narrativas en videojuegos. Su capacidad para entender y emular el estilo humano ha generado un impacto significativo en la industria, acelerando la creación de contenido y abriendo nuevas vías para la creatividad.\",\r\n  \"subtitulo3\": \"Sinergias entre ChatGPT y Google BARD: Potenciando la experiencia humana\",\r\n  \"parrafo3\":\"La combinación de ChatGPT y Google BARD ha abierto un nuevo abanico de posibilidades en la interacción entre humanos y sistemas de inteligencia artificial. La capacidad de ChatGPT para mantener conversaciones naturales se complementa con la habilidad de BARD para generar contenido convincente y personalizado. Juntos, estos sistemas pueden proporcionar experiencias más enriquecedoras y adaptadas a las necesidades individuales de los usuarios.\\n\\nImaginemos, por ejemplo, un asistente virtual en el que ChatGPT pueda comprender y responder preguntas complejas de los usuarios, mientras que BARD se encargue de generar información detallada y personalizada en tiempo real. Esta sinergia permitiría ofrecer una experiencia más completa y satisfactoria, superando las limitaciones de los sistemas de IA convencionales.\\n\\nEl avance de la tecnología basada en inteligencia artificial ha sido impulsado por notables desarrollos como ChatGPT y Google BARD. Estos sistemas han revolucionado la forma en que interactuamos con las máquinas, abriendo nuevas fronteras en la conversación inteligente y la generación de texto.\\n\\nLa capacidad de ChatGPT para mantener conversaciones fluidas y contextualmente relevantes, combinada con la habilidad de Google BARD para generar contenido convincente, ha ampliado las posibilidades en campos como el servicio al cliente automatizado, la redacción de noticias y la creación de contenido para empresas.\\n\\nA medida que la IA continúa avanzando, es importante que las personas comunes comprendan su potencial y cómo pueden beneficiarse de ella. Un consejo fundamental para aprovechar al máximo esta tecnología es mantenerse informado y estar al tanto de las últimas tendencias y aplicaciones de la inteligencia artificial. Esto permitirá identificar oportunidades para mejorar la eficiencia en el trabajo, automatizar tareas repetitivas y descubrir nuevas formas de interactuar con la tecnología en nuestra vida diaria.\\n\\nLa IA está cambiando rápidamente la forma en que vivimos, trabajamos y nos relacionamos con el mundo. Al mantenernos actualizados y explorar las posibilidades que ofrece, podemos utilizar la inteligencia artificial de manera efectiva para mejorar nuestra productividad, potenciar la creatividad y simplificar nuestras vidas.\" \r\n  \r\n}', '', '', 1, '2023-05-17', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `id` int NOT NULL,
  `nombre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Carlos Bautista', 'Apasionado de las nuevas tecnologías, y enfocado a sacarles el mejor provecho tanto productivo como humano, creo que por cada avance tecnológico debe haber mas de uno humanitario.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Tecnología'),
(2, 'Ciencia'),
(3, 'Viajes'),
(4, 'Hogar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiquetas`
--

CREATE TABLE `etiquetas` (
  `id` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `etiquetas`
--

INSERT INTO `etiquetas` (`id`, `nombre`) VALUES
(1, 'Inteligencia artificial'),
(2, 'Chat GPT'),
(3, 'Google bard');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiquetas_articulos`
--

CREATE TABLE `etiquetas_articulos` (
  `id` int NOT NULL,
  `id_etiqueda` int NOT NULL,
  `id_articulo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autor` (`autor`),
  ADD KEY `categoria` (`categoria`),
  ADD KEY `status` (`status`);

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `etiquetas`
--
ALTER TABLE `etiquetas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `etiquetas_articulos`
--
ALTER TABLE `etiquetas_articulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_etiqueda` (`id_etiqueda`),
  ADD KEY `id_articulo` (`id_articulo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `etiquetas`
--
ALTER TABLE `etiquetas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `etiquetas_articulos`
--
ALTER TABLE `etiquetas_articulos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
