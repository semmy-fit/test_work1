-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 25 2021 г., 13:47
-- Версия сервера: 8.0.27
-- Версия PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_work1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `commetns`
--

CREATE TABLE `commetns` (
  `id` int NOT NULL,
  `Author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_message` int NOT NULL,
  `Time` time NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `commetns`
--

INSERT INTO `commetns` (`id`, `Author`, `Comment`, `id_message`, `Time`, `Date`) VALUES
(1, 'Hello', 'sads', 2, '00:00:00', '2021-10-23'),
(2, 'dfsd', 'dfdsf', 5, '00:00:00', '2021-10-23'),
(3, 'fgret', 'retre', 11, '00:00:00', '2021-10-23'),
(4, 'fsdf', 'dfdfs', 11, '00:00:00', '2021-10-23'),
(9, 'sad', 'dssdsa', 2, '00:00:00', '2021-10-23'),
(10, 'fdsdf', 'dfs', 2, '00:00:00', '2021-10-23'),
(11, 'hfhgf', 'gffgh', 2, '00:00:00', '2021-10-23'),
(15, 'dsdf', 'fdsd', 5, '00:00:00', '2021-10-23'),
(16, 'dsdf', 'fdsd', 5, '00:00:00', '2021-10-23'),
(17, 'dsdf', 'fdsd', 5, '00:00:00', '2021-10-23'),
(18, 'dfds', 'dffd', 5, '00:00:00', '2021-10-23'),
(20, 'erw', 'erw', 12, '00:00:00', '2021-10-23'),
(21, 'ewr', 'erw', 12, '00:00:00', '2021-10-23'),
(23, 'gdf', 'ghdgg', 13, '00:00:00', '2021-10-23'),
(24, 'fds', 'fsfd', 10, '00:00:00', '2021-10-23'),
(26, 'ugj', 'gjgh', 15, '00:00:00', '2021-10-23'),
(27, 'xd', 'sdas', 23, '00:00:00', '2021-10-23'),
(38, 'ghg', 'jh', 6, '11:35:20', '2021-10-23'),
(51, 'cvx', 'cvxcx', 6, '11:53:50', '2021-10-23'),
(71, 'dfs', 'dfs', 11, '13:44:56', '2021-10-23'),
(72, 'dfs', 'dfs', 11, '13:45:46', '2021-10-23'),
(84, 'f', 'f', 14, '15:26:28', '2021-10-23'),
(87, 'fvd', 'fd', 13, '16:39:48', '2021-10-23'),
(88, 'ffs', 'dd', 15, '16:40:56', '2021-10-23'),
(89, 'SAS', 'ds', 21, '16:41:43', '2021-10-23'),
(92, 'fdf', 'gdg', 28, '16:46:28', '2021-10-23'),
(93, 'fg', 'df', 25, '16:48:26', '2021-10-23'),
(94, 'авы', 'ыавыв', 25, '16:50:15', '2021-10-23'),
(95, 'ваы', 'выа', 28, '16:50:37', '2021-10-23'),
(96, 'мсч', 'смс', 28, '16:51:15', '2021-10-23'),
(97, 'dfsd', 'dfs', 28, '16:53:00', '2021-10-23'),
(98, 'dsf', 'dsfds', 29, '16:53:22', '2021-10-23'),
(99, 'dfsd', 'sdffds', 29, '16:53:26', '2021-10-23'),
(100, 'ds', 'fds', 13, '11:28:34', '2021-10-24'),
(101, 'dsf', 'dfs', 21, '11:32:43', '2021-10-24'),
(102, 'fsd', 'fds', 21, '11:44:46', '2021-10-24'),
(105, 'rdf', 'dfsd', 33, '15:23:05', '2021-10-24'),
(106, 'fd', 'fg', 85, '15:41:09', '2021-10-24'),
(112, 'dfs', 'dsf', 109, '16:05:31', '2021-10-24'),
(126, 'dd', 'dsf', 1, '16:54:26', '2021-10-24'),
(127, 'dssdsa', 'Seeed', 9, '16:56:04', '2021-10-24'),
(135, 'dsf', 'das', 23, '17:23:19', '2021-10-24'),
(136, 'sda', 'dd', 23, '17:23:30', '2021-10-24'),
(139, 'fd', 'dfg', 29, '17:39:41', '2021-10-24'),
(140, 'S', 'Dsf,fdd', 29, '17:40:01', '2021-10-24'),
(141, 'Seef', 'Fd,jesika', 29, '17:41:30', '2021-10-24'),
(142, 'sd', 'df', 29, '17:41:53', '2021-10-24'),
(143, 'sdd', 's', 29, '17:42:04', '2021-10-24'),
(144, 's', 'ff', 29, '17:42:37', '2021-10-24'),
(159, 'xd', 'c', 29, '01:01:01', '2021-10-25'),
(161, 'dsf', 'sd', 30, '16:18:15', '2021-10-25'),
(162, 'dfs', 'fds', 30, '16:18:21', '2021-10-25'),
(163, 'DSF', 'DS', 30, '16:20:38', '2021-10-25'),
(164, 'sdf', 'ds', 30, '16:58:43', '2021-10-25'),
(165, 'sad', 'Ds,hi\r\n', 30, '16:58:59', '2021-10-25'),
(166, 'fd', 'fs', 4, '17:03:53', '2021-10-25'),
(167, 'dfssdasadsa', 'dsfsdsdsadas', 4, '18:41:15', '2021-10-25'),
(168, 'ваы', 'выа', 4, '18:48:45', '2021-10-25'),
(169, 'dsf', 'dfs', 7, '18:54:35', '2021-10-25'),
(170, 'dsf', 'ds', 7, '18:57:21', '2021-10-25'),
(171, 'dsf', 'dsf', 7, '18:57:25', '2021-10-25'),
(172, 'dsf', 'dfs', 4, '18:57:37', '2021-10-25'),
(173, 'dfs', 'fds', 4, '18:57:45', '2021-10-25'),
(174, 'zcx', 'xcz', 13, '18:58:29', '2021-10-25'),
(175, 'df', 'df', 6, '18:59:42', '2021-10-25'),
(176, 'ds', 'fds', 4, '19:00:13', '2021-10-25'),
(177, 'fd', 'fd', 4, '19:00:51', '2021-10-25'),
(178, 'fd', 'fds', 4, '19:01:04', '2021-10-25'),
(179, 'dfs', 'dfs', 12, '19:01:44', '2021-10-25'),
(180, 'dsf', 'dfs', 19, '19:02:22', '2021-10-25'),
(181, 'dfs', 'dfs', 19, '19:02:26', '2021-10-25'),
(182, 'dfs', 'dfs', 19, '19:02:48', '2021-10-25'),
(183, 'dsf', 'dsf', 19, '19:03:21', '2021-10-25'),
(184, 'dfs', 'dfs', 30, '19:03:57', '2021-10-25'),
(185, 'cxv', 'cvx', 30, '19:04:24', '2021-10-25'),
(186, 'dfs', 'dsf', 15, '19:05:38', '2021-10-25'),
(187, 'fds', 'dsf', 15, '19:05:44', '2021-10-25'),
(188, 'dsf', 'df', 15, '19:06:20', '2021-10-25'),
(191, 'dsf', 'df', 30, '19:09:19', '2021-10-25'),
(192, 'dfs', 'dfs', 3, '19:12:44', '2021-10-25'),
(193, 'dfs', 'fds', 3, '19:15:19', '2021-10-25'),
(194, 'dfs', 'dfs', 162, '19:16:34', '2021-10-25'),
(200, 'xzc', 'xcz', 29, '19:21:19', '2021-10-25'),
(201, 'fd', 'dfs', 29, '19:21:35', '2021-10-25'),
(204, 'fds', 'dfs', 30, '19:31:15', '2021-10-25'),
(205, 'cxz', 'xcz', 23, '19:32:49', '2021-10-25'),
(206, 'fds', 'ds', 98, '19:36:38', '2021-10-25'),
(207, 'fg', 'fgd', 26, '19:37:17', '2021-10-25'),
(208, 'vfd', 'vfd', 207, '19:37:37', '2021-10-25'),
(209, 'cxv', 'vfs', 161, '19:38:14', '2021-10-25'),
(210, 'cxz', 'cxz', 204, '19:38:25', '2021-10-25'),
(211, 'zx', 'xx', 204, '19:38:36', '2021-10-25'),
(212, 'dfs_ss', 'dsf', 33, '19:41:45', '2021-10-25'),
(216, 'fds', 'fds', 4, '19:44:33', '2021-10-25'),
(217, 'fds', 'dsf', 4, '19:44:54', '2021-10-25'),
(218, 'sda', 'sad', 4, '19:47:08', '2021-10-25'),
(219, 'dfs', 'fds', 4, '19:48:54', '2021-10-25'),
(220, 'dsf', 'fds,sda', 4, '19:49:53', '2021-10-25'),
(231, 'ghf', 'fhg', 16, '20:28:05', '2021-10-25'),
(232, 'ty', 'gfh', 16, '20:28:24', '2021-10-25'),
(233, 'hjg', 'hg', 16, '20:28:50', '2021-10-25'),
(234, 'hfgf', 'f', 24, '20:29:03', '2021-10-25'),
(235, 'gf', 'gd', 24, '20:29:08', '2021-10-25'),
(236, 'dsf', 'fds', 27, '20:29:41', '2021-10-25'),
(237, 'df', 'dfs', 27, '20:29:47', '2021-10-25'),
(238, 'fds', 'dfs', 27, '20:30:01', '2021-10-25'),
(239, 'fgd', 'fg', 27, '20:30:10', '2021-10-25'),
(240, 'f', 'gg', 27, '20:30:14', '2021-10-25'),
(241, 'dfs', 'df', 26, '20:30:47', '2021-10-25'),
(242, 'fsd', 'fd', 26, '20:30:53', '2021-10-25'),
(243, 'd', 'ss', 26, '20:30:58', '2021-10-25'),
(244, 'dsf', 'ds', 19, '20:31:49', '2021-10-25'),
(245, 'dsf', 'sd', 19, '20:31:59', '2021-10-25'),
(246, 'ss', 'ddd', 19, '20:32:08', '2021-10-25'),
(247, 'dfs', 'dfs', 19, '20:32:23', '2021-10-25'),
(248, 'ваы', 'ваы', 19, '20:35:25', '2021-10-25'),
(249, 'выа', 'вы', 3, '20:39:40', '2021-10-25'),
(250, 'ваыф', 'вы', 3, '20:39:49', '2021-10-25'),
(251, 'ссс', 'ыффф', 3, '20:40:03', '2021-10-25');

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE `message` (
  `Id` int UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full_content` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`Id`, `Title`, `Author`, `summary`, `full_content`) VALUES
(2, 'Вопрос от учителя', 'Ивонова Мария', 'Вы сделали то задание ?', 'Вы сделали то задание по математике ? У вас есть долги по информатики, исправьте это.'),
(3, 'Доставка OZON', 'Иванов И.В', 'Ваш заказ оформлен', 'Ваш заказ оформлен, вы сможете забрать его в ближайшем пункте выдачи,через 5 дней.'),
(4, 'Задание', 'Петров С.П', 'Изготовьте экземпляры изделия', 'Изготовьте экземпляры изделия в размере 200 штук'),
(5, 'Ответ ученика', 'Здравствуйте,Мария Ивановна', 'Здравствуйте,Мария Ивановна я выучил стихотворение', 'dfsfd'),
(6, 'Оповещение от Билайн', 'Борисов Влад,оператор', 'На номере +7 (961)xxxxxxxx имется задолжность', 'На номере +7 (961)xxxxxxxx имется задолжность,оплатите в срок'),
(7, 'dsffff', 'sdf', 'sdas', 'xx'),
(8, 'cxx', 'dfsdfs', 'dsd', 's'),
(9, 'dsf', 'sdf', 'dfs', 'sfdd'),
(10, 'Ser', 'Ment', 'Add fact', 'fsdfds'),
(11, 'Six', 'Five', 'Four', '	\r\n\r\nfsdfds'),
(12, 'WEB', 'Nikita', 'SSSS', 'AAAA'),
(13, 'Отзыв от 21.05.21', 'Semen', 'Отличная гитара', 'Гитара Hamaha 43'),
(14, 'dfs', 'ggg', 'ddd', 'ssssss'),
(15, 'Menn', 'Heessd', 'dss', 'авп'),
(16, 'ddc', 'xca', 'xda', 'xds'),
(17, 'cds', 'xads', 'dsfsd', 'dfsfd'),
(18, 'adsa', 'sfas', 'sdas', 'dfsd'),
(19, 'hhj', 'hggh', 'm', 'jkjkj'),
(20, 'adw', 'jhj', 'jkkj', 'jhjj'),
(21, 'kjjk', 'kj', 'jj', 'kjjk'),
(22, 'sadsaas', 'gf', 'jjh', 'hjh'),
(23, 'mjj', 'w', 'vvvv', 'mmmmm'),
(24, 'Menu in shop', 'Director', 'Bdsdas', 'ghh'),
(25, 'Menu in shop', 'Director', 'Bdsdas', 'ghh'),
(26, 'kjj', 'kkk', 'gggg', 'dsss'),
(27, 'dfsfsd', 'jj', 'jjj', 'jjjjjjj'),
(28, 'hhh', 'kjk', 'jjj', 'eeeeeeeeeee'),
(29, 'dsf', 'sfd', 'fsd', 'fds'),
(30, 'df', 'dfc', 'QWERTY', 'DS'),
(31, 'dsf', 'dfs', 'ds', 'f');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `commetns`
--
ALTER TABLE `commetns`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `commetns`
--
ALTER TABLE `commetns`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT для таблицы `message`
--
ALTER TABLE `message`
  MODIFY `Id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
