-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 09:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdc`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<h2>Bytedevcode</h2><p>… Going back to the corner where I first saw you<br>Gonna camp in my sleeping bag, I\'m not gonna move<br>Got some words on cardboard, got your picture in my hand<br>Saying, \"If you see this girl, can you tell her where I am?\"<br>Some try to hand me money, they don\'t understand<br>I\'m not broke, I\'m just a broken hearted man<br>I know it makes no sense but what else can I do<br>How can I move on when I\'m still in love with you</p><p>… \'Cause if one day you wake up and find that you\'re missing me<br>And your heart starts to wonder where on this Earth I could be<br>Thinkin\' maybe you\'ll come back here to the place that we\'d meet<br>And you\'ll see me waiting for you on our corner of the street<br>So I\'m not moving, I\'m not moving</p><p>… Policeman says, \"Son, you can\'t stay here\"<br>I said, \"There\'s someone I\'m waiting for if it\'s a day, a month, a year\"<br>Gotta stand my ground even if it rains or snows<br>If she changes her mind, this is the first place she will go</p><p>… \'Cause if one day you wake up and find that you\'re missing me<br>And your heart starts to wonder where on this Earth I could be<br>Thinking maybe you\'ll come back here to the place that we\'d meet<br>And you\'ll see me waiting for you on our corner of the street<br>So I\'m not moving, I\'m not moving<br>I\'m not moving, I\'m not moving</p><p>… People talk about the guy that\'s waiting on a girl<br>There are no holes in his shoes but a big hole in his world</p><p>… Maybe I\'ll get famous as the man who can\'t be moved</p>', '2024-07-01 05:02:54', '2024-07-01 09:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `anggotas`
--

CREATE TABLE `anggotas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `posisi` varchar(255) NOT NULL,
  `umur` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggotas`
--

INSERT INTO `anggotas` (`id`, `name`, `slug`, `posisi`, `umur`, `alamat`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Syahril Haryono', 'syahril-haryono', 'IT Security', '21', 'Dimana aja', 'Tempat penyimpanan data-data milik Syahril Haryono. Kebijakan individu berlaku.', '2BDDyUYUdpdwmRRfIzvajtFGoAlBHinNbLgMnkIq.png', '2024-07-01 02:26:47', '2024-07-01 02:26:47'),
(4, 'Daffa Takarai', 'daffa-takarai', 'Founder', '40', 'JL. Pekalongan, No.21 Bandung, Jawa Barat.', 'Ini adalah deskripsi singkat mengenai data diri saya', 'fzosv1Do0c85j5wUrFRFdgEBnCpFimGc6cxCFdZk.png', '2024-07-01 03:57:22', '2024-07-01 03:57:22'),
(5, 'Renald Mangkualam', 'renald-mangkualam', 'IT Security', '50', 'Jakarta', 'SA HJDASD ASASD ASD ASDAS\r\nSA DASD ASAD SD', 'uFujxFdhvxrbcaNugmxEsSLf2v1ODtwPCuIV4jHZ.png', '2024-07-01 04:08:38', '2024-07-01 04:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `category_id`, `user_id`, `content`, `image`, `description`, `created_at`, `updated_at`) VALUES
(4, 'Blog 1', 'blog-1', 4, 1, '<p>&nbsp;</p><p>Blog asdasdas dasdasd</p>', 'DzMYJc7iel53bGEzEsHcecilacndtNct8WOs3WyN.png', 'Blog 1', '2024-06-26 12:20:08', '2024-06-27 02:31:04'),
(5, 'Valorant 2', 'valorant-2', 3, 1, '<p>GAME VALORANT</p>', '9hKh2LsauAD8M6n2Y5cZB0FBtpzhX0aiciSSpi3c.png', 'GAME VALORANT YANG ADA DI INDONESIA', '2024-06-27 01:37:07', '2024-06-27 01:37:07'),
(6, 'Blog 3', 'blog-3', 5, 1, '<p>Blog 3</p>', 'YL9hf8NNJip5ulAc3wwGMFVSdCyvgLuY12eDYSaY.png', 'Blog 3', '2024-06-27 02:41:43', '2024-06-27 02:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('xPY9JoJdMH19OsF3', 's:7:\"forever\";', 2034795466);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Tekhnologi', 'tekhnologi', '2wE4BFTt3O1HXsvvCelTpYimBJzBnTEYUqjeU7J3.png', '2024-06-26 06:15:51', '2024-06-26 06:15:51'),
(4, 'Informasi', 'informasi', 'iS5ldPo8SWuDdWzYO5n6n774vKiXXtpBzMJUDRVF.png', '2024-06-26 06:16:06', '2024-06-26 08:14:11'),
(5, 'Pendidikan', 'pendidikan', 'Nwp1zkyY5zxAinpz1b2BousoV1TFtx6Wo775rjql.png', '2024-06-26 08:14:29', '2024-06-26 08:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `alamat` text NOT NULL,
  `kontak` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `name`, `description`, `alamat`, `kontak`, `created_at`, `updated_at`) VALUES
(1, 'Copyright by Syahril Haryono njjhbhbh', 'Ini deskripsii', 'Asrama Brimob', '+6281990', NULL, '2024-07-01 02:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `headers`
--

CREATE TABLE `headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `headers`
--

INSERT INTO `headers` (`id`, `title`, `name`, `description`, `image`, `image2`, `created_at`, `updated_at`) VALUES
(1, 'Syahril', 'Bytedevcode', 'Ini deskripsi website nya bytedevcode', 'YEO3yNoxNqA7lHPMpLxEdq77gdz98LhB8HD7Cy2s.jpg', 'BQwIMWOHjK3IWKPZgD3Xro0oDa9XTDse9PF5DNJh.jpg', NULL, '2024-07-01 19:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '0001_01_01_000000_create_users_table', 1),
(18, '0001_01_01_000001_create_cache_table', 1),
(19, '0001_01_01_000002_create_jobs_table', 1),
(20, '2024_06_26_122627_create_categories_table', 1),
(21, '2024_06_26_122833_create_blogs_table', 1),
(22, '2024_06_26_123232_create_sliders_table', 1),
(23, '2024_06_26_123334_create_footers_table', 1),
(24, '2024_06_26_123346_create_headers_table', 1),
(25, '2024_06_26_123406_create_sosmeds_table', 1),
(26, '2024_06_26_125330_create_personal_access_tokens_table', 1),
(27, '2024_07_01_084225_create_anggotas_table', 2),
(28, '2024_07_01_114824_create_abouts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `created_at`, `updated_at`) VALUES
(2, '8rwQCPYSaholdjRNhOhUXPjZQoneVgOetvZpMfvU.png', '2024-06-26 13:10:51', '2024-06-26 13:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `sosmeds`
--

CREATE TABLE `sosmeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sosmeds`
--

INSERT INTO `sosmeds` (`id`, `logo`, `name`, `url`, `username`, `created_at`, `updated_at`) VALUES
(1, 'bi bi-instagram', 'Instagram', 'https://instagram.com', 'syahrilh.h', '2024-06-26 06:54:36', '2024-06-26 13:42:41'),
(3, 'bi bi-facebook', 'Facebook', 'https://facebook.com', 'syahrilh.h', '2024-06-26 13:38:32', '2024-06-26 13:42:31'),
(4, 'bi bi-twitter', 'Twitter', 'https://twitter.com', 'vghvhvhgvgh', '2024-06-27 02:04:49', '2024-06-27 02:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nomor` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `nomor`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Syahril Haryono', 'admin@gmail.com', '082122371222', '$2y$12$L5EXXDZbXashzXGTGDrRYO1fvP7DLDVugXSpg2S64KPosx3pHcIoi', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggotas`
--
ALTER TABLE `anggotas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sosmeds`
--
ALTER TABLE `sosmeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nomor_unique` (`nomor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `anggotas`
--
ALTER TABLE `anggotas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sosmeds`
--
ALTER TABLE `sosmeds`
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
