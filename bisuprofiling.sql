-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2023 at 07:47 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bisuprofiling`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_counselor_feedback`
--

CREATE TABLE `client_counselor_feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schoolyear_id` int(11) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `a1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_counselor_feedback_settings`
--

CREATE TABLE `client_counselor_feedback_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT 1,
  `req_fields` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'CCJE', '2022-11-08 18:16:33', '2022-11-08 18:16:33'),
(2, 'CTAS', '2022-11-08 18:16:41', '2022-11-08 18:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `college_id` int(11) DEFAULT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `college_id`, `course`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'BS IN CRIMINOLOGY', 'BSCRIM', '2022-11-08 18:17:06', '2022-11-08 18:17:06'),
(2, 2, 'BS IN COMPUTER SCIENCE', 'BSCS', '2022-11-08 18:17:19', '2022-11-08 18:17:19'),
(3, 2, 'BS IN ELECTRONICS', 'BSELECT', '2022-11-08 18:17:32', '2022-11-08 18:17:32'),
(4, 2, 'BS IN INFORMATION TECHNOLOGY', 'BSIT', '2022-11-08 18:17:43', '2022-11-08 18:17:43'),
(5, 2, 'BS IN ELECTRICAL TECHNOLOGY', 'BSETECH', '2022-11-09 05:09:16', '2022-11-09 05:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_activities`
--

CREATE TABLE `evaluation_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schoolyear_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facilitators` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_forms`
--

CREATE TABLE `evaluation_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schoolyear_id` int(11) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `a1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `evaluation_activity_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_form_settings`
--

CREATE TABLE `evaluation_form_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT 1,
  `req_fields` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_settings`
--

CREATE TABLE `form_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_settings`
--

INSERT INTO `form_settings` (`id`, `form`, `enabled`, `created_at`, `updated_at`) VALUES
(1, '1', 1, '2023-01-22 18:01:32', '2023-01-22 19:35:43'),
(2, '2', 1, '2023-01-22 18:01:32', '2023-01-22 10:29:27'),
(3, '3', 1, '2023-01-22 18:02:28', '2023-01-22 10:29:36'),
(4, '4', 1, '2023-01-22 18:02:28', '2023-01-22 10:29:44'),
(5, '5', 1, '2023-01-22 18:02:28', '2023-01-22 10:29:53'),
(6, '6', 1, '2023-01-22 18:02:28', '2023-01-22 10:30:02'),
(7, '7', 1, '2023-01-22 18:02:28', '2023-01-22 10:30:10'),
(8, '8', 1, '2023-01-22 18:02:28', '2023-01-22 10:30:19'),
(9, '9', 1, '2023-01-22 18:02:28', '2023-01-22 10:31:02');

-- --------------------------------------------------------

--
-- Table structure for table `individual_inventories`
--

CREATE TABLE `individual_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schoolyear_id` int(11) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `a1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b15` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b16` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b17` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b18` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `individual_inventorytwos`
--

CREATE TABLE `individual_inventorytwos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `individual_inventory_id` int(11) DEFAULT NULL,
  `d1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d15` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f15` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f16` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `individual_inventory_fours`
--

CREATE TABLE `individual_inventory_fours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `individual_inventory_id` int(11) DEFAULT NULL,
  `i1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i15` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i16` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i17` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i18` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i19` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i20` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i21` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i22` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i23` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i24` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i25` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `individual_inventory_settings`
--

CREATE TABLE `individual_inventory_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT 1,
  `req_fields` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `individual_inventory_threes`
--

CREATE TABLE `individual_inventory_threes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `individual_inventory_id` int(11) DEFAULT NULL,
  `g1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g15` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_feedback`
--

CREATE TABLE `inventory_feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schoolyear_id` int(11) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `a1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_feedback_settings`
--

CREATE TABLE `inventory_feedback_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT 1,
  `req_fields` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leavers`
--

CREATE TABLE `leavers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schoolyear_id` int(11) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `c1` int(11) NOT NULL,
  `c2` int(11) NOT NULL,
  `c3` int(11) NOT NULL,
  `c4` int(11) NOT NULL,
  `c5` int(11) NOT NULL,
  `c6` int(11) NOT NULL,
  `c7` int(11) NOT NULL,
  `c8` int(11) NOT NULL,
  `c9` int(11) NOT NULL,
  `c10` int(11) NOT NULL,
  `c11` int(11) NOT NULL,
  `c12` int(11) NOT NULL,
  `c13` int(11) NOT NULL,
  `c14` int(11) NOT NULL,
  `c15` int(11) NOT NULL,
  `c16` int(11) NOT NULL,
  `c17` int(11) NOT NULL,
  `c18` int(11) NOT NULL,
  `c19` int(11) NOT NULL,
  `c20` int(11) NOT NULL,
  `c21` int(11) NOT NULL,
  `others` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaversettings`
--

CREATE TABLE `leaversettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT 1,
  `req_fields` int(11) NOT NULL DEFAULT 1,
  `details` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schoolyear_id` int(11) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `a1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c15` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c16` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `membership_schedules`
--

CREATE TABLE `membership_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `membership_id` int(11) DEFAULT NULL,
  `a1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `membership_settings`
--

CREATE TABLE `membership_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT 1,
  `req_fields` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(3, '2022_10_26_022322_create_schoolyears_table', 2),
(4, '2022_10_26_022349_create_colleges_table', 2),
(5, '2022_10_26_022357_create_courses_table', 2),
(6, '2022_11_04_105751_create_students_table', 2),
(10, '2022_11_12_015013_add_role_id_to_users', 3),
(21, '2022_11_12_020235_create_leaversettings_table', 4),
(22, '2022_11_12_020248_create_leavers_table', 4),
(23, '2022_11_12_033621_add_section_to_students', 4),
(25, '2022_12_15_115422_create_profile_settings_table', 5),
(86, '2022_12_15_122031_create_precounselings_table', 6),
(87, '2022_12_15_122039_create_precounseling_settings_table', 6),
(88, '2022_12_15_122100_create_memberships_table', 6),
(89, '2022_12_15_122107_create_membership_settings_table', 6),
(90, '2022_12_15_122136_create_peer_facilitator_circles_table', 6),
(91, '2022_12_15_122143_create_peer_facilitator_circle_settings_table', 6),
(94, '2022_12_15_122241_create_inventory_feedback_table', 6),
(95, '2022_12_15_122247_create_inventory_feedback_settings_table', 6),
(97, '2022_12_15_122310_create_individual_inventory_settings_table', 6),
(98, '2022_12_15_122322_create_evaluation_forms_table', 6),
(99, '2022_12_15_122327_create_evaluation_form_settings_table', 6),
(100, '2022_12_15_122353_create_client_counselor_feedback_table', 6),
(101, '2022_12_15_122359_create_client_counselor_feedback_settings_table', 6),
(102, '2022_12_30_121031_create_evaluation_activities_table', 7),
(103, '2022_12_30_121702_add_evaluationactivity_in_evaluation', 7),
(104, '2022_12_31_113355_create_membership_schedules_table', 8),
(115, '2022_12_15_122304_create_individual_inventories_table', 10),
(116, '2023_01_21_074708_create_individual_inventorytwos_table', 11),
(117, '2023_01_21_075025_create_individual_inventory_threes_table', 12),
(118, '2023_01_21_075226_create_individual_inventory_fours_table', 13),
(121, '2022_12_15_115409_create_profiles_table', 14),
(122, '2022_12_15_122211_create_needs_assessment_inventories_table', 15),
(123, '2022_12_15_122220_create_needs_assessment_inventory_settings_table', 15),
(124, '2023_01_05_152909_create_needassessmenttabletwos_table', 15),
(125, '2023_01_05_153238_create_needassessmenttablethrees_table', 15),
(126, '2023_01_05_153445_create_needassessmenttablefours_table', 15),
(127, '2023_01_22_175920_create_form_settings_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `needassessmenttablefours`
--

CREATE TABLE `needassessmenttablefours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `needs_assessment_inventory_id` int(11) DEFAULT NULL,
  `a51a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a51b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a51c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a52a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a52b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a52c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a53a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a53b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a53c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a54a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a54b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a54c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a55a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a55b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a55c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a56a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a56b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a56c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a57a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a57b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a57c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a58a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a58b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a58c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a59a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a59b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a59c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a60a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a60b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a60c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a61a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a61b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a61c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a62a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a62b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a62c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a63a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a63b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a63c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a64a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a64b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a64c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a64d` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a65a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a65b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a65c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a65d` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `needassessmenttablethrees`
--

CREATE TABLE `needassessmenttablethrees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `needs_assessment_inventory_id` int(11) DEFAULT NULL,
  `a41a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a41b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a41c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a42a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a42b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a42c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a43a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a43b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a43c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a44a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a44b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a44c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a45a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a45b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a45c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a46a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a46b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a46c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a47a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a47b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a47c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a48a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a48b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a48c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a49a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a49b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a49c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a50a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a50b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a50c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a50d` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a50e` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `needassessmenttabletwos`
--

CREATE TABLE `needassessmenttabletwos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `needs_assessment_inventory_id` int(11) DEFAULT NULL,
  `a21a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a21b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a21c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a22a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a22b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a22c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a23a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a23b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a23c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a24a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a24b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a24c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a25a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a25b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a25c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a26a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a26b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a26c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a27a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a27b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a27c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a28a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a28b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a28c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a29a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a29b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a29c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a30a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a30b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a30c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a30d` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a31a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a31b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a31c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a32a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a32b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a32c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a33a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a33b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a33c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a34a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a34b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a34c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a35a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a35b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a35c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a36a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a36b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a36c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a37a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a37b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a37c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a38a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a38b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a38c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a39a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a39b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a39c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a40a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a40b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a40c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a40d` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `needs_assessment_inventories`
--

CREATE TABLE `needs_assessment_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schoolyear_id` int(11) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `a1a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a4a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a4b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a4c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a5a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a5b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a5c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a6a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a6b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a6c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a7a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a7b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a7c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a8a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a8b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a8c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a9a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a9b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a9c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a10a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a10b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a10c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a10d` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a11a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a11b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a11c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a12a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a12b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a12c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a13a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a13b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a13c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a14a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a14b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a14c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a15a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a15b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a15c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a16a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a16b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a16c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a17a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a17b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a17c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a18a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a18b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a18c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a19a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a19b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a19c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a20a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a20b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a20c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a20d` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `needs_assessment_inventory_settings`
--

CREATE TABLE `needs_assessment_inventory_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT 1,
  `req_fields` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `peer_facilitator_circles`
--

CREATE TABLE `peer_facilitator_circles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schoolyear_id` int(11) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `nickname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactno` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peer_facilitator_circle_settings`
--

CREATE TABLE `peer_facilitator_circle_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT 1,
  `req_fields` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `precounselings`
--

CREATE TABLE `precounselings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schoolyear_id` int(11) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `a1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `precounseling_settings`
--

CREATE TABLE `precounseling_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT 1,
  `req_fields` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schoolyear_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `yearlevel` int(11) DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1a` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1b` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1c` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1d` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1e` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1f` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1g` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1h` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1i` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1j` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1k` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1l` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1m` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2a` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2b` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2c` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2d` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2e` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2f` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2g` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3a` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3b` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3c` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3d` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3e` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3f` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3g` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a4a` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a4b` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_settings`
--

CREATE TABLE `profile_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` int(11) NOT NULL DEFAULT 1,
  `req_fields` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schoolyears`
--

CREATE TABLE `schoolyears` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schoolyears`
--

INSERT INTO `schoolyears` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A. Y. 2022-2023', 1, '2022-11-08 18:15:54', '2023-01-22 22:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schoolyear_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `id_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middlename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateofbirth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `units` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yearlevel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'COUNSELOR', 'admin', NULL, '$2y$10$syN0ZtwscLzd47pFOPJhQ.H5jq6QXlmmLgU13atUzVXpKzyE8cuf6', NULL, '2022-09-28 07:41:45', '2023-01-22 09:51:53', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client_counselor_feedback`
--
ALTER TABLE `client_counselor_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_counselor_feedback_settings`
--
ALTER TABLE `client_counselor_feedback_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluation_activities`
--
ALTER TABLE `evaluation_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluation_forms`
--
ALTER TABLE `evaluation_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluation_form_settings`
--
ALTER TABLE `evaluation_form_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_settings`
--
ALTER TABLE `form_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `individual_inventories`
--
ALTER TABLE `individual_inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `individual_inventorytwos`
--
ALTER TABLE `individual_inventorytwos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `individual_inventory_fours`
--
ALTER TABLE `individual_inventory_fours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `individual_inventory_settings`
--
ALTER TABLE `individual_inventory_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `individual_inventory_threes`
--
ALTER TABLE `individual_inventory_threes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_feedback`
--
ALTER TABLE `inventory_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_feedback_settings`
--
ALTER TABLE `inventory_feedback_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leavers`
--
ALTER TABLE `leavers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaversettings`
--
ALTER TABLE `leaversettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_schedules`
--
ALTER TABLE `membership_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_settings`
--
ALTER TABLE `membership_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `needassessmenttablefours`
--
ALTER TABLE `needassessmenttablefours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `needassessmenttablethrees`
--
ALTER TABLE `needassessmenttablethrees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `needassessmenttabletwos`
--
ALTER TABLE `needassessmenttabletwos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `needs_assessment_inventories`
--
ALTER TABLE `needs_assessment_inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `needs_assessment_inventory_settings`
--
ALTER TABLE `needs_assessment_inventory_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `peer_facilitator_circles`
--
ALTER TABLE `peer_facilitator_circles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peer_facilitator_circle_settings`
--
ALTER TABLE `peer_facilitator_circle_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `precounselings`
--
ALTER TABLE `precounselings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `precounseling_settings`
--
ALTER TABLE `precounseling_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_settings`
--
ALTER TABLE `profile_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolyears`
--
ALTER TABLE `schoolyears`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT for table `client_counselor_feedback`
--
ALTER TABLE `client_counselor_feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `client_counselor_feedback_settings`
--
ALTER TABLE `client_counselor_feedback_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `evaluation_activities`
--
ALTER TABLE `evaluation_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `evaluation_forms`
--
ALTER TABLE `evaluation_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `evaluation_form_settings`
--
ALTER TABLE `evaluation_form_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_settings`
--
ALTER TABLE `form_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `individual_inventories`
--
ALTER TABLE `individual_inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `individual_inventorytwos`
--
ALTER TABLE `individual_inventorytwos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `individual_inventory_fours`
--
ALTER TABLE `individual_inventory_fours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `individual_inventory_settings`
--
ALTER TABLE `individual_inventory_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `individual_inventory_threes`
--
ALTER TABLE `individual_inventory_threes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inventory_feedback`
--
ALTER TABLE `inventory_feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory_feedback_settings`
--
ALTER TABLE `inventory_feedback_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leavers`
--
ALTER TABLE `leavers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `leaversettings`
--
ALTER TABLE `leaversettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `membership_schedules`
--
ALTER TABLE `membership_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `membership_settings`
--
ALTER TABLE `membership_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `needassessmenttablefours`
--
ALTER TABLE `needassessmenttablefours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `needassessmenttablethrees`
--
ALTER TABLE `needassessmenttablethrees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `needassessmenttabletwos`
--
ALTER TABLE `needassessmenttabletwos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `needs_assessment_inventories`
--
ALTER TABLE `needs_assessment_inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `needs_assessment_inventory_settings`
--
ALTER TABLE `needs_assessment_inventory_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peer_facilitator_circles`
--
ALTER TABLE `peer_facilitator_circles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `peer_facilitator_circle_settings`
--
ALTER TABLE `peer_facilitator_circle_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `precounselings`
--
ALTER TABLE `precounselings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `precounseling_settings`
--
ALTER TABLE `precounseling_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profile_settings`
--
ALTER TABLE `profile_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schoolyears`
--
ALTER TABLE `schoolyears`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=543;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
