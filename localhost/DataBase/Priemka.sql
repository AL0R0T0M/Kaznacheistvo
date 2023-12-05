-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 04 2023 г., 15:53
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
(1, 'Alorotom', 'fnvnnvnfv2345', NULL),
(2, 'alorotom', 'rfkrkokokrogg', NULL),
(3, 'alorotom', 'rfkrkokokrogg', NULL),
(4, '', '', NULL),
(5, 'KarpovIS', '111111qQ', NULL),
(6, 'KarpovIS', '111111qQ1', NULL),
(7, 'KarpovIS', '111111qQ1', NULL),
(8, 'KarpovIS', '111111qQ', NULL),
(9, 'KarpovIS', '111111qQ', NULL),
(10, 'KarpovIS', '111111qQ', '2023-12-04 11:23:25'),
(11, 'ZXcursed', '444444wW', '2023-12-04 11:29:31'),
(12, 'alorotom', 'rfkrkokokrogg', '2023-12-04 11:35:54'),
(13, 'KarpovIS', '111111qQ', '2023-12-04 11:36:14'),
(14, 'KarpovIS', '111111qQ', '2023-12-04 13:32:47'),
(15, 'KarpovIS', '111111qQ1', '2023-12-04 13:32:51'),
(16, 'KarpovIS', '111111qQ', '2023-12-04 13:50:29'),
(17, 'KarpovIS', '111111qQ', '2023-12-04 13:59:29'),
(18, 'ZXcursed', '444444wW', '2023-12-04 14:01:52'),
(19, 'ZXcursed', '444444wW', '2023-12-04 14:16:35'),
(20, 'ZXcursed', '444444wW', '2023-12-04 14:24:17'),
(21, 'ZXcursed', '444444wW', '2023-12-04 15:12:16'),
(22, 'ZXcursed', '444444wW', '2023-12-04 15:15:46'),
(23, 'ZXcursed', '444444wW', '2023-12-04 15:19:30'),
(24, 'ZXcursed', '444444wW', '2023-12-04 15:23:29'),
(25, 'ZXcursed', '444444wW', '2023-12-04 15:24:09'),
(26, 'KarpovIS', '111111qQ', '2023-12-04 15:24:46'),
(27, 'KarpovIS', '111111qQ', '2023-12-04 15:30:11'),
(28, 'KasatkinVA', '222222qQ', '2023-12-04 15:38:13'),
(29, 'KasatkinVA', '222222qQQ', '2023-12-04 15:38:51'),
(30, 'KarpovIS', '111111qQ23', '2023-12-04 15:41:48'),
(31, 'KarpovIS', '111111qQ222', '2023-12-04 15:44:40'),
(32, 'KarpovIS', '111111qQ22', '2023-12-04 15:45:55'),
(33, 'KarpovIS', '111111qQ1', '2023-12-04 15:46:18'),
(34, 'KarpovIS', '1', '2023-12-04 15:46:44'),
(35, 'KarpovIS', '11111qQ', '2023-12-04 15:46:54'),
(36, 'KarpovIS', '111111qQ', '2023-12-04 15:47:08'),
(37, 'KarpovIS', '111111qQ2', '2023-12-04 15:50:08'),
(38, 'KarpovIS', '111111qQ2', '2023-12-04 15:50:31');

-- --------------------------------------------------------

--
-- Структура таблицы `Priem`
--

CREATE TABLE `Priem` (
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

INSERT INTO `Priem` (`FIO`, `LanDocs`, `Kasper`, `Konsultant`, `Chromium`, `NetAgent`, `Office`, `KriptoPro`, `Plugins`, `SecretNet`, `Spark`, `AdobeReader`, `7-zip`, `ID`) VALUES
('Карпов Игорь Сергеевич', 1, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1),
('Masev Alexandr Vladimirovich', 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 2),
('Грызунова Светлана Дмитриевна', 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 3),
('Шиповалов Глеб Александрович', 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 4),
('karpov igor sergeevich', 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 5),
('Махов Алекандр Сергеевич', 1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 6),
('Levchenko Mihail Artemovich', 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 7),
('karpov igor sergeevich', 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 8),
('Афутин Евгений Дмитриевич', 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 9),
('хренис', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 10),
('Наумова Марина Станиславовна', 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 11),
('Карпов Сергей Александрович', 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 12),
('dimivmeivm', 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 14),
('', 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 15),
('', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16),
('karpov igor sergeevich', 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 17),
('Семёнова Наталья Владимировна', 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 18);

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
(1, 'KarpovIS', '111111qQ', 'karpov igor sergeevich', 'Отдел информационных систем'),
(2, 'ZXcursed', '444444wW', 'Павлов Павел Павлович', 'Отдел доходов'),
(11, 'KasatkinVA', '222222qQ', 'Касаткин Владимир Андреевич', 'Операционный Отдел');

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `Priem`
--
ALTER TABLE `Priem`
  MODIFY `ID` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `ProfileDB`
--
ALTER TABLE `ProfileDB`
  MODIFY `ID` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
