-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 18 2024 г., 16:38
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Priemka`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Autorization`
--

CREATE TABLE `Autorization` (
  `id` int UNSIGNED NOT NULL,
  `Login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Pass` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Data` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `Autorization`
--

INSERT INTO `Autorization` (`id`, `Login`, `Pass`, `Data`) VALUES
(1, 'KarpovIS', '111111qQ', '2024-01-09 13:55:39'),
(2, 'KarpovIS', '111111qQ', '2024-01-09 13:57:09'),
(3, 'karpovis', '111111qQ', '2024-01-09 13:58:33'),
(4, '123123', '123', '2024-01-09 14:09:07'),
(5, 'KarpovIS', '111111qQ', '2024-01-18 13:09:39');

-- --------------------------------------------------------

--
-- Структура таблицы `Priem`
--

CREATE TABLE `Priem` (
  `WhoIS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Otdel` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FIO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `LanDocs` tinyint(1) DEFAULT NULL,
  `Kasper` tinyint(1) NOT NULL,
  `Konsultant` tinyint(1) NOT NULL,
  `Chromium` tinyint(1) NOT NULL,
  `NetAgent` tinyint(1) NOT NULL,
  `Office` tinyint(1) NOT NULL,
  `KriptoPro` tinyint(1) NOT NULL,
  `Plugins` tinyint(1) NOT NULL,
  `SecretNet` tinyint(1) NOT NULL,
  `Spark` tinyint(1) NOT NULL,
  `AdobeReader` tinyint(1) NOT NULL,
  `7-zip` tinyint(1) NOT NULL,
  `ID` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `Priem`
--

INSERT INTO `Priem` (`WhoIS`, `Otdel`, `FIO`, `LanDocs`, `Kasper`, `Konsultant`, `Chromium`, `NetAgent`, `Office`, `KriptoPro`, `Plugins`, `SecretNet`, `Spark`, `AdobeReader`, `7-zip`, `ID`) VALUES
('Карпов Игорь Сергеевич', 'Отдел информационных систем', 'раркагкг', 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1),
('Карпов Игорь Сергеевич', 'Отдел информационных систем', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2),
('Карпов Игорь Сергеевич', 'Отдел информационных систем', 'Кондратьев Егор Андреевич', 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `ProfileDB`
--

CREATE TABLE `ProfileDB` (
  `ID` int UNSIGNED NOT NULL,
  `Login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FIO` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Otdel` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `ProfileDB`
--

INSERT INTO `ProfileDB` (`ID`, `Login`, `Password`, `FIO`, `Otdel`) VALUES
(1, 'KarpovIS', '111111qQ', 'Карпов Игорь Сергеевич', 'Отдел информационных систем');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Autorization`
--
ALTER TABLE `Autorization`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `Priem`
--
ALTER TABLE `Priem`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Индексы таблицы `ProfileDB`
--
ALTER TABLE `ProfileDB`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Autorization`
--
ALTER TABLE `Autorization`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Priem`
--
ALTER TABLE `Priem`
  MODIFY `ID` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `ProfileDB`
--
ALTER TABLE `ProfileDB`
  MODIFY `ID` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
