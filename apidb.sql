-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 16 2019 г., 19:25
-- Версия сервера: 10.1.28-MariaDB
-- Версия PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `apidb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `randomnuber`
--

CREATE TABLE `randomnuber` (
  `id` int(11) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `randomnuber`
--

INSERT INTO `randomnuber` (`id`, `number`) VALUES
(1, '5456464'),
(2, '5456464'),
(3, '564546464'),
(4, '78874648943'),
(5, '78874648943'),
(6, '5645446567373'),
(7, '73784545637867'),
(8, '5645446567373'),
(9, '73784545637867'),
(10, '8777'),
(11, '5'),
(12, '13'),
(13, '4'),
(14, '2046170449'),
(15, '422222848'),
(16, '1200304632'),
(17, '404038164'),
(18, '356028018'),
(19, '1976923904'),
(20, '756174817'),
(21, '2073130910'),
(22, '1119298139'),
(23, '1746355832'),
(24, '1183769692'),
(25, '450262695'),
(26, '126329782'),
(27, '785129730'),
(28, '1175037284'),
(29, '1041103790'),
(30, '932376399'),
(31, '747900987'),
(32, '1710964175'),
(33, '1374935625'),
(34, '1870843499'),
(35, '2011738322'),
(36, '1384635823'),
(37, '809998629'),
(38, '442329984'),
(39, '758749959'),
(40, '1906141262'),
(41, '1057404224'),
(42, '1299933556'),
(43, '1773013118'),
(44, '34293997'),
(45, '2016927342'),
(46, '52019308'),
(47, '2050217526'),
(48, '612827951'),
(49, '546952381'),
(50, '1959351341'),
(51, '857162682'),
(52, '1012723284'),
(53, '1220793372'),
(54, '1705967379'),
(55, '175073736'),
(56, '528317854');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `randomnuber`
--
ALTER TABLE `randomnuber`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `randomnuber`
--
ALTER TABLE `randomnuber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
