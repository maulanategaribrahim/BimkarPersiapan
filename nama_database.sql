-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2025 at 08:11 PM
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
-- Database: `nama_database`
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
(1, 1, 4, '2025-06-20 11:04:07', '2025-06-20 11:04:07');

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
  `id_poli` bigint(20) UNSIGNED NOT NULL,
  `id_dokter` bigint(20) UNSIGNED NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu','Minggu') NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwal_periksas`
--

INSERT INTO `jadwal_periksas` (`id`, `id_poli`, `id_dokter`, `hari`, `jam_mulai`, `jam_selesai`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Selasa', '08:00:00', '12:00:00', 0, '2025-06-20 10:49:10', '2025-06-20 11:03:32'),
(2, 2, 1, 'Rabu', '08:00:00', '12:00:00', 0, '2025-06-20 10:49:10', '2025-06-20 11:03:32'),
(3, 4, 2, 'Rabu', '08:00:00', '12:00:00', 1, '2025-06-20 10:49:10', '2025-06-20 10:49:10'),
(4, 4, 2, 'Rabu', '13:00:00', '16:00:00', 0, '2025-06-20 10:49:10', '2025-06-20 10:49:10'),
(5, 5, 2, 'Kamis', '08:00:00', '12:00:00', 0, '2025-06-20 10:49:10', '2025-06-20 10:49:10'),
(6, 5, 2, 'Kamis', '13:00:00', '16:00:00', 0, '2025-06-20 10:49:10', '2025-06-20 10:49:10'),
(7, 5, 3, 'Kamis', '08:00:00', '12:00:00', 1, '2025-06-20 10:49:10', '2025-06-20 10:49:10'),
(8, 6, 3, 'Jumat', '08:00:00', '12:00:00', 0, '2025-06-20 10:49:10', '2025-06-20 10:49:10'),
(9, 6, 4, 'Jumat', '08:00:00', '12:00:00', 1, '2025-06-20 10:49:10', '2025-06-20 10:49:10'),
(10, 6, 4, 'Jumat', '13:00:00', '16:00:00', 0, '2025-06-20 10:49:10', '2025-06-20 10:49:10'),
(11, 3, 4, 'Sabtu', '08:00:00', '12:00:00', 0, '2025-06-20 10:49:10', '2025-06-20 10:49:10'),
(12, 3, 4, 'Sabtu', '13:00:00', '16:00:00', 0, '2025-06-20 10:49:10', '2025-06-20 10:49:10'),
(13, 2, 5, 'Senin', '08:00:00', '12:00:00', 1, '2025-06-20 10:49:10', '2025-06-20 10:49:10'),
(14, 3, 5, 'Selasa', '08:00:00', '12:00:00', 0, '2025-06-20 10:49:10', '2025-06-20 10:49:10'),
(15, 3, 1, 'Selasa', '08:00:00', '12:00:00', 0, '2025-06-20 10:51:19', '2025-06-20 11:03:32'),
(16, 2, 1, 'Rabu', '08:00:00', '12:00:00', 0, '2025-06-20 10:51:19', '2025-06-20 11:03:32'),
(17, 8, 2, 'Rabu', '08:00:00', '12:00:00', 1, '2025-06-20 10:51:19', '2025-06-20 10:51:19'),
(18, 8, 2, 'Rabu', '13:00:00', '16:00:00', 0, '2025-06-20 10:51:19', '2025-06-20 10:51:19'),
(19, 8, 2, 'Kamis', '08:00:00', '12:00:00', 0, '2025-06-20 10:51:19', '2025-06-20 10:51:19'),
(20, 8, 2, 'Kamis', '13:00:00', '16:00:00', 0, '2025-06-20 10:51:19', '2025-06-20 10:51:19'),
(21, 6, 3, 'Kamis', '08:00:00', '12:00:00', 1, '2025-06-20 10:51:19', '2025-06-20 10:51:19'),
(22, 8, 3, 'Jumat', '08:00:00', '12:00:00', 0, '2025-06-20 10:51:19', '2025-06-20 10:51:19'),
(23, 7, 4, 'Jumat', '08:00:00', '12:00:00', 1, '2025-06-20 10:51:19', '2025-06-20 10:51:19'),
(24, 7, 4, 'Jumat', '13:00:00', '16:00:00', 0, '2025-06-20 10:51:19', '2025-06-20 10:51:19'),
(25, 2, 4, 'Sabtu', '08:00:00', '12:00:00', 0, '2025-06-20 10:51:19', '2025-06-20 10:51:19'),
(26, 2, 4, 'Sabtu', '13:00:00', '16:00:00', 0, '2025-06-20 10:51:19', '2025-06-20 10:51:19'),
(27, 6, 5, 'Senin', '08:00:00', '12:00:00', 1, '2025-06-20 10:51:19', '2025-06-20 10:51:19'),
(28, 1, 5, 'Selasa', '08:00:00', '12:00:00', 0, '2025-06-20 10:51:19', '2025-06-20 10:51:19'),
(29, 10, 1, 'Selasa', '08:00:00', '12:00:00', 0, '2025-06-20 10:55:08', '2025-06-20 11:03:32'),
(30, 18, 1, 'Rabu', '08:00:00', '12:00:00', 0, '2025-06-20 10:55:08', '2025-06-20 11:03:32'),
(31, 13, 2, 'Rabu', '08:00:00', '12:00:00', 1, '2025-06-20 10:55:08', '2025-06-20 10:55:08'),
(32, 13, 2, 'Rabu', '13:00:00', '16:00:00', 0, '2025-06-20 10:55:08', '2025-06-20 10:55:08'),
(33, 13, 2, 'Kamis', '08:00:00', '12:00:00', 0, '2025-06-20 10:55:08', '2025-06-20 10:55:08'),
(34, 13, 2, 'Kamis', '13:00:00', '16:00:00', 0, '2025-06-20 10:55:08', '2025-06-20 10:55:08'),
(35, 1, 3, 'Kamis', '08:00:00', '12:00:00', 1, '2025-06-20 10:55:08', '2025-06-20 10:55:08'),
(36, 4, 3, 'Jumat', '08:00:00', '12:00:00', 0, '2025-06-20 10:55:08', '2025-06-20 10:55:08'),
(37, 4, 4, 'Jumat', '08:00:00', '12:00:00', 1, '2025-06-20 10:55:08', '2025-06-20 10:55:08'),
(38, 4, 4, 'Jumat', '13:00:00', '16:00:00', 0, '2025-06-20 10:55:08', '2025-06-20 10:55:08'),
(39, 16, 4, 'Sabtu', '08:00:00', '12:00:00', 0, '2025-06-20 10:55:08', '2025-06-20 10:55:08'),
(40, 16, 4, 'Sabtu', '13:00:00', '16:00:00', 0, '2025-06-20 10:55:08', '2025-06-20 10:55:08'),
(41, 4, 5, 'Senin', '08:00:00', '12:00:00', 1, '2025-06-20 10:55:08', '2025-06-20 10:55:08'),
(42, 4, 5, 'Selasa', '08:00:00', '12:00:00', 0, '2025-06-20 10:55:08', '2025-06-20 10:55:08'),
(43, 10, 1, 'Selasa', '08:00:00', '12:00:00', 0, '2025-06-20 10:57:32', '2025-06-20 11:03:32'),
(44, 8, 1, 'Rabu', '08:00:00', '12:00:00', 1, '2025-06-20 10:57:32', '2025-06-20 11:03:32'),
(45, 22, 2, 'Rabu', '08:00:00', '12:00:00', 1, '2025-06-20 10:57:32', '2025-06-20 10:57:32'),
(46, 22, 2, 'Rabu', '13:00:00', '16:00:00', 0, '2025-06-20 10:57:32', '2025-06-20 10:57:32'),
(47, 1, 2, 'Kamis', '08:00:00', '12:00:00', 0, '2025-06-20 10:57:32', '2025-06-20 10:57:32'),
(48, 1, 2, 'Kamis', '13:00:00', '16:00:00', 0, '2025-06-20 10:57:32', '2025-06-20 10:57:32'),
(49, 8, 3, 'Kamis', '08:00:00', '12:00:00', 1, '2025-06-20 10:57:32', '2025-06-20 10:57:32'),
(50, 17, 3, 'Jumat', '08:00:00', '12:00:00', 0, '2025-06-20 10:57:32', '2025-06-20 10:57:32'),
(51, 9, 4, 'Jumat', '08:00:00', '12:00:00', 1, '2025-06-20 10:57:32', '2025-06-20 10:57:32'),
(52, 9, 4, 'Jumat', '13:00:00', '16:00:00', 0, '2025-06-20 10:57:32', '2025-06-20 10:57:32'),
(53, 17, 4, 'Sabtu', '08:00:00', '12:00:00', 0, '2025-06-20 10:57:32', '2025-06-20 10:57:32'),
(54, 17, 4, 'Sabtu', '13:00:00', '16:00:00', 0, '2025-06-20 10:57:32', '2025-06-20 10:57:32'),
(55, 9, 5, 'Senin', '08:00:00', '12:00:00', 1, '2025-06-20 10:57:32', '2025-06-20 10:57:32'),
(56, 7, 5, 'Selasa', '08:00:00', '12:00:00', 0, '2025-06-20 10:57:32', '2025-06-20 10:57:32'),
(57, 2, 7, 'Senin', '13:10:00', '04:10:00', 1, '2025-06-20 11:10:48', '2025-06-20 11:10:52');

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
(1, 6, 44, 'pusink', '1', '2025-06-20 11:03:48', '2025-06-20 11:03:48'),
(2, 6, 57, 'd3', '1', '2025-06-20 11:11:04', '2025-06-20 11:11:04');

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
(4, '2025_05_26_040500_create_polis_table', 1),
(5, '2025_05_26_040957_create_obats_table', 1),
(6, '2025_05_26_041000_create_jadwal_periksas_table', 1),
(7, '2025_05_26_041003_create_janji_periksas_table', 1),
(8, '2025_05_26_041006_create_periksas_table', 1),
(9, '2025_05_26_041009_create_detail_periksas_table', 1),
(10, '2025_06_01_053755_add_no_rekam_medis_to_users_table', 1),
(11, '2025_06_01_151657_add_diagnosa_tindakan_to_periksas_table', 1),
(12, '2025_06_01_151955_add_diagnosa_tindakan_to_periksas_table', 1),
(13, '2025_06_02_111302_add_id_poli_to_users_table', 1),
(14, '2025_06_02_140407_add_no_rm_to_users_table', 1),
(15, '2025_06_20_171455_drop_old_poli_column_from_users_table', 1);

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
(1, 'Paracetamol', 'Tablet 500mg', 5000, '2025-06-20 10:57:32', '2025-06-20 10:58:22', NULL),
(2, 'Amoxicillin', 'Kapsul 500mg', 12000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(3, 'Cetirizine', 'Tablet 10mg', 8000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(4, 'Omeprazole', 'Kapsul 20mg', 15000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(5, 'Ibuprofen', 'Tablet 400mg', 7000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(6, 'Loratadine', 'Tablet 10mg', 9000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(7, 'Metformin', 'Tablet 500mg', 10000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(8, 'Simvastatin', 'Tablet 20mg', 25000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(9, 'Aspirin', 'Tablet 80mg', 6000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(10, 'Dexamethasone', 'Tablet 0.5mg', 18000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(11, 'Furosemide', 'Tablet 40mg', 11000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(12, 'Metronidazole', 'Tablet 500mg', 13000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(13, 'Ranitidine', 'Tablet 150mg', 14000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(14, 'Salbutamol', 'Inhaler 100mcg', 45000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(15, 'Ciprofloxacin', 'Tablet 500mg', 20000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(16, 'Diazepam', 'Tablet 5mg', 22000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(17, 'Losartan', 'Tablet 50mg', 30000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(18, 'Amlodipine', 'Tablet 5mg', 17000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(19, 'Vitamin C', 'Tablet 500mg', 5000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL),
(20, 'Vitamin B Complex', 'Kapsul', 12000, '2025-06-20 10:57:32', '2025-06-20 10:57:32', NULL);

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
(1, 1, '2025-06-20 18:04:07', 'wwd', 165000, '2025-06-20 11:04:07', '2025-06-20 11:04:07', 'jantung', 'suntik mati');

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
(1, 'Poli Anak', '2025-06-20 10:49:08', '2025-06-20 10:49:08'),
(2, 'Poli Umum', '2025-06-20 10:49:08', '2025-06-20 10:49:08'),
(3, 'Poli Kebidanan dan Kandungan', '2025-06-20 10:49:08', '2025-06-20 10:49:08'),
(4, 'Poli Penyakit Dalam', '2025-06-20 10:49:08', '2025-06-20 10:49:08'),
(5, 'Poli Mata', '2025-06-20 10:49:08', '2025-06-20 10:49:08'),
(6, 'Poli THT', '2025-06-20 10:49:08', '2025-06-20 10:49:08'),
(7, 'Poli Anak', '2025-06-20 10:51:18', '2025-06-20 10:51:18'),
(8, 'Poli Umum', '2025-06-20 10:51:18', '2025-06-20 10:51:18'),
(9, 'Poli Kebidanan dan Kandungan', '2025-06-20 10:51:18', '2025-06-20 10:51:18'),
(10, 'Poli Penyakit Dalam', '2025-06-20 10:51:18', '2025-06-20 10:51:18'),
(11, 'Poli Mata', '2025-06-20 10:51:18', '2025-06-20 10:51:18'),
(12, 'Poli THT', '2025-06-20 10:51:18', '2025-06-20 10:51:18'),
(13, 'Poli Anak', '2025-06-20 10:55:06', '2025-06-20 10:55:06'),
(14, 'Poli Umum', '2025-06-20 10:55:06', '2025-06-20 10:55:06'),
(15, 'Poli Kebidanan dan Kandungan', '2025-06-20 10:55:06', '2025-06-20 10:55:06'),
(16, 'Poli Penyakit Dalam', '2025-06-20 10:55:06', '2025-06-20 10:55:06'),
(17, 'Poli Mata', '2025-06-20 10:55:06', '2025-06-20 10:55:06'),
(18, 'Poli THT', '2025-06-20 10:55:06', '2025-06-20 10:55:06'),
(19, 'Poli Anak', '2025-06-20 10:57:31', '2025-06-20 10:57:31'),
(20, 'Poli Umum', '2025-06-20 10:57:31', '2025-06-20 10:57:31'),
(21, 'Poli Kebidanan dan Kandungan', '2025-06-20 10:57:31', '2025-06-20 10:57:31'),
(22, 'Poli Penyakit Dalam', '2025-06-20 10:57:31', '2025-06-20 10:57:31'),
(23, 'Poli Mata', '2025-06-20 10:57:31', '2025-06-20 10:57:31'),
(24, 'Poli THT', '2025-06-20 10:57:31', '2025-06-20 10:57:31');

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
('3jCWJkKWZktVeYVr2BnALj3xkaK4AO1nMGeb717I', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic2hMTVZsUkVXdWF2N2xRWmpLZ2F6RldhcFpkeVdyZ1dWeEl3M0dsOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kb2t0ZXIvcGVyaWtzYS9jcmVhdGUvMiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjc7fQ==', 1750443072),
('GRqAuTtdSri6wtBB5ZJoZIgb6Th9nqf0VQtf0tor', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMU1jbnBWMW1rbDBsOXZSaXU1UDlxZ2pNdHV5N0k2VnRuTThnazVGZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYXNpZW4vamFuamktcGVyaWtzYSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7fQ==', 1750443064),
('y58jnbf4RO8NT8EIueK3zWlXrOeOOKkmLfEEUTJv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVNXMUtCUGFnQjlVZzZNek9ERFE2WlF1UTJ2WmdVWFQyRmpWMFBENyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1750442014);

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
(1, 'Dr. Budi Santoso, Sp.PD', 'budi.santoso@klinik.com', NULL, '$2y$12$UlHyXLLXNov7lRxfY2THoumXfZm8tEmFYwcj/i/Qru24bZVS9oQi6', 'dokter', 'Jl. Pahlawan No. 123, Jakarta Selatan', '3175062505800001', '081234567890', NULL, NULL, NULL, '2025-06-20 10:49:10', '2025-06-20 10:49:10', 4),
(2, 'Dr. Siti Rahayu, Sp.A', 'siti.rahayu@klinik.com', NULL, '$2y$12$HGqILRgvUBvQTttITTGaSecyYYyUkhZOT41m.dbvuzM7.wtJD/Gsa', 'dokter', 'Jl. Anggrek No. 45, Jakarta Pusat', '3175064610790002', '081234567891', NULL, NULL, NULL, '2025-06-20 10:49:10', '2025-06-20 10:49:10', 1),
(3, 'Dr. Ahmad Wijaya, Sp.OG', 'ahmad.wijaya@klinik.com', NULL, '$2y$12$MIqN/7thQHL8elTP0Url3ORlC09u2HIsb6ZlBvhWY.xx/ate0C3tC', 'dokter', 'Jl. Melati No. 78, Jakarta Barat', '3175061505780003', '081234567892', NULL, NULL, NULL, '2025-06-20 10:49:10', '2025-06-20 10:49:10', 3),
(4, 'Dr. Rina Putri, Sp.M', 'rina.putri@klinik.com', NULL, '$2y$12$omd.QBlNnaQzkly9oSSufOZ8wYE1GmCBHMvljzr.WTzJlRptiaN4m', 'dokter', 'Jl. Dahlia No. 32, Jakarta Timur', '3175062708850004', '081234567893', NULL, NULL, NULL, '2025-06-20 10:49:10', '2025-06-20 10:49:10', 5),
(5, 'Dr. Doni Pratama, Sp.THT', 'doni.pratama@klinik.com', NULL, '$2y$12$upqEToz.3dQK6CMEdObRi.Dkljq4fTszLZmOOsYjcZl6eTFy4ze8a', 'dokter', 'Jl. Kenanga No. 56, Jakarta Utara', '3175061002820005', '081234567894', NULL, NULL, NULL, '2025-06-20 10:49:10', '2025-06-20 10:49:10', 6),
(6, 'MAULANA TEGAR IBRAHIM', 'pamungkasery07@gmail.com', '202506-001', '$2y$12$AJwVL4FHqhvTd8NAak1zL.9ErxEi0msa9zvnh95HuG0R/oCdRs3zW', 'pasien', 'PUNDENARUM', '2332323232323232', '085801241551', NULL, NULL, NULL, '2025-06-20 10:59:10', '2025-06-20 10:59:10', NULL),
(7, 'cobadoktera, Sp.THT', 'coba.pratama@klinik.com', NULL, '$2y$12$Axd1DunGLiDjhte5gOcTGeilcKJJsh3QAanmYORazFt0LuADb2Kra', 'dokter', 'Jl. Kenanga No. 56, Jakarta Utara', '3175061002820005', '081234567894', NULL, NULL, NULL, '2025-06-20 11:09:55', '2025-06-20 11:09:55', 2);

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
  ADD KEY `jadwal_periksas_id_poli_foreign` (`id_poli`),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwal_periksas`
--
ALTER TABLE `jadwal_periksas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `janji_periksas`
--
ALTER TABLE `janji_periksas`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `obats`
--
ALTER TABLE `obats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `periksas`
--
ALTER TABLE `periksas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `polis`
--
ALTER TABLE `polis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  ADD CONSTRAINT `jadwal_periksas_id_dokter_foreign` FOREIGN KEY (`id_dokter`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_periksas_id_poli_foreign` FOREIGN KEY (`id_poli`) REFERENCES `polis` (`id`) ON DELETE CASCADE;

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
