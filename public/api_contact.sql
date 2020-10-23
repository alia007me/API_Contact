-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 06:40 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_contact`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `created_at`, `updated_at`, `name`, `family`, `email`, `phone_number`, `avatar`, `user_id`) VALUES
(2, '2020-10-23 00:50:37', '2020-10-23 00:50:37', 'nima', NULL, NULL, '123', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_10_22_114311_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('12cd2c98fef89ac4cb3b92b6e3c8c99bdc73909bbd5f30957b33a8d005ba1d08d7364d73bdf98609', 1, 9, 'authToken', '[]', 0, '2020-10-22 12:49:02', '2020-10-22 12:49:02', '2021-10-22 16:19:02'),
('196bf292d15e9d5165e2086009b942d461f742eadb5c7817a7edbce5c1a2345eb9af9693f8d9f3c6', 1, 9, 'authToken', '[]', 0, '2020-10-22 13:00:43', '2020-10-22 13:00:43', '2021-10-22 16:30:43'),
('9503b4dffce50fb2ad11d8b0da9d492e11a9f9c1d56ac78b651427daeee0284e5b9372dcf11726be', 1, 9, 'authToken', '[]', 0, '2020-10-22 12:47:48', '2020-10-22 12:47:48', '2021-10-22 16:17:48'),
('9a78cda51bfc0e17f49792996dc4a8d6abb49e8ac8de1b067316142794e68259191484ac27a1b2d5', 2, 9, 'authToken', '[]', 0, '2020-10-23 00:29:49', '2020-10-23 00:29:49', '2021-10-23 03:59:49'),
('ba4de18fb5e301d956a8c0505e0300a6e6debcbb1a9350f8a252d491304214bc1ef3e4db75a05960', 1, 9, 'authToken', '[]', 0, '2020-10-22 12:49:29', '2020-10-22 12:49:29', '2021-10-22 16:19:29'),
('d2ac8922edfcf9bff62f8385d67b9cb4752e4ac84bd9fa2b98abf416fb1b1b4245f5824cd6562dc7', 2, 9, 'authToken', '[]', 0, '2020-10-23 00:13:36', '2020-10-23 00:13:36', '2021-10-23 03:43:36'),
('f33644c8f00e2d0e8cab677aa4fb6d6dbc567888dd9fd8453775fa58e954e53c668bce11f79cc7b4', 1, 9, 'authToken', '[]', 0, '2020-10-22 12:49:55', '2020-10-22 12:49:55', '2021-10-22 16:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'pgpIoUeFjqWwHIYPw1V820Clx9sxXn0cXEzSKAHH', NULL, 'http://localhost', 1, 0, 0, '2020-10-22 08:58:57', '2020-10-22 08:58:57'),
(2, NULL, 'Laravel Password Grant Client', 'f22LnTtARdutM2FRktEpr5YHYB1JUvoSAyK7vzwe', 'users', 'http://localhost', 0, 1, 0, '2020-10-22 08:58:57', '2020-10-22 08:58:57'),
(3, NULL, 'Laravel Personal Access Client', 'kgS0ZIv6DVYTbeXuT2zC5YLjKj2h6TuoXL4jDzFX', NULL, 'http://localhost', 1, 0, 0, '2020-10-22 12:29:48', '2020-10-22 12:29:48'),
(4, NULL, 'Laravel Password Grant Client', 'TU72rla6LWOGk34rFxL4gcO3mfYyDkBX5f5oDe2W', 'users', 'http://localhost', 0, 1, 0, '2020-10-22 12:29:49', '2020-10-22 12:29:49'),
(5, NULL, 'Laravel Personal Access Client', 'ck5MNrPx5ey9kyzihWOvh4TL4Z7jUSDymBZLsK4k', NULL, 'http://localhost', 1, 0, 0, '2020-10-22 12:30:00', '2020-10-22 12:30:00'),
(6, NULL, 'Laravel Password Grant Client', 'LNxeQYRVk3FKi8DNXLCHXc8MH0KxizzY3ICSAdxC', 'users', 'http://localhost', 0, 1, 0, '2020-10-22 12:30:00', '2020-10-22 12:30:00'),
(7, NULL, 'Laravel Personal Access Client', 'RdDSNvd3zTNTg4UqF1aI82fnaRQRhXbmQ7PvLguf', NULL, 'http://localhost', 1, 0, 0, '2020-10-22 12:45:00', '2020-10-22 12:45:00'),
(8, NULL, 'Laravel Password Grant Client', '4aaNV7zfH43pFT3dNPD78vthGzuDY9RIf1Tw9LoI', 'users', 'http://localhost', 0, 1, 0, '2020-10-22 12:45:01', '2020-10-22 12:45:01'),
(9, NULL, 'Laravel Personal Access Client', 'rUhO4UFEoXaVKKC7aDrkMpuUfCpsJey2ABeMT5t5', NULL, 'http://localhost', 1, 0, 0, '2020-10-22 12:45:05', '2020-10-22 12:45:05'),
(10, NULL, 'Laravel Password Grant Client', 'nzm20Vp8gkj3KvV3fRld91AvqtSpbJ9Hpg9oKcf5', 'users', 'http://localhost', 0, 1, 0, '2020-10-22 12:45:05', '2020-10-22 12:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-22 08:58:57', '2020-10-22 08:58:57'),
(2, 3, '2020-10-22 12:29:48', '2020-10-22 12:29:48'),
(3, 5, '2020-10-22 12:30:00', '2020-10-22 12:30:00'),
(4, 7, '2020-10-22 12:45:01', '2020-10-22 12:45:01'),
(5, 9, '2020-10-22 12:45:05', '2020-10-22 12:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mrmos', 'mrmos@gmail.com', NULL, '$2y$10$7K6UX863fBOIe8EJ683fuOJJccgXuws.NpSQqcuG44dx64yJDT/kG', NULL, '2020-10-22 12:47:42', '2020-10-22 12:47:42'),
(2, 'ali', 'alia007.hi@gmail.com', NULL, '$2y$10$xw8VmFjCMxqMth3wXuFYDurmp0TqkCzUylrKo6C.a4kGrt7KeUkLK', NULL, '2020-10-23 00:13:06', '2020-10-23 00:13:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
