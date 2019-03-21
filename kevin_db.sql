-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2019 at 03:19 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kevin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_17_011421_create_posts_table', 1),
(4, '2018_07_21_054342_add_user_id_to_posts', 2),
(5, '2018_07_25_011427_add_cover_image_to_posts', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('kevin@genserv-ph.com', '$2y$10$4PAM0h.dk4jIKWIZW5raAeDWgBIS/.yNdx6HKRPrtUFvBx6tnbLKy', '2018-07-25 01:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(14, 'ARCHERY', '<p><strong>Archery</strong>&nbsp;is the art, sport, practice or skill of using a bow&nbsp;to shoot&nbsp;arrows. The word comes from the Latin<em> arcus</em>. Historically, archery has been used for hunting and combat. In modern times, it is mainly a competitive sport and recreational activity. A person who participates in archery is typically called an<em> archer</em>&nbsp;or a <em>bowman</em>,&nbsp;and a person who is fond of or an expert at archery is sometimes called a <em>toxophilite</em>.</p>', '2018-07-25 17:00:32', '2018-07-25 17:00:32', 1, 'brizkand_3_1532566832.jpg'),
(15, 'BE YOURSELF', '<p>Be who you are and say what you feel, because those who mind don&rsquo;t matter, and those who matter don&rsquo;t mind.</p>', '2018-07-25 17:03:38', '2018-07-25 17:03:38', 1, 'brizkand_5_1532567018.jpg'),
(16, 'RIZAL PARK', '<p><strong>Rizal Park</strong>, also known as&nbsp;Luneta Park&nbsp;or simply&nbsp;Luneta, is a historical <em>urban park</em>&nbsp;in the <em>Philippines</em>. Located along <em>Roxas Boulevard Manila,</em>&nbsp;adjacent to the old walled city of <em>Intramuros</em>, it is one of the largest urban parks in Asia. It has been a favorite leisure spot, and is frequented on Sundays and <em>national holidays.</em>&nbsp;Rizal Park is one of the major <em>tourist</em>&nbsp;attractions of Manila.</p>', '2018-07-25 17:10:09', '2018-07-25 17:10:09', 1, 'brizkand_6_1532567409.jpg'),
(17, 'GUITAR LOVER', '<p>Guitar players are a different breed of human. They love nothing more passionately than strumming those strings as if they were made of the most exquisite silk. The guitar player is part of an entire sub-culture of cool and once one picks up a guitar, chances are they&rsquo;ll never put it down; it&rsquo;s more addicting and pleasing than the strongest of opiates.</p>', '2018-07-25 17:15:18', '2018-07-25 17:15:18', 1, 'brizkand_1532567718.jpg'),
(18, 'JOURNEY', '<p>As you start your <em>journey</em>, the first thing you should do is throw away that store-bought map and begin to draw your own.</p>', '2018-07-25 17:19:23', '2018-07-25 17:19:23', 1, 'briz2_1532567963.jpg'),
(19, 'MY FAMILY', '<p>Learn to enjoy every minute of your life. Be happy now. Don&#39;t wait for something outside of yourself to make you happy in the future. Think how really precious is the time you have to spend, whether it&#39;s at work or with your family. Every minute should be enjoyed and savored.</p>', '2018-07-25 17:22:53', '2018-07-25 17:22:53', 1, 'family_3_1532568173.jpg'),
(20, 'TRUE FRIENDS', '<p>A best&nbsp;<em>friend</em>&nbsp;is like a four leaf clover, hard to find, lucky to have.&nbsp;<em>Friends</em>&nbsp;come and go, like the waves of the ocean, but the true ones stay like an octopus on your face. As your best&nbsp;<em>friend</em>&nbsp;I&#39;ll always pick you up when you fall, after I finish laughing.</p>', '2018-07-25 17:25:13', '2018-07-25 17:25:13', 1, 'ezro_1532568313.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kevin Ishmael Holgado', 'kevin@genserv-ph.com', '$2y$10$EbvfkHxYLNS0iQTzoMnSvu29aFpnAwLowA.ybpeS7/sGkOiwKjWN2', 'D96digRVGnQlGUulFRNKzpRmwCcZ9Y38lFh0fYUHNvWAFbQV4OV8wVx6PudK', '2018-07-20 19:25:30', '2018-07-20 19:25:30'),
(2, 'Test', 'test@gmail.com', '$2y$10$fuuMWLAWicfiQfkEYTDfbebtL14pGTgGls4ODmokxtP8ivL5Yy4Jm', 'mFstu1X7NOWL9WnUMIc4UVZAcNKFD7z68uDGvISXX2UeB3RvnvH7zUEx5zHo', '2018-07-22 23:00:11', '2018-07-22 23:00:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
