-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 16 2020 г., 16:38
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2020_03_30_221530_create_responses_table', 2),
(10, '2020_03_30_221547_create_requests_table', 2),
(11, '2020_03_31_192912_create_statuses_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `responses`
--

CREATE TABLE `responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `response` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `riquest_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `responses`
--

INSERT INTO `responses` (`id`, `response`, `riquest_id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'I do\'nt know what you say...', '6', '2', '2020-03-31 18:10:50', '2020-03-31 18:10:50'),
(7, 'and I know !!!!!', '6', '3', '2020-03-31 18:11:42', '2020-03-31 18:11:42'),
(8, 'RESPONSE!!!', '6', '3', '2020-03-31 18:12:13', '2020-03-31 18:12:13'),
(9, 'RESPONSE...', '6', '2', '2020-03-31 18:12:57', '2020-03-31 18:12:57'),
(10, 'da', '18', '2', '2020-04-01 12:49:31', '2020-04-01 12:49:31'),
(11, 'try send this', '6', '2', '2020-04-02 10:53:58', '2020-04-02 10:53:58'),
(12, 'try send this', '6', '2', '2020-04-02 10:59:00', '2020-04-02 10:59:00'),
(13, 'try send message to my', '6', '2', '2020-04-02 11:06:39', '2020-04-02 11:06:39'),
(14, 'try send mail to admin', '6', '3', '2020-04-02 11:37:05', '2020-04-02 11:37:05'),
(15, 'HaaEthaaAsss', '20', '2', '2020-04-02 15:29:15', '2020-04-02 15:29:15'),
(16, 'HaaEthaaAsss', '20', '2', '2020-04-02 15:30:41', '2020-04-02 15:30:41'),
(17, 'test send', '20', '2', '2020-04-02 15:37:05', '2020-04-02 15:37:05'),
(18, 'xvsvsdvsdv', '20', '2', '2020-04-02 15:42:54', '2020-04-02 15:42:54'),
(19, 'xvsvsdvsdv', '20', '2', '2020-04-02 15:46:15', '2020-04-02 15:46:15'),
(20, 'dcsdcsdcsd', '20', '2', '2020-04-02 15:50:04', '2020-04-02 15:50:04'),
(21, 'dcsdcsdcsd', '20', '2', '2020-04-02 16:06:03', '2020-04-02 16:06:03'),
(22, 'answertest', '20', '2', '2020-04-02 16:14:04', '2020-04-02 16:14:04'),
(23, 'final answer', '20', '2', '2020-04-02 16:16:13', '2020-04-02 16:16:13'),
(24, 'the last final answer))', '20', '2', '2020-04-02 16:17:24', '2020-04-02 16:17:24'),
(25, 'last of the last and final of the fital test answer', '20', '2', '2020-04-02 16:19:18', '2020-04-02 16:19:18'),
(26, 'this is respo', '21', '2', '2020-05-16 04:03:24', '2020-05-16 04:03:24');

-- --------------------------------------------------------

--
-- Структура таблицы `riquests`
--

CREATE TABLE `riquests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `statuse_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `riquests`
--

INSERT INTO `riquests` (`id`, `description`, `request`, `user_id`, `statuse_id`, `created_at`, `updated_at`) VALUES
(5, 'new request', 'I do\'nt wona gat answer, just response', 3, '3', '2020-03-31 17:54:45', '2020-03-31 17:54:45'),
(6, 'and this is nubmer two', 'SECOND REQUEST WHAIT RESPONSE FOR CODE', 3, '3', '2020-03-31 17:55:45', '2020-03-31 17:55:45'),
(7, 'new request again', 'status request check', 3, '3', '2020-03-31 18:28:26', '2020-03-31 18:28:26'),
(8, 'check status', 'check status again', 3, '3', '2020-03-31 18:30:08', '2020-03-31 18:30:08'),
(9, 'its can by', 'all time and forever', 3, '1', '2020-03-31 18:32:48', '2020-03-31 18:32:48'),
(10, 'again', 'andagainandagaindnadagain', 3, '1', '2020-03-31 18:34:57', '2020-03-31 18:34:57'),
(11, 'again', 'andagainandagaindnadagain', 3, '1', '2020-03-31 18:50:02', '2020-03-31 18:50:02'),
(12, 'again', 'andagainandagaindnadagain', 3, '1', '2020-03-31 19:00:40', '2020-03-31 19:00:40'),
(13, 'again', 'andagainandagaindnadagain', 3, '1', '2020-03-31 19:04:53', '2020-03-31 19:04:53'),
(14, 'tadada', 'tadtdtdadadaaaaa', 3, '1', '2020-04-01 11:56:25', '2020-04-01 11:56:25'),
(15, 'tadada2', 'tadtdtdadadaaaaa2', 3, '1', '2020-04-01 11:57:28', '2020-04-01 11:57:28'),
(16, 'request is it', 'request 1', 3, '3', '2020-04-01 11:59:56', '2020-04-01 11:59:56'),
(17, 'try 11', 'try 256', 3, '3', '2020-04-01 12:06:07', '2020-04-01 12:06:07'),
(18, 'yes', 'I know, it\'s work', 3, '3', '2020-04-01 12:12:45', '2020-04-01 12:12:45'),
(19, 'status check', 'in this request status new must change to viewed', 3, '1', '2020-04-01 16:15:29', '2020-04-01 16:15:29'),
(20, 'status check', 'in this request status new must change to viewed', 3, '2', '2020-04-01 16:17:34', '2020-04-01 16:17:34'),
(21, 'test add mail', 'testestestestesestest', 3, '2', '2020-04-02 12:02:50', '2020-04-02 12:02:50'),
(22, 'test add mail', 'testestestestesestest', 3, '4', '2020-04-02 12:03:25', '2020-04-02 12:03:25'),
(23, 'test add mail', 'testestestestesestest', 3, '4', '2020-04-02 12:05:02', '2020-04-02 12:05:02'),
(24, 'test add mail', 'testestestestesestest', 3, '4', '2020-04-02 12:05:46', '2020-04-02 12:05:46'),
(25, 'test add mail', 'testestestestesestest', 3, '4', '2020-04-02 12:06:33', '2020-04-02 12:06:33'),
(26, 'test add mail', 'testestestestesestest', 3, '1', '2020-04-02 12:07:54', '2020-04-02 12:07:54'),
(27, 'test add mail', 'testestestestesestest', 3, '1', '2020-04-02 12:08:17', '2020-04-02 12:08:17'),
(28, 'what&', 'lksnVlsnvlkmsd;lvmsd', 3, '3', '2020-04-02 12:08:46', '2020-04-02 12:08:46'),
(29, 'ffffffffff', ';aldmfc;ksdm', 4, '4', '2020-05-16 08:03:14', '2020-05-16 08:03:14'),
(30, 'ffffffffff', 'длотллдлдл', 3, '4', '2020-05-16 08:26:09', '2020-05-16 08:26:09');

-- --------------------------------------------------------

--
-- Структура таблицы `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `statuses`
--

INSERT INTO `statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'viwed', NULL, NULL),
(2, 'answered', NULL, NULL),
(3, 'closed', NULL, NULL),
(4, 'new', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'ochev.vladimir@gmail.com', 'admin', NULL, '$2y$10$yRa2g59geJIcIUt70omHDesyM8YNQVUodpISplM5jEJVcEulWJOI6', NULL, '2020-03-30 15:47:27', '2020-03-30 15:47:27'),
(3, 'User1', 'user1@mail.com', NULL, NULL, '$2y$10$.owUa6GDDVvuvSqo8H1dseJZvGMwXxQemdkRMqOaWFmkY2URAjCOy', NULL, '2020-03-30 15:48:46', '2020-03-30 15:48:46'),
(4, 'vlad', 'ochev.vldmir@gmail.com', NULL, NULL, '$2y$10$eMXFNDb.bJ7TaSfdj9/E3.MekeNcBKG4HxXC1fxQOcQeQq1Lp27Ia', NULL, '2020-05-16 07:48:10', '2020-05-16 07:48:10');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `riquests`
--
ALTER TABLE `riquests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `responses`
--
ALTER TABLE `responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `riquests`
--
ALTER TABLE `riquests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
