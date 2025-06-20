-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2025 at 07:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bimkar-hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_doni.pratama@gmail.com|127.0.0.1', 'i:1;', 1748758841),
('laravel_cache_doni.pratama@gmail.com|127.0.0.1:timer', 'i:1748758841;', 1748758841),
('laravel_cache_mastegark@gmail.com|127.0.0.1', 'i:2;', 1749442554),
('laravel_cache_mastegark@gmail.com|127.0.0.1:timer', 'i:1749442554;', 1749442554),
('laravel_cache_rina@klinik.com|127.0.0.1', 'i:1;', 1748880261),
('laravel_cache_rina@klinik.com|127.0.0.1:timer', 'i:1748880261;', 1748880261),
('laravel_cache_tegar@gmail.com|127.0.0.1', 'i:1;', 1749442046),
('laravel_cache_tegar@gmail.com|127.0.0.1:timer', 'i:1749442046;', 1749442046);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_periksas`
--

CREATE TABLE `detail_periksas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_periksa` bigint(20) UNSIGNED NOT NULL,
  `id_obat` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_periksas`
--

INSERT INTO `detail_periksas` (`id`, `id_periksa`, `id_obat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-06-01 08:35:59', '2025-06-01 08:35:59'),
(2, 2, 1, '2025-06-01 08:41:24', '2025-06-01 08:41:24'),
(3, 3, 1, '2025-06-01 08:51:02', '2025-06-01 08:51:02'),
(4, 4, 2, '2025-06-01 08:56:52', '2025-06-01 08:56:52'),
(5, 5, 2, '2025-06-01 09:02:35', '2025-06-01 09:02:35'),
(6, 6, 2, '2025-06-01 09:03:03', '2025-06-01 09:03:03'),
(7, 7, 2, '2025-06-01 09:28:51', '2025-06-01 09:28:51'),
(8, 8, 2, '2025-06-01 09:29:24', '2025-06-01 09:29:24'),
(9, 9, 2, '2025-06-01 09:32:50', '2025-06-01 09:32:50'),
(10, 10, 1, '2025-06-02 03:56:27', '2025-06-02 03:56:27'),
(11, 10, 2, '2025-06-02 03:56:27', '2025-06-02 03:56:27'),
(12, 11, 1, '2025-06-02 04:37:49', '2025-06-02 04:37:49'),
(13, 11, 2, '2025-06-02 04:37:49', '2025-06-02 04:37:49'),
(14, 12, 1, '2025-06-02 05:51:07', '2025-06-02 05:51:07'),
(15, 12, 2, '2025-06-02 05:51:07', '2025-06-02 05:51:07'),
(16, 13, 2, '2025-06-02 07:12:36', '2025-06-02 07:12:36'),
(17, 14, 2, '2025-06-02 07:22:31', '2025-06-02 07:22:31'),
(18, 14, 5, '2025-06-02 07:22:31', '2025-06-02 07:22:31'),
(19, 15, 2, '2025-06-02 07:25:16', '2025-06-02 07:25:16'),
(20, 15, 5, '2025-06-02 07:25:16', '2025-06-02 07:25:16'),
(21, 16, 5, '2025-06-02 07:41:52', '2025-06-02 07:41:52'),
(22, 17, 1, '2025-06-02 08:01:30', '2025-06-02 08:01:30'),
(23, 17, 2, '2025-06-02 08:01:30', '2025-06-02 08:01:30'),
(24, 17, 5, '2025-06-02 08:01:30', '2025-06-02 08:01:30'),
(25, 18, 2, '2025-06-02 08:45:03', '2025-06-02 08:45:03'),
(26, 19, 5, '2025-06-02 08:47:06', '2025-06-02 08:47:06'),
(27, 20, 2, '2025-06-02 09:06:27', '2025-06-02 09:06:27'),
(28, 20, 5, '2025-06-02 09:06:27', '2025-06-02 09:06:27'),
(29, 21, 2, '2025-06-08 21:11:41', '2025-06-08 21:11:41'),
(30, 21, 5, '2025-06-08 21:11:41', '2025-06-08 21:11:41'),
(31, 22, 2, '2025-06-08 22:09:41', '2025-06-08 22:09:41'),
(32, 22, 5, '2025-06-08 22:09:41', '2025-06-08 22:09:41'),
(33, 23, 5, '2025-06-08 22:29:14', '2025-06-08 22:29:14'),
(34, 24, 1, '2025-06-08 22:39:12', '2025-06-08 22:39:12'),
(35, 24, 5, '2025-06-08 22:39:12', '2025-06-08 22:39:12'),
(36, 25, 1, '2025-06-08 22:43:54', '2025-06-08 22:43:54'),
(37, 25, 2, '2025-06-08 22:43:54', '2025-06-08 22:43:54'),
(38, 25, 5, '2025-06-08 22:43:54', '2025-06-08 22:43:54'),
(39, 26, 5, '2025-06-08 22:54:26', '2025-06-08 22:54:26'),
(40, 26, 6, '2025-06-08 22:54:26', '2025-06-08 22:54:26'),
(41, 27, 2, '2025-06-12 04:16:54', '2025-06-12 04:16:54'),
(42, 27, 6, '2025-06-12 04:16:54', '2025-06-12 04:16:54'),
(43, 28, 5, '2025-06-12 05:09:05', '2025-06-12 05:09:05'),
(44, 28, 6, '2025-06-12 05:09:05', '2025-06-12 05:09:05'),
(45, 29, 2, '2025-06-20 07:47:55', '2025-06-20 07:47:55'),
(46, 29, 5, '2025-06-20 07:47:55', '2025-06-20 07:47:55'),
(47, 29, 6, '2025-06-20 07:47:55', '2025-06-20 07:47:55'),
(48, 30, 13, '2025-06-20 09:19:00', '2025-06-20 09:19:00'),
(49, 30, 15, '2025-06-20 09:19:00', '2025-06-20 09:19:00'),
(50, 30, 17, '2025-06-20 09:19:00', '2025-06-20 09:19:00'),
(51, 31, 6, '2025-06-20 09:22:30', '2025-06-20 09:22:30'),
(52, 32, 2, '2025-06-20 09:32:07', '2025-06-20 09:32:07'),
(53, 32, 6, '2025-06-20 09:32:07', '2025-06-20 09:32:07'),
(54, 33, 6, '2025-06-20 09:47:30', '2025-06-20 09:47:30'),
(55, 34, 7, '2025-06-20 10:21:53', '2025-06-20 10:21:53');

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
-- Table structure for table `jadwal_periksas`
--

CREATE TABLE `jadwal_periksas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_dokter` bigint(20) UNSIGNED NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu','Minggu') NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_poli` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwal_periksas`
--

INSERT INTO `jadwal_periksas` (`id`, `id_dokter`, `hari`, `jam_mulai`, `jam_selesai`, `status`, `created_at`, `updated_at`, `id_poli`) VALUES
(3, 2, 'Rabu', '08:00:00', '12:00:00', 0, '2025-05-25 21:54:46', '2025-06-12 04:20:43', 0),
(4, 2, 'Rabu', '13:00:00', '16:00:00', 0, '2025-05-25 21:54:46', '2025-06-12 04:20:43', 0),
(5, 2, 'Kamis', '08:00:00', '12:00:00', 0, '2025-05-25 21:54:46', '2025-06-12 04:20:43', 0),
(6, 2, 'Kamis', '13:00:00', '16:00:00', 0, '2025-05-25 21:54:46', '2025-06-12 04:20:43', 0),
(7, 3, 'Kamis', '08:00:00', '12:00:00', 0, '2025-05-25 21:54:46', '2025-06-20 10:21:15', 0),
(8, 3, 'Jumat', '08:00:00', '12:00:00', 0, '2025-05-25 21:54:46', '2025-06-20 10:21:15', 0),
(9, 4, 'Jumat', '08:00:00', '12:00:00', 1, '2025-05-25 21:54:46', '2025-05-25 21:54:46', 0),
(10, 4, 'Jumat', '13:00:00', '16:00:00', 0, '2025-05-25 21:54:46', '2025-05-25 21:54:46', 0),
(11, 4, 'Sabtu', '08:00:00', '12:00:00', 0, '2025-05-25 21:54:46', '2025-05-25 21:54:46', 0),
(12, 4, 'Sabtu', '13:00:00', '16:00:00', 0, '2025-05-25 21:54:46', '2025-05-25 21:54:46', 0),
(13, 5, 'Senin', '08:00:00', '12:00:00', 1, '2025-05-25 21:54:46', '2025-06-02 08:46:14', 0),
(14, 5, 'Selasa', '08:00:00', '12:00:00', 0, '2025-05-25 21:54:46', '2025-06-02 08:46:14', 0),
(18, 2, 'Rabu', '08:00:00', '12:00:00', 0, '2025-05-30 07:36:55', '2025-06-12 04:20:43', 0),
(19, 2, 'Rabu', '13:00:00', '16:00:00', 0, '2025-05-30 07:36:55', '2025-06-12 04:20:43', 0),
(20, 2, 'Kamis', '08:00:00', '12:00:00', 0, '2025-05-30 07:36:55', '2025-06-12 04:20:43', 0),
(21, 2, 'Kamis', '13:00:00', '16:00:00', 0, '2025-05-30 07:36:55', '2025-06-12 04:20:43', 0),
(22, 3, 'Kamis', '08:00:00', '12:00:00', 0, '2025-05-30 07:36:55', '2025-06-20 10:21:15', 0),
(23, 3, 'Jumat', '08:00:00', '12:00:00', 0, '2025-05-30 07:36:55', '2025-06-20 10:21:15', 0),
(24, 4, 'Jumat', '08:00:00', '12:00:00', 1, '2025-05-30 07:36:55', '2025-05-30 07:36:55', 0),
(25, 4, 'Jumat', '13:00:00', '16:00:00', 0, '2025-05-30 07:36:55', '2025-05-30 07:36:55', 0),
(26, 4, 'Sabtu', '08:00:00', '12:00:00', 0, '2025-05-30 07:36:55', '2025-05-30 07:36:55', 0),
(27, 4, 'Sabtu', '13:00:00', '16:00:00', 0, '2025-05-30 07:36:55', '2025-05-30 07:36:55', 0),
(28, 5, 'Senin', '08:00:00', '12:00:00', 0, '2025-05-30 07:36:55', '2025-06-02 08:46:14', 0),
(29, 5, 'Selasa', '08:00:00', '12:00:00', 0, '2025-05-30 07:36:55', '2025-06-02 08:46:14', 0),
(32, 2, 'Rabu', '08:00:00', '12:00:00', 0, '2025-05-31 22:45:00', '2025-06-12 04:20:43', 1),
(33, 2, 'Rabu', '13:00:00', '16:00:00', 0, '2025-05-31 22:45:00', '2025-06-12 04:20:43', 1),
(34, 2, 'Kamis', '08:00:00', '12:00:00', 0, '2025-05-31 22:45:00', '2025-06-12 04:20:43', 2),
(35, 2, 'Kamis', '13:00:00', '16:00:00', 0, '2025-05-31 22:45:00', '2025-06-12 04:20:43', 2),
(36, 3, 'Kamis', '08:00:00', '12:00:00', 0, '2025-05-31 22:45:00', '2025-06-20 10:21:15', 1),
(37, 3, 'Jumat', '08:00:00', '12:00:00', 0, '2025-05-31 22:45:00', '2025-06-20 10:21:15', 4),
(38, 4, 'Jumat', '08:00:00', '12:00:00', 1, '2025-05-31 22:45:00', '2025-05-31 22:45:00', 2),
(39, 4, 'Jumat', '13:00:00', '16:00:00', 0, '2025-05-31 22:45:00', '2025-05-31 22:45:00', 2),
(40, 4, 'Sabtu', '08:00:00', '12:00:00', 0, '2025-05-31 22:45:00', '2025-05-31 22:45:00', 4),
(41, 4, 'Sabtu', '13:00:00', '16:00:00', 0, '2025-05-31 22:45:00', '2025-05-31 22:45:00', 4),
(42, 5, 'Senin', '08:00:00', '12:00:00', 0, '2025-05-31 22:45:00', '2025-06-02 08:46:14', 4),
(43, 5, 'Selasa', '08:00:00', '12:00:00', 0, '2025-05-31 22:45:00', '2025-06-02 08:46:14', 1),
(46, 2, 'Rabu', '08:00:00', '12:00:00', 0, '2025-05-31 22:56:46', '2025-06-12 04:20:43', 3),
(47, 2, 'Rabu', '13:00:00', '16:00:00', 0, '2025-05-31 22:56:46', '2025-06-12 04:20:43', 3),
(48, 2, 'Kamis', '08:00:00', '12:00:00', 0, '2025-05-31 22:56:46', '2025-06-12 04:20:43', 4),
(49, 2, 'Kamis', '13:00:00', '16:00:00', 0, '2025-05-31 22:56:46', '2025-06-12 04:20:43', 4),
(50, 3, 'Kamis', '08:00:00', '12:00:00', 0, '2025-05-31 22:56:46', '2025-06-20 10:21:15', 1),
(51, 3, 'Jumat', '08:00:00', '12:00:00', 0, '2025-05-31 22:56:46', '2025-06-20 10:21:15', 1),
(52, 4, 'Jumat', '08:00:00', '12:00:00', 1, '2025-05-31 22:56:46', '2025-05-31 22:56:46', 2),
(53, 4, 'Jumat', '13:00:00', '16:00:00', 0, '2025-05-31 22:56:46', '2025-05-31 22:56:46', 2),
(54, 4, 'Sabtu', '08:00:00', '12:00:00', 0, '2025-05-31 22:56:46', '2025-05-31 22:56:46', 4),
(55, 4, 'Sabtu', '13:00:00', '16:00:00', 0, '2025-05-31 22:56:47', '2025-05-31 22:56:47', 4),
(56, 5, 'Senin', '08:00:00', '12:00:00', 0, '2025-05-31 22:56:47', '2025-06-02 08:46:14', 1),
(57, 5, 'Selasa', '08:00:00', '12:00:00', 0, '2025-05-31 22:56:47', '2025-06-02 08:46:14', 4),
(58, 1, 'Selasa', '08:00:00', '12:00:00', 1, '2025-06-01 01:02:37', '2025-06-08 21:28:21', 4),
(59, 1, 'Rabu', '08:00:00', '12:00:00', 0, '2025-06-01 01:02:37', '2025-06-08 21:28:21', 4),
(60, 2, 'Rabu', '08:00:00', '12:00:00', 0, '2025-06-01 01:02:37', '2025-06-12 04:20:43', 4),
(61, 2, 'Rabu', '13:00:00', '16:00:00', 0, '2025-06-01 01:02:37', '2025-06-12 04:20:43', 4),
(62, 2, 'Kamis', '08:00:00', '12:00:00', 1, '2025-06-01 01:02:37', '2025-06-12 04:20:43', 4),
(63, 2, 'Kamis', '13:00:00', '16:00:00', 0, '2025-06-01 01:02:37', '2025-06-12 04:20:43', 4),
(64, 3, 'Kamis', '08:00:00', '12:00:00', 0, '2025-06-01 01:02:37', '2025-06-20 10:21:15', 3),
(65, 3, 'Jumat', '08:00:00', '12:00:00', 0, '2025-06-01 01:02:37', '2025-06-20 10:21:15', 3),
(66, 4, 'Jumat', '08:00:00', '12:00:00', 1, '2025-06-01 01:02:37', '2025-06-01 01:02:37', 3),
(67, 4, 'Jumat', '13:00:00', '16:00:00', 0, '2025-06-01 01:02:37', '2025-06-01 01:02:37', 3),
(68, 4, 'Sabtu', '08:00:00', '12:00:00', 0, '2025-06-01 01:02:37', '2025-06-01 01:02:37', 1),
(69, 4, 'Sabtu', '13:00:00', '16:00:00', 0, '2025-06-01 01:02:37', '2025-06-01 01:02:37', 1),
(70, 5, 'Senin', '08:00:00', '12:00:00', 0, '2025-06-01 01:02:37', '2025-06-02 08:46:14', 2),
(71, 5, 'Selasa', '08:00:00', '12:00:00', 0, '2025-06-01 01:02:37', '2025-06-02 08:46:14', 2),
(72, 5, 'Rabu', '13:00:00', '15:00:00', 0, '2025-06-02 03:52:51', '2025-06-02 08:46:14', 0),
(73, 5, 'Jumat', '06:53:00', '07:53:00', 0, '2025-06-02 03:53:46', '2025-06-02 08:46:14', 0),
(74, 5, 'Senin', '18:19:00', '12:20:00', 0, '2025-06-02 04:20:08', '2025-06-02 08:46:14', 0),
(75, 2, 'Rabu', '07:00:00', '20:48:00', 0, '2025-06-02 06:48:33', '2025-06-12 04:20:43', 0),
(76, 1, 'Selasa', '08:00:00', '12:00:00', 0, '2025-06-02 09:01:57', '2025-06-08 21:28:21', 22),
(77, 1, 'Rabu', '08:00:00', '12:00:00', 0, '2025-06-02 09:01:57', '2025-06-08 21:28:21', 27),
(78, 2, 'Rabu', '08:00:00', '12:00:00', 0, '2025-06-02 09:01:57', '2025-06-12 04:20:43', 25),
(79, 2, 'Rabu', '13:00:00', '16:00:00', 0, '2025-06-02 09:01:57', '2025-06-12 04:20:43', 25),
(80, 2, 'Kamis', '08:00:00', '12:00:00', 0, '2025-06-02 09:01:57', '2025-06-12 04:20:43', 21),
(81, 2, 'Kamis', '13:00:00', '16:00:00', 0, '2025-06-02 09:01:57', '2025-06-12 04:20:43', 21),
(82, 3, 'Kamis', '08:00:00', '12:00:00', 0, '2025-06-02 09:01:57', '2025-06-20 10:21:15', 31),
(83, 3, 'Jumat', '08:00:00', '12:00:00', 0, '2025-06-02 09:01:57', '2025-06-20 10:21:15', 20),
(84, 4, 'Jumat', '08:00:00', '12:00:00', 1, '2025-06-02 09:01:57', '2025-06-02 09:01:57', 13),
(85, 4, 'Jumat', '13:00:00', '16:00:00', 0, '2025-06-02 09:01:57', '2025-06-02 09:01:57', 13),
(86, 4, 'Sabtu', '08:00:00', '12:00:00', 0, '2025-06-02 09:01:57', '2025-06-02 09:01:57', 31),
(87, 4, 'Sabtu', '13:00:00', '16:00:00', 0, '2025-06-02 09:01:57', '2025-06-02 09:01:57', 31),
(88, 5, 'Senin', '08:00:00', '12:00:00', 1, '2025-06-02 09:01:57', '2025-06-02 09:01:57', 9),
(89, 5, 'Selasa', '08:00:00', '12:00:00', 0, '2025-06-02 09:01:57', '2025-06-02 09:01:57', 25),
(90, 1, 'Jumat', '23:58:00', '13:00:00', 0, '2025-06-04 21:58:21', '2025-06-08 21:28:21', 0),
(91, 1, 'Senin', '23:58:00', '03:58:00', 0, '2025-06-04 21:59:03', '2025-06-08 21:28:21', 0),
(92, 1, 'Kamis', '12:10:00', '16:10:00', 0, '2025-06-04 22:10:09', '2025-06-08 21:28:21', 0),
(93, 1, 'Kamis', '00:21:00', '15:24:00', 0, '2025-06-04 22:21:27', '2025-06-08 21:28:21', 0),
(94, 1, 'Minggu', '11:04:00', '03:04:00', 0, '2025-06-08 21:04:59', '2025-06-08 21:28:21', 0),
(95, 3, 'Senin', '12:18:00', '12:18:00', 0, '2025-06-20 10:20:29', '2025-06-20 10:21:15', 7),
(96, 3, 'Minggu', '12:20:00', '02:20:00', 1, '2025-06-20 10:20:51', '2025-06-20 10:21:15', 7);

-- --------------------------------------------------------

--
-- Table structure for table `janji_periksas`
--

CREATE TABLE `janji_periksas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pasien` bigint(20) UNSIGNED NOT NULL,
  `id_jadwal_periksa` bigint(20) UNSIGNED NOT NULL,
  `keluhan` text NOT NULL,
  `no_antrian` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `janji_periksas`
--

INSERT INTO `janji_periksas` (`id`, `id_pasien`, `id_jadwal_periksa`, `keluhan`, `no_antrian`, `created_at`, `updated_at`) VALUES
(2, 9, 7, 'pusing', '1', '2025-05-31 22:28:34', '2025-05-31 22:28:34'),
(5, 9, 57, 'telinga sakit', '1', '2025-05-31 23:12:14', '2025-05-31 23:12:14'),
(6, 10, 51, 'pusing', '1', '2025-05-31 23:18:17', '2025-05-31 23:18:17'),
(7, 9, 50, 'www', '1', '2025-05-31 23:39:21', '2025-05-31 23:39:21'),
(8, 9, 65, 'wssw', '1', '2025-06-01 01:25:10', '2025-06-01 01:25:10'),
(9, 9, 10, 'q', '1', '2025-06-01 01:40:40', '2025-06-01 01:40:40'),
(10, 9, 70, 'sakith', '1', '2025-06-01 05:19:04', '2025-06-01 05:19:04'),
(11, 9, 58, 'jantung berdatak', '1', '2025-06-01 06:18:11', '2025-06-01 06:18:11'),
(12, 9, 61, 'pusing', '1', '2025-06-01 08:49:27', '2025-06-01 08:49:27'),
(13, 9, 61, 'wwww', '2', '2025-06-01 08:55:14', '2025-06-01 08:55:14'),
(14, 9, 47, 'mriang', '1', '2025-06-01 09:00:26', '2025-06-01 09:00:26'),
(15, 9, 61, 'mrinag', '3', '2025-06-01 09:02:01', '2025-06-01 09:02:01'),
(16, 11, 64, 'mriang', '1', '2025-06-01 09:28:09', '2025-06-01 09:28:09'),
(17, 11, 59, 'mriang', '1', '2025-06-01 09:31:10', '2025-06-01 09:31:10'),
(18, 9, 59, 'mriang', '2', '2025-06-01 21:51:51', '2025-06-01 21:51:51'),
(19, 13, 73, 'mriang', '1', '2025-06-02 03:55:44', '2025-06-02 03:55:44'),
(20, 13, 5, 'eded', '1', '2025-06-02 04:03:08', '2025-06-02 04:03:08'),
(21, 13, 61, 'huh', '4', '2025-06-02 05:49:55', '2025-06-02 05:49:55'),
(22, 14, 58, 'denje', '2', '2025-06-02 07:11:41', '2025-06-02 07:11:41'),
(23, 14, 61, 'deded', '5', '2025-06-02 07:13:07', '2025-06-02 07:13:07'),
(24, 9, 58, 'dd', '3', '2025-06-02 07:13:46', '2025-06-02 07:13:46'),
(25, 15, 58, 'ee', '4', '2025-06-02 07:24:47', '2025-06-02 07:24:47'),
(26, 15, 58, 'e', '5', '2025-06-02 07:38:32', '2025-06-02 07:38:32'),
(27, 15, 58, '33', '6', '2025-06-02 08:00:52', '2025-06-02 08:00:52'),
(28, 15, 13, 'jj', '1', '2025-06-02 08:46:31', '2025-06-02 08:46:31'),
(29, 15, 78, 'n', '1', '2025-06-02 09:04:33', '2025-06-02 09:04:33'),
(30, 15, 9, 'h', '1', '2025-06-02 09:05:28', '2025-06-02 09:05:28'),
(31, 15, 9, 'wwwwwwwww', '2', '2025-06-02 09:24:06', '2025-06-02 09:24:06'),
(32, 16, 94, 'ndedejd', '1', '2025-06-08 21:08:01', '2025-06-08 21:08:01'),
(33, 16, 58, 'e', '7', '2025-06-08 21:35:16', '2025-06-08 21:35:16'),
(34, 17, 58, '3e', '8', '2025-06-08 21:59:03', '2025-06-08 21:59:03'),
(35, 15, 58, '3333', '9', '2025-06-08 22:53:30', '2025-06-08 22:53:30'),
(36, 15, 61, 'Pusing', '6', '2025-06-12 04:14:44', '2025-06-12 04:14:44'),
(37, 15, 62, 'halodek', '1', '2025-06-12 04:21:07', '2025-06-12 04:21:07'),
(38, 15, 62, 'Panas', '2', '2025-06-12 05:07:39', '2025-06-12 05:07:39'),
(39, 18, 7, 'nn', '2', '2025-06-20 09:18:17', '2025-06-20 09:18:17'),
(40, 19, 7, 'j', '3', '2025-06-20 09:21:46', '2025-06-20 09:21:46'),
(41, 20, 7, 'ded', '4', '2025-06-20 09:31:32', '2025-06-20 09:31:32'),
(42, 20, 7, 'cd', '5', '2025-06-20 09:39:18', '2025-06-20 09:39:18'),
(43, 21, 7, 'n', '6', '2025-06-20 09:46:27', '2025-06-20 09:46:27'),
(44, 21, 96, 'jjnnj', '1', '2025-06-20 10:21:30', '2025-06-20 10:21:30');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_26_040957_create_obats_table', 1),
(5, '2025_05_26_041000_create_jadwal_periksas_table', 1),
(6, '2025_05_26_041003_create_janji_periksas_table', 1),
(7, '2025_05_26_041006_create_periksas_table', 1),
(8, '2025_05_26_041009_create_detail_periksas_table', 1),
(11, '2025_06_01_050325_create_polis_table', 2),
(12, '2025_06_01_053755_add_no_rekam_medis_to_users_table', 3),
(13, '2025_06_01_151955_add_diagnosa_tindakan_to_periksas_table', 4),
(14, '2025_06_02_111302_add_id_poli_to_users_table', 5),
(15, '2025_06_01_151657_add_diagnosa_tindakan_to_periksas_table', 6),
(16, '2025_06_02_140407_add_no_rm_to_users_table', 7),
(17, '2025_06_20_154150_add_deleted_at_to_obats_table', 8),
(18, '2025_06_20_171455_drop_old_poli_column_from_users_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `obats`
--

CREATE TABLE `obats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `kemasan` varchar(35) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obats`
--

INSERT INTO `obats` (`id`, `nama_obat`, `kemasan`, `harga`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'oskadon', 'pcs', 5000, '2025-05-30 05:38:34', '2025-06-20 09:02:55', '2025-06-20 09:02:55'),
(2, 'Panadol', 'tablet', 6000, '2025-05-31 20:25:36', '2025-05-31 20:25:36', NULL),
(5, 'Bodrex', 'Tablet', 10000, '2025-06-02 07:19:35', '2025-06-12 04:18:55', NULL),
(6, 'Paracetamol', 'Tablet/ 500 mg', 15000, '2025-06-08 22:52:30', '2025-06-20 08:54:51', NULL),
(7, 'Tolak Angin', 'Cair', 5000, '2025-06-12 04:19:15', '2025-06-12 04:19:15', NULL),
(8, 'Paracetamol', 'Tablet 500mg', 5000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(9, 'Amoxicillin', 'Kapsul 500mg', 12000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(10, 'Cetirizine', 'Tablet 10mg', 8000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(11, 'Omeprazole', 'Kapsul 20mg', 15000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(12, 'Ibuprofen', 'Tablet 400mg', 7000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(13, 'Loratadine', 'Tablet 10mg', 9000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(14, 'Metformin', 'Tablet 500mg', 10000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(15, 'Simvastatin', 'Tablet 20mg', 25000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(16, 'Aspirin', 'Tablet 80mg', 6000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(17, 'Dexamethasone', 'Tablet 0.5mg', 18000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(18, 'Furosemide', 'Tablet 40mg', 11000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(19, 'Metronidazole', 'Tablet 500mg', 13000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(20, 'Ranitidine', 'Tablet 150mg', 14000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(21, 'Salbutamol', 'Inhaler 100mcg', 45000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(22, 'Ciprofloxacin', 'Tablet 500mg', 20000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(23, 'Diazepam', 'Tablet 5mg', 22000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(24, 'Losartan', 'Tablet 50mg', 30000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(25, 'Amlodipine', 'Tablet 5mg', 17000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(26, 'Vitamin C', 'Tablet 500mg', 5000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL),
(27, 'Vitamin B Complex', 'Kapsul', 12000, '2025-06-20 07:53:04', '2025-06-20 07:53:04', NULL);

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
-- Table structure for table `periksas`
--

CREATE TABLE `periksas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_janji_periksa` bigint(20) UNSIGNED NOT NULL,
  `tgl_periksa` datetime NOT NULL,
  `catatan` text NOT NULL,
  `biaya_periksa` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `diagnosa` text DEFAULT NULL,
  `tindakan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `periksas`
--

INSERT INTO `periksas` (`id`, `id_janji_periksa`, `tgl_periksa`, `catatan`, `biaya_periksa`, `created_at`, `updated_at`, `diagnosa`, `tindakan`) VALUES
(1, 11, '2025-06-01 15:35:59', 'mantap', 20000, '2025-06-01 08:35:59', '2025-06-01 08:35:59', 'jantung', 'suntik mati'),
(2, 10, '2025-06-01 15:41:24', 'mantap', 20000, '2025-06-01 08:41:24', '2025-06-01 08:41:24', 'jantung', 'suntik mati'),
(3, 12, '2025-06-01 15:51:02', 'ael', 50000, '2025-06-01 08:51:02', '2025-06-01 08:51:02', 'jantung', 'mendem'),
(4, 13, '2025-06-01 15:56:52', 'sehat', 50000, '2025-06-01 08:56:52', '2025-06-01 08:56:52', 'jantung', 'suntik mati'),
(5, 15, '2025-06-01 16:02:35', 'minyak kayu putih', 100000, '2025-06-01 09:02:35', '2025-06-01 09:02:35', 'jantung', 'kerokan'),
(6, 15, '2025-06-01 16:03:03', 'minyak kayu putih', 100000, '2025-06-01 09:03:03', '2025-06-01 09:03:03', 'jantung', 'kerokan'),
(7, 2, '2025-06-01 16:28:51', 'panadol', 100000, '2025-06-01 09:28:51', '2025-06-01 09:28:51', 'jantung', 'suntik mati'),
(8, 2, '2025-06-01 16:29:24', 'kiji', 50000, '2025-06-01 09:29:24', '2025-06-01 09:29:24', 'jantung', 'suntik mati'),
(9, 17, '2025-06-01 16:32:50', 'rmrk', 150000, '2025-06-01 09:32:50', '2025-06-01 09:32:50', 'jantung', 'suntik mati'),
(10, 19, '2025-06-02 10:56:27', 'mantap', 50000, '2025-06-02 03:56:27', '2025-06-02 03:56:27', 'jantung', 'suntik mati'),
(11, 20, '2025-06-02 11:37:49', 'dwwd5', 5000, '2025-06-02 04:37:49', '2025-06-02 04:37:49', 'jantung', 'suntik mati'),
(12, 21, '2025-06-02 12:51:07', '3ee', 50000, '2025-06-02 05:51:07', '2025-06-02 05:51:07', 'jantung', 'suntik mati'),
(13, 22, '2025-06-02 14:12:36', 'cec', 50000, '2025-06-02 07:12:36', '2025-06-02 07:12:36', '3e3', '3e3e3e'),
(14, 18, '2025-06-02 14:22:31', 'ej', 1656000, '2025-06-02 07:22:31', '2025-06-02 07:22:31', 'jantung', 'suntik mati'),
(15, 25, '2025-06-02 14:25:16', 'e3e3e', 1656000, '2025-06-02 07:25:16', '2025-06-02 07:25:16', 'jantung', 'suntik mati'),
(16, 26, '2025-06-02 14:41:52', 'ww', 1650000, '2025-06-02 07:41:52', '2025-06-02 07:41:52', 'jantung', 'suntik mati'),
(17, 27, '2025-06-02 15:01:30', '2', 1661000, '2025-06-02 08:01:30', '2025-06-02 08:01:30', '2', 'suntik mati'),
(18, 19, '2025-06-02 15:45:03', 'hh', 156000, '2025-06-02 08:45:03', '2025-06-02 08:45:03', 'jantung', 'suntik mati'),
(19, 28, '2025-06-02 15:47:06', 'edde', 1650000, '2025-06-02 08:47:06', '2025-06-02 08:47:06', 'ebhdbehd', 'suntik mati'),
(20, 30, '2025-06-02 16:06:27', 'we', 1656000, '2025-06-02 09:06:27', '2025-06-02 09:06:27', 'ewewe', 'wew'),
(21, 32, '2025-06-09 04:11:41', 'eeee', 1656000, '2025-06-08 21:11:41', '2025-06-08 21:11:41', 'ewe22', 'suntik mati'),
(22, 34, '2025-06-09 05:09:41', 'eded', 1656000, '2025-06-08 22:09:41', '2025-06-08 22:09:41', 'd', 'ed'),
(23, 33, '2025-06-09 05:29:14', 'ss', 1650000, '2025-06-08 22:29:14', '2025-06-08 22:29:14', 'jantung', 'suntik mati'),
(24, 29, '2025-06-09 05:39:12', 'ede', 1655000, '2025-06-08 22:39:12', '2025-06-08 22:39:12', 'eded', 'suntik mati'),
(25, 23, '2025-06-09 05:43:54', 'sw', 1661000, '2025-06-08 22:43:54', '2025-06-08 22:43:54', 'jantung', 'suntik mati'),
(26, 35, '2025-06-09 05:54:26', 'dede', 1665000, '2025-06-08 22:54:26', '2025-06-08 22:54:26', 'pusing', 'kerokan'),
(27, 36, '2025-06-12 11:16:54', 'semoga cepat sembuh', 171000, '2025-06-12 04:16:54', '2025-06-12 04:16:54', 'Sakit Kepala', 'Istirahat yang cukup'),
(28, 38, '2025-06-12 12:09:05', 'Istirahat yang cukup', 175000, '2025-06-12 05:09:05', '2025-06-12 05:09:05', 'Sakit Kepala', 'Istirahat yang cukup'),
(29, 24, '2025-06-20 14:47:55', 'dw', 181000, '2025-06-20 07:47:55', '2025-06-20 07:47:55', 'dwd', 'wd'),
(30, 39, '2025-06-20 16:19:00', 'n n', 202000, '2025-06-20 09:19:00', '2025-06-20 09:19:00', 'jantung', 'suntik mati'),
(31, 40, '2025-06-20 16:22:30', 'hh', 165000, '2025-06-20 09:22:30', '2025-06-20 09:22:30', 'b', 'b'),
(32, 41, '2025-06-20 16:32:07', 'e', 171000, '2025-06-20 09:32:07', '2025-06-20 09:32:07', 'e', 'e'),
(33, 43, '2025-06-20 16:47:30', 'n', 165000, '2025-06-20 09:47:30', '2025-06-20 09:47:30', 'jantung', 'suntik mati'),
(34, 44, '2025-06-20 17:21:53', 'bbjb', 155000, '2025-06-20 10:21:53', '2025-06-20 10:21:53', 'jantung', 'suntik mati');

-- --------------------------------------------------------

--
-- Table structure for table `polis`
--

CREATE TABLE `polis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_poli` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polis`
--

INSERT INTO `polis` (`id`, `nama_poli`, `created_at`, `updated_at`) VALUES
(1, 'Poli Anak', '2025-05-31 22:43:22', '2025-05-31 22:43:22'),
(2, 'Poli Umum', '2025-05-31 22:43:22', '2025-05-31 22:43:22'),
(3, 'Poli Gigi', '2025-05-31 22:43:22', '2025-05-31 22:43:22'),
(4, 'Poli Penyakit Dalam', '2025-05-31 22:43:22', '2025-05-31 22:43:22'),
(5, 'Poli Anak', '2025-06-01 01:28:59', '2025-06-01 01:28:59'),
(6, 'Poli Umum', '2025-06-01 01:28:59', '2025-06-01 01:28:59'),
(7, 'Poli Kebidanan dan Kandungan', '2025-06-01 01:28:59', '2025-06-01 01:28:59'),
(8, 'Poli Penyakit Dalam', '2025-06-01 01:28:59', '2025-06-01 01:28:59'),
(9, 'Poli Anak', '2025-06-01 01:31:44', '2025-06-01 01:31:44'),
(10, 'Poli Umum', '2025-06-01 01:31:45', '2025-06-01 01:31:45'),
(11, 'Poli Kebidanan dan Kandungan', '2025-06-01 01:31:45', '2025-06-01 01:31:45'),
(12, 'Poli Penyakit Dalam', '2025-06-01 01:31:45', '2025-06-01 01:31:45'),
(13, 'Poli Mata', '2025-06-01 01:31:45', '2025-06-01 01:31:45'),
(14, 'Poli THT', '2025-06-01 01:31:45', '2025-06-01 01:31:45'),
(15, 'Poli Anak', '2025-06-02 04:50:53', '2025-06-02 04:50:53'),
(16, 'Poli Umum', '2025-06-02 04:50:53', '2025-06-02 04:50:53'),
(17, 'Poli Kebidanan dan Kandungan', '2025-06-02 04:50:53', '2025-06-02 04:50:53'),
(18, 'Poli Penyakit Dalam', '2025-06-02 04:50:53', '2025-06-02 04:50:53'),
(19, 'Poli Mata', '2025-06-02 04:50:53', '2025-06-02 04:50:53'),
(20, 'Poli THT', '2025-06-02 04:50:53', '2025-06-02 04:50:53'),
(21, 'Poli Anak', '2025-06-02 04:51:16', '2025-06-02 04:51:16'),
(22, 'Poli Umum', '2025-06-02 04:51:16', '2025-06-02 04:51:16'),
(23, 'Poli Kebidanan dan Kandungan', '2025-06-02 04:51:16', '2025-06-02 04:51:16'),
(24, 'Poli Penyakit Dalam', '2025-06-02 04:51:16', '2025-06-02 04:51:16'),
(25, 'Poli Mata', '2025-06-02 04:51:16', '2025-06-02 04:51:16'),
(26, 'Poli THT', '2025-06-02 04:51:16', '2025-06-02 04:51:16'),
(27, 'Poli Penyakit Dalam', NULL, NULL),
(28, 'Poli Anak', NULL, NULL),
(29, 'Poli Kebidanan dan Kandungan', NULL, NULL),
(30, 'Poli Mata', NULL, NULL),
(31, 'Poli THT', NULL, NULL),
(32, 'Poli Anak', '2025-06-02 09:01:57', '2025-06-02 09:01:57'),
(33, 'Poli Umum', '2025-06-02 09:01:57', '2025-06-02 09:01:57'),
(34, 'Poli Kebidanan dan Kandungan', '2025-06-02 09:01:57', '2025-06-02 09:01:57'),
(35, 'Poli Penyakit Dalam', '2025-06-02 09:01:57', '2025-06-02 09:01:57'),
(36, 'Poli Mata', '2025-06-02 09:01:57', '2025-06-02 09:01:57'),
(37, 'Poli THT', '2025-06-02 09:01:57', '2025-06-02 09:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0ZiLXlF5vVQW0KzbYkXy4k9hziOla1CZm2BkXvRC', 21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibHRzWHdRbzRkZEZYc0FQbEpwSWIycjE0bzVQMmxZc2VUdkozMWtzYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYXNpZW4vcml3YXlhdC1wZXJpa3NhIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjE7fQ==', 1750440216),
('VssoVZbUNlzsSrSRvW1x7AVPUQDn7M3cYLnrLxkJ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSnJuTjZSUGRpTmprRUpCdlVTUUp6eE15eFpYS1F5N1c1OFpwQTNldSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kb2t0ZXIvZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1750440232);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_rekam_medis` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('pasien','dokter') NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_ktp` varchar(255) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `no_rm` varchar(25) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_poli` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `no_rekam_medis`, `password`, `role`, `alamat`, `no_ktp`, `no_hp`, `no_rm`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `id_poli`) VALUES
(1, 'Dr. Budi Santoso, Sp.PD', 'budi.santoso@klinik.com', NULL, '$2y$12$mJleVjDSefL2aG.uPHuirOjbAir8kf0eShgvkeUBxK0ce/KvP2Zii', 'dokter', 'Jl. Pahlawan No. 123, Jakarta Selatan', '3175062505800001', '081234567890', NULL, NULL, NULL, '2025-05-25 21:54:46', '2025-06-08 21:18:09', 4),
(2, 'Dr. Siti Rahayu, Sp.A', 'siti.rahayu@klinik.com', NULL, '$2y$12$2nqRP8v1T/ER.KKAt7TqD.jVwgRmTT.XKUZnlql9O7BNqBCrkxSH2', 'dokter', 'Jl. Anggrek No. 45, Jakarta Pusat', '3175064610790002', '081234567891', NULL, NULL, NULL, '2025-05-25 21:54:46', '2025-06-02 06:39:56', 1),
(3, 'Dr. Ahmad Wijaya, Sp.OG', 'ahmad.wijaya@klinik.com', NULL, '$2y$12$Vrc.ALJYhYxiu7L63zu9WuF8WKTzlxGTZkKhyEF5cmpxXBJXMGSiG', 'dokter', 'Jl. Melati No. 78, Jakarta Barat', '3175061505780003', '081234567892', NULL, NULL, NULL, '2025-05-25 21:54:46', '2025-05-25 21:54:46', 7),
(4, 'Dr. Rina Putri, Sp.M', 'rina.putri@klinik.com', NULL, '$2y$12$6RjM6X4SBj9Yvv0y/KzIdOiBMQR4QcijYpr4kWdfx.WDe9203eTV6', 'dokter', 'Jl. Dahlia No. 32, Jakarta Timur', '3175062708850004', '081234567893', NULL, NULL, NULL, '2025-05-25 21:54:46', '2025-05-25 21:54:46', 13),
(5, 'Dr. Doni Pratama, Sp.THT', 'doni.pratama@klinik.com', NULL, '$2y$12$DPkUnuh7MM655YGJpNfn/e2HHFDl6ZKO9E4X2Uuf/syo2fhZUl/Rq', 'dokter', 'Jl. Kenanga No. 56, Jakarta Utara', '3175061002820005', '081234567894', NULL, NULL, NULL, '2025-05-25 21:54:46', '2025-05-25 21:54:46', 14),
(7, 'Andi Saputra', 'andi.pasien@klinik.com', NULL, '$2y$12$QSfGo2ZdcCUiG/lCgc1dFeLuIHUtF.FqF.uYiGdC3iZSM/iEAy0yK', 'pasien', 'Jl. Merdeka No. 1, Jakarta', '3175062501990006', '081234567895', NULL, NULL, NULL, '2025-05-30 07:36:55', '2025-05-30 07:36:55', NULL),
(8, 'Siti Aminah', 'siti.pasien@klinik.com', NULL, '$2y$12$9E08qWwCPJr54NK6G1Fo5eJx7hKIas858hOQXDO8K9tgaHMvJlnSu', 'pasien', 'Jl. Kemerdekaan No. 77, Jakarta', '3175060412800007', '081234567896', NULL, NULL, NULL, '2025-05-30 07:36:55', '2025-05-30 07:36:55', NULL),
(9, 'tegar ibra', 'fosdhan@gmail.com', NULL, '$2y$12$EpG/zz/8gRo2MeRGBiZtguye3i0cti4o3rlZ5S2zPTbNB1T0Ay7LS', 'pasien', 'semarang', '3223232323232211', '085388188281', '202506-001', NULL, NULL, '2025-05-31 21:58:23', '2025-05-31 21:58:23', NULL),
(10, 'tegaribrahim', 'user@gmail.com', NULL, '$2y$12$013D.lXvx4t/MDb7PuCYreeAcv26SPHrwnEnxcXUtD7.ZEo2Kk50i', 'pasien', 'semarang', '2323723273293923', '237293729372', '202506-002', NULL, NULL, '2025-05-31 23:18:04', '2025-05-31 23:18:04', NULL),
(11, 'mastegar', '1user@gmail.com', NULL, '$2y$12$VrbOT0GJB4uw/zbSJI3uD.tFvfoRVJv5QKiBPjvNuJLgRVAF./qpq', 'pasien', 'semarang', '2038238208382803', '238023820380', '202506-003', NULL, NULL, '2025-06-01 09:23:31', '2025-06-01 09:23:31', NULL),
(12, 'Tegar', 'tegar@email.com', NULL, '$2y$12$ZrYJGiSoRNPHdYXy9FWSeOHoSWf2UXHn.RnDDsjiqE5dtrq7AVSL.', 'pasien', 'semarang', '3321212121212121', '085910121828', '202506-004', NULL, NULL, '2025-06-01 20:41:29', '2025-06-01 20:41:29', NULL),
(13, 'dimas', 'pasien@gmail.com', NULL, '$2y$12$zOY6enETL8d2fM2P54xzGuDODfXIFWsPOaCe4IbweXynKHDEUwTgq', 'pasien', 'semarang', '3838388383838383', '938388383838', '202506-005', NULL, NULL, '2025-06-01 20:43:05', '2025-06-02 06:39:09', NULL),
(14, 'cipto', 'beb@gmail.com', '202506-001', '$2y$12$EyyFYhBxVoJThLYphxdIG.1Xe/EVY4IIrOqRonqTUzN5Kl4XJ2CtG', 'pasien', 'PUNDENARUM', '9392838283829389', '398293828939', NULL, NULL, NULL, '2025-06-02 07:11:31', '2025-06-02 07:11:31', NULL),
(15, 'eteyayun', 'yayun@gmail.com', '202506-002', '$2y$12$wGAM4yxUg9soiZqlY53Plufz5thLfFsMBbHGlxu7f0J7E/cC1AKDi', 'pasien', 'PUNDENARUM', '3232323232323232', '323232323232', NULL, NULL, NULL, '2025-06-02 07:24:32', '2025-06-02 07:25:56', NULL),
(16, 'mastegark', 'mastegar@gmail.com', '202506-003', '$2y$12$hJjuBrJraWSb/zHkkD80.ebqJNi9riNYaOedW7Ma4IYEVbhP4PsnW', 'pasien', 'eeineid', '3223232938929839', '083737273723', NULL, NULL, NULL, '2025-06-08 21:07:30', '2025-06-08 21:07:30', NULL),
(17, 'anjay', 'anjay@gmail.com', '202506-004', '$2y$12$sjKJx4b.2mwmX86PxtYK1O1.QmCpsPex.GaTWnZTn9a7kUkiBNSji', 'pasien', 'semarangc', '3434343434343434', '398439483984', NULL, NULL, NULL, '2025-06-08 21:58:54', '2025-06-08 21:58:54', NULL),
(18, 'tegarib', '1fosdhan@gmail.com', '202506-005', '$2y$12$hQ/DzYvOQhR7cLoUfXV9GOjB86Z.szWy2qPKkzVRlGdkqXWmGVd5u', 'pasien', 'sms', '3232323232323233', '232323232323', NULL, NULL, NULL, '2025-06-20 09:05:43', '2025-06-20 09:05:43', NULL),
(19, 'MAULANA TEGAR IBRAHIM', '1pasien@gmail.com', '202506-006', '$2y$12$q8z2GtU1fB..Ewx.z99e6eh94PyAhE7/fYhVT7SIhdO8o7CnA/TeW', 'pasien', 'PUNDENARUM', '1289128128182912', '019298128918', NULL, NULL, NULL, '2025-06-20 09:20:34', '2025-06-20 09:20:34', NULL),
(20, 'MAULANA TEGAR IBRAHIM', '1beb@gmail.com', '202506-007', '$2y$12$E9LogGiynDUL2mGoorQgg.U0hkdbkuNfTqnST90GBu6RiUkaykh1G', 'pasien', 'PUNDENARUM', '2332198219891389', '085232323232', NULL, NULL, NULL, '2025-06-20 09:30:54', '2025-06-20 09:30:54', NULL),
(21, 'mas', 'pamungkasery07@gmail.com', '202506-008', '$2y$12$O68AyUVUTGIX4PQXGOnuFecsvsq6TXZcFlatjW7.GJUrRYNCoTKCS', 'pasien', 'PUNDENARUM', '1212121212122121', '212121212121', NULL, NULL, NULL, '2025-06-20 09:43:51', '2025-06-20 09:43:51', NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `detail_periksas`
--
ALTER TABLE `detail_periksas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_periksas_id_periksa_foreign` (`id_periksa`),
  ADD KEY `detail_periksas_id_obat_foreign` (`id_obat`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jadwal_periksas`
--
ALTER TABLE `jadwal_periksas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_periksas_id_dokter_foreign` (`id_dokter`);

--
-- Indexes for table `janji_periksas`
--
ALTER TABLE `janji_periksas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `janji_periksas_id_pasien_foreign` (`id_pasien`),
  ADD KEY `janji_periksas_id_jadwal_periksa_foreign` (`id_jadwal_periksa`);

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
-- Indexes for table `obats`
--
ALTER TABLE `obats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `periksas`
--
ALTER TABLE `periksas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `periksas_id_janji_periksa_foreign` (`id_janji_periksa`);

--
-- Indexes for table `polis`
--
ALTER TABLE `polis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_poli_foreign` (`id_poli`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_periksas`
--
ALTER TABLE `detail_periksas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwal_periksas`
--
ALTER TABLE `jadwal_periksas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `janji_periksas`
--
ALTER TABLE `janji_periksas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `obats`
--
ALTER TABLE `obats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `periksas`
--
ALTER TABLE `periksas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `polis`
--
ALTER TABLE `polis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_periksas`
--
ALTER TABLE `detail_periksas`
  ADD CONSTRAINT `detail_periksas_id_obat_foreign` FOREIGN KEY (`id_obat`) REFERENCES `obats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_periksas_id_periksa_foreign` FOREIGN KEY (`id_periksa`) REFERENCES `periksas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jadwal_periksas`
--
ALTER TABLE `jadwal_periksas`
  ADD CONSTRAINT `jadwal_periksas_id_dokter_foreign` FOREIGN KEY (`id_dokter`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `janji_periksas`
--
ALTER TABLE `janji_periksas`
  ADD CONSTRAINT `janji_periksas_id_jadwal_periksa_foreign` FOREIGN KEY (`id_jadwal_periksa`) REFERENCES `jadwal_periksas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `janji_periksas_id_pasien_foreign` FOREIGN KEY (`id_pasien`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `periksas`
--
ALTER TABLE `periksas`
  ADD CONSTRAINT `periksas_id_janji_periksa_foreign` FOREIGN KEY (`id_janji_periksa`) REFERENCES `janji_periksas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_poli_foreign` FOREIGN KEY (`id_poli`) REFERENCES `polis` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
