-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 05:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezitm`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0a014cd0718f00fdd8bba1f5a12e566025c0150bac23ac7b4d07602c679cb0f7fa3be08fc0d38eb4', 1, 1, 'MyApp', '[]', 0, '2024-02-11 13:56:54', '2024-02-11 13:56:54', '2024-08-11 18:56:54'),
('0b856955d257413f17c41c1f730fc4c2ccabd22629cf7b5b049b40e30f97209e3d5cc76e0e10a96b', 1, 1, 'MyApp', '[]', 0, '2024-02-11 11:18:39', '2024-02-11 11:18:39', '2024-08-11 16:18:39'),
('1186d20f8b877fd0367ba5d18b6ad3d6a881f9b7bf5fcb1ade73a7002ffc7ed6a968f0382796a48d', 1, 1, 'MyApp', '[]', 0, '2024-02-11 16:08:50', '2024-02-11 16:08:50', '2024-08-11 21:08:50'),
('1c5a9fdb463679711a1f873ced75440aabdf0b96bb5a06b72e48d1c720de7c4f6374c3b7da5900f0', 10, 1, 'MyApp', '[]', 0, '2024-02-11 11:28:30', '2024-02-11 11:28:30', '2024-08-11 16:28:30'),
('1ccbe84998f77781b1be3f2c2ec50924dc2fc5c67ad184bc4ab84c38146c7d08caca71b91490e424', 1, 1, 'MyApp', '[]', 0, '2024-02-11 13:59:34', '2024-02-11 13:59:34', '2024-08-11 18:59:34'),
('310243deda3f74b1143ceaf8ca3b6be30c252f5787c56304a15d466fef0bb293b288b2e25e69919c', 1, 1, 'MyApp', '[]', 0, '2024-02-11 16:05:34', '2024-02-11 16:05:34', '2024-08-11 21:05:34'),
('3194e32ef7c53d9d42ed01b53e3709031352f0fa6e2a01e28f10fd6e2ad4e155082f084c4f865610', 1, 1, 'MyApp', '[]', 0, '2024-02-11 11:19:43', '2024-02-11 11:19:43', '2024-08-11 16:19:43'),
('3c6dd2034144465bf6400aa754407ab2114d9d559fd828c49ca60ca70dea1a3cb1f6315e80a642bc', 1, 1, 'MyApp', '[]', 0, '2024-02-11 07:12:07', '2024-02-11 07:12:07', '2025-02-11 12:12:07'),
('40a95ee6e6d7c735d8fd4dfc32a52fa9ca334043a6b7f8977faf09f85a7ff53d9c05dcd29767e25d', 1, 1, 'MyApp', '[]', 0, '2024-02-11 16:08:03', '2024-02-11 16:08:03', '2024-08-11 21:08:03'),
('43b129f87336998010a06c98b8d414ad0a1fdaa6c5123b4e173334d8a710874b0fcaa7266d0ff1c9', 1, 1, 'MyApp', '[]', 0, '2024-02-11 11:17:23', '2024-02-11 11:17:23', '2024-08-11 16:17:23'),
('4d4dea9ffeb6eb3bc64c262b2a81d5b7ac200a6a88c3844dc7e6518550210a6d9c3e31f2cad277c0', 1, 1, 'MyApp', '[]', 0, '2024-02-11 11:20:42', '2024-02-11 11:20:43', '2024-08-11 16:20:42'),
('56c04763fc2b9ec27332c2b370fb2246ccd01e7e11f8158b14c8b7031fa4265f845b557459756f20', 3, 1, 'MyApp', '[]', 0, '2024-02-11 14:30:33', '2024-02-11 14:30:34', '2024-08-11 19:30:33'),
('5b5f3706994e0d4c99dbf3be6a941d43c6374f2921d8e7ee4afb2a9a88a2fa7fcf319fbcc4557142', 1, 1, 'MyApp', '[]', 0, '2024-02-11 13:59:28', '2024-02-11 13:59:28', '2024-08-11 18:59:28'),
('5c6996fe55911834d466e1ba57a566aa8ffc2d6201cd596a18016df6449f1379e36069fe84897bb1', 1, 1, 'MyApp', '[]', 0, '2024-02-11 13:58:43', '2024-02-11 13:58:44', '2024-08-11 18:58:43'),
('6893777322538a870051a818ed9916faa7b9eba93436a414029238e9a6e736ce7f08c9709cf43a22', 1, 1, 'MyApp', '[]', 0, '2024-02-11 11:33:46', '2024-02-11 11:33:46', '2024-08-11 16:33:46'),
('6f479e0918bebf23668668a029bb21bfea29015c5cfd69bb56b0bfac1ace4702fd651584ab239571', 1, 1, 'MyApp', '[]', 0, '2024-02-11 10:24:54', '2024-02-11 10:24:54', '2024-08-11 15:24:54'),
('7c4555d90bcb7e062f314f640dd1148c6dd3f17af3883072537def6c349cf17e0ecaf4701c682d90', 1, 1, 'MyApp', '[]', 0, '2024-02-11 15:01:02', '2024-02-11 15:01:02', '2024-08-11 20:01:02'),
('8283017eb6fea32042ae1a49796100f9800e3ed9adb4a3ea3ced4711ba2bcced8b066f00f97d704a', 1, 1, 'MyApp', '[]', 0, '2024-02-11 15:21:48', '2024-02-11 15:21:48', '2024-08-11 20:21:48'),
('85aa27d4aad1ad59c097a020d391aad84bcc22ed0bb1b5a5208d6ea9d00afbdd5042ad2f9f9d29c7', 1, 1, 'MyApp', '[]', 0, '2024-02-11 11:18:59', '2024-02-11 11:19:00', '2024-08-11 16:18:59'),
('8606a5b42c4acd159913e7d7056746d2b2a5df9a641ea66dce47b58ee367c3a4a56420acbd99cf24', 1, 1, 'MyApp', '[]', 0, '2024-02-11 13:59:24', '2024-02-11 13:59:24', '2024-08-11 18:59:24'),
('890372f002554a6f31320d0e4ddc1d1dbc8d8e7ca20bcf978050cccf626e931b218a9f22cf4a2882', 1, 1, 'MyApp', '[]', 0, '2024-02-11 11:21:28', '2024-02-11 11:21:28', '2024-08-11 16:21:28'),
('b1f283c9c4f58d7f753156f0a63a4f0f025997a09afc8989b31aff9024dcfb353dc87476cf3b411c', 1, 1, 'MyApp', '[]', 0, '2024-02-11 11:21:57', '2024-02-11 11:21:57', '2024-08-11 16:21:57'),
('b778efcc36cd5ec6c1f17197e6f83e662ca4d1dba6390bbe59b6fa84849cbea0ab929abd13ef049a', 1, 1, 'MyApp', '[]', 0, '2024-02-11 13:59:03', '2024-02-11 13:59:03', '2024-08-11 18:59:03'),
('c04d98d59ba5c10568aa12a6b786a89a9ba51ab93c0fa83ed468d5d5cbe70f5213f2dd0768125da8', 1, 1, 'MyApp', '[]', 0, '2024-02-11 14:00:15', '2024-02-11 14:00:15', '2024-08-11 19:00:15'),
('c734ca4873c8517dde47263c09ff781689f17efb55e38a2d355f5b0d32b7a7e120b35f6a1bc8463b', 1, 1, 'MyApp', '[]', 0, '2024-02-11 14:02:29', '2024-02-11 14:02:29', '2024-08-11 19:02:29'),
('d40feb690d4a81bccd225baf108b23f1297ac2cc19bebb4e6fb2a506712dd322350f116d65df0a02', 1, 1, 'MyApp', '[]', 0, '2024-02-11 14:52:36', '2024-02-11 14:52:36', '2024-08-11 19:52:36'),
('d9695b4cb77c71a8f9a10b382e0660147257f607d56577c9bd153b65886c69c6470aa195b100a806', 1, 1, 'MyApp', '[]', 0, '2024-02-11 23:03:11', '2024-02-11 23:03:11', '2024-08-12 04:03:11'),
('dc5e25a14423c6708ce1d43082d96318a943e6f78c8433502bc06c5bce1f469268bb810bbf630da6', 1, 1, 'MyApp', '[]', 0, '2024-02-11 16:06:43', '2024-02-11 16:06:43', '2024-08-11 21:06:43'),
('dce1226df0e3c38e09ea359338e71eccb6b9abe0bb435dd363eb78b5317136bc857ff3d4a0c2f248', 1, 1, 'MyApp', '[]', 0, '2024-02-11 13:54:26', '2024-02-11 13:54:26', '2024-08-11 18:54:26'),
('e7863312b46271c2980421a201f5fa60b918112759edc74a54399fea6f266a4e316d2b2903d4c78c', 1, 1, 'MyApp', '[]', 0, '2024-02-11 11:20:25', '2024-02-11 11:20:25', '2024-08-11 16:20:25'),
('ee54e90cf121a2bd190e6028792481dce8dc7afbe5ab0f0563dd10859f3573f4cf76b2e2a00dd08e', 9, 1, 'MyApp', '[]', 0, '2024-02-11 07:11:49', '2024-02-11 07:11:49', '2025-02-11 12:11:49'),
('f6ac9de8f4f84f0aae540970d52ea8c3dc52f86fe3c2bef6f1a6f48d8ce51b24429da66d548b5d27', 1, 1, 'MyApp', '[]', 0, '2024-02-11 23:39:46', '2024-02-11 23:39:46', '2024-08-12 04:39:46'),
('f820b1fdad1c60a07d1f779a28cbfc1af11674201af3138a150c8262995c4054a415defb59cd7317', 1, 1, 'MyApp', '[]', 0, '2024-02-11 14:03:58', '2024-02-11 14:03:58', '2024-08-11 19:03:58'),
('fa9d8225728a7123ac8dacebf3128cfe63efd925f41b80670b965da8f300aa313ab28eaa7d87505f', 1, 1, 'MyApp', '[]', 0, '2024-02-11 14:49:44', '2024-02-11 14:49:44', '2024-08-11 19:49:44'),
('ffb6514a4e3b8412914b94497cc8ddacd21090d57d18d3561f2644c433f32c44197731ebf1b88c27', 1, 1, 'MyApp', '[]', 0, '2024-02-11 11:39:06', '2024-02-11 11:39:06', '2024-08-11 16:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
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
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'PKwbl89gi4neWR3sPpNDSuPJHMMnhIKduNWl6dNE', NULL, 'http://localhost', 1, 0, 0, '2024-02-11 05:22:25', '2024-02-11 05:22:25'),
(2, NULL, 'Laravel Password Grant Client', 'YrDdoLJ5kAtDfAAbrclbXvpHkLqU3UzC5TgNCQtb', 'users', 'http://localhost', 0, 1, 0, '2024-02-11 05:22:25', '2024-02-11 05:22:25');

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
(1, 1, '2024-02-11 05:22:25', '2024-02-11 05:22:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyApp', '1383764499567d402a7493b6a7e5c89cb71f7b384193a0d8156d3a2a130a8a28', '[\"*\"]', NULL, NULL, '2024-02-11 06:03:54', '2024-02-11 06:03:54'),
(2, 'App\\Models\\User', 3, 'MyApp', 'e54e0cb84000dd6d5fafe02901f71dccb8ef70d9be3f0544fd436bd6bb16f93b', '[\"*\"]', NULL, NULL, '2024-02-11 06:10:48', '2024-02-11 06:10:48'),
(3, 'App\\Models\\User', 4, 'MyApp', '487fb19756b78c4f0a0f8fcff86503803591346fa6997925345e2d225f9b2f2d', '[\"*\"]', NULL, NULL, '2024-02-11 06:14:34', '2024-02-11 06:14:34'),
(4, 'App\\Models\\User', 1, 'MyApp', '7cffa9fd09e761c01bc2ac94392932c4443a019fd9359582d1aa33e71d0cbfcd', '[\"*\"]', NULL, NULL, '2024-02-11 06:18:17', '2024-02-11 06:18:17'),
(5, 'App\\Models\\User', 1, 'MyApp', 'f1bc3ce20730c1efb3a12b4d3305b1dc641f7d808b1957950e30e87a3381456d', '[\"*\"]', NULL, NULL, '2024-02-11 06:21:05', '2024-02-11 06:21:05'),
(6, 'App\\Models\\User', 5, 'MyApp', 'aa7e441f8f05462a7966e665548693caf46b13d1a1ef10ddee486f96039cbcbd', '[\"*\"]', NULL, NULL, '2024-02-11 06:43:31', '2024-02-11 06:43:31'),
(7, 'App\\Models\\User', 1, 'MyApp', '23ca17db5c36aa38fcd10663e271ec9ee1b505c7ca4ebbb90dd1cddd2d86a6ae', '[\"*\"]', NULL, NULL, '2024-02-11 06:49:00', '2024-02-11 06:49:00'),
(8, 'App\\Models\\User', 1, 'MyApp', '7d491723c483f6817fd3ea13d537ffa1058c92621308e7636e6e2cb0df6ec2dd', '[\"*\"]', NULL, NULL, '2024-02-11 07:05:16', '2024-02-11 07:05:16'),
(9, 'App\\Models\\User', 8, 'MyApp', '08cad99d6c0e2032874112308b164655553924d3b8643a41160e29f75e8011e8', '[\"*\"]', NULL, NULL, '2024-02-11 07:10:18', '2024-02-11 07:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `Add` varchar(255) NOT NULL,
  `Update` varchar(255) NOT NULL,
  `View` varchar(255) NOT NULL,
  `Delete` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `Add`, `Update`, `View`, `Delete`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'Admin', 'Admin', '2024-02-11', '2024-02-11'),
(2, '0', 'Manager', 'Manager', '0', '2024-02-11', '2024-02-11'),
(5, '0', '0', 'User', '0', '2024-02-11', '2024-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desp` varchar(1000) NOT NULL,
  `status` varchar(255) NOT NULL,
  `assigned` int(11) NOT NULL,
  `updated_at` date NOT NULL DEFAULT current_timestamp(),
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `desp`, `status`, `assigned`, `updated_at`, `created_at`) VALUES
(1, 'xyz', 'wetskkd', '1', 1, '2024-02-11', '2024-02-11'),
(4, 'asdasdasd', 'fghjkl', '1', 2, '2024-02-11', '2024-02-11'),
(5, 'Updated Title', 'Updated Description', 'completed', 1, '2024-02-11', '2024-02-11'),
(6, 'asdssadaas', 'asdssadaas', '0', 4, '2024-02-11', '2024-02-11'),
(7, 'asdfghjhgfdsa', 'asdfghjhgfdsa', '0', 4, '2024-02-12', '2024-02-12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_as` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` text DEFAULT NULL,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_as`, `email_verified_at`, `password`, `remember_token`, `token_expires_at`, `created_at`, `updated_at`) VALUES
(1, 'Hammad', 'hammadasmat@gmail.com', 2, NULL, '$2y$12$CcLlOXjJWaMsTv/P1xSqKOuk//hq9cPpFMBcTZ4.a2AyGHz.LmPu.', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjZhYzlkZThmNGY4NGYwYWFlNTQwOTcwZDUyZWE4YzNkYzUyZjg2ZmUzYzJiZWY2ZjFhNmY0OGQ4Y2U1MWIyNDQyOWRhNjZkNTQ4YjVkMjciLCJpYXQiOjE3MDc3MTI3ODYuNDQ4Nzc4LCJuYmYiOjE3MDc3MTI3ODYuNDQ4NzgsImV4cCI6MTcyMzQzNzU4Ni4zNjkwMDksInN1YiI6IjEiLCJzY29wZXMiOltdfQ.I9RhzLss7ZaGZy_Bcj_cUQFn8LzKWBwbJacsXQiGKDksYlpliBNGPtT1e5DJ_K-pXXY_5oEuPOw1c9EFeET1Ta3Hu5hQdzOJSceWj_FaG2knT63ztdBED1tdpH_8NYQ48CEHuR34PmH_dGwEDKcvDXYh5pnaUlWWeK_RO7HWPEZQXVb4h8V5XjUZZuk4rljPZmi2g6aQ9fAfHtHDmq3kyQ131_vAlq34nWN_0Jw3bOzqSq7ByPN3A-GZZkKhAz--vknZLCl4DibhFgIsXklARbtofoQI3lHYAvBLofV9wFPkKL3ME1XUwHvKOFdUyWX5xZvNGz4a7ZCRwKaimf_1d75fx0Haiyicx5xJYqABqoolzrcFEX7SGIWxEM0A2ZZGWgQ0PbLT8g4PLlmq9bxUBRYsXpOYlrN0NppRHvBUof7QueYmhb-067m65X9IK91YCG3u-A8g06Rsb8cyu4nbbINnqu63a0DYSpuC-mUjEstJvX8hhqlxuccbffzz-NeiopJxXnT5EB-mlpNUix1CyT7OzQ3MSXWwA9kO_WCErYaWpWJ9JSeNToonxx-sJCnhaZ9p4sK1k07vCYwo8zHZPDw2nytM3bLN6vK4QU3cBvOIglPvM6QsiHGlq3dpZI3dfxCeN2x-egfqs2a8R9Yc-YrThMGGbl5wfkEkl3LNUo0', '2024-02-11 23:49:46', '2024-02-11 06:03:54', '2024-02-11 23:39:46'),
(3, 'Hammad', 'hammadasma2t@gmail.com', 2, NULL, '$2y$12$jJtXt8D.VHlzM2ds8JNk4eAW/3fHlDdQxupUp2HACcKspbN.g9jyq', NULL, NULL, '2024-02-11 06:10:48', '2024-02-11 06:10:48'),
(4, 'Hammad', 'hammadasma3t@gmail.com', 1, NULL, '$2y$12$TA.LFwNRwtpkOU93REQ8tucFLplKwmA8NgYtpNjYGhho8a5Du99gO', NULL, NULL, '2024-02-11 06:14:33', '2024-02-11 06:14:33'),
(5, 'Hammad', 'hammadasma4t@gmail.com', 1, NULL, '$2y$12$pTSKSfFwG686Mv0/1wxEB.K.bV2QpnzgFbyCDBfYnMbhw4If3SV3y', NULL, NULL, '2024-02-11 06:43:31', '2024-02-11 06:43:31'),
(8, 'Hammad', 'hammadasma5t@gmail.com', 1, NULL, '$2y$12$Nmqeq62FzILc0EmV/8HT3.hyiotWeOinMYTM/OxDJsvDYrtEzGyOK', NULL, NULL, '2024-02-11 07:10:17', '2024-02-11 07:10:17'),
(9, 'Hammad', 'hammadasma6t@gmail.com', 1, NULL, '$2y$12$c3cIuVoFBQmTT2jZtlem.etP0uTz706vsCkffcQtXr4xn8BGQuedm', NULL, NULL, '2024-02-11 07:11:48', '2024-02-11 07:11:48'),
(10, 'hammad', 'testing@gmail.com', 1, NULL, '$2y$12$f6nT0DYBT3oBRGTggrEFYeKYTsFMJGaf8iiWJOVU8TvEYsfCWqHd2', NULL, NULL, '2024-02-11 11:28:30', '2024-02-11 11:28:30');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
