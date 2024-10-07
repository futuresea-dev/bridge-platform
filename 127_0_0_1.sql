-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 05, 2024 at 08:48 PM
-- Server version: 10.11.7-MariaDB-2ubuntu2
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bridge-db`
--
CREATE DATABASE IF NOT EXISTS `bridge-db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bridge-db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(2, 0, 11, 'Admin', 'icon-server', '', NULL, NULL, '2024-09-11 07:02:17'),
(3, 2, 12, 'Users', 'icon-users', 'auth/users', NULL, NULL, '2024-09-11 07:02:17'),
(4, 2, 13, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, '2024-09-11 07:02:17'),
(21, 0, 1, 'Sliders', 'icon-file', 'sliders', NULL, '2024-09-11 06:30:01', '2024-09-11 07:10:15'),
(22, 0, 2, 'Universities', 'icon-file', 'universities', NULL, '2024-09-11 06:32:05', '2024-09-11 07:10:15'),
(25, 0, 3, 'Countries', 'icon-file', 'countries', NULL, '2024-09-11 06:45:15', '2024-10-05 08:56:03'),
(26, 0, 4, 'Services', 'icon-file', 'services', NULL, '2024-09-11 06:47:12', '2024-10-05 08:56:03'),
(27, 0, 5, 'Brands', 'icon-file', 'brands', NULL, '2024-09-11 06:48:03', '2024-10-05 08:56:03'),
(28, 0, 6, 'Testimonials', 'icon-file', 'testimonials', NULL, '2024-09-11 06:49:15', '2024-10-05 08:56:03'),
(31, 0, 10, 'Form-messages', 'icon-file', 'form-messages', NULL, '2024-09-11 06:55:53', '2024-09-11 07:10:15'),
(32, 0, 9, 'Frequently-asks', 'icon-file', 'frequently-asks', NULL, '2024-09-11 06:59:21', '2024-09-11 07:10:15'),
(33, 0, 7, 'Articles', 'icon-file', 'articles', NULL, '2024-09-11 07:04:19', '2024-10-05 08:56:03'),
(36, 0, 8, 'News', 'icon-file', 'news', NULL, '2024-10-05 08:43:38', '2024-10-05 08:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 03:27:06', '2024-09-11 03:27:06'),
(2, 1, 'admin/auth/users', 'GET', '37.123.65.255', '[]', '2024-09-11 03:27:23', '2024-09-11 03:27:23'),
(3, 1, 'admin/auth/roles', 'GET', '37.123.65.255', '[]', '2024-09-11 03:27:24', '2024-09-11 03:27:24'),
(4, 1, 'admin/auth/permissions', 'GET', '37.123.65.255', '[]', '2024-09-11 03:27:25', '2024-09-11 03:27:25'),
(5, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 03:27:26', '2024-09-11 03:27:26'),
(6, 1, 'admin/auth/users', 'GET', '37.123.65.255', '[]', '2024-09-11 03:27:31', '2024-09-11 03:27:31'),
(7, 1, 'admin/auth/users/create', 'GET', '37.123.65.255', '[]', '2024-09-11 03:27:32', '2024-09-11 03:27:32'),
(8, 1, 'admin/auth/users/create', 'GET', '37.123.65.255', '[]', '2024-09-11 03:28:21', '2024-09-11 03:28:21'),
(9, 1, 'admin/auth/users/create', 'GET', '37.123.65.255', '[]', '2024-09-11 03:28:22', '2024-09-11 03:28:22'),
(10, 1, 'admin/auth/users/create', 'GET', '37.123.65.255', '[]', '2024-09-11 03:28:25', '2024-09-11 03:28:25'),
(11, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 03:28:26', '2024-09-11 03:28:26'),
(12, 1, 'admin/auth/users', 'GET', '37.123.65.255', '[]', '2024-09-11 03:28:27', '2024-09-11 03:28:27'),
(13, 1, 'admin/auth/users/create', 'GET', '37.123.65.255', '[]', '2024-09-11 03:28:28', '2024-09-11 03:28:28'),
(14, 1, 'admin/auth/logout', 'GET', '37.123.65.255', '[]', '2024-09-11 03:30:26', '2024-09-11 03:30:26'),
(15, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 03:30:29', '2024-09-11 03:30:29'),
(16, 1, 'admin/auth/permissions', 'GET', '37.123.65.255', '[]', '2024-09-11 03:30:32', '2024-09-11 03:30:32'),
(17, 1, 'admin/auth/roles', 'GET', '37.123.65.255', '[]', '2024-09-11 03:30:36', '2024-09-11 03:30:36'),
(18, 1, 'admin/auth/permissions', 'GET', '37.123.65.255', '[]', '2024-09-11 03:30:37', '2024-09-11 03:30:37'),
(19, 1, 'admin/auth/permissions/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 03:30:48', '2024-09-11 03:30:48'),
(20, 1, 'admin/auth/users', 'GET', '37.123.65.255', '[]', '2024-09-11 03:30:53', '2024-09-11 03:30:53'),
(21, 1, 'admin/auth/users/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 03:30:56', '2024-09-11 03:30:56'),
(22, 1, 'admin/auth/users/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 03:32:33', '2024-09-11 03:32:33'),
(23, 1, 'admin/auth/users', 'GET', '37.123.65.255', '[]', '2024-09-11 03:32:35', '2024-09-11 03:32:35'),
(24, 1, 'admin/auth/users/create', 'GET', '37.123.65.255', '[]', '2024-09-11 03:32:36', '2024-09-11 03:32:36'),
(25, 1, 'admin/auth/users', 'GET', '37.123.65.255', '[]', '2024-09-11 03:32:42', '2024-09-11 03:32:42'),
(26, 1, 'admin/auth/users/create', 'GET', '37.123.65.255', '[]', '2024-09-11 03:32:45', '2024-09-11 03:32:45'),
(27, 1, 'admin/auth/setting', 'GET', '37.123.65.255', '[]', '2024-09-11 03:33:32', '2024-09-11 03:33:32'),
(28, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 03:33:34', '2024-09-11 03:33:34'),
(29, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 03:33:44', '2024-09-11 03:33:44'),
(30, 1, 'admin/auth/menu', 'POST', '37.123.65.255', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"users\",\"icon\":\"icon-user\",\"uri\":\"admin\\/users\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"vxc6Tm84D0eev4HhoP4llGFB2ABsrDmlpmKicwPc\"}', '2024-09-11 03:34:44', '2024-09-11 03:34:44'),
(31, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 03:34:44', '2024-09-11 03:34:44'),
(32, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 03:34:46', '2024-09-11 03:34:46'),
(33, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 03:34:51', '2024-09-11 03:34:51'),
(34, 1, 'admin/auth/menu/13/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 03:34:59', '2024-09-11 03:34:59'),
(35, 1, 'admin/auth/menu/13', 'PUT', '37.123.65.255', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"users\",\"icon\":\"icon-user\",\"uri\":\"\\/users\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"vxc6Tm84D0eev4HhoP4llGFB2ABsrDmlpmKicwPc\",\"_method\":\"PUT\"}', '2024-09-11 03:35:05', '2024-09-11 03:35:05'),
(36, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 03:35:05', '2024-09-11 03:35:05'),
(37, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 03:35:13', '2024-09-11 03:35:13'),
(38, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 03:35:14', '2024-09-11 03:35:14'),
(39, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 03:35:36', '2024-09-11 03:35:36'),
(40, 1, 'admin/auth/users', 'GET', '37.123.65.255', '[]', '2024-09-11 03:35:38', '2024-09-11 03:35:38'),
(41, 1, 'admin/auth/users/create', 'GET', '37.123.65.255', '[]', '2024-09-11 03:35:46', '2024-09-11 03:35:46'),
(42, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 03:39:18', '2024-09-11 03:39:18'),
(43, 1, 'admin/helpers/terminal/database', 'GET', '37.123.65.255', '[]', '2024-09-11 03:39:19', '2024-09-11 03:39:19'),
(44, 1, 'admin/helpers/routes', 'GET', '37.123.65.255', '[]', '2024-09-11 03:39:22', '2024-09-11 03:39:22'),
(45, 1, 'admin/auth/roles', 'GET', '37.123.65.255', '[]', '2024-09-11 03:39:31', '2024-09-11 03:39:31'),
(46, 1, 'admin/auth/users', 'GET', '37.123.65.255', '[]', '2024-09-11 03:39:48', '2024-09-11 03:39:48'),
(47, 1, 'admin/auth/users/create', 'GET', '37.123.65.255', '[]', '2024-09-11 03:39:50', '2024-09-11 03:39:50'),
(48, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 03:41:59', '2024-09-11 03:41:59'),
(49, 1, 'admin/auth/users', 'GET', '37.123.65.255', '[]', '2024-09-11 03:42:47', '2024-09-11 03:42:47'),
(50, 1, 'admin/auth/users/create', 'GET', '37.123.65.255', '[]', '2024-09-11 03:42:48', '2024-09-11 03:42:48'),
(51, 1, 'admin/auth/users/create', 'GET', '37.123.65.255', '[]', '2024-09-11 03:43:48', '2024-09-11 03:43:48'),
(52, 1, 'admin/auth/users', 'GET', '37.123.65.255', '[]', '2024-09-11 03:45:19', '2024-09-11 03:45:19'),
(53, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 03:45:21', '2024-09-11 03:45:21'),
(54, 1, 'admin/auth/menu/13', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"vxc6Tm84D0eev4HhoP4llGFB2ABsrDmlpmKicwPc\"}', '2024-09-11 03:45:23', '2024-09-11 03:45:23'),
(55, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 03:45:23', '2024-09-11 03:45:23'),
(56, 1, 'admin/auth/users', 'GET', '37.123.65.255', '[]', '2024-09-11 03:45:26', '2024-09-11 03:45:26'),
(57, 1, 'admin/auth/users/create', 'GET', '37.123.65.255', '[]', '2024-09-11 03:45:28', '2024-09-11 03:45:28'),
(58, 1, 'admin/auth/permissions', 'GET', '37.123.65.255', '[]', '2024-09-11 03:45:40', '2024-09-11 03:45:40'),
(59, 1, 'admin/auth/permissions/create', 'GET', '37.123.65.255', '[]', '2024-09-11 03:45:43', '2024-09-11 03:45:43'),
(60, 1, 'admin/auth/users', 'GET', '37.123.65.255', '[]', '2024-09-11 03:46:03', '2024-09-11 03:46:03'),
(61, 1, 'admin/auth/users/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 03:46:05', '2024-09-11 03:46:05'),
(62, 1, 'admin/auth/roles', 'GET', '37.123.65.255', '[]', '2024-09-11 03:46:12', '2024-09-11 03:46:12'),
(63, 1, 'admin/auth/roles/create', 'GET', '37.123.65.255', '[]', '2024-09-11 03:46:14', '2024-09-11 03:46:14'),
(64, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 03:46:24', '2024-09-11 03:46:24'),
(65, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"countries\",\"model_name\":\"App\\\\Models\\\\countries\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\countries\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"country_name\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"country_flag\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"vxc6Tm84D0eev4HhoP4llGFB2ABsrDmlpmKicwPc\"}', '2024-09-11 03:48:25', '2024-09-11 03:48:25'),
(66, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 03:48:25', '2024-09-11 03:48:25'),
(67, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 03:49:19', '2024-09-11 03:49:19'),
(68, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 03:49:33', '2024-09-11 03:49:33'),
(69, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 03:49:39', '2024-09-11 03:49:39'),
(70, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 03:49:44', '2024-09-11 03:49:44'),
(71, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"tr\",\"model_name\":\"App\\\\Models\\\\tr\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\tr\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"tr\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"tr\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"vxc6Tm84D0eev4HhoP4llGFB2ABsrDmlpmKicwPc\"}', '2024-09-11 03:49:55', '2024-09-11 03:49:55'),
(72, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 03:49:55', '2024-09-11 03:49:55'),
(73, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"tr\",\"model_name\":\"App\\\\Models\\\\tr\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\tr\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"tr\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"tr2\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"vxc6Tm84D0eev4HhoP4llGFB2ABsrDmlpmKicwPc\"}', '2024-09-11 03:50:02', '2024-09-11 03:50:02'),
(74, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 03:50:02', '2024-09-11 03:50:02'),
(75, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 03:50:10', '2024-09-11 03:50:10'),
(76, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 03:50:45', '2024-09-11 03:50:45'),
(77, 1, 'admin/auth/menu/15', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"vxc6Tm84D0eev4HhoP4llGFB2ABsrDmlpmKicwPc\"}', '2024-09-11 03:50:48', '2024-09-11 03:50:48'),
(78, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 03:50:48', '2024-09-11 03:50:48'),
(79, 1, 'admin/auth/menu/14', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"vxc6Tm84D0eev4HhoP4llGFB2ABsrDmlpmKicwPc\"}', '2024-09-11 03:50:50', '2024-09-11 03:50:50'),
(80, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 03:50:51', '2024-09-11 03:50:51'),
(81, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 03:51:01', '2024-09-11 03:51:01'),
(82, 1, 'admin/helpers/routes', 'GET', '37.123.65.255', '[]', '2024-09-11 03:51:06', '2024-09-11 03:51:06'),
(83, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 03:51:07', '2024-09-11 03:51:07'),
(84, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"countries\",\"model_name\":\"App\\\\Models\\\\countries\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\countries\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"country_name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"country_flag\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"vxc6Tm84D0eev4HhoP4llGFB2ABsrDmlpmKicwPc\"}', '2024-09-11 03:52:43', '2024-09-11 03:52:43'),
(85, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 03:52:44', '2024-09-11 03:52:44'),
(86, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"countries\",\"model_name\":\"App\\\\Models\\\\countries\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\countries\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"country_name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"country_flag\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"vxc6Tm84D0eev4HhoP4llGFB2ABsrDmlpmKicwPc\"}', '2024-09-11 03:53:16', '2024-09-11 03:53:16'),
(87, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 03:53:16', '2024-09-11 03:53:16'),
(88, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 03:53:39', '2024-09-11 03:53:39'),
(89, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 03:58:34', '2024-09-11 03:58:34'),
(90, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 03:58:38', '2024-09-11 03:58:38'),
(91, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 03:58:39', '2024-09-11 03:58:39'),
(92, 1, 'admin/auth/logout', 'GET', '37.123.65.255', '[]', '2024-09-11 03:58:42', '2024-09-11 03:58:42'),
(93, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 03:58:45', '2024-09-11 03:58:45'),
(94, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 03:58:59', '2024-09-11 03:58:59'),
(95, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 03:59:02', '2024-09-11 03:59:02'),
(96, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"test\",\"model_name\":\"App\\\\Models\\\\test\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\test\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"test\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"teste\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\"}', '2024-09-11 03:59:13', '2024-09-11 03:59:13'),
(97, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 03:59:14', '2024-09-11 03:59:14'),
(98, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 03:59:28', '2024-09-11 03:59:28'),
(99, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:01:52', '2024-09-11 04:01:52'),
(100, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:03:41', '2024-09-11 04:03:41'),
(101, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:03:42', '2024-09-11 04:03:42'),
(102, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:03:51', '2024-09-11 04:03:51'),
(103, 1, 'admin/helpers/routes', 'GET', '37.123.65.255', '[]', '2024-09-11 04:03:55', '2024-09-11 04:03:55'),
(104, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:04:29', '2024-09-11 04:04:29'),
(105, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:04:36', '2024-09-11 04:04:36'),
(106, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 04:04:39', '2024-09-11 04:04:39'),
(107, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:07:39', '2024-09-11 04:07:39'),
(108, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 04:07:41', '2024-09-11 04:07:41'),
(109, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"Student\",\"model_name\":\"App\\\\Models\\\\Student\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\Student\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"age\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\"}', '2024-09-11 04:08:09', '2024-09-11 04:08:09'),
(110, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 04:08:10', '2024-09-11 04:08:10'),
(111, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 04:08:29', '2024-09-11 04:08:29'),
(112, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:08:32', '2024-09-11 04:08:32'),
(113, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:08:53', '2024-09-11 04:08:53'),
(114, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:10:41', '2024-09-11 04:10:41'),
(115, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 04:10:45', '2024-09-11 04:10:45'),
(116, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"hisham\",\"model_name\":\"App\\\\Models\\\\hisham\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\HishamController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"age\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\"}', '2024-09-11 04:11:07', '2024-09-11 04:11:07'),
(117, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 04:11:07', '2024-09-11 04:11:07'),
(118, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:11:26', '2024-09-11 04:11:26'),
(119, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:11:28', '2024-09-11 04:11:28'),
(120, 1, 'admin/hishams/create', 'GET', '37.123.65.255', '[]', '2024-09-11 04:11:31', '2024-09-11 04:11:31'),
(121, 1, 'admin/hishams/create', 'GET', '37.123.65.255', '[]', '2024-09-11 04:11:57', '2024-09-11 04:11:57'),
(122, 1, 'admin/hishams', 'POST', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\"}', '2024-09-11 04:12:05', '2024-09-11 04:12:05'),
(123, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:12:05', '2024-09-11 04:12:05'),
(124, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:12:24', '2024-09-11 04:12:24'),
(125, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:13:41', '2024-09-11 04:13:41'),
(126, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:15:27', '2024-09-11 04:15:27'),
(127, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:15:27', '2024-09-11 04:15:27'),
(128, 1, 'admin/hishams/1', 'GET', '37.123.65.255', '[]', '2024-09-11 04:15:29', '2024-09-11 04:15:29'),
(129, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:15:31', '2024-09-11 04:15:31'),
(130, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:16:56', '2024-09-11 04:16:56'),
(131, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/admin.bridge.jo\\/admin\\/hishams\"}', '2024-09-11 04:17:02', '2024-09-11 04:17:02'),
(132, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:17:02', '2024-09-11 04:17:02'),
(133, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:17:04', '2024-09-11 04:17:04'),
(134, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:19:25', '2024-09-11 04:19:25'),
(135, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:19:30', '2024-09-11 04:19:30'),
(136, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:19:30', '2024-09-11 04:19:30'),
(137, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:19:31', '2024-09-11 04:19:31'),
(138, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:20:07', '2024-09-11 04:20:07'),
(139, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:20:11', '2024-09-11 04:20:11'),
(140, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:20:11', '2024-09-11 04:20:11'),
(141, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:20:13', '2024-09-11 04:20:13'),
(142, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:20:55', '2024-09-11 04:20:55'),
(143, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:21:01', '2024-09-11 04:21:01'),
(144, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:21:01', '2024-09-11 04:21:01'),
(145, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:21:04', '2024-09-11 04:21:04'),
(146, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:21:40', '2024-09-11 04:21:40'),
(147, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:21:44', '2024-09-11 04:21:44'),
(148, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:21:44', '2024-09-11 04:21:44'),
(149, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:21:45', '2024-09-11 04:21:45'),
(150, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:22:19', '2024-09-11 04:22:19'),
(151, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:22:24', '2024-09-11 04:22:24'),
(152, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:22:25', '2024-09-11 04:22:25'),
(153, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:22:26', '2024-09-11 04:22:26'),
(154, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:22:46', '2024-09-11 04:22:46'),
(155, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:22:46', '2024-09-11 04:22:46'),
(156, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:22:53', '2024-09-11 04:22:53'),
(157, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:23:57', '2024-09-11 04:23:57'),
(158, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:24:00', '2024-09-11 04:24:00'),
(159, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:24:00', '2024-09-11 04:24:00'),
(160, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:24:02', '2024-09-11 04:24:02'),
(161, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:27:21', '2024-09-11 04:27:21'),
(162, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:27:25', '2024-09-11 04:27:25'),
(163, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:27:25', '2024-09-11 04:27:25'),
(164, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:27:26', '2024-09-11 04:27:26'),
(165, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:27:59', '2024-09-11 04:27:59'),
(166, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:28:05', '2024-09-11 04:28:05'),
(167, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:28:05', '2024-09-11 04:28:05'),
(168, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:28:07', '2024-09-11 04:28:07'),
(169, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:28:58', '2024-09-11 04:28:58'),
(170, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:28:59', '2024-09-11 04:28:59'),
(171, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:29:00', '2024-09-11 04:29:00'),
(172, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:29:21', '2024-09-11 04:29:21'),
(173, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"age_file_del_\":\"images\\/138903280_1950794388395517_5449271252274154044_n.jpg,\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:29:42', '2024-09-11 04:29:42'),
(174, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:29:42', '2024-09-11 04:29:42'),
(175, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:29:43', '2024-09-11 04:29:43'),
(176, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:29:48', '2024-09-11 04:29:48'),
(177, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:29:48', '2024-09-11 04:29:48'),
(178, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:29:50', '2024-09-11 04:29:50'),
(179, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:30:21', '2024-09-11 04:30:21'),
(180, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:30:22', '2024-09-11 04:30:22'),
(181, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:30:27', '2024-09-11 04:30:27'),
(182, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:30:29', '2024-09-11 04:30:29'),
(183, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:30:30', '2024-09-11 04:30:30'),
(184, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"age_file_del_\":\"images\\/138903280_1950794388395517_5449271252274154044_n.jpg,\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:30:47', '2024-09-11 04:30:47'),
(185, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:30:47', '2024-09-11 04:30:47'),
(186, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:30:49', '2024-09-11 04:30:49'),
(187, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:30:56', '2024-09-11 04:30:56'),
(188, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:30:56', '2024-09-11 04:30:56'),
(189, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:30:58', '2024-09-11 04:30:58'),
(190, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:32:26', '2024-09-11 04:32:26'),
(191, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:32:27', '2024-09-11 04:32:27'),
(192, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:32:37', '2024-09-11 04:32:37'),
(193, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:32:37', '2024-09-11 04:32:37'),
(194, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:32:39', '2024-09-11 04:32:39'),
(195, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"age_file_del_\":\"images\\/138903280_1950794388395517_5449271252274154044_n.jpg,\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:33:00', '2024-09-11 04:33:00'),
(196, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:33:00', '2024-09-11 04:33:00'),
(197, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:33:01', '2024-09-11 04:33:01'),
(198, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:33:07', '2024-09-11 04:33:07'),
(199, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:33:07', '2024-09-11 04:33:07'),
(200, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:33:09', '2024-09-11 04:33:09'),
(201, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:33:16', '2024-09-11 04:33:16'),
(202, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:33:17', '2024-09-11 04:33:17'),
(203, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"age_file_del_\":\"images\\/yazan.jpg,\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:33:29', '2024-09-11 04:33:29'),
(204, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:33:30', '2024-09-11 04:33:30'),
(205, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:33:33', '2024-09-11 04:33:33'),
(206, 1, 'admin/hishams/1', 'PUT', '37.123.65.255', '{\"name\":\"hisham\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\",\"_method\":\"PUT\"}', '2024-09-11 04:33:36', '2024-09-11 04:33:36'),
(207, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:33:36', '2024-09-11 04:33:36'),
(208, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:33:38', '2024-09-11 04:33:38'),
(209, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:33:48', '2024-09-11 04:33:48'),
(210, 1, 'admin/hishams/create', 'GET', '37.123.65.255', '[]', '2024-09-11 04:33:50', '2024-09-11 04:33:50'),
(211, 1, 'admin/hishams', 'POST', '37.123.65.255', '{\"name\":\"new\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\"}', '2024-09-11 04:34:03', '2024-09-11 04:34:03'),
(212, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:34:04', '2024-09-11 04:34:04'),
(213, 1, 'admin/hishams/2/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:34:05', '2024-09-11 04:34:05'),
(214, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:34:19', '2024-09-11 04:34:19'),
(215, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:34:21', '2024-09-11 04:34:21'),
(216, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:36:43', '2024-09-11 04:36:43'),
(217, 1, 'admin/media', 'GET', '37.123.65.255', '[]', '2024-09-11 04:36:45', '2024-09-11 04:36:45'),
(218, 1, 'admin/media', 'GET', '37.123.65.255', '{\"path\":\"\\/images\",\"fn\":\"selectFile\"}', '2024-09-11 04:36:47', '2024-09-11 04:36:47'),
(219, 1, 'admin/media/download', 'GET', '37.123.65.255', '{\"file\":\"images\\/138903280_1950794388395517_5449271252274154044_n.jpg\"}', '2024-09-11 04:36:49', '2024-09-11 04:36:49'),
(220, 1, 'admin/media/delete', 'DELETE', '37.123.65.255', '{\"files\":[\"images\\/138903280_1950794388395517_5449271252274154044_n.jpg\"]}', '2024-09-11 04:37:01', '2024-09-11 04:37:01'),
(221, 1, 'admin/media', 'GET', '37.123.65.255', '{\"path\":\"\\/images\",\"fn\":\"selectFile\"}', '2024-09-11 04:37:01', '2024-09-11 04:37:01'),
(222, 1, 'admin/media/upload', 'POST', '37.123.65.255', '{\"dir\":\"\\/images\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\"}', '2024-09-11 04:37:04', '2024-09-11 04:37:04'),
(223, 1, 'admin/media', 'GET', '37.123.65.255', '{\"path\":\"\\/images\",\"fn\":\"selectFile\"}', '2024-09-11 04:37:04', '2024-09-11 04:37:04'),
(224, 1, 'admin/media', 'GET', '37.123.65.255', '{\"path\":\"\\/images\",\"fn\":\"selectFile\"}', '2024-09-11 04:37:52', '2024-09-11 04:37:52'),
(225, 1, 'admin/media/download', 'GET', '37.123.65.255', '{\"file\":\"images\\/138903280_1950794388395517_5449271252274154044_n.jpg\"}', '2024-09-11 04:37:56', '2024-09-11 04:37:56'),
(226, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:38:54', '2024-09-11 04:38:54'),
(227, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:38:57', '2024-09-11 04:38:57'),
(228, 1, 'admin/hishams/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:39:02', '2024-09-11 04:39:02'),
(229, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:39:04', '2024-09-11 04:39:04'),
(230, 1, 'admin/hishams/create', 'GET', '37.123.65.255', '[]', '2024-09-11 04:39:05', '2024-09-11 04:39:05'),
(231, 1, 'admin/hishams', 'POST', '37.123.65.255', '{\"name\":\"newSt\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\"}', '2024-09-11 04:39:25', '2024-09-11 04:39:25'),
(232, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:39:25', '2024-09-11 04:39:25'),
(233, 1, 'admin/hishams/3/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:39:29', '2024-09-11 04:39:29'),
(234, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:40:05', '2024-09-11 04:40:05'),
(235, 1, 'admin/hishams/create', 'GET', '37.123.65.255', '[]', '2024-09-11 04:40:06', '2024-09-11 04:40:06'),
(236, 1, 'admin/hishams', 'POST', '37.123.65.255', '{\"name\":\"jisas\",\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\"}', '2024-09-11 04:40:28', '2024-09-11 04:40:28'),
(237, 1, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:40:28', '2024-09-11 04:40:28'),
(238, 1, 'admin/hishams/4/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:40:30', '2024-09-11 04:40:30'),
(239, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:40:36', '2024-09-11 04:40:36'),
(240, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:54:19', '2024-09-11 04:54:19'),
(241, 1, 'admin/auth/setting', 'GET', '37.123.65.255', '[]', '2024-09-11 04:54:24', '2024-09-11 04:54:24'),
(242, 1, 'admin/auth/roles', 'GET', '37.123.65.255', '[]', '2024-09-11 04:54:41', '2024-09-11 04:54:41'),
(243, 1, 'admin/auth/roles/create', 'GET', '37.123.65.255', '[]', '2024-09-11 04:54:42', '2024-09-11 04:54:42'),
(244, 1, 'admin/auth/roles', 'POST', '37.123.65.255', '{\"slug\":\"test\",\"name\":\"test\",\"permissions\":[\"3\",\"4\",\"7\",null],\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\"}', '2024-09-11 04:55:09', '2024-09-11 04:55:09'),
(245, 1, 'admin/auth/roles', 'GET', '37.123.65.255', '[]', '2024-09-11 04:55:09', '2024-09-11 04:55:09'),
(246, 1, 'admin/auth/users', 'GET', '37.123.65.255', '[]', '2024-09-11 04:55:12', '2024-09-11 04:55:12'),
(247, 1, 'admin/auth/users/create', 'GET', '37.123.65.255', '[]', '2024-09-11 04:55:14', '2024-09-11 04:55:14'),
(248, 1, 'admin/auth/users', 'POST', '37.123.65.255', '{\"username\":\"test\",\"name\":\"test\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"test\",\"roles\":[\"2\",null],\"search_terms\":null,\"permissions\":[null],\"_token\":\"TsFPKJhJ5HtDtygu4tw6KQpLAm7YVYTxHBb3iAkn\"}', '2024-09-11 04:55:35', '2024-09-11 04:55:35'),
(249, 1, 'admin/auth/users', 'GET', '37.123.65.255', '[]', '2024-09-11 04:55:36', '2024-09-11 04:55:36'),
(250, 1, 'admin/auth/logout', 'GET', '37.123.65.255', '[]', '2024-09-11 04:55:41', '2024-09-11 04:55:41'),
(251, 2, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:55:46', '2024-09-11 04:55:46'),
(252, 2, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 04:55:52', '2024-09-11 04:55:52'),
(253, 2, 'admin/hishams', 'GET', '37.123.65.255', '[]', '2024-09-11 04:56:01', '2024-09-11 04:56:01'),
(254, 2, 'admin/media', 'GET', '37.123.65.255', '[]', '2024-09-11 04:56:19', '2024-09-11 04:56:19'),
(255, 2, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:56:28', '2024-09-11 04:56:28'),
(256, 2, 'admin/auth/logout', 'GET', '37.123.65.255', '[]', '2024-09-11 04:56:30', '2024-09-11 04:56:30'),
(257, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 04:56:36', '2024-09-11 04:56:36'),
(258, 1, 'admin/auth/permissions', 'GET', '37.123.65.255', '[]', '2024-09-11 04:56:45', '2024-09-11 04:56:45'),
(259, 1, 'admin/auth/permissions/2/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 04:56:52', '2024-09-11 04:56:52'),
(260, 1, 'admin/auth/permissions', 'GET', '37.123.65.255', '[]', '2024-09-11 04:56:58', '2024-09-11 04:56:58'),
(261, 1, 'admin/auth/permissions/create', 'GET', '37.123.65.255', '[]', '2024-09-11 04:57:03', '2024-09-11 04:57:03'),
(262, 1, 'admin/auth/permissions', 'GET', '37.123.65.255', '[]', '2024-09-11 04:57:09', '2024-09-11 04:57:09'),
(263, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 04:58:07', '2024-09-11 04:58:07'),
(264, 1, 'admin/auth/menu/19', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 04:58:11', '2024-09-11 04:58:11'),
(265, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 04:58:12', '2024-09-11 04:58:12'),
(266, 1, 'admin/auth/menu/18', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 04:58:15', '2024-09-11 04:58:15'),
(267, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 04:58:15', '2024-09-11 04:58:15'),
(268, 1, 'admin/auth/menu/17', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 04:58:17', '2024-09-11 04:58:17'),
(269, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 04:58:18', '2024-09-11 04:58:18'),
(270, 1, 'admin/auth/menu/16', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 04:58:21', '2024-09-11 04:58:21'),
(271, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 04:58:21', '2024-09-11 04:58:21'),
(272, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 04:58:28', '2024-09-11 04:58:28'),
(273, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 04:58:32', '2024-09-11 04:58:32'),
(274, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 05:23:47', '2024-09-11 05:23:47'),
(275, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 05:28:41', '2024-09-11 05:28:41'),
(276, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 05:28:43', '2024-09-11 05:28:43'),
(277, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 05:28:45', '2024-09-11 05:28:45'),
(278, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 05:30:30', '2024-09-11 05:30:30'),
(279, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 05:30:31', '2024-09-11 05:30:31'),
(280, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 05:30:35', '2024-09-11 05:30:35'),
(281, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 05:31:36', '2024-09-11 05:31:36'),
(282, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 05:32:14', '2024-09-11 05:32:14'),
(283, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 05:32:29', '2024-09-11 05:32:29'),
(284, 1, 'admin/auth/roles', 'GET', '37.123.65.255', '[]', '2024-09-11 05:32:41', '2024-09-11 05:32:41'),
(285, 1, 'admin/auth/roles/2', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 05:33:26', '2024-09-11 05:33:26'),
(286, 1, 'admin/auth/roles', 'GET', '37.123.65.255', '[]', '2024-09-11 05:33:26', '2024-09-11 05:33:26'),
(287, 1, 'admin/media', 'GET', '37.123.65.255', '[]', '2024-09-11 05:33:36', '2024-09-11 05:33:36'),
(288, 1, 'admin/media', 'GET', '37.123.65.255', '{\"path\":\"\\/images\",\"fn\":\"selectFile\"}', '2024-09-11 05:33:39', '2024-09-11 05:33:39'),
(289, 1, 'admin/media/upload', 'POST', '37.123.65.255', '{\"dir\":\"\\/images\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 05:33:43', '2024-09-11 05:33:43'),
(290, 1, 'admin/media', 'GET', '37.123.65.255', '{\"path\":\"\\/images\",\"fn\":\"selectFile\"}', '2024-09-11 05:33:43', '2024-09-11 05:33:43'),
(291, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 06:06:47', '2024-09-11 06:06:47'),
(292, 1, 'admin/media', 'GET', '37.123.65.255', '{\"path\":\"\\/images\",\"fn\":\"selectFile\"}', '2024-09-11 06:09:39', '2024-09-11 06:09:39'),
(293, 1, 'admin/media', 'GET', '37.123.65.255', '{\"path\":\"\\/images\",\"fn\":\"selectFile\"}', '2024-09-11 06:12:12', '2024-09-11 06:12:12'),
(294, 1, 'admin/auth/users', 'GET', '37.123.65.255', '[]', '2024-09-11 06:12:58', '2024-09-11 06:12:58'),
(295, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 06:18:58', '2024-09-11 06:18:58'),
(296, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 06:19:19', '2024-09-11 06:19:19'),
(297, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 06:22:53', '2024-09-11 06:22:53'),
(298, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 06:25:53', '2024-09-11 06:25:53'),
(299, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 06:27:21', '2024-09-11 06:27:21'),
(300, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 06:27:22', '2024-09-11 06:27:22'),
(301, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 06:28:20', '2024-09-11 06:28:20'),
(302, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:28:26', '2024-09-11 06:28:26'),
(303, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"slider\",\"model_name\":\"App\\\\Models\\\\Slider\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\SliderController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"image\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:30:00', '2024-09-11 06:30:00'),
(304, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:30:01', '2024-09-11 06:30:01'),
(305, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:30:08', '2024-09-11 06:30:08'),
(306, 1, 'admin/sliders', 'GET', '37.123.65.255', '[]', '2024-09-11 06:30:10', '2024-09-11 06:30:10'),
(307, 1, 'admin/sliders/create', 'GET', '37.123.65.255', '[]', '2024-09-11 06:30:11', '2024-09-11 06:30:11'),
(308, 1, 'admin/sliders', 'POST', '37.123.65.255', '{\"link\":null,\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:30:37', '2024-09-11 06:30:37'),
(309, 1, 'admin/sliders', 'GET', '37.123.65.255', '[]', '2024-09-11 06:30:37', '2024-09-11 06:30:37'),
(310, 1, 'admin/sliders/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-11 06:30:38', '2024-09-11 06:30:38'),
(311, 1, 'admin/media', 'GET', '37.123.65.255', '[]', '2024-09-11 06:30:45', '2024-09-11 06:30:45'),
(312, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:30:47', '2024-09-11 06:30:47'),
(313, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"universities\",\"model_name\":\"App\\\\Models\\\\Universities\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\UniversitiesController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Images\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"location\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:32:05', '2024-09-11 06:32:05'),
(314, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:32:05', '2024-09-11 06:32:05'),
(315, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:32:17', '2024-09-11 06:32:17'),
(316, 1, 'admin/universities', 'GET', '37.123.65.255', '[]', '2024-09-11 06:32:19', '2024-09-11 06:32:19'),
(317, 1, 'admin/universities/create', 'GET', '37.123.65.255', '[]', '2024-09-11 06:32:21', '2024-09-11 06:32:21'),
(318, 1, 'admin/sliders', 'GET', '37.123.65.255', '[]', '2024-09-11 06:32:43', '2024-09-11 06:32:43'),
(319, 1, 'admin/sliders', 'GET', '37.123.65.255', '[]', '2024-09-11 06:33:30', '2024-09-11 06:33:30'),
(320, 1, 'admin/universities', 'GET', '37.123.65.255', '[]', '2024-09-11 06:33:31', '2024-09-11 06:33:31'),
(321, 1, 'admin/universities/create', 'GET', '37.123.65.255', '[]', '2024-09-11 06:33:33', '2024-09-11 06:33:33'),
(322, 1, 'admin/universities', 'GET', '37.123.65.255', '[]', '2024-09-11 06:33:49', '2024-09-11 06:33:49'),
(323, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:33:51', '2024-09-11 06:33:51'),
(324, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"courses\",\"model_name\":\"App\\\\Models\\\\Courses\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CoursesController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"Image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Qualification\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Location\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Fees\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Duration\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"about\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:35:14', '2024-09-11 06:35:14'),
(325, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:35:14', '2024-09-11 06:35:14'),
(326, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:35:27', '2024-09-11 06:35:27'),
(327, 1, 'admin/courses', 'GET', '37.123.65.255', '[]', '2024-09-11 06:35:29', '2024-09-11 06:35:29'),
(328, 1, 'admin/courses/create', 'GET', '37.123.65.255', '[]', '2024-09-11 06:35:31', '2024-09-11 06:35:31'),
(329, 1, 'admin/courses/create', 'GET', '37.123.65.255', '[]', '2024-09-11 06:36:20', '2024-09-11 06:36:20'),
(330, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 06:36:23', '2024-09-11 06:36:23'),
(331, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 06:36:31', '2024-09-11 06:36:31'),
(332, 1, 'admin/auth/menu/23', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:36:35', '2024-09-11 06:36:35'),
(333, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 06:36:35', '2024-09-11 06:36:35'),
(334, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:36:40', '2024-09-11 06:36:40'),
(335, 1, 'admin/universities', 'GET', '37.123.65.255', '[]', '2024-09-11 06:39:06', '2024-09-11 06:39:06'),
(336, 1, 'admin/universities/create', 'GET', '37.123.65.255', '[]', '2024-09-11 06:39:08', '2024-09-11 06:39:08'),
(337, 1, 'admin/universities', 'POST', '37.123.65.255', '{\"name\":\"test\",\"description\":\"test\",\"location\":\"tsd\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:39:22', '2024-09-11 06:39:22'),
(338, 1, 'admin/universities/create', 'GET', '37.123.65.255', '[]', '2024-09-11 06:39:23', '2024-09-11 06:39:23'),
(339, 1, 'admin/universities', 'POST', '37.123.65.255', '{\"name\":\"test\",\"description\":\"test\",\"location\":null,\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:39:39', '2024-09-11 06:39:39'),
(340, 1, 'admin/universities/create', 'GET', '37.123.65.255', '[]', '2024-09-11 06:39:39', '2024-09-11 06:39:39'),
(341, 1, 'admin/universities', 'GET', '37.123.65.255', '[]', '2024-09-11 06:41:36', '2024-09-11 06:41:36'),
(342, 1, 'admin/universities/create', 'GET', '37.123.65.255', '[]', '2024-09-11 06:41:37', '2024-09-11 06:41:37'),
(343, 1, 'admin/universities', 'POST', '37.123.65.255', '{\"name\":\"test\",\"description\":\"test\",\"location\":\"test\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:41:54', '2024-09-11 06:41:54'),
(344, 1, 'admin/universities', 'GET', '37.123.65.255', '[]', '2024-09-11 06:41:54', '2024-09-11 06:41:54'),
(345, 1, 'admin/media', 'GET', '37.123.65.255', '[]', '2024-09-11 06:42:32', '2024-09-11 06:42:32'),
(346, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:42:33', '2024-09-11 06:42:33'),
(347, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"courses\",\"model_name\":\"App\\\\Models\\\\Courses\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CoursesController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Qualification\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Fees\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Duration\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"about\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Location\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"university\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:43:49', '2024-09-11 06:43:49'),
(348, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:43:49', '2024-09-11 06:43:49');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(349, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"courses\",\"model_name\":\"App\\\\Models\\\\Courses\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CoursesController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Qualification\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Fees\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Duration\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"about\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Location\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"university\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:44:09', '2024-09-11 06:44:09'),
(350, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:44:09', '2024-09-11 06:44:09'),
(351, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"countries\",\"model_name\":\"App\\\\Models\\\\Countries\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CountriesController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:45:02', '2024-09-11 06:45:02'),
(352, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:45:02', '2024-09-11 06:45:02'),
(353, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"countries\",\"model_name\":\"App\\\\Models\\\\Countries\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CountriesController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:45:15', '2024-09-11 06:45:15'),
(354, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:45:16', '2024-09-11 06:45:16'),
(355, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:45:25', '2024-09-11 06:45:25'),
(356, 1, 'admin/countries', 'GET', '37.123.65.255', '[]', '2024-09-11 06:45:26', '2024-09-11 06:45:26'),
(357, 1, 'admin/countries/create', 'GET', '37.123.65.255', '[]', '2024-09-11 06:45:28', '2024-09-11 06:45:28'),
(358, 1, 'admin/courses', 'GET', '37.123.65.255', '[]', '2024-09-11 06:45:31', '2024-09-11 06:45:31'),
(359, 1, 'admin/universities', 'GET', '37.123.65.255', '[]', '2024-09-11 06:45:33', '2024-09-11 06:45:33'),
(360, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:45:48', '2024-09-11 06:45:48'),
(361, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"services\",\"model_name\":\"App\\\\Models\\\\Services\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ServicesController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"service_name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:47:12', '2024-09-11 06:47:12'),
(362, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:47:12', '2024-09-11 06:47:12'),
(363, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"brands\",\"model_name\":\"App\\\\Models\\\\Brands\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\BrandsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"link\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:48:03', '2024-09-11 06:48:03'),
(364, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:48:03', '2024-09-11 06:48:03'),
(365, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"testimonials\",\"model_name\":\"App\\\\Models\\\\Testimonials\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TestimonialsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"Name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Title\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Image\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:49:15', '2024-09-11 06:49:15'),
(366, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:49:15', '2024-09-11 06:49:15'),
(367, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"faqs\",\"model_name\":\"App\\\\Models\\\\FAQs\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\FAQsControllers\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"category\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"question\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"answer\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:50:22', '2024-09-11 06:50:22'),
(368, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:50:22', '2024-09-11 06:50:22'),
(369, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:50:33', '2024-09-11 06:50:33'),
(370, 1, 'admin/f-a-qs', 'GET', '37.123.65.255', '[]', '2024-09-11 06:50:35', '2024-09-11 06:50:35'),
(371, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:51:14', '2024-09-11 06:51:14'),
(372, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"frequently_asked_questions\",\"model_name\":\"App\\\\Models\\\\frequently\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\FrequentlyController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"category\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"question\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"answer\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:52:57', '2024-09-11 06:52:57'),
(373, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:52:57', '2024-09-11 06:52:57'),
(374, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:53:04', '2024-09-11 06:53:04'),
(375, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:53:05', '2024-09-11 06:53:05'),
(376, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 06:53:11', '2024-09-11 06:53:11'),
(377, 1, 'admin/auth/menu/29', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:53:15', '2024-09-11 06:53:15'),
(378, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 06:53:15', '2024-09-11 06:53:15'),
(379, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 06:53:20', '2024-09-11 06:53:20'),
(380, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:53:36', '2024-09-11 06:53:36'),
(381, 1, 'admin/testimonials', 'GET', '37.123.65.255', '[]', '2024-09-11 06:55:36', '2024-09-11 06:55:36'),
(382, 1, 'admin/testimonials/create', 'GET', '37.123.65.255', '[]', '2024-09-11 06:55:37', '2024-09-11 06:55:37'),
(383, 1, 'admin/services', 'GET', '37.123.65.255', '[]', '2024-09-11 06:55:42', '2024-09-11 06:55:42'),
(384, 1, 'admin/services/create', 'GET', '37.123.65.255', '[]', '2024-09-11 06:55:44', '2024-09-11 06:55:44'),
(385, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"user_messages\",\"model_name\":\"App\\\\Models\\\\FormMessages\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\FormMessagesController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"first_name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"last_name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email_address\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"mobile\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Preferred Study Destination\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Plan to Study\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Preferred Mode of Counseling\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Education Fund\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Preferred Study Level\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Additional Notes\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:55:52', '2024-09-11 06:55:52'),
(386, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:55:53', '2024-09-11 06:55:53'),
(387, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:56:25', '2024-09-11 06:56:25'),
(388, 1, 'admin/form-messages', 'GET', '37.123.65.255', '[]', '2024-09-11 06:56:27', '2024-09-11 06:56:27'),
(389, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:57:01', '2024-09-11 06:57:01'),
(390, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:57:25', '2024-09-11 06:57:25'),
(391, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:02', '2024-09-11 06:58:02'),
(392, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:05', '2024-09-11 06:58:05'),
(393, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:05', '2024-09-11 06:58:05'),
(394, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:05', '2024-09-11 06:58:05'),
(395, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:05', '2024-09-11 06:58:05'),
(396, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:06', '2024-09-11 06:58:06'),
(397, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:06', '2024-09-11 06:58:06'),
(398, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:06', '2024-09-11 06:58:06'),
(399, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:06', '2024-09-11 06:58:06'),
(400, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:06', '2024-09-11 06:58:06'),
(401, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:06', '2024-09-11 06:58:06'),
(402, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:06', '2024-09-11 06:58:06'),
(403, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:07', '2024-09-11 06:58:07'),
(404, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:07', '2024-09-11 06:58:07'),
(405, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:07', '2024-09-11 06:58:07'),
(406, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:07', '2024-09-11 06:58:07'),
(407, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:07', '2024-09-11 06:58:07'),
(408, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:07', '2024-09-11 06:58:07'),
(409, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:07', '2024-09-11 06:58:07'),
(410, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:07', '2024-09-11 06:58:07'),
(411, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:07', '2024-09-11 06:58:07'),
(412, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:08', '2024-09-11 06:58:08'),
(413, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:08', '2024-09-11 06:58:08'),
(414, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:08', '2024-09-11 06:58:08'),
(415, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:08', '2024-09-11 06:58:08'),
(416, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:08', '2024-09-11 06:58:08'),
(417, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:08', '2024-09-11 06:58:08'),
(418, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:08', '2024-09-11 06:58:08'),
(419, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:08', '2024-09-11 06:58:08'),
(420, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:08', '2024-09-11 06:58:08'),
(421, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:08', '2024-09-11 06:58:08'),
(422, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:08', '2024-09-11 06:58:08'),
(423, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:08', '2024-09-11 06:58:08'),
(424, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:09', '2024-09-11 06:58:09'),
(425, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:09', '2024-09-11 06:58:09'),
(426, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:09', '2024-09-11 06:58:09'),
(427, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:09', '2024-09-11 06:58:09'),
(428, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:09', '2024-09-11 06:58:09'),
(429, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:09', '2024-09-11 06:58:09'),
(430, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:09', '2024-09-11 06:58:09'),
(431, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:09', '2024-09-11 06:58:09'),
(432, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:09', '2024-09-11 06:58:09'),
(433, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:09', '2024-09-11 06:58:09'),
(434, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:09', '2024-09-11 06:58:09'),
(435, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:09', '2024-09-11 06:58:09'),
(436, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:10', '2024-09-11 06:58:10'),
(437, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:10', '2024-09-11 06:58:10'),
(438, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:10', '2024-09-11 06:58:10'),
(439, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:10', '2024-09-11 06:58:10'),
(440, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:10', '2024-09-11 06:58:10'),
(441, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:10', '2024-09-11 06:58:10'),
(442, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:10', '2024-09-11 06:58:10'),
(443, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:10', '2024-09-11 06:58:10'),
(444, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:10', '2024-09-11 06:58:10'),
(445, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:11', '2024-09-11 06:58:11'),
(446, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:11', '2024-09-11 06:58:11'),
(447, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:11', '2024-09-11 06:58:11'),
(448, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:11', '2024-09-11 06:58:11'),
(449, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:11', '2024-09-11 06:58:11'),
(450, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:12', '2024-09-11 06:58:12'),
(451, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:12', '2024-09-11 06:58:12'),
(452, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:12', '2024-09-11 06:58:12'),
(453, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:12', '2024-09-11 06:58:12'),
(454, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:13', '2024-09-11 06:58:13'),
(455, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:13', '2024-09-11 06:58:13'),
(456, 1, 'admin/testimonials', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:16', '2024-09-11 06:58:16'),
(457, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:17', '2024-09-11 06:58:17'),
(458, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:18', '2024-09-11 06:58:18'),
(459, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:18', '2024-09-11 06:58:18'),
(460, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:18', '2024-09-11 06:58:18'),
(461, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:18', '2024-09-11 06:58:18'),
(462, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:19', '2024-09-11 06:58:19'),
(463, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:19', '2024-09-11 06:58:19'),
(464, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:19', '2024-09-11 06:58:19'),
(465, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:19', '2024-09-11 06:58:19'),
(466, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:19', '2024-09-11 06:58:19'),
(467, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:20', '2024-09-11 06:58:20'),
(468, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:20', '2024-09-11 06:58:20'),
(469, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:20', '2024-09-11 06:58:20'),
(470, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:20', '2024-09-11 06:58:20'),
(471, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:21', '2024-09-11 06:58:21'),
(472, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:21', '2024-09-11 06:58:21'),
(473, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:21', '2024-09-11 06:58:21'),
(474, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:21', '2024-09-11 06:58:21'),
(475, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:22', '2024-09-11 06:58:22'),
(476, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:22', '2024-09-11 06:58:22'),
(477, 1, 'admin/frequentlies', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:22', '2024-09-11 06:58:22'),
(478, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:26', '2024-09-11 06:58:26'),
(479, 1, 'admin/auth/menu/30', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:58:30', '2024-09-11 06:58:30'),
(480, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:30', '2024-09-11 06:58:30'),
(481, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:58:39', '2024-09-11 06:58:39'),
(482, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"frequentlies_asks\",\"model_name\":\"App\\\\Models\\\\FrequentlyAsk\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\FrequentlyAskController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"Category\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Question\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Answer\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 06:59:21', '2024-09-11 06:59:21'),
(483, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:59:21', '2024-09-11 06:59:21'),
(484, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 06:59:31', '2024-09-11 06:59:31'),
(485, 1, 'admin/frequently-asks', 'GET', '37.123.65.255', '[]', '2024-09-11 06:59:33', '2024-09-11 06:59:33'),
(486, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 06:59:37', '2024-09-11 06:59:37'),
(487, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 06:59:58', '2024-09-11 06:59:58'),
(488, 1, 'admin/auth/menu/1', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 07:00:21', '2024-09-11 07:00:21'),
(489, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 07:00:21', '2024-09-11 07:00:21'),
(490, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 07:00:28', '2024-09-11 07:00:28'),
(491, 1, 'admin/auth/roles', 'GET', '37.123.65.255', '[]', '2024-09-11 07:00:39', '2024-09-11 07:00:39'),
(492, 1, 'admin/auth/roles/create', 'GET', '37.123.65.255', '[]', '2024-09-11 07:00:41', '2024-09-11 07:00:41'),
(493, 1, 'admin/auth/permissions', 'GET', '37.123.65.255', '[]', '2024-09-11 07:00:52', '2024-09-11 07:00:52'),
(494, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 07:00:56', '2024-09-11 07:00:56'),
(495, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 07:01:01', '2024-09-11 07:01:01'),
(496, 1, 'admin/auth/menu/5', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 07:01:17', '2024-09-11 07:01:17'),
(497, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 07:01:17', '2024-09-11 07:01:17'),
(498, 1, 'admin/auth/menu/6', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 07:01:20', '2024-09-11 07:01:20'),
(499, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 07:01:20', '2024-09-11 07:01:20'),
(500, 1, 'admin/auth/menu/7', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 07:01:23', '2024-09-11 07:01:23'),
(501, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 07:01:23', '2024-09-11 07:01:23'),
(502, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 07:01:35', '2024-09-11 07:01:35'),
(503, 1, 'admin/auth/menu/8', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 07:01:45', '2024-09-11 07:01:45'),
(504, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 07:01:46', '2024-09-11 07:01:46'),
(505, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 07:02:08', '2024-09-11 07:02:08'),
(506, 1, 'admin/auth/menu', 'POST', '37.123.65.255', '{\"_order\":\"[{\\\"id\\\":\\\"20\\\"},{\\\"id\\\":\\\"21\\\"},{\\\"id\\\":\\\"22\\\"},{\\\"id\\\":\\\"24\\\"},{\\\"id\\\":\\\"25\\\"},{\\\"id\\\":\\\"26\\\"},{\\\"id\\\":\\\"27\\\"},{\\\"id\\\":\\\"28\\\"},{\\\"id\\\":\\\"31\\\"},{\\\"id\\\":\\\"32\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"}]}]\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 07:02:17', '2024-09-11 07:02:17'),
(507, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 07:02:17', '2024-09-11 07:02:17'),
(508, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 07:02:18', '2024-09-11 07:02:18'),
(509, 1, 'admin/auth/menu/20', 'DELETE', '37.123.65.255', '{\"_method\":\"delete\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 07:02:57', '2024-09-11 07:02:57'),
(510, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 07:02:58', '2024-09-11 07:02:58'),
(511, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 07:03:08', '2024-09-11 07:03:08'),
(512, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.255', '{\"table_name\":\"articles\",\"model_name\":\"App\\\\Models\\\\Articles\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ArticlesController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Short Description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Full Article\",\"type\":\"longText\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 07:04:19', '2024-09-11 07:04:19'),
(513, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 07:04:19', '2024-09-11 07:04:19'),
(514, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-11 07:04:29', '2024-09-11 07:04:29'),
(515, 1, 'admin/articles', 'GET', '37.123.65.255', '[]', '2024-09-11 07:04:31', '2024-09-11 07:04:31'),
(516, 1, 'admin/articles/create', 'GET', '37.123.65.255', '[]', '2024-09-11 07:04:32', '2024-09-11 07:04:32'),
(517, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 07:07:32', '2024-09-11 07:07:32'),
(518, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 07:07:36', '2024-09-11 07:07:36'),
(519, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 07:07:57', '2024-09-11 07:07:57'),
(520, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 07:08:56', '2024-09-11 07:08:56'),
(521, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 07:09:34', '2024-09-11 07:09:34'),
(522, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 07:10:06', '2024-09-11 07:10:06'),
(523, 1, 'admin/auth/menu', 'POST', '37.123.65.255', '{\"_order\":\"[{\\\"id\\\":\\\"21\\\"},{\\\"id\\\":\\\"22\\\"},{\\\"id\\\":\\\"24\\\"},{\\\"id\\\":\\\"25\\\"},{\\\"id\\\":\\\"26\\\"},{\\\"id\\\":\\\"27\\\"},{\\\"id\\\":\\\"28\\\"},{\\\"id\\\":\\\"33\\\"},{\\\"id\\\":\\\"32\\\"},{\\\"id\\\":\\\"31\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"}]}]\",\"_token\":\"xaWxDGpe93V0dE9mk6n5Asb1ChyRf1VXe0yrhOxd\"}', '2024-09-11 07:10:15', '2024-09-11 07:10:15'),
(524, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 07:10:15', '2024-09-11 07:10:15'),
(525, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 07:10:17', '2024-09-11 07:10:17'),
(526, 1, 'admin/auth/menu', 'GET', '37.123.65.255', '[]', '2024-09-11 07:10:36', '2024-09-11 07:10:36'),
(527, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-11 07:10:46', '2024-09-11 07:10:46'),
(528, 1, 'admin', 'GET', '176.28.143.44', '[]', '2024-09-11 08:14:56', '2024-09-11 08:14:56'),
(529, 1, 'admin/sliders', 'GET', '176.28.143.44', '[]', '2024-09-11 08:15:10', '2024-09-11 08:15:10'),
(530, 1, 'admin/universities', 'GET', '176.28.143.44', '[]', '2024-09-11 08:15:14', '2024-09-11 08:15:14'),
(531, 1, 'admin/courses', 'GET', '176.28.143.44', '[]', '2024-09-11 08:15:16', '2024-09-11 08:15:16'),
(532, 1, 'admin/countries', 'GET', '176.28.143.44', '[]', '2024-09-11 08:15:26', '2024-09-11 08:15:26'),
(533, 1, 'admin/services', 'GET', '176.28.143.44', '[]', '2024-09-11 08:15:28', '2024-09-11 08:15:28'),
(534, 1, 'admin/brands', 'GET', '176.28.143.44', '[]', '2024-09-11 08:15:29', '2024-09-11 08:15:29'),
(535, 1, 'admin/universities', 'GET', '176.28.143.44', '[]', '2024-09-11 08:16:42', '2024-09-11 08:16:42'),
(536, 1, 'admin/universities/create', 'GET', '176.28.143.44', '[]', '2024-09-11 08:16:44', '2024-09-11 08:16:44'),
(537, 1, 'admin/sliders', 'GET', '176.28.143.44', '[]', '2024-09-11 08:16:48', '2024-09-11 08:16:48'),
(538, 1, 'admin/sliders/create', 'GET', '176.28.143.44', '[]', '2024-09-11 08:16:50', '2024-09-11 08:16:50'),
(539, 1, 'admin/countries', 'GET', '176.28.143.44', '[]', '2024-09-11 08:16:53', '2024-09-11 08:16:53'),
(540, 1, 'admin/countries/create', 'GET', '176.28.143.44', '[]', '2024-09-11 08:16:55', '2024-09-11 08:16:55'),
(541, 1, 'admin/articles', 'GET', '176.28.143.44', '[]', '2024-09-11 08:17:00', '2024-09-11 08:17:00'),
(542, 1, 'admin/articles/create', 'GET', '176.28.143.44', '[]', '2024-09-11 08:17:01', '2024-09-11 08:17:01'),
(543, 1, 'admin', 'GET', '87.238.130.85', '[]', '2024-09-11 17:34:30', '2024-09-11 17:34:30'),
(544, 1, 'admin', 'GET', '87.238.130.85', '[]', '2024-09-11 17:34:40', '2024-09-11 17:34:40'),
(545, 1, 'admin/universities', 'GET', '87.238.130.85', '[]', '2024-09-11 17:34:48', '2024-09-11 17:34:48'),
(546, 1, 'admin', 'GET', '87.238.130.85', '[]', '2024-09-11 17:34:56', '2024-09-11 17:34:56'),
(547, 1, 'admin', 'GET', '76.68.184.62', '[]', '2024-09-11 17:36:30', '2024-09-11 17:36:30'),
(548, 1, 'admin/sliders', 'GET', '76.68.184.62', '[]', '2024-09-11 17:36:52', '2024-09-11 17:36:52'),
(549, 1, 'admin/universities', 'GET', '76.68.184.62', '[]', '2024-09-11 17:36:56', '2024-09-11 17:36:56'),
(550, 1, 'admin/form-messages', 'GET', '76.68.184.62', '[]', '2024-09-11 17:37:03', '2024-09-11 17:37:03'),
(551, 1, 'admin/auth/setting', 'GET', '76.68.184.62', '[]', '2024-09-11 17:37:06', '2024-09-11 17:37:06'),
(552, 1, 'admin/auth/roles', 'GET', '76.68.184.62', '[]', '2024-09-11 17:37:18', '2024-09-11 17:37:18'),
(553, 1, 'admin', 'GET', '76.68.184.62', '[]', '2024-09-11 17:37:21', '2024-09-11 17:37:21'),
(554, 1, 'admin/courses', 'GET', '76.68.184.62', '[]', '2024-09-11 17:37:31', '2024-09-11 17:37:31'),
(555, 1, 'admin/brands', 'GET', '76.68.184.62', '[]', '2024-09-11 17:37:35', '2024-09-11 17:37:35'),
(556, 1, 'admin', 'GET', '86.108.33.33', '[]', '2024-09-13 13:05:23', '2024-09-13 13:05:23'),
(557, 1, 'admin/sliders', 'GET', '86.108.33.33', '[]', '2024-09-13 13:05:35', '2024-09-13 13:05:35'),
(558, 1, 'admin/universities', 'GET', '86.108.33.33', '[]', '2024-09-13 13:05:38', '2024-09-13 13:05:38'),
(559, 1, 'admin/auth/users', 'GET', '86.108.33.33', '[]', '2024-09-13 13:05:44', '2024-09-13 13:05:44'),
(560, 1, 'admin/form-messages', 'GET', '86.108.33.33', '[]', '2024-09-13 13:05:51', '2024-09-13 13:05:51'),
(561, 1, 'admin/frequently-asks', 'GET', '86.108.33.33', '[]', '2024-09-13 13:05:55', '2024-09-13 13:05:55'),
(562, 1, 'admin/articles', 'GET', '86.108.33.33', '[]', '2024-09-13 13:05:58', '2024-09-13 13:05:58'),
(563, 1, 'admin/testimonials', 'GET', '86.108.33.33', '[]', '2024-09-13 13:06:01', '2024-09-13 13:06:01'),
(564, 1, 'admin/universities', 'GET', '86.108.33.33', '[]', '2024-09-13 13:06:06', '2024-09-13 13:06:06'),
(565, 1, 'admin', 'GET', '176.29.4.68', '[]', '2024-09-13 17:35:41', '2024-09-13 17:35:41'),
(566, 1, 'admin/universities', 'GET', '176.29.4.68', '[]', '2024-09-13 17:35:52', '2024-09-13 17:35:52'),
(567, 1, 'admin/sliders', 'GET', '176.29.4.68', '[]', '2024-09-13 17:35:59', '2024-09-13 17:35:59'),
(568, 1, 'admin', 'GET', '176.29.4.68', '[]', '2024-09-13 17:36:03', '2024-09-13 17:36:03'),
(569, 1, 'admin/services', 'GET', '176.29.4.68', '[]', '2024-09-13 17:36:12', '2024-09-13 17:36:12'),
(570, 1, 'admin/universities', 'GET', '176.29.4.68', '[]', '2024-09-13 17:36:20', '2024-09-13 17:36:20'),
(571, 1, 'admin/sliders', 'GET', '176.29.4.68', '[]', '2024-09-13 17:36:24', '2024-09-13 17:36:24'),
(572, 1, 'admin', 'GET', '176.29.4.68', '[]', '2024-09-13 17:36:28', '2024-09-13 17:36:28'),
(573, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-14 06:06:13', '2024-09-14 06:06:13'),
(574, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-14 06:06:30', '2024-09-14 06:06:30'),
(575, 1, 'admin/countries', 'GET', '37.123.65.255', '[]', '2024-09-14 06:06:49', '2024-09-14 06:06:49'),
(576, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.255', '[]', '2024-09-14 06:06:54', '2024-09-14 06:06:54'),
(577, 1, 'admin/sliders', 'GET', '37.123.65.255', '[]', '2024-09-14 06:09:17', '2024-09-14 06:09:17'),
(578, 1, 'admin/universities', 'GET', '37.123.65.255', '[]', '2024-09-14 06:09:17', '2024-09-14 06:09:17'),
(579, 1, 'admin/countries', 'GET', '37.123.65.255', '[]', '2024-09-14 06:09:20', '2024-09-14 06:09:20'),
(580, 1, 'admin/universities', 'GET', '37.123.65.255', '[]', '2024-09-14 06:09:21', '2024-09-14 06:09:21'),
(581, 1, 'admin/universities', 'GET', '37.123.65.255', '[]', '2024-09-14 06:09:57', '2024-09-14 06:09:57'),
(582, 1, 'admin/sliders', 'GET', '37.123.65.255', '[]', '2024-09-14 06:15:14', '2024-09-14 06:15:14'),
(583, 1, 'admin/universities', 'GET', '37.123.65.255', '[]', '2024-09-14 06:15:15', '2024-09-14 06:15:15'),
(584, 1, 'admin/sliders', 'GET', '37.123.65.255', '[]', '2024-09-14 06:15:17', '2024-09-14 06:15:17'),
(585, 1, 'admin/sliders', 'GET', '37.123.65.255', '[]', '2024-09-14 06:15:19', '2024-09-14 06:15:19'),
(586, 1, 'admin/brands', 'GET', '37.123.65.255', '[]', '2024-09-14 06:15:56', '2024-09-14 06:15:56'),
(587, 1, 'admin/testimonials', 'GET', '37.123.65.255', '[]', '2024-09-14 06:15:58', '2024-09-14 06:15:58'),
(588, 1, 'admin/articles', 'GET', '37.123.65.255', '[]', '2024-09-14 06:15:59', '2024-09-14 06:15:59'),
(589, 1, 'admin/frequently-asks', 'GET', '37.123.65.255', '[]', '2024-09-14 06:16:00', '2024-09-14 06:16:00'),
(590, 1, 'admin/universities/create', 'GET', '37.123.65.255', '[]', '2024-09-14 06:17:27', '2024-09-14 06:17:27'),
(591, 1, 'admin/articles', 'GET', '37.123.65.255', '[]', '2024-09-14 06:17:37', '2024-09-14 06:17:37'),
(592, 1, 'admin/services', 'GET', '37.123.65.255', '[]', '2024-09-14 06:17:38', '2024-09-14 06:17:38'),
(593, 1, 'admin/sliders', 'GET', '37.123.65.255', '[]', '2024-09-14 06:17:41', '2024-09-14 06:17:41'),
(594, 1, 'admin', 'GET', '37.123.65.255', '[]', '2024-09-14 06:17:44', '2024-09-14 06:17:44'),
(595, 1, 'admin/countries', 'GET', '37.123.65.255', '[]', '2024-09-14 06:18:00', '2024-09-14 06:18:00'),
(596, 1, 'admin/sliders', 'GET', '37.123.65.255', '[]', '2024-09-14 06:18:01', '2024-09-14 06:18:01'),
(597, 1, 'admin/sliders', 'GET', '37.123.65.255', '[]', '2024-09-14 06:19:26', '2024-09-14 06:19:26'),
(598, 1, 'admin/sliders', 'GET', '37.123.65.255', '[]', '2024-09-14 06:20:35', '2024-09-14 06:20:35'),
(599, 1, 'admin/sliders/1/edit', 'GET', '37.123.65.255', '[]', '2024-09-14 06:21:17', '2024-09-14 06:21:17'),
(600, 1, 'admin', 'GET', '37.220.115.194', '[]', '2024-09-14 17:21:31', '2024-09-14 17:21:31'),
(601, 1, 'admin/services', 'GET', '37.220.115.194', '[]', '2024-09-14 17:21:45', '2024-09-14 17:21:45'),
(602, 1, 'admin/testimonials', 'GET', '37.220.115.194', '[]', '2024-09-14 17:21:58', '2024-09-14 17:21:58'),
(603, 1, 'admin/brands', 'GET', '37.220.115.194', '[]', '2024-09-14 17:22:04', '2024-09-14 17:22:04'),
(604, 1, 'admin/services', 'GET', '37.220.115.194', '[]', '2024-09-14 17:22:51', '2024-09-14 17:22:51'),
(605, 1, 'admin/brands', 'GET', '37.220.115.194', '[]', '2024-09-14 17:54:12', '2024-09-14 17:54:12'),
(606, 1, 'admin/testimonials', 'GET', '37.220.115.194', '[]', '2024-09-14 17:54:13', '2024-09-14 17:54:13'),
(607, 1, 'admin/services', 'GET', '37.220.115.194', '[]', '2024-09-14 17:54:14', '2024-09-14 17:54:14'),
(608, 1, 'admin', 'GET', '37.220.115.194', '[]', '2024-09-14 17:54:15', '2024-09-14 17:54:15'),
(609, 1, 'admin/frequently-asks', 'GET', '37.220.115.194', '[]', '2024-09-14 17:54:24', '2024-09-14 17:54:24'),
(610, 1, 'admin', 'GET', '37.220.115.194', '[]', '2024-09-14 17:54:26', '2024-09-14 17:54:26'),
(611, 1, 'admin', 'GET', '46.185.176.190', '[]', '2024-09-15 13:35:02', '2024-09-15 13:35:02'),
(612, 1, 'admin/sliders', 'GET', '46.185.176.190', '[]', '2024-09-15 13:35:11', '2024-09-15 13:35:11'),
(613, 1, 'admin/universities', 'GET', '46.185.176.190', '[]', '2024-09-15 13:35:14', '2024-09-15 13:35:14'),
(614, 1, 'admin/courses', 'GET', '46.185.176.190', '[]', '2024-09-15 13:35:16', '2024-09-15 13:35:16'),
(615, 1, 'admin/countries', 'GET', '46.185.176.190', '[]', '2024-09-15 13:35:24', '2024-09-15 13:35:24'),
(616, 1, 'admin/countries/create', 'GET', '46.185.176.190', '[]', '2024-09-15 13:35:25', '2024-09-15 13:35:25'),
(617, 1, 'admin', 'GET', '46.185.176.190', '[]', '2024-09-16 09:43:06', '2024-09-16 09:43:06'),
(618, 1, 'admin/sliders', 'GET', '46.185.176.190', '[]', '2024-09-16 09:43:16', '2024-09-16 09:43:16'),
(619, 1, 'admin/universities', 'GET', '46.185.176.190', '[]', '2024-09-16 09:43:16', '2024-09-16 09:43:16'),
(620, 1, 'admin/courses', 'GET', '46.185.176.190', '[]', '2024-09-16 09:43:17', '2024-09-16 09:43:17'),
(621, 1, 'admin/countries', 'GET', '46.185.176.190', '[]', '2024-09-16 09:43:18', '2024-09-16 09:43:18'),
(622, 1, 'admin/testimonials', 'GET', '46.185.176.190', '[]', '2024-09-16 09:43:20', '2024-09-16 09:43:20'),
(623, 1, 'admin/courses', 'GET', '46.185.176.190', '[]', '2024-09-16 09:43:46', '2024-09-16 09:43:46'),
(624, 1, 'admin/courses/create', 'GET', '46.185.176.190', '[]', '2024-09-16 09:43:50', '2024-09-16 09:43:50'),
(625, 1, 'admin/services', 'GET', '46.185.176.190', '[]', '2024-09-16 09:44:30', '2024-09-16 09:44:30'),
(626, 1, 'admin/services/create', 'GET', '46.185.176.190', '[]', '2024-09-16 09:44:31', '2024-09-16 09:44:31'),
(627, 1, 'admin/universities', 'GET', '46.185.176.190', '[]', '2024-09-16 09:45:39', '2024-09-16 09:45:39'),
(628, 1, 'admin/courses', 'GET', '46.185.176.190', '[]', '2024-09-16 09:45:40', '2024-09-16 09:45:40'),
(629, 1, 'admin/countries', 'GET', '46.185.176.190', '[]', '2024-09-16 09:45:41', '2024-09-16 09:45:41'),
(630, 1, 'admin/countries/create', 'GET', '46.185.176.190', '[]', '2024-09-16 09:45:44', '2024-09-16 09:45:44'),
(631, 1, 'admin/articles', 'GET', '46.185.176.190', '[]', '2024-09-16 09:45:46', '2024-09-16 09:45:46'),
(632, 1, 'admin/testimonials', 'GET', '46.185.176.190', '[]', '2024-09-16 09:45:47', '2024-09-16 09:45:47'),
(633, 1, 'admin/form-messages', 'GET', '46.185.176.190', '[]', '2024-09-16 09:46:03', '2024-09-16 09:46:03'),
(634, 1, 'admin/brands', 'GET', '46.185.176.190', '[]', '2024-09-16 09:46:11', '2024-09-16 09:46:11'),
(635, 1, 'admin/brands/create', 'GET', '46.185.176.190', '[]', '2024-09-16 09:46:16', '2024-09-16 09:46:16'),
(636, 1, 'admin/articles', 'GET', '46.185.176.190', '[]', '2024-09-16 09:47:04', '2024-09-16 09:47:04'),
(637, 1, 'admin/articles/create', 'GET', '46.185.176.190', '[]', '2024-09-16 09:47:05', '2024-09-16 09:47:05'),
(638, 1, 'admin/countries', 'GET', '46.185.176.190', '[]', '2024-09-16 09:47:51', '2024-09-16 09:47:51'),
(639, 1, 'admin/countries/create', 'GET', '46.185.176.190', '[]', '2024-09-16 09:47:53', '2024-09-16 09:47:53'),
(640, 1, 'admin/universities', 'GET', '46.185.176.190', '[]', '2024-09-16 09:48:09', '2024-09-16 09:48:09'),
(641, 1, 'admin/universities/create', 'GET', '46.185.176.190', '[]', '2024-09-16 09:48:10', '2024-09-16 09:48:10'),
(642, 1, 'admin/countries', 'GET', '46.185.176.190', '[]', '2024-09-16 09:48:12', '2024-09-16 09:48:12'),
(643, 1, 'admin/countries/create', 'GET', '46.185.176.190', '[]', '2024-09-16 09:48:13', '2024-09-16 09:48:13'),
(644, 1, 'admin/countries', 'POST', '46.185.176.190', '{\"name\":\"ghtsd\",\"_token\":\"TtTc1f0q8zOlnYo9aLF6ngLTZFV6Z8k2foPBuFcg\",\"after-save\":\"continue_creating\"}', '2024-09-16 09:48:31', '2024-09-16 09:48:31'),
(645, 1, 'admin/countries/create', 'GET', '46.185.176.190', '[]', '2024-09-16 09:48:32', '2024-09-16 09:48:32'),
(646, 1, 'admin/countries', 'POST', '46.185.176.190', '{\"name\":\"tuhyyk\",\"_token\":\"TtTc1f0q8zOlnYo9aLF6ngLTZFV6Z8k2foPBuFcg\"}', '2024-09-16 09:48:42', '2024-09-16 09:48:42'),
(647, 1, 'admin/countries', 'GET', '46.185.176.190', '[]', '2024-09-16 09:48:42', '2024-09-16 09:48:42'),
(648, 1, 'admin/countries/1', 'DELETE', '46.185.176.190', '{\"_method\":\"delete\",\"_token\":\"TtTc1f0q8zOlnYo9aLF6ngLTZFV6Z8k2foPBuFcg\"}', '2024-09-16 09:48:46', '2024-09-16 09:48:46'),
(649, 1, 'admin/countries', 'GET', '46.185.176.190', '[]', '2024-09-16 09:48:46', '2024-09-16 09:48:46'),
(650, 1, 'admin/countries/2/edit', 'GET', '46.185.176.190', '[]', '2024-09-16 09:48:49', '2024-09-16 09:48:49'),
(651, 1, 'admin/countries/2', 'PUT', '46.185.176.190', '{\"name\":\"tuhyyk\",\"_token\":\"TtTc1f0q8zOlnYo9aLF6ngLTZFV6Z8k2foPBuFcg\",\"_method\":\"PUT\"}', '2024-09-16 09:48:52', '2024-09-16 09:48:52'),
(652, 1, 'admin/countries', 'GET', '46.185.176.190', '[]', '2024-09-16 09:48:52', '2024-09-16 09:48:52'),
(653, 1, 'admin/countries/2', 'GET', '46.185.176.190', '[]', '2024-09-16 09:48:53', '2024-09-16 09:48:53'),
(654, 1, 'admin/countries/2', 'DELETE', '46.185.176.190', '{\"_method\":\"delete\",\"_token\":\"TtTc1f0q8zOlnYo9aLF6ngLTZFV6Z8k2foPBuFcg\"}', '2024-09-16 09:48:58', '2024-09-16 09:48:58'),
(655, 1, 'admin/countries', 'GET', '46.185.176.190', '[]', '2024-09-16 09:48:59', '2024-09-16 09:48:59'),
(656, 1, 'admin/countries', 'GET', '46.185.176.190', '{\"_columns_\":\"id,image,name\"}', '2024-09-16 09:49:19', '2024-09-16 09:49:19'),
(657, 1, 'admin/testimonials', 'GET', '46.185.176.190', '[]', '2024-09-16 09:49:29', '2024-09-16 09:49:29'),
(658, 1, 'admin/testimonials/create', 'GET', '46.185.176.190', '[]', '2024-09-16 09:49:30', '2024-09-16 09:49:30'),
(659, 1, 'admin/universities', 'GET', '46.185.176.190', '[]', '2024-09-16 09:49:35', '2024-09-16 09:49:35'),
(660, 1, 'admin/universities/1', 'DELETE', '46.185.176.190', '{\"_method\":\"delete\",\"_token\":\"TtTc1f0q8zOlnYo9aLF6ngLTZFV6Z8k2foPBuFcg\"}', '2024-09-16 09:50:22', '2024-09-16 09:50:22'),
(661, 1, 'admin/universities', 'GET', '46.185.176.190', '[]', '2024-09-16 09:50:23', '2024-09-16 09:50:23'),
(662, 1, 'admin/sliders', 'GET', '46.185.176.190', '[]', '2024-09-16 09:59:25', '2024-09-16 09:59:25'),
(663, 1, 'admin/universities', 'GET', '46.185.176.190', '[]', '2024-09-16 09:59:51', '2024-09-16 09:59:51'),
(664, 1, 'admin/universities/create', 'GET', '46.185.176.190', '[]', '2024-09-16 09:59:57', '2024-09-16 09:59:57'),
(665, 1, 'admin/courses', 'GET', '46.185.176.190', '[]', '2024-09-16 10:07:15', '2024-09-16 10:07:15'),
(666, 1, 'admin/universities', 'GET', '46.185.176.190', '[]', '2024-09-16 10:07:18', '2024-09-16 10:07:18'),
(667, 1, 'admin/universities/create', 'GET', '46.185.176.190', '[]', '2024-09-16 10:07:21', '2024-09-16 10:07:21'),
(668, 1, 'admin/courses', 'GET', '46.185.176.190', '[]', '2024-09-16 10:09:04', '2024-09-16 10:09:04'),
(669, 1, 'admin/courses/create', 'GET', '46.185.176.190', '[]', '2024-09-16 10:09:06', '2024-09-16 10:09:06'),
(670, 1, 'admin/universities', 'GET', '46.185.176.190', '[]', '2024-09-16 10:14:53', '2024-09-16 10:14:53'),
(671, 1, 'admin/universities/create', 'GET', '46.185.176.190', '[]', '2024-09-16 10:14:55', '2024-09-16 10:14:55'),
(672, 1, 'admin/courses', 'GET', '46.185.176.190', '[]', '2024-09-16 10:15:02', '2024-09-16 10:15:02'),
(673, 1, 'admin/courses/create', 'GET', '46.185.176.190', '[]', '2024-09-16 10:15:04', '2024-09-16 10:15:04'),
(674, 1, 'admin/countries', 'GET', '46.185.176.190', '[]', '2024-09-16 10:16:13', '2024-09-16 10:16:13'),
(675, 1, 'admin/countries/create', 'GET', '46.185.176.190', '[]', '2024-09-16 10:16:14', '2024-09-16 10:16:14'),
(676, 1, 'admin/services', 'GET', '46.185.176.190', '[]', '2024-09-16 10:16:45', '2024-09-16 10:16:45'),
(677, 1, 'admin/services/create', 'GET', '46.185.176.190', '[]', '2024-09-16 10:16:47', '2024-09-16 10:16:47'),
(678, 1, 'admin/brands', 'GET', '46.185.176.190', '[]', '2024-09-16 10:17:16', '2024-09-16 10:17:16'),
(679, 1, 'admin/brands/create', 'GET', '46.185.176.190', '[]', '2024-09-16 10:17:18', '2024-09-16 10:17:18'),
(680, 1, 'admin/testimonials', 'GET', '46.185.176.190', '[]', '2024-09-16 10:18:02', '2024-09-16 10:18:02'),
(681, 1, 'admin/testimonials/create', 'GET', '46.185.176.190', '[]', '2024-09-16 10:18:03', '2024-09-16 10:18:03'),
(682, 1, 'admin/testimonials', 'GET', '46.185.176.190', '[]', '2024-09-16 10:19:07', '2024-09-16 10:19:07'),
(683, 1, 'admin/testimonials/create', 'GET', '46.185.176.190', '[]', '2024-09-16 10:19:08', '2024-09-16 10:19:08'),
(684, 1, 'admin/testimonials', 'GET', '46.185.176.190', '[]', '2024-09-16 10:21:06', '2024-09-16 10:21:06'),
(685, 1, 'admin/testimonials/create', 'GET', '46.185.176.190', '[]', '2024-09-16 10:21:08', '2024-09-16 10:21:08'),
(686, 1, 'admin/articles', 'GET', '46.185.176.190', '[]', '2024-09-16 10:21:49', '2024-09-16 10:21:49'),
(687, 1, 'admin/articles/create', 'GET', '46.185.176.190', '[]', '2024-09-16 10:21:50', '2024-09-16 10:21:50'),
(688, 1, 'admin/frequently-asks', 'GET', '46.185.176.190', '[]', '2024-09-16 10:21:57', '2024-09-16 10:21:57'),
(689, 1, 'admin/frequently-asks/create', 'GET', '46.185.176.190', '[]', '2024-09-16 10:21:58', '2024-09-16 10:21:58'),
(690, 1, 'admin/testimonials', 'GET', '46.185.176.190', '[]', '2024-09-16 10:33:38', '2024-09-16 10:33:38'),
(691, 1, 'admin/testimonials/create', 'GET', '46.185.176.190', '[]', '2024-09-16 10:33:40', '2024-09-16 10:33:40'),
(692, 1, 'admin/frequently-asks', 'GET', '46.185.176.190', '[]', '2024-09-16 10:34:23', '2024-09-16 10:34:23'),
(693, 1, 'admin/frequently-asks/create', 'GET', '46.185.176.190', '[]', '2024-09-16 10:34:25', '2024-09-16 10:34:25'),
(694, 1, 'admin', 'GET', '37.123.65.74', '[]', '2024-09-22 08:07:02', '2024-09-22 08:07:02'),
(695, 1, 'admin/universities', 'GET', '37.123.65.74', '[]', '2024-09-22 08:07:04', '2024-09-22 08:07:04'),
(696, 1, 'admin/courses', 'GET', '37.123.65.74', '[]', '2024-09-22 08:07:05', '2024-09-22 08:07:05'),
(697, 1, 'admin/countries', 'GET', '37.123.65.74', '[]', '2024-09-22 08:07:07', '2024-09-22 08:07:07'),
(698, 1, 'admin/services', 'GET', '37.123.65.74', '[]', '2024-09-22 08:07:09', '2024-09-22 08:07:09'),
(699, 1, 'admin/brands', 'GET', '37.123.65.74', '[]', '2024-09-22 08:07:09', '2024-09-22 08:07:09'),
(700, 1, 'admin/articles', 'GET', '37.123.65.74', '[]', '2024-09-22 08:07:10', '2024-09-22 08:07:10'),
(701, 1, 'admin/frequently-asks', 'GET', '37.123.65.74', '[]', '2024-09-22 08:07:11', '2024-09-22 08:07:11'),
(702, 1, 'admin/form-messages', 'GET', '37.123.65.74', '[]', '2024-09-22 08:07:12', '2024-09-22 08:07:12'),
(703, 1, 'admin', 'GET', '37.123.65.74', '[]', '2024-09-23 08:02:05', '2024-09-23 08:02:05'),
(704, 1, 'admin/sliders', 'GET', '37.123.65.74', '[]', '2024-09-23 08:02:07', '2024-09-23 08:02:07'),
(705, 1, 'admin/services', 'GET', '37.123.65.74', '[]', '2024-09-23 08:02:08', '2024-09-23 08:02:08'),
(706, 1, 'admin', 'GET', '176.29.30.31', '[]', '2024-09-24 11:29:52', '2024-09-24 11:29:52'),
(707, 1, 'admin', 'GET', '176.29.30.31', '[]', '2024-09-24 11:32:42', '2024-09-24 11:32:42'),
(708, 1, 'admin', 'GET', '46.185.176.218', '[]', '2024-09-24 11:36:15', '2024-09-24 11:36:15'),
(709, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-24 11:36:35', '2024-09-24 11:36:35'),
(710, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-24 11:36:38', '2024-09-24 11:36:38'),
(711, 1, 'admin', 'GET', '176.28.133.176', '[]', '2024-09-24 11:38:45', '2024-09-24 11:38:45'),
(712, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"United Kingdom - UK\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 11:39:53', '2024-09-24 11:39:53'),
(713, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-24 11:39:54', '2024-09-24 11:39:54'),
(714, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-24 11:40:13', '2024-09-24 11:40:13'),
(715, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"The United States of America - USA\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_editing\"}', '2024-09-24 11:42:34', '2024-09-24 11:42:34'),
(716, 1, 'admin/countries/4/edit', 'GET', '46.185.176.218', '[]', '2024-09-24 11:42:34', '2024-09-24 11:42:34');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(717, 1, 'admin/countries/4', 'PUT', '46.185.176.218', '{\"name\":\"The United States of America - USA\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/admin.bridge.jo\\/admin\\/countries\\/create\"}', '2024-09-24 11:42:42', '2024-09-24 11:42:42'),
(718, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-24 11:42:42', '2024-09-24 11:42:42'),
(719, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-24 11:42:44', '2024-09-24 11:42:44'),
(720, 1, 'admin/countries/3/edit', 'GET', '46.185.176.218', '[]', '2024-09-24 11:50:26', '2024-09-24 11:50:26'),
(721, 1, 'admin/countries/3', 'PUT', '46.185.176.218', '{\"name\":\"The United Kingdom - UK\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"_method\":\"PUT\"}', '2024-09-24 11:50:32', '2024-09-24 11:50:32'),
(722, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-24 11:50:32', '2024-09-24 11:50:32'),
(723, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-24 11:50:34', '2024-09-24 11:50:34'),
(724, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Canada\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 11:50:39', '2024-09-24 11:50:39'),
(725, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-24 11:50:40', '2024-09-24 11:50:40'),
(726, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-24 11:50:43', '2024-09-24 11:50:43'),
(727, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Europe\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 11:50:49', '2024-09-24 11:50:49'),
(728, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-24 11:50:49', '2024-09-24 11:50:49'),
(729, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-24 11:50:52', '2024-09-24 11:50:52'),
(730, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Turkey\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 11:50:58', '2024-09-24 11:50:58'),
(731, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-24 11:50:58', '2024-09-24 11:50:58'),
(732, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-24 11:51:00', '2024-09-24 11:51:00'),
(733, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Cyprus\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 11:51:05', '2024-09-24 11:51:05'),
(734, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-24 11:51:05', '2024-09-24 11:51:05'),
(735, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-24 11:51:10', '2024-09-24 11:51:10'),
(736, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Malta\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 11:51:15', '2024-09-24 11:51:15'),
(737, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-24 11:51:15', '2024-09-24 11:51:15'),
(738, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-24 11:51:16', '2024-09-24 11:51:16'),
(739, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"New Zealand\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 11:51:35', '2024-09-24 11:51:35'),
(740, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-24 11:51:35', '2024-09-24 11:51:35'),
(741, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-24 11:51:37', '2024-09-24 11:51:37'),
(742, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Australia\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 11:51:43', '2024-09-24 11:51:43'),
(743, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-24 11:51:43', '2024-09-24 11:51:43'),
(744, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-24 11:52:58', '2024-09-24 11:52:58'),
(745, 1, 'admin/services/create', 'GET', '46.185.176.218', '[]', '2024-09-24 11:52:59', '2024-09-24 11:52:59'),
(746, 1, 'admin/frequently-asks', 'GET', '46.185.176.218', '[]', '2024-09-24 11:53:42', '2024-09-24 11:53:42'),
(747, 1, 'admin/frequently-asks/create', 'GET', '46.185.176.218', '[]', '2024-09-24 11:53:43', '2024-09-24 11:53:43'),
(748, 1, 'admin/frequently-asks', 'POST', '46.185.176.218', '{\"Category\":null,\"Question\":\"What Are the Benefits of Studying Abroad?\",\"Answer\":\"Studying abroad offers cultural enrichment, unique academic opportunities, improved career prospects, personal growth, and the chance to build an international network.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 11:55:07', '2024-09-24 11:55:07'),
(749, 1, 'admin/frequently-asks', 'GET', '46.185.176.218', '[]', '2024-09-24 11:55:07', '2024-09-24 11:55:07'),
(750, 1, 'admin/frequently-asks/create', 'GET', '46.185.176.218', '[]', '2024-09-24 11:55:21', '2024-09-24 11:55:21'),
(751, 1, 'admin/frequently-asks', 'POST', '46.185.176.218', '{\"Category\":null,\"Question\":\"How do I choose a study abroad destination?\",\"Answer\":\"Consider factors such as your academic goals, language preferences, budget, safety, and cultural interests. Our advisors can help you find the right fit for your needs.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 11:55:54', '2024-09-24 11:55:54'),
(752, 1, 'admin/frequently-asks', 'GET', '46.185.176.218', '[]', '2024-09-24 11:55:54', '2024-09-24 11:55:54'),
(753, 1, 'admin/frequently-asks/create', 'GET', '46.185.176.218', '[]', '2024-09-24 11:55:59', '2024-09-24 11:55:59'),
(754, 1, 'admin', 'GET', '176.29.30.31', '[]', '2024-09-24 11:58:28', '2024-09-24 11:58:28'),
(755, 1, 'admin/frequently-asks', 'GET', '176.29.30.31', '[]', '2024-09-24 11:58:32', '2024-09-24 11:58:32'),
(756, 1, 'admin/frequently-asks', 'POST', '46.185.176.218', '{\"Category\":null,\"Question\":\"What types of programs do you offer?\",\"Answer\":\"We offer a variety of programs including Summer Camps, Bachelor\\u2019s, Master\\u2019s, PhD and Language Courses across multiple countries.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_creating\"}', '2024-09-24 11:58:34', '2024-09-24 11:58:34'),
(757, 1, 'admin/frequently-asks/create', 'GET', '46.185.176.218', '[]', '2024-09-24 11:58:34', '2024-09-24 11:58:34'),
(758, 1, 'admin/frequently-asks/1', 'GET', '176.29.30.31', '[]', '2024-09-24 11:58:58', '2024-09-24 11:58:58'),
(759, 1, 'admin/frequently-asks', 'GET', '176.29.30.31', '[]', '2024-09-24 11:59:03', '2024-09-24 11:59:03'),
(760, 1, 'admin/frequently-asks', 'POST', '46.185.176.218', '{\"Category\":null,\"Question\":\"How do I choose the right study abroad program?\",\"Answer\":\"Consider factors such as your academic goals, preferred location, language of instruction, lifestyle preferences, and financial considerations. Research universities, programs, and living conditions to find the best fit.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_creating\"}', '2024-09-24 11:59:06', '2024-09-24 11:59:06'),
(761, 1, 'admin/frequently-asks/create', 'GET', '46.185.176.218', '[]', '2024-09-24 11:59:06', '2024-09-24 11:59:06'),
(762, 1, 'admin/courses', 'GET', '176.29.30.31', '[]', '2024-09-24 11:59:08', '2024-09-24 11:59:08'),
(763, 1, 'admin/countries', 'GET', '176.29.30.31', '[]', '2024-09-24 11:59:10', '2024-09-24 11:59:10'),
(764, 1, 'admin/services', 'GET', '176.29.30.31', '[]', '2024-09-24 11:59:15', '2024-09-24 11:59:15'),
(765, 1, 'admin/brands', 'GET', '176.29.30.31', '[]', '2024-09-24 11:59:18', '2024-09-24 11:59:18'),
(766, 1, 'admin/testimonials', 'GET', '176.29.30.31', '[]', '2024-09-24 11:59:21', '2024-09-24 11:59:21'),
(767, 1, 'admin/articles', 'GET', '176.29.30.31', '[]', '2024-09-24 11:59:24', '2024-09-24 11:59:24'),
(768, 1, 'admin/frequently-asks', 'POST', '46.185.176.218', '{\"Category\":null,\"Question\":\"What is the application process for studying abroad?\",\"Answer\":\"The process typically involves selecting a program, researching admission requirements, preparing necessary documents, submitting applications, and meeting deadlines. Each institution may have specific steps, so we check their guidelines carefully.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 11:59:57', '2024-09-24 11:59:57'),
(769, 1, 'admin/frequently-asks', 'GET', '46.185.176.218', '[]', '2024-09-24 11:59:57', '2024-09-24 11:59:57'),
(770, 1, 'admin/frequently-asks/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:00:02', '2024-09-24 12:00:02'),
(771, 1, 'admin/frequently-asks', 'POST', '46.185.176.218', '{\"Category\":null,\"Question\":\"What are the costs associated with studying abroad?\",\"Answer\":\"Costs vary by destination and program type, but typically include tuition, accommodation, travel, insurance, and living expenses. We provide detailed cost breakdowns for each program.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_creating\"}', '2024-09-24 12:00:36', '2024-09-24 12:00:36'),
(772, 1, 'admin/frequently-asks/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:00:37', '2024-09-24 12:00:37'),
(773, 1, 'admin/frequently-asks', 'POST', '46.185.176.218', '{\"Category\":null,\"Question\":\"How Long Do Study Abroad Programs take?\",\"Answer\":\"The duration of studying abroad varies by program and degree level. Typically, an undergraduate degree takes three to four years (three years in the UK and four in the US), a master\\u2019s degree takes one to two years, and a PhD usually requires three to four years.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_creating\"}', '2024-09-24 12:01:09', '2024-09-24 12:01:09'),
(774, 1, 'admin/frequently-asks/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:01:10', '2024-09-24 12:01:10'),
(775, 1, 'admin/frequently-asks', 'POST', '46.185.176.218', '{\"Category\":null,\"Question\":\"How Long Do Study Abroad Programs take?\",\"Answer\":\"Study abroad durations vary by program and degree: undergraduate degrees typically take three to four years (three in the UK, four in the US), master\\u2019s degrees one to two years, and PhDs three to four years.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 12:02:44', '2024-09-24 12:02:44'),
(776, 1, 'admin/frequently-asks', 'GET', '46.185.176.218', '[]', '2024-09-24 12:02:44', '2024-09-24 12:02:44'),
(777, 1, 'admin/frequently-asks/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:02:59', '2024-09-24 12:02:59'),
(778, 1, 'admin/frequently-asks', 'POST', '46.185.176.218', '{\"Category\":null,\"Question\":\"What Are the Entry Requirements for Study Abroad programs?\",\"Answer\":\"Entry requirements vary by country and institution but usually include academic qualifications, proof of language proficiency, and sometimes-standardized test scores. Always verify specific requirements with your chosen universities.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 12:03:17', '2024-09-24 12:03:17'),
(779, 1, 'admin/frequently-asks', 'GET', '46.185.176.218', '[]', '2024-09-24 12:03:17', '2024-09-24 12:03:17'),
(780, 1, 'admin/frequently-asks/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:03:19', '2024-09-24 12:03:19'),
(781, 1, 'admin/frequently-asks', 'POST', '46.185.176.218', '{\"Category\":null,\"Question\":\"Are scholarships or financial aid available?\",\"Answer\":\"Yes, we offer information on various scholarships and partial discounts. Be sure to contact us for updates on available opportunities.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_creating\"}', '2024-09-24 12:03:45', '2024-09-24 12:03:45'),
(782, 1, 'admin/frequently-asks/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:03:46', '2024-09-24 12:03:46'),
(783, 1, 'admin/frequently-asks', 'POST', '46.185.176.218', '{\"Category\":null,\"Question\":\"What should I do if I have more questions or need assistance?\",\"Answer\":\"Contact us directly through our website, email, or phone. We are here to help with any questions or concerns you may have about your study abroad experience.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 12:04:05', '2024-09-24 12:04:05'),
(784, 1, 'admin/frequently-asks', 'GET', '46.185.176.218', '[]', '2024-09-24 12:04:05', '2024-09-24 12:04:05'),
(785, 1, 'admin/frequently-asks/1', 'GET', '46.185.176.218', '[]', '2024-09-24 12:04:11', '2024-09-24 12:04:11'),
(786, 1, 'admin/brands', 'GET', '46.185.176.218', '[]', '2024-09-24 12:04:26', '2024-09-24 12:04:26'),
(787, 1, 'admin/brands/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:04:28', '2024-09-24 12:04:28'),
(788, 1, 'admin/brands', 'GET', '176.29.30.31', '[]', '2024-09-24 12:09:38', '2024-09-24 12:09:38'),
(789, 1, 'admin/brands/create', 'GET', '176.29.30.31', '[]', '2024-09-24 12:09:40', '2024-09-24 12:09:40'),
(790, 1, 'admin/brands', 'POST', '176.29.30.31', '{\"name\":\"Test\",\"link\":null,\"_token\":\"eybB6yYK31xYf0p14XITdoydszHCq1YhEzPP912w\"}', '2024-09-24 12:10:01', '2024-09-24 12:10:01'),
(791, 1, 'admin/brands', 'GET', '176.29.30.31', '[]', '2024-09-24 12:10:01', '2024-09-24 12:10:01'),
(792, 1, 'admin/brands/1', 'DELETE', '176.29.30.31', '{\"_method\":\"delete\",\"_token\":\"eybB6yYK31xYf0p14XITdoydszHCq1YhEzPP912w\"}', '2024-09-24 12:10:07', '2024-09-24 12:10:07'),
(793, 1, 'admin/brands', 'GET', '176.29.30.31', '[]', '2024-09-24 12:10:07', '2024-09-24 12:10:07'),
(794, 1, 'admin/testimonials', 'GET', '176.29.30.31', '[]', '2024-09-24 12:10:45', '2024-09-24 12:10:45'),
(795, 1, 'admin/countries', 'GET', '176.29.30.31', '[]', '2024-09-24 12:10:49', '2024-09-24 12:10:49'),
(796, 1, 'admin/articles', 'GET', '176.29.30.31', '[]', '2024-09-24 12:10:55', '2024-09-24 12:10:55'),
(797, 1, 'admin/services', 'GET', '176.29.30.31', '[]', '2024-09-24 12:11:00', '2024-09-24 12:11:00'),
(798, 1, 'admin/testimonials', 'GET', '46.185.176.218', '[]', '2024-09-24 12:17:17', '2024-09-24 12:17:17'),
(799, 1, 'admin/testimonials/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:17:31', '2024-09-24 12:17:31'),
(800, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-24 12:27:52', '2024-09-24 12:27:52'),
(801, 1, 'admin/services/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:27:54', '2024-09-24 12:27:54'),
(802, 1, 'admin/services', 'POST', '46.185.176.218', '{\"service_name\":\"University Acceptances & Applications\",\"description\":\"We guide you through the entire application process, ensuring your submission is complete and meets all requirements for successful acceptance.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_creating\"}', '2024-09-24 12:34:20', '2024-09-24 12:34:20'),
(803, 1, 'admin/services/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:34:20', '2024-09-24 12:34:20'),
(804, 1, 'admin/services', 'POST', '46.185.176.218', '{\"service_name\":\"Accredited Universities from the Jordanian Ministry of Higher Education\",\"description\":\"We partner with accredited institutions recognized by the Ministry of Higher Education in Jordan, ensuring you receive a quality education that\\u2019s internationally acknowledged.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_creating\"}', '2024-09-24 12:35:18', '2024-09-24 12:35:18'),
(805, 1, 'admin/services/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:35:18', '2024-09-24 12:35:18'),
(806, 1, 'admin/services', 'POST', '46.185.176.218', '{\"service_name\":\"Instant University Offers\",\"description\":\"Receive fast-track offers from universities based on your qualifications, allowing you to secure your place quickly and easily.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_creating\"}', '2024-09-24 12:35:44', '2024-09-24 12:35:44'),
(807, 1, 'admin/services/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:35:45', '2024-09-24 12:35:45'),
(808, 1, 'admin/services', 'POST', '46.185.176.218', '{\"service_name\":\"Alternative Options for Lower Grades\",\"description\":\"If your results don\\u2019t meet expectations, Bridge provides a range of alternative university options to keep your study plans on track.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_creating\"}', '2024-09-24 12:36:16', '2024-09-24 12:36:16'),
(809, 1, 'admin/services/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:36:16', '2024-09-24 12:36:16'),
(810, 1, 'admin/services', 'POST', '46.185.176.218', '{\"service_name\":\"University Course Selection\",\"description\":\"We assist you in selecting the right courses tailored to your career goals and interests, ensuring the best fit for your academic journey.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_creating\"}', '2024-09-24 12:36:31', '2024-09-24 12:36:31'),
(811, 1, 'admin/services/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:36:31', '2024-09-24 12:36:31'),
(812, 1, 'admin/services', 'POST', '46.185.176.218', '{\"service_name\":\"Personal Statements & Interview Preparations\",\"description\":\"Get expert guidance in crafting compelling personal statements and preparing for interviews to enhance your application\\u2019s success.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_creating\"}', '2024-09-24 12:36:52', '2024-09-24 12:36:52'),
(813, 1, 'admin/services/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:36:52', '2024-09-24 12:36:52'),
(814, 1, 'admin/services', 'POST', '46.185.176.218', '{\"service_name\":\"Scholarships & Discounts\",\"description\":\"Explore various scholarships and discounts available to international students, helping to make your education more affordable.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_creating\"}', '2024-09-24 12:37:16', '2024-09-24 12:37:16'),
(815, 1, 'admin/services/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:37:16', '2024-09-24 12:37:16'),
(816, 1, 'admin/services', 'POST', '46.185.176.218', '{\"service_name\":\"University Accommodation\",\"description\":\"We help you find suitable accommodation options that meet your needs, ensuring a comfortable living environment during your studies.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_creating\"}', '2024-09-24 12:37:38', '2024-09-24 12:37:38'),
(817, 1, 'admin/services/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:37:39', '2024-09-24 12:37:39'),
(818, 1, 'admin/services', 'POST', '46.185.176.218', '{\"service_name\":\"Student Visa Assistance\",\"description\":\"Our team provides step-by-step support for obtaining your student visa, ensuring a smooth transition to studying abroad.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_creating\"}', '2024-09-24 12:37:57', '2024-09-24 12:37:57'),
(819, 1, 'admin/services/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:37:57', '2024-09-24 12:37:57'),
(820, 1, 'admin/services', 'POST', '46.185.176.218', '{\"service_name\":\"Summer Camps Abroad\",\"description\":\"Join our exciting summer camps that offer cultural experiences and academic enrichment, perfect for enhancing your skills and networking.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_creating\"}', '2024-09-24 12:38:43', '2024-09-24 12:38:43'),
(821, 1, 'admin/services/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:38:44', '2024-09-24 12:38:44'),
(822, 1, 'admin/services', 'POST', '46.185.176.218', '{\"service_name\":\"English Language Courses Abroad\",\"description\":\"Access language support services to improve your English proficiency, helping you succeed academically and socially in an English-speaking environment.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\",\"after-save\":\"continue_creating\"}', '2024-09-24 12:39:05', '2024-09-24 12:39:05'),
(823, 1, 'admin/services/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:39:05', '2024-09-24 12:39:05'),
(824, 1, 'admin/services', 'POST', '46.185.176.218', '{\"service_name\":\"Ongoing Support\",\"description\":\"Receive continuous assistance before and during your academic journey, from your Bachelor\\u2019s degree to Master\\u2019s and PhD, so you always have guidance and support along the way.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 12:40:31', '2024-09-24 12:40:31'),
(825, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-24 12:40:31', '2024-09-24 12:40:31'),
(826, 1, 'admin/articles', 'GET', '46.185.176.218', '[]', '2024-09-24 12:43:35', '2024-09-24 12:43:35'),
(827, 1, 'admin/articles/create', 'GET', '46.185.176.218', '[]', '2024-09-24 12:43:37', '2024-09-24 12:43:37'),
(828, 1, 'admin/articles', 'POST', '46.185.176.218', '{\"title\":\"Strengthening Educational Ties: Bridge International and Philadelphia University Sign MOU\",\"Short_Description\":\"Bridge International for Academic Services and Philadelphia University have signed a Memorandum of Understanding to enhance cooperation in Jordan\'s education sector, supporting students who wish to study abroad and attracting international students to local institutions.\",\"Full_Article\":\"We are excited to announce the signing of a Memorandum of Understanding between Bridge International for Academic Services, represented by Dr. Nidal Qatamin and Mr. Asim Al-Majali, and Philadelphia University, represented by President Dr. Abdullah Al-Jarrah and Dr. Sufyan Al-Nawafleh. This collaboration aims to strengthen support for Jordan\'s education sector and assist students seeking opportunities to study abroad.\\r\\n\\r\\nThe agreement also emphasizes attracting international students to local institutions, particularly Philadelphia University, and includes plans to organize exhibitions and conferences both within Jordan and internationally. This partnership marks a significant step toward enhancing educational opportunities for students in the region.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 13:12:10', '2024-09-24 13:12:10'),
(829, 1, 'admin/articles', 'GET', '46.185.176.218', '[]', '2024-09-24 13:12:10', '2024-09-24 13:12:10'),
(830, 1, 'admin/articles/create', 'GET', '46.185.176.218', '[]', '2024-09-24 13:18:18', '2024-09-24 13:18:18'),
(831, 1, 'admin/articles', 'POST', '46.185.176.218', '{\"title\":\"BridgInternational Partners with De La Salle - Amman Schools to Enhance Educational Opportunities\",\"Short_Description\":\"Bridge International has signed a cooperation agreement with De La Salle - Amman Schools to provide students with access to top-tier international universities and promote the exchange of academic expertise.\",\"Full_Article\":\"Bridge International is pleased to announce a cooperation agreement with De La Salle - Amman Schools. The agreement was signed by Mr. Asem Al Majali, Public Relations and Marketing Manager for Bridge International, and Dr. Ra\'eda Al Qassas representing De La Salle - Amman Schools.\\r\\n\\r\\nFounded in 1950, De La Salle - Amman is a prestigious private school in Jordan, part of a global network spanning 82 countries. This collaboration aims to ensure that students have access to high-quality international universities and to foster the exchange of expertise in professional and academic guidance. By working together, both institutions are committed to enhancing educational opportunities for students in the region.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 13:24:26', '2024-09-24 13:24:26'),
(832, 1, 'admin/articles', 'GET', '46.185.176.218', '[]', '2024-09-24 13:24:26', '2024-09-24 13:24:26'),
(833, 1, 'admin/articles/create', 'GET', '46.185.176.218', '[]', '2024-09-24 13:26:15', '2024-09-24 13:26:15'),
(834, 1, 'admin/articles', 'POST', '46.185.176.218', '{\"title\":\"Bridge International\'s Sister Company Partners with British Council to Enhance Educational Offerings\",\"Short_Description\":\"Bridge International for Academic Services announces that its sister company, Adoum Cultural Centre, has signed a strategic agreement with the British Council to enhance offerings, particularly through the IELTS program, benefiting clients and the community.\",\"Full_Article\":\"Bridge International for Academic Services is pleased to announce that its sister company, Adoum Cultural Centre, has signed a strategic agreement with the British Council, a globally recognized leader in education. This partnership aims to enhance our educational offerings, focusing on the British Council\'s IELTS program, which is essential for academic and professional advancement.\\r\\n\\r\\nWe are excited about the positive impact this collaboration will have on our clients and the broader community. By leveraging the expertise of the British Council, we aim to provide enhanced support and resources to help students achieve their educational goals.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 13:30:22', '2024-09-24 13:30:22'),
(835, 1, 'admin/articles', 'GET', '46.185.176.218', '[]', '2024-09-24 13:30:23', '2024-09-24 13:30:23'),
(836, 1, 'admin/articles/create', 'GET', '46.185.176.218', '[]', '2024-09-24 13:32:08', '2024-09-24 13:32:08'),
(837, 1, 'admin/articles', 'POST', '46.185.176.218', '{\"title\":\"Celebrating Global Education: Our 31st Educational Fair\",\"Short_Description\":\"Under the patronage of the Minister of Higher Education, we proudly inaugurated our 31st Educational Fair, connecting Jordanian students with leading universities worldwide and promoting pathways to academic excellence.\",\"Full_Article\":\"Under the esteemed patronage of His Excellency, the Minister of Higher Education and Scientific Research, and in the presence of the Chairman of Bridge International for Academic Services, we proudly celebrated the inauguration of our 31st Educational Fair.\\r\\n\\r\\nThis prestigious event, recognized as one of the largest in the region, brought together leading universities from across the globe, offering Jordanian students direct access to a wealth of international educational opportunities.\\r\\n\\r\\nBridge International for Academic Services remains dedicated to fostering global academic excellence and shaping the future of higher education in Jordan. We extend our heartfelt gratitude to all our esteemed partners who played a crucial role in the success of this event. Your invaluable support helps create pathways for students to achieve their academic goals and build brighter futures.\\r\\n\\r\\nTogether, we are driving the future of education and expanding opportunities for global success.\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 13:33:40', '2024-09-24 13:33:40'),
(838, 1, 'admin/articles', 'GET', '46.185.176.218', '[]', '2024-09-24 13:33:40', '2024-09-24 13:33:40'),
(839, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-24 14:51:13', '2024-09-24 14:51:13'),
(840, 1, 'admin/courses', 'GET', '46.185.176.218', '[]', '2024-09-24 14:51:15', '2024-09-24 14:51:15'),
(841, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-24 14:51:18', '2024-09-24 14:51:18'),
(842, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-24 14:51:23', '2024-09-24 14:51:23'),
(843, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Ireland\",\"_token\":\"TSoLxGZnaKJXBF5ljK2WOeN9gmzOgMLVA86SYezm\"}', '2024-09-24 14:51:28', '2024-09-24 14:51:28'),
(844, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-24 14:51:28', '2024-09-24 14:51:28'),
(845, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-24 14:51:32', '2024-09-24 14:51:32'),
(846, 1, 'admin/services/10', 'GET', '46.185.176.218', '[]', '2024-09-24 14:51:35', '2024-09-24 14:51:35'),
(847, 1, 'admin', 'GET', '46.185.176.218', '[]', '2024-09-25 07:47:55', '2024-09-25 07:47:55'),
(848, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-25 07:47:58', '2024-09-25 07:47:58'),
(849, 1, 'admin/courses', 'GET', '46.185.176.218', '[]', '2024-09-25 07:48:26', '2024-09-25 07:48:26'),
(850, 1, 'admin/courses/create', 'GET', '46.185.176.218', '[]', '2024-09-25 07:48:28', '2024-09-25 07:48:28'),
(851, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-25 07:58:14', '2024-09-25 07:58:14'),
(852, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-25 07:58:16', '2024-09-25 07:58:16'),
(853, 1, 'admin/courses', 'GET', '46.185.176.218', '[]', '2024-09-25 08:02:18', '2024-09-25 08:02:18'),
(854, 1, 'admin/courses/create', 'GET', '46.185.176.218', '[]', '2024-09-25 08:02:20', '2024-09-25 08:02:20'),
(855, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-25 08:49:28', '2024-09-25 08:49:28'),
(856, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-25 08:49:31', '2024-09-25 08:49:31'),
(857, 1, 'admin/brands', 'GET', '46.185.176.218', '[]', '2024-09-25 08:50:06', '2024-09-25 08:50:06'),
(858, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-25 08:50:08', '2024-09-25 08:50:08'),
(859, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-25 08:50:10', '2024-09-25 08:50:10'),
(860, 1, 'admin/testimonials', 'GET', '46.185.176.218', '[]', '2024-09-25 08:50:20', '2024-09-25 08:50:20'),
(861, 1, 'admin/brands', 'GET', '46.185.176.218', '[]', '2024-09-25 08:50:24', '2024-09-25 08:50:24'),
(862, 1, 'admin', 'GET', '46.185.176.218', '[]', '2024-09-26 09:43:51', '2024-09-26 09:43:51'),
(863, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-26 09:43:53', '2024-09-26 09:43:53'),
(864, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 09:49:40', '2024-09-26 09:49:40'),
(865, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-26 09:50:22', '2024-09-26 09:50:22'),
(866, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-26 10:06:07', '2024-09-26 10:06:07'),
(867, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 10:06:09', '2024-09-26 10:06:09'),
(868, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-26 10:59:02', '2024-09-26 10:59:02'),
(869, 1, 'admin/courses', 'GET', '46.185.176.218', '[]', '2024-09-26 10:59:03', '2024-09-26 10:59:03'),
(870, 1, 'admin/courses/create', 'GET', '46.185.176.218', '[]', '2024-09-26 10:59:04', '2024-09-26 10:59:04'),
(871, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-26 10:59:38', '2024-09-26 10:59:38'),
(872, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 10:59:40', '2024-09-26 10:59:40'),
(873, 1, 'admin', 'GET', '46.185.176.218', '[]', '2024-09-26 13:22:18', '2024-09-26 13:22:18'),
(874, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-26 13:26:08', '2024-09-26 13:26:08'),
(875, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:26:35', '2024-09-26 13:26:35'),
(876, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Aston University\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:30:13', '2024-09-26 13:30:13'),
(877, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:30:14', '2024-09-26 13:30:14'),
(878, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Aberdeen\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:31:03', '2024-09-26 13:31:03'),
(879, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:31:04', '2024-09-26 13:31:04'),
(880, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Aberystwyth University\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:32:22', '2024-09-26 13:32:22'),
(881, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:32:23', '2024-09-26 13:32:23'),
(882, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Queen\'s University Belfast\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:33:12', '2024-09-26 13:33:12'),
(883, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:33:12', '2024-09-26 13:33:12'),
(884, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Brunel University London\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:34:02', '2024-09-26 13:34:02'),
(885, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:34:02', '2024-09-26 13:34:02'),
(886, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Bradford\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:39:13', '2024-09-26 13:39:13'),
(887, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:39:13', '2024-09-26 13:39:13'),
(888, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Bath\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:39:47', '2024-09-26 13:39:47'),
(889, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:39:47', '2024-09-26 13:39:47'),
(890, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Buckingham\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:40:25', '2024-09-26 13:40:25'),
(891, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:40:25', '2024-09-26 13:40:25'),
(892, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Bangor University\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:41:24', '2024-09-26 13:41:24'),
(893, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:41:24', '2024-09-26 13:41:24'),
(894, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"UWE Bristol: University of the West of England Bristol\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:42:11', '2024-09-26 13:42:11'),
(895, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:42:11', '2024-09-26 13:42:11'),
(896, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Brighton\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:43:37', '2024-09-26 13:43:37'),
(897, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:43:37', '2024-09-26 13:43:37'),
(898, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"BPP University\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:46:12', '2024-09-26 13:46:12'),
(899, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:46:12', '2024-09-26 13:46:12'),
(900, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Bristol\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:47:22', '2024-09-26 13:47:22'),
(901, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:47:22', '2024-09-26 13:47:22'),
(902, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Birmingham City University\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:48:57', '2024-09-26 13:48:57'),
(903, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:48:57', '2024-09-26 13:48:57'),
(904, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Birmingham\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:49:37', '2024-09-26 13:49:37'),
(905, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:49:37', '2024-09-26 13:49:37'),
(906, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Bournemouth University\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:50:15', '2024-09-26 13:50:15'),
(907, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:50:16', '2024-09-26 13:50:16'),
(908, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Cardiff University\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 13:51:16', '2024-09-26 13:51:16'),
(909, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 13:51:16', '2024-09-26 13:51:16'),
(910, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":null,\"description\":null,\"location\":null,\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 13:54:18', '2024-09-26 13:54:18'),
(911, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-26 13:54:18', '2024-09-26 13:54:18'),
(912, 1, 'admin/universities/19', 'DELETE', '46.185.176.218', '{\"_method\":\"delete\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 13:54:34', '2024-09-26 13:54:34'),
(913, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-26 13:54:35', '2024-09-26 13:54:35'),
(914, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:19:20', '2024-09-26 14:19:20'),
(915, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"City, University of London\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 14:19:41', '2024-09-26 14:19:41'),
(916, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:19:41', '2024-09-26 14:19:41'),
(917, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Coventry University\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 14:20:25', '2024-09-26 14:20:25'),
(918, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:20:25', '2024-09-26 14:20:25'),
(919, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Cranfield University\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 14:23:56', '2024-09-26 14:23:56'),
(920, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:23:57', '2024-09-26 14:23:57'),
(921, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"De Montfort University\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 14:24:58', '2024-09-26 14:24:58'),
(922, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:24:59', '2024-09-26 14:24:59'),
(923, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Dundee\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 14:25:42', '2024-09-26 14:25:42'),
(924, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:25:42', '2024-09-26 14:25:42'),
(925, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Essex\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 14:26:36', '2024-09-26 14:26:36'),
(926, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:26:36', '2024-09-26 14:26:36'),
(927, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Exeter\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 14:27:20', '2024-09-26 14:27:20'),
(928, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:27:20', '2024-09-26 14:27:20'),
(929, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":null,\"description\":null,\"location\":null,\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 14:27:55', '2024-09-26 14:27:55'),
(930, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-26 14:27:55', '2024-09-26 14:27:55'),
(931, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"2\"}', '2024-09-26 14:29:30', '2024-09-26 14:29:30'),
(932, 1, 'admin/universities/27', 'DELETE', '46.185.176.218', '{\"_method\":\"delete\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 14:29:34', '2024-09-26 14:29:34'),
(933, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"2\"}', '2024-09-26 14:29:34', '2024-09-26 14:29:34'),
(934, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:30:32', '2024-09-26 14:30:32'),
(935, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of East London\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 14:32:04', '2024-09-26 14:32:04'),
(936, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:32:04', '2024-09-26 14:32:04'),
(937, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Edinburgh Napier University\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 14:32:32', '2024-09-26 14:32:32'),
(938, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:32:32', '2024-09-26 14:32:32'),
(939, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Gloucestershire\",\"description\":null,\"location\":\"UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\"}', '2024-09-26 14:33:33', '2024-09-26 14:33:33'),
(940, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:33:33', '2024-09-26 14:33:33'),
(941, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":null,\"description\":null,\"location\":null,\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 14:33:38', '2024-09-26 14:33:38'),
(942, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-26 14:33:38', '2024-09-26 14:33:38'),
(943, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"2\"}', '2024-09-26 14:33:45', '2024-09-26 14:33:45'),
(944, 1, 'admin/universities/31', 'DELETE', '46.185.176.218', '{\"_method\":\"delete\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 14:33:50', '2024-09-26 14:33:50'),
(945, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"2\"}', '2024-09-26 14:33:50', '2024-09-26 14:33:50'),
(946, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:36:38', '2024-09-26 14:36:38'),
(947, 1, 'admin/countries/3/edit', 'GET', '46.185.176.218', '[]', '2024-09-26 14:36:41', '2024-09-26 14:36:41'),
(948, 1, 'admin/countries/3', 'PUT', '46.185.176.218', '{\"name\":\"The United Kingdom - UK\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"after-save\":\"continue_creating\",\"_method\":\"PUT\"}', '2024-09-26 14:37:14', '2024-09-26 14:37:14'),
(949, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:37:14', '2024-09-26 14:37:14'),
(950, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:37:21', '2024-09-26 14:37:21'),
(951, 1, 'admin/countries/4/edit', 'GET', '46.185.176.218', '[]', '2024-09-26 14:37:26', '2024-09-26 14:37:26'),
(952, 1, 'admin/countries/4', 'PUT', '46.185.176.218', '{\"name\":\"The United States of America - USA\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"_method\":\"PUT\"}', '2024-09-26 14:37:47', '2024-09-26 14:37:47'),
(953, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:37:47', '2024-09-26 14:37:47'),
(954, 1, 'admin/countries/5/edit', 'GET', '46.185.176.218', '[]', '2024-09-26 14:37:58', '2024-09-26 14:37:58'),
(955, 1, 'admin/countries/5', 'PUT', '46.185.176.218', '{\"name\":\"Canada\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"_method\":\"PUT\"}', '2024-09-26 14:38:06', '2024-09-26 14:38:06'),
(956, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:38:06', '2024-09-26 14:38:06'),
(957, 1, 'admin/countries/6/edit', 'GET', '46.185.176.218', '[]', '2024-09-26 14:38:14', '2024-09-26 14:38:14'),
(958, 1, 'admin/countries/6', 'PUT', '46.185.176.218', '{\"name\":\"Europe\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"_method\":\"PUT\"}', '2024-09-26 14:38:23', '2024-09-26 14:38:23'),
(959, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:38:23', '2024-09-26 14:38:23'),
(960, 1, 'admin/countries/7/edit', 'GET', '46.185.176.218', '[]', '2024-09-26 14:38:28', '2024-09-26 14:38:28'),
(961, 1, 'admin/countries/7', 'PUT', '46.185.176.218', '{\"name\":\"Turkey\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"_method\":\"PUT\"}', '2024-09-26 14:38:40', '2024-09-26 14:38:40'),
(962, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:38:40', '2024-09-26 14:38:40'),
(963, 1, 'admin/countries/5/edit', 'GET', '46.185.176.218', '[]', '2024-09-26 14:38:44', '2024-09-26 14:38:44'),
(964, 1, 'admin/countries/5', 'PUT', '46.185.176.218', '{\"name\":\"Canada\",\"image_file_del_\":\"images\\/flags-03.png,\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"_method\":\"PUT\"}', '2024-09-26 14:38:53', '2024-09-26 14:38:53'),
(965, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:38:53', '2024-09-26 14:38:53'),
(966, 1, 'admin/countries/5/edit', 'GET', '46.185.176.218', '[]', '2024-09-26 14:38:59', '2024-09-26 14:38:59'),
(967, 1, 'admin/countries/5', 'PUT', '46.185.176.218', '{\"name\":\"Canada\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"_method\":\"PUT\"}', '2024-09-26 14:39:06', '2024-09-26 14:39:06'),
(968, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:39:07', '2024-09-26 14:39:07'),
(969, 1, 'admin/countries/8/edit', 'GET', '46.185.176.218', '[]', '2024-09-26 14:39:22', '2024-09-26 14:39:22'),
(970, 1, 'admin/countries/8', 'PUT', '46.185.176.218', '{\"name\":\"Cyprus\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"_method\":\"PUT\"}', '2024-09-26 14:39:29', '2024-09-26 14:39:29'),
(971, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:39:29', '2024-09-26 14:39:29'),
(972, 1, 'admin/countries/9/edit', 'GET', '46.185.176.218', '[]', '2024-09-26 14:39:38', '2024-09-26 14:39:38'),
(973, 1, 'admin/countries/9', 'PUT', '46.185.176.218', '{\"name\":\"Malta\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"_method\":\"PUT\"}', '2024-09-26 14:39:46', '2024-09-26 14:39:46'),
(974, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:39:46', '2024-09-26 14:39:46'),
(975, 1, 'admin/countries/10/edit', 'GET', '46.185.176.218', '[]', '2024-09-26 14:39:52', '2024-09-26 14:39:52'),
(976, 1, 'admin/countries/10', 'PUT', '46.185.176.218', '{\"name\":\"New Zealand\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"_method\":\"PUT\"}', '2024-09-26 14:40:30', '2024-09-26 14:40:30'),
(977, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:40:30', '2024-09-26 14:40:30'),
(978, 1, 'admin/countries/11/edit', 'GET', '46.185.176.218', '[]', '2024-09-26 14:40:47', '2024-09-26 14:40:47'),
(979, 1, 'admin/countries/11', 'PUT', '46.185.176.218', '{\"name\":\"Australia\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"_method\":\"PUT\"}', '2024-09-26 14:40:57', '2024-09-26 14:40:57'),
(980, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:40:57', '2024-09-26 14:40:57'),
(981, 1, 'admin/countries/12/edit', 'GET', '46.185.176.218', '[]', '2024-09-26 14:41:17', '2024-09-26 14:41:17'),
(982, 1, 'admin/countries/12', 'PUT', '46.185.176.218', '{\"name\":\"Ireland\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\",\"_method\":\"PUT\"}', '2024-09-26 14:41:38', '2024-09-26 14:41:38'),
(983, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:41:38', '2024-09-26 14:41:38'),
(984, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:42:26', '2024-09-26 14:42:26'),
(985, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Hungary\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 14:42:50', '2024-09-26 14:42:50'),
(986, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:42:51', '2024-09-26 14:42:51'),
(987, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:43:02', '2024-09-26 14:43:02'),
(988, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Spain\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 14:43:15', '2024-09-26 14:43:15'),
(989, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:43:15', '2024-09-26 14:43:15');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(990, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:43:17', '2024-09-26 14:43:17'),
(991, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Germany\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 14:43:30', '2024-09-26 14:43:30'),
(992, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:43:30', '2024-09-26 14:43:30'),
(993, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:43:32', '2024-09-26 14:43:32'),
(994, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Italy\",\"image_file_del_\":\"new\\/flags-11.png,\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 14:44:12', '2024-09-26 14:44:12'),
(995, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:44:12', '2024-09-26 14:44:12'),
(996, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:44:41', '2024-09-26 14:44:41'),
(997, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Malaysia\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 14:44:51', '2024-09-26 14:44:51'),
(998, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:44:52', '2024-09-26 14:44:52'),
(999, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:44:53', '2024-09-26 14:44:53'),
(1000, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"France\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 14:45:26', '2024-09-26 14:45:26'),
(1001, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:45:26', '2024-09-26 14:45:26'),
(1002, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:47:24', '2024-09-26 14:47:24'),
(1003, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Denmark\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 14:47:47', '2024-09-26 14:47:47'),
(1004, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:47:47', '2024-09-26 14:47:47'),
(1005, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:51:23', '2024-09-26 14:51:23'),
(1006, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Czech Republic\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 14:51:44', '2024-09-26 14:51:44'),
(1007, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:51:44', '2024-09-26 14:51:44'),
(1008, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:52:29', '2024-09-26 14:52:29'),
(1009, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Netherlands\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 14:53:20', '2024-09-26 14:53:20'),
(1010, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:53:20', '2024-09-26 14:53:20'),
(1011, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:53:47', '2024-09-26 14:53:47'),
(1012, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Finland\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 14:54:16', '2024-09-26 14:54:16'),
(1013, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:54:16', '2024-09-26 14:54:16'),
(1014, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-26 14:54:32', '2024-09-26 14:54:32'),
(1015, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Latvia\",\"_token\":\"mo3iJhcONKDymYEX5W5zP4z7WNOnYEPVnZ27FCpP\"}', '2024-09-26 14:54:43', '2024-09-26 14:54:43'),
(1016, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-26 14:54:43', '2024-09-26 14:54:43'),
(1017, 1, 'admin', 'GET', '46.185.176.218', '[]', '2024-09-29 06:09:35', '2024-09-29 06:09:35'),
(1018, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 06:09:38', '2024-09-29 06:09:38'),
(1019, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"2\"}', '2024-09-29 06:09:46', '2024-09-29 06:09:46'),
(1020, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 06:52:36', '2024-09-29 06:52:36'),
(1021, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Hertfordshire\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 06:53:25', '2024-09-29 06:53:25'),
(1022, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 06:53:25', '2024-09-29 06:53:25'),
(1023, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Heriot-Watt University\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 06:54:03', '2024-09-29 06:54:03'),
(1024, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 06:54:03', '2024-09-29 06:54:03'),
(1025, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Kent\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 06:54:51', '2024-09-29 06:54:51'),
(1026, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 06:54:51', '2024-09-29 06:54:51'),
(1027, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Keele University\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 06:55:20', '2024-09-29 06:55:20'),
(1028, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 06:55:20', '2024-09-29 06:55:20'),
(1029, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Kingston University London\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 06:55:52', '2024-09-29 06:55:52'),
(1030, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 06:55:52', '2024-09-29 06:55:52'),
(1031, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Leeds\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 06:56:25', '2024-09-29 06:56:25'),
(1032, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 06:56:25', '2024-09-29 06:56:25'),
(1033, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Leicester\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 06:56:56', '2024-09-29 06:56:56'),
(1034, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 06:56:56', '2024-09-29 06:56:56'),
(1035, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"London School of Commerce\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 06:58:09', '2024-09-29 06:58:09'),
(1036, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 06:58:09', '2024-09-29 06:58:09'),
(1037, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"The University of Liverpool\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 06:58:57', '2024-09-29 06:58:57'),
(1038, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 06:58:57', '2024-09-29 06:58:57'),
(1039, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Liverpool John Moores University\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:01:27', '2024-09-29 07:01:27'),
(1040, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:01:27', '2024-09-29 07:01:27'),
(1041, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"London South Bank University\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:02:01', '2024-09-29 07:02:01'),
(1042, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:02:02', '2024-09-29 07:02:02'),
(1043, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Nottingham Trent University\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:02:38', '2024-09-29 07:02:38'),
(1044, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:02:38', '2024-09-29 07:02:38'),
(1045, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Northampton\",\"description\":null,\"location\":null,\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:07:31', '2024-09-29 07:07:31'),
(1046, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:07:31', '2024-09-29 07:07:31'),
(1047, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Oxford Brookes University\",\"description\":null,\"location\":null,\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:08:36', '2024-09-29 07:08:36'),
(1048, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:08:36', '2024-09-29 07:08:36'),
(1049, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Plymouth\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:09:16', '2024-09-29 07:09:16'),
(1050, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:09:16', '2024-09-29 07:09:16'),
(1051, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Portsmouth\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:09:47', '2024-09-29 07:09:47'),
(1052, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:09:47', '2024-09-29 07:09:47'),
(1053, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Queen Mary University of London\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:10:18', '2024-09-29 07:10:18'),
(1054, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:10:19', '2024-09-29 07:10:19'),
(1055, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Queen Margaret University\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:10:56', '2024-09-29 07:10:56'),
(1056, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:10:56', '2024-09-29 07:10:56'),
(1057, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Queen Ethelburga\'s Collegiate\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:13:16', '2024-09-29 07:13:16'),
(1058, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:13:16', '2024-09-29 07:13:16'),
(1059, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Reading\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:14:28', '2024-09-29 07:14:28'),
(1060, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:14:28', '2024-09-29 07:14:28'),
(1061, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Swansea University\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\"}', '2024-09-29 07:15:36', '2024-09-29 07:15:36'),
(1062, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 07:15:37', '2024-09-29 07:15:37'),
(1063, 1, 'admin/sliders', 'GET', '46.185.176.218', '[]', '2024-09-29 07:15:39', '2024-09-29 07:15:39'),
(1064, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 07:15:45', '2024-09-29 07:15:45'),
(1065, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"3\"}', '2024-09-29 07:15:54', '2024-09-29 07:15:54'),
(1066, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:15:58', '2024-09-29 07:15:58'),
(1067, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-29 07:18:04', '2024-09-29 07:18:04'),
(1068, 1, 'admin/countries', 'GET', '46.185.176.218', '{\"page\":\"2\"}', '2024-09-29 07:18:30', '2024-09-29 07:18:30'),
(1069, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 07:18:37', '2024-09-29 07:18:37'),
(1070, 1, 'admin/services/1/edit', 'GET', '46.185.176.218', '[]', '2024-09-29 07:18:48', '2024-09-29 07:18:48'),
(1071, 1, 'admin/services/1', 'PUT', '46.185.176.218', '{\"service_name\":\"University Acceptances & Applications\",\"description\":\"We guide you through the entire application process, ensuring your submission is complete and meets all requirements for successful acceptance.\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"_method\":\"PUT\"}', '2024-09-29 07:19:10', '2024-09-29 07:19:10'),
(1072, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 07:19:10', '2024-09-29 07:19:10'),
(1073, 1, 'admin/brands', 'GET', '46.185.176.218', '[]', '2024-09-29 07:19:33', '2024-09-29 07:19:33'),
(1074, 1, 'admin/testimonials', 'GET', '46.185.176.218', '[]', '2024-09-29 07:20:15', '2024-09-29 07:20:15'),
(1075, 1, 'admin/testimonials/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:20:21', '2024-09-29 07:20:21'),
(1076, 1, 'admin/articles', 'GET', '46.185.176.218', '[]', '2024-09-29 07:20:42', '2024-09-29 07:20:42'),
(1077, 1, 'admin/articles/1/edit', 'GET', '46.185.176.218', '[]', '2024-09-29 07:21:02', '2024-09-29 07:21:02'),
(1078, 1, 'admin/articles', 'GET', '46.185.176.218', '[]', '2024-09-29 07:21:10', '2024-09-29 07:21:10'),
(1079, 1, 'admin/articles/1', 'GET', '46.185.176.218', '[]', '2024-09-29 07:21:12', '2024-09-29 07:21:12'),
(1080, 1, 'admin/articles', 'GET', '46.185.176.218', '[]', '2024-09-29 07:21:19', '2024-09-29 07:21:19'),
(1081, 1, 'admin/articles/2', 'GET', '46.185.176.218', '[]', '2024-09-29 07:21:21', '2024-09-29 07:21:21'),
(1082, 1, 'admin/articles', 'GET', '46.185.176.218', '[]', '2024-09-29 07:21:24', '2024-09-29 07:21:24'),
(1083, 1, 'admin/frequently-asks', 'GET', '46.185.176.218', '[]', '2024-09-29 07:21:49', '2024-09-29 07:21:49'),
(1084, 1, 'admin/frequently-asks/1', 'GET', '46.185.176.218', '[]', '2024-09-29 07:21:56', '2024-09-29 07:21:56'),
(1085, 1, 'admin/frequently-asks', 'GET', '46.185.176.218', '[]', '2024-09-29 07:22:01', '2024-09-29 07:22:01'),
(1086, 1, 'admin/form-messages', 'GET', '46.185.176.218', '[]', '2024-09-29 07:23:10', '2024-09-29 07:23:10'),
(1087, 1, 'admin/sliders', 'GET', '46.185.176.218', '[]', '2024-09-29 07:23:29', '2024-09-29 07:23:29'),
(1088, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 07:23:37', '2024-09-29 07:23:37'),
(1089, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"3\"}', '2024-09-29 07:23:49', '2024-09-29 07:23:49'),
(1090, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:24:08', '2024-09-29 07:24:08'),
(1091, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"The University of Sunderland\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:24:23', '2024-09-29 07:24:23'),
(1092, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:24:24', '2024-09-29 07:24:24'),
(1093, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Southampton\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:25:05', '2024-09-29 07:25:05'),
(1094, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:25:05', '2024-09-29 07:25:05'),
(1095, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Salford\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\"}', '2024-09-29 07:25:57', '2024-09-29 07:25:57'),
(1096, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 07:25:57', '2024-09-29 07:25:57'),
(1097, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 07:25:59', '2024-09-29 07:25:59'),
(1098, 1, 'admin/services/2/edit', 'GET', '46.185.176.218', '[]', '2024-09-29 07:26:20', '2024-09-29 07:26:20'),
(1099, 1, 'admin/services/2', 'PUT', '46.185.176.218', '{\"service_name\":\"Accredited Universities from the Jordanian Ministry of Higher Education\",\"description\":\"We partner with accredited institutions recognized by the Ministry of Higher Education in Jordan, ensuring you receive a quality education that\\u2019s internationally acknowledged.\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"_method\":\"PUT\"}', '2024-09-29 07:26:28', '2024-09-29 07:26:28'),
(1100, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 07:26:28', '2024-09-29 07:26:28'),
(1101, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 07:43:40', '2024-09-29 07:43:40'),
(1102, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"3\"}', '2024-09-29 07:43:43', '2024-09-29 07:43:43'),
(1103, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:44:09', '2024-09-29 07:44:09'),
(1104, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Southampton Solent University\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:44:24', '2024-09-29 07:44:24'),
(1105, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:44:24', '2024-09-29 07:44:24'),
(1106, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Staffordshire\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:45:11', '2024-09-29 07:45:11'),
(1107, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:45:11', '2024-09-29 07:45:11'),
(1108, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Sheffield Hallam University\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:45:43', '2024-09-29 07:45:43'),
(1109, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:45:43', '2024-09-29 07:45:43'),
(1110, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Stirling\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:47:04', '2024-09-29 07:47:04'),
(1111, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:47:04', '2024-09-29 07:47:04'),
(1112, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Strathclyde, Glasgow\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:47:36', '2024-09-29 07:47:36'),
(1113, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:47:36', '2024-09-29 07:47:36'),
(1114, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Central Lancashire - UCLan\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:48:14', '2024-09-29 07:48:14'),
(1115, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:48:14', '2024-09-29 07:48:14'),
(1116, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of East Anglia (UEA)\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:48:51', '2024-09-29 07:48:51'),
(1117, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:48:51', '2024-09-29 07:48:51'),
(1118, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of South Wales\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:51:41', '2024-09-29 07:51:41'),
(1119, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:51:41', '2024-09-29 07:51:41'),
(1120, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Sussex\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:52:27', '2024-09-29 07:52:27'),
(1121, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:52:28', '2024-09-29 07:52:28'),
(1122, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"SOAS University of London\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:53:56', '2024-09-29 07:53:56'),
(1123, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:53:56', '2024-09-29 07:53:56'),
(1124, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Surrey\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:54:46', '2024-09-29 07:54:46'),
(1125, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:54:47', '2024-09-29 07:54:47'),
(1126, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Teesside University\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:55:21', '2024-09-29 07:55:21'),
(1127, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:55:22', '2024-09-29 07:55:22'),
(1128, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Ulster University\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:55:48', '2024-09-29 07:55:48'),
(1129, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:55:49', '2024-09-29 07:55:49'),
(1130, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University for the Creative Arts\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:56:22', '2024-09-29 07:56:22'),
(1131, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:56:22', '2024-09-29 07:56:22'),
(1132, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Wolverhampton\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:56:51', '2024-09-29 07:56:51'),
(1133, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:56:51', '2024-09-29 07:56:51'),
(1134, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Westminster\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:57:19', '2024-09-29 07:57:19'),
(1135, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:57:19', '2024-09-29 07:57:19'),
(1136, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of York\",\"description\":null,\"location\":\"UK\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 07:57:51', '2024-09-29 07:57:51'),
(1137, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 07:57:52', '2024-09-29 07:57:52'),
(1138, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 07:57:57', '2024-09-29 07:57:57'),
(1139, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 07:58:00', '2024-09-29 07:58:00'),
(1140, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"4\"}', '2024-09-29 07:58:07', '2024-09-29 07:58:07'),
(1141, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:33:01', '2024-09-29 08:33:01'),
(1142, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Carleton University\",\"description\":null,\"location\":\"Canada\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 08:33:28', '2024-09-29 08:33:28'),
(1143, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:33:29', '2024-09-29 08:33:29'),
(1144, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Windsor\",\"description\":null,\"location\":\"Canada\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 08:34:02', '2024-09-29 08:34:02'),
(1145, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:34:02', '2024-09-29 08:34:02'),
(1146, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Conestoga College\",\"description\":null,\"location\":\"Canada\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 08:34:31', '2024-09-29 08:34:31'),
(1147, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:34:31', '2024-09-29 08:34:31'),
(1148, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Niagara College\",\"description\":null,\"location\":\"Canada\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 08:35:03', '2024-09-29 08:35:03'),
(1149, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:35:03', '2024-09-29 08:35:03'),
(1150, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Acadia University\",\"description\":null,\"location\":\"Canada\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\"}', '2024-09-29 08:35:29', '2024-09-29 08:35:29'),
(1151, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 08:35:29', '2024-09-29 08:35:29'),
(1152, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"4\"}', '2024-09-29 08:35:32', '2024-09-29 08:35:32'),
(1153, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:36:51', '2024-09-29 08:36:51'),
(1154, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Santa Monica College\",\"description\":null,\"location\":\"USA\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 08:37:09', '2024-09-29 08:37:09'),
(1155, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:37:09', '2024-09-29 08:37:09'),
(1156, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Kaplan\",\"description\":null,\"location\":\"UK\\\\USA\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 08:39:01', '2024-09-29 08:39:01'),
(1157, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:39:01', '2024-09-29 08:39:01'),
(1158, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Shorelight\",\"description\":null,\"location\":\"USA\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 08:42:15', '2024-09-29 08:42:15'),
(1159, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:42:15', '2024-09-29 08:42:15'),
(1160, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Washington State University\",\"description\":null,\"location\":\"USA\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\"}', '2024-09-29 08:44:42', '2024-09-29 08:44:42'),
(1161, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 08:44:42', '2024-09-29 08:44:42'),
(1162, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"4\"}', '2024-09-29 08:44:45', '2024-09-29 08:44:45'),
(1163, 1, 'admin/universities/79/edit', 'GET', '46.185.176.218', '[]', '2024-09-29 08:44:49', '2024-09-29 08:44:49'),
(1164, 1, 'admin/universities/79', 'PUT', '46.185.176.218', '{\"name\":\"Kaplan\",\"description\":null,\"location\":\"UK\\\\USA\\\\Canada\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"_method\":\"PUT\"}', '2024-09-29 08:44:55', '2024-09-29 08:44:55'),
(1165, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 08:44:55', '2024-09-29 08:44:55'),
(1166, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"4\"}', '2024-09-29 08:45:14', '2024-09-29 08:45:14'),
(1167, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:48:27', '2024-09-29 08:48:27'),
(1168, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Budapest University of Technology and Economics\",\"description\":null,\"location\":\"Hungary\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 08:48:44', '2024-09-29 08:48:44'),
(1169, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:48:44', '2024-09-29 08:48:44'),
(1170, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Szeged\",\"description\":null,\"location\":\"Hungary\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 08:49:04', '2024-09-29 08:49:04'),
(1171, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:49:04', '2024-09-29 08:49:04'),
(1172, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University of Pecs\",\"description\":null,\"location\":\"Hungary\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 08:49:20', '2024-09-29 08:49:20'),
(1173, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:49:20', '2024-09-29 08:49:20'),
(1174, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Budapest Business University\",\"description\":null,\"location\":\"Hungary\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\"}', '2024-09-29 08:49:39', '2024-09-29 08:49:39'),
(1175, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 08:49:39', '2024-09-29 08:49:39'),
(1176, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"5\"}', '2024-09-29 08:49:43', '2024-09-29 08:49:43'),
(1177, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:52:53', '2024-09-29 08:52:53'),
(1178, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University College Dublin\",\"description\":null,\"location\":\"Ireland\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 08:53:11', '2024-09-29 08:53:11'),
(1179, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:53:11', '2024-09-29 08:53:11'),
(1180, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"University College Cork\",\"description\":null,\"location\":\"Ireland\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 08:53:42', '2024-09-29 08:53:42'),
(1181, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:53:42', '2024-09-29 08:53:42'),
(1182, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Dublin City University\",\"description\":null,\"location\":\"Ireland\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\"}', '2024-09-29 08:54:12', '2024-09-29 08:54:12'),
(1183, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 08:54:12', '2024-09-29 08:54:12'),
(1184, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"5\"}', '2024-09-29 08:54:15', '2024-09-29 08:54:15'),
(1185, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:55:17', '2024-09-29 08:55:17'),
(1186, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"UCAM Catholic University of Murcia\",\"description\":null,\"location\":\"Spain\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 08:58:57', '2024-09-29 08:58:57'),
(1187, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 08:58:57', '2024-09-29 08:58:57'),
(1188, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"EU Business School\",\"description\":null,\"location\":\"Spain\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\"}', '2024-09-29 09:00:51', '2024-09-29 09:00:51'),
(1189, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 09:00:51', '2024-09-29 09:00:51'),
(1190, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:02:29', '2024-09-29 09:02:29'),
(1191, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"IU International University of Applied Sciences\",\"description\":null,\"location\":\"Germany\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\"}', '2024-09-29 09:02:44', '2024-09-29 09:02:44'),
(1192, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 09:02:44', '2024-09-29 09:02:44'),
(1193, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:07:16', '2024-09-29 09:07:16'),
(1194, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Bilkent University\",\"description\":null,\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:08:13', '2024-09-29 09:08:13'),
(1195, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:08:13', '2024-09-29 09:08:13'),
(1196, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Sabanc\\u0131 University\",\"description\":null,\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:09:58', '2024-09-29 09:09:58'),
(1197, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:09:58', '2024-09-29 09:09:58'),
(1198, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Ko\\u00e7 University\",\"description\":null,\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:10:41', '2024-09-29 09:10:41'),
(1199, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:10:42', '2024-09-29 09:10:42'),
(1200, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Istanbul Bilgi University\",\"description\":null,\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:11:26', '2024-09-29 09:11:26'),
(1201, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:11:26', '2024-09-29 09:11:26'),
(1202, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"ATILIM \\u00dcN\\u0130VERS\\u0130TES\\u0130\",\"description\":null,\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:12:11', '2024-09-29 09:12:11'),
(1203, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:12:11', '2024-09-29 09:12:11'),
(1204, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Ba\\u015fkent University\",\"description\":null,\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:13:59', '2024-09-29 09:13:59'),
(1205, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:13:59', '2024-09-29 09:13:59'),
(1206, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Bah\\u00e7e\\u015fehir \\u00dcniversitesi\",\"description\":null,\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:14:32', '2024-09-29 09:14:32'),
(1207, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:14:33', '2024-09-29 09:14:33'),
(1208, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 09:14:57', '2024-09-29 09:14:57'),
(1209, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"2\"}', '2024-09-29 09:14:59', '2024-09-29 09:14:59'),
(1210, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"5\"}', '2024-09-29 09:15:00', '2024-09-29 09:15:00'),
(1211, 1, 'admin/universities/98/edit', 'GET', '46.185.176.218', '[]', '2024-09-29 09:15:02', '2024-09-29 09:15:02'),
(1212, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 09:15:05', '2024-09-29 09:15:05'),
(1213, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:15:07', '2024-09-29 09:15:07'),
(1214, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Yeditepe \\u00dcniversitesi\",\"description\":null,\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:15:40', '2024-09-29 09:15:40'),
(1215, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:15:40', '2024-09-29 09:15:40'),
(1216, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"\\u00d6zye\\u011fin University\",\"description\":null,\"location\":null,\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:16:26', '2024-09-29 09:16:26'),
(1217, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:16:26', '2024-09-29 09:16:26'),
(1218, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"\\u0130stanbul Okan University\",\"description\":null,\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:17:30', '2024-09-29 09:17:30'),
(1219, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:17:30', '2024-09-29 09:17:30'),
(1220, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"\\u0130stanbul Ayd\\u0131n \\u00dcniversitesi\",\"description\":null,\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:18:26', '2024-09-29 09:18:26'),
(1221, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:18:26', '2024-09-29 09:18:26'),
(1222, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"\\u00dcsk\\u00fcdar University\",\"description\":null,\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:19:30', '2024-09-29 09:19:30'),
(1223, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:19:31', '2024-09-29 09:19:31'),
(1224, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 09:20:00', '2024-09-29 09:20:00'),
(1225, 1, 'admin/brands', 'GET', '46.185.176.218', '[]', '2024-09-29 09:20:06', '2024-09-29 09:20:06'),
(1226, 1, 'admin/testimonials', 'GET', '46.185.176.218', '[]', '2024-09-29 09:20:11', '2024-09-29 09:20:11'),
(1227, 1, 'admin/articles', 'GET', '46.185.176.218', '[]', '2024-09-29 09:20:15', '2024-09-29 09:20:15'),
(1228, 1, 'admin/frequently-asks', 'GET', '46.185.176.218', '[]', '2024-09-29 09:20:15', '2024-09-29 09:20:15'),
(1229, 1, 'admin/brands', 'GET', '46.185.176.218', '[]', '2024-09-29 09:20:33', '2024-09-29 09:20:33'),
(1230, 1, 'admin/brands/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:20:34', '2024-09-29 09:20:34'),
(1231, 1, 'admin/courses', 'GET', '46.185.176.218', '[]', '2024-09-29 09:21:13', '2024-09-29 09:21:13'),
(1232, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 09:21:26', '2024-09-29 09:21:26'),
(1233, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"5\"}', '2024-09-29 09:26:31', '2024-09-29 09:26:31'),
(1234, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:27:02', '2024-09-29 09:27:02'),
(1235, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Ac\\u0131badem \\u00dcniversitesi\",\"description\":null,\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:27:22', '2024-09-29 09:27:22'),
(1236, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:27:22', '2024-09-29 09:27:22'),
(1237, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"\\u0130stanbul Medipol University\",\"description\":null,\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:29:36', '2024-09-29 09:29:36'),
(1238, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:29:36', '2024-09-29 09:29:36'),
(1239, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"\\u0130stanbul Geli\\u015fim \\u00dcniversitesi\",\"description\":null,\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:30:16', '2024-09-29 09:30:16'),
(1240, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:30:16', '2024-09-29 09:30:16'),
(1241, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"\\u0130stinye \\u00dcniversitesi\",\"description\":null,\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:31:18', '2024-09-29 09:31:18'),
(1242, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:31:18', '2024-09-29 09:31:18'),
(1243, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Beykent \\u00dcniversitesi\",\"description\":null,\"Images_file_del_\":\"new\\/beykent.png,\",\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"after-save\":\"continue_creating\"}', '2024-09-29 09:33:00', '2024-09-29 09:33:00'),
(1244, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:33:01', '2024-09-29 09:33:01'),
(1245, 1, 'admin/universities', 'POST', '46.185.176.218', '{\"name\":\"Altinbas University\",\"description\":null,\"location\":\"Turkey\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\"}', '2024-09-29 09:34:13', '2024-09-29 09:34:13'),
(1246, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 09:34:13', '2024-09-29 09:34:13'),
(1247, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"6\"}', '2024-09-29 09:34:15', '2024-09-29 09:34:15'),
(1248, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 09:34:36', '2024-09-29 09:34:36'),
(1249, 1, 'admin/courses', 'GET', '46.185.176.218', '[]', '2024-09-29 09:34:41', '2024-09-29 09:34:41'),
(1250, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-29 09:35:50', '2024-09-29 09:35:50'),
(1251, 1, 'admin/universities/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:35:51', '2024-09-29 09:35:51'),
(1252, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-29 09:36:18', '2024-09-29 09:36:18'),
(1253, 1, 'admin/countries/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:36:41', '2024-09-29 09:36:41'),
(1254, 1, 'admin/countries', 'POST', '46.185.176.218', '{\"name\":\"Lithuania\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\"}', '2024-09-29 09:36:58', '2024-09-29 09:36:58'),
(1255, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-29 09:36:58', '2024-09-29 09:36:58'),
(1256, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 09:37:01', '2024-09-29 09:37:01'),
(1257, 1, 'admin/services/3/edit', 'GET', '46.185.176.218', '[]', '2024-09-29 09:37:05', '2024-09-29 09:37:05'),
(1258, 1, 'admin/services/3', 'PUT', '46.185.176.218', '{\"service_name\":\"Instant University Offers\",\"description\":\"Receive fast-track offers from universities based on your qualifications, allowing you to secure your place quickly and easily.\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"_method\":\"PUT\"}', '2024-09-29 09:37:19', '2024-09-29 09:37:19'),
(1259, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 09:37:19', '2024-09-29 09:37:19'),
(1260, 1, 'admin/services/4/edit', 'GET', '46.185.176.218', '[]', '2024-09-29 09:37:25', '2024-09-29 09:37:25'),
(1261, 1, 'admin/services/4', 'PUT', '46.185.176.218', '{\"service_name\":\"Alternative Options for Lower Grades\",\"description\":\"If your results don\\u2019t meet expectations, Bridge provides a range of alternative university options to keep your study plans on track.\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"_method\":\"PUT\"}', '2024-09-29 09:37:32', '2024-09-29 09:37:32'),
(1262, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 09:37:32', '2024-09-29 09:37:32'),
(1263, 1, 'admin/services/5/edit', 'GET', '46.185.176.218', '[]', '2024-09-29 09:37:36', '2024-09-29 09:37:36'),
(1264, 1, 'admin/services/5', 'PUT', '46.185.176.218', '{\"service_name\":\"University Course Selection\",\"description\":\"We assist you in selecting the right courses tailored to your career goals and interests, ensuring the best fit for your academic journey.\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"_method\":\"PUT\"}', '2024-09-29 09:37:47', '2024-09-29 09:37:47'),
(1265, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 09:37:47', '2024-09-29 09:37:47'),
(1266, 1, 'admin/services/6/edit', 'GET', '46.185.176.218', '[]', '2024-09-29 09:37:56', '2024-09-29 09:37:56'),
(1267, 1, 'admin/services/6', 'PUT', '46.185.176.218', '{\"service_name\":\"Personal Statements & Interview Preparations\",\"description\":\"Get expert guidance in crafting compelling personal statements and preparing for interviews to enhance your application\\u2019s success.\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"_method\":\"PUT\"}', '2024-09-29 09:38:03', '2024-09-29 09:38:03'),
(1268, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 09:38:03', '2024-09-29 09:38:03'),
(1269, 1, 'admin/services/7/edit', 'GET', '46.185.176.218', '[]', '2024-09-29 09:38:09', '2024-09-29 09:38:09'),
(1270, 1, 'admin/services/7', 'PUT', '46.185.176.218', '{\"service_name\":\"Scholarships & Discounts\",\"description\":\"Explore various scholarships and discounts available to international students, helping to make your education more affordable.\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"_method\":\"PUT\"}', '2024-09-29 09:38:18', '2024-09-29 09:38:18'),
(1271, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 09:38:18', '2024-09-29 09:38:18'),
(1272, 1, 'admin/services/8/edit', 'GET', '46.185.176.218', '[]', '2024-09-29 09:38:22', '2024-09-29 09:38:22'),
(1273, 1, 'admin/services/8', 'PUT', '46.185.176.218', '{\"service_name\":\"University Accommodation\",\"description\":\"We help you find suitable accommodation options that meet your needs, ensuring a comfortable living environment during your studies.\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"_method\":\"PUT\"}', '2024-09-29 09:38:33', '2024-09-29 09:38:33'),
(1274, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 09:38:33', '2024-09-29 09:38:33'),
(1275, 1, 'admin/services/9/edit', 'GET', '46.185.176.218', '[]', '2024-09-29 09:38:38', '2024-09-29 09:38:38'),
(1276, 1, 'admin/services/9', 'PUT', '46.185.176.218', '{\"service_name\":\"Student Visa Assistance\",\"description\":\"Our team provides step-by-step support for obtaining your student visa, ensuring a smooth transition to studying abroad.\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"_method\":\"PUT\"}', '2024-09-29 09:38:47', '2024-09-29 09:38:47'),
(1277, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 09:38:47', '2024-09-29 09:38:47'),
(1278, 1, 'admin/services/10/edit', 'GET', '46.185.176.218', '[]', '2024-09-29 09:40:20', '2024-09-29 09:40:20'),
(1279, 1, 'admin/services/10', 'PUT', '46.185.176.218', '{\"service_name\":\"Summer Camps Abroad\",\"description\":\"Join our exciting summer camps that offer cultural experiences and academic enrichment, perfect for enhancing your skills and networking.\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"_method\":\"PUT\"}', '2024-09-29 09:40:29', '2024-09-29 09:40:29'),
(1280, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 09:40:30', '2024-09-29 09:40:30'),
(1281, 1, 'admin/services/11/edit', 'GET', '46.185.176.218', '[]', '2024-09-29 09:40:36', '2024-09-29 09:40:36');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1282, 1, 'admin/services/11', 'PUT', '46.185.176.218', '{\"service_name\":\"English Language Courses Abroad\",\"description\":\"Access language support services to improve your English proficiency, helping you succeed academically and socially in an English-speaking environment.\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"_method\":\"PUT\"}', '2024-09-29 09:40:42', '2024-09-29 09:40:42'),
(1283, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 09:40:43', '2024-09-29 09:40:43'),
(1284, 1, 'admin/services/12/edit', 'GET', '46.185.176.218', '[]', '2024-09-29 09:40:50', '2024-09-29 09:40:50'),
(1285, 1, 'admin/services/12', 'PUT', '46.185.176.218', '{\"service_name\":\"Ongoing Support\",\"description\":\"Receive continuous assistance before and during your academic journey, from your Bachelor\\u2019s degree to Master\\u2019s and PhD, so you always have guidance and support along the way.\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\",\"_method\":\"PUT\"}', '2024-09-29 09:40:57', '2024-09-29 09:40:57'),
(1286, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-29 09:40:57', '2024-09-29 09:40:57'),
(1287, 1, 'admin/brands', 'GET', '46.185.176.218', '[]', '2024-09-29 09:41:05', '2024-09-29 09:41:05'),
(1288, 1, 'admin/brands/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:46:05', '2024-09-29 09:46:05'),
(1289, 1, 'admin/testimonials', 'GET', '46.185.176.218', '[]', '2024-09-29 09:47:26', '2024-09-29 09:47:26'),
(1290, 1, 'admin/testimonials/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:47:27', '2024-09-29 09:47:27'),
(1291, 1, 'admin/testimonials', 'POST', '46.185.176.218', '{\"Name\":\"Nadeem Baqaain\",\"Title\":\"Master\'s Student, University of Reading\",\"Description\":\"Honestly, Bridge was one of the best experiences I had while applying to universities. The staff there are incredibly friendly, helpful, and patient. They guide you through every step and ensure you have everything ready for both visa and university applications all at once. It truly is the best resource for applying for international studies.\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\"}', '2024-09-29 09:52:11', '2024-09-29 09:52:11'),
(1292, 1, 'admin/testimonials/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:52:11', '2024-09-29 09:52:11'),
(1293, 1, 'admin/testimonials', 'POST', '46.185.176.218', '{\"Name\":\"Nadeem Baqaain\",\"Title\":\"Master\'s Student, University of Reading\",\"Description\":\"Honestly, Bridge was one of the best experiences I had while applying to universities. The staff there are incredibly friendly, helpful, and patient. They guide you through every step and ensure you have everything ready for both visa and university applications all at once. It truly is the best resource for applying for international studies.\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\"}', '2024-09-29 09:53:09', '2024-09-29 09:53:09'),
(1294, 1, 'admin/testimonials/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:53:09', '2024-09-29 09:53:09'),
(1295, 1, 'admin/testimonials', 'POST', '46.185.176.218', '{\"Name\":\"Nadeem Baqaain\",\"Title\":\"Master\'s Student, University of Reading\",\"Description\":\"Honestly, Bridge was one of the best experiences I had while applying to universities. The staff there are incredibly friendly, helpful, and patient. They guide you through every step and ensure you have everything ready for both visa and university applications all at once. It truly is the best resource for applying for international studies.\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\"}', '2024-09-29 09:53:22', '2024-09-29 09:53:22'),
(1296, 1, 'admin/testimonials/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:53:22', '2024-09-29 09:53:22'),
(1297, 1, 'admin/testimonials', 'POST', '46.185.176.218', '{\"Name\":\"Nadeem Baqaain\",\"Title\":\"Master\'s Student, University of Reading\",\"Description\":\"Bridge was one of my best experiences for university applications. The staff are friendly, helpful, and patient, guiding you through every step and preparing you for both visa and university applications. It\\u2019s the ultimate resource for international studies.\",\"_token\":\"MfVxNWv3SjYUC5xFYMokEhykue1DNOxUzHvEJZ83\"}', '2024-09-29 09:54:03', '2024-09-29 09:54:03'),
(1298, 1, 'admin/testimonials/create', 'GET', '46.185.176.218', '[]', '2024-09-29 09:54:03', '2024-09-29 09:54:03'),
(1299, 1, 'admin/articles', 'GET', '46.185.176.218', '[]', '2024-09-29 10:02:51', '2024-09-29 10:02:51'),
(1300, 1, 'admin/articles/1', 'GET', '46.185.176.218', '[]', '2024-09-29 10:02:53', '2024-09-29 10:02:53'),
(1301, 1, 'admin', 'GET', '176.28.253.37', '[]', '2024-09-29 13:07:55', '2024-09-29 13:07:55'),
(1302, 1, 'admin/universities', 'GET', '176.28.253.37', '[]', '2024-09-29 13:07:59', '2024-09-29 13:07:59'),
(1303, 1, 'admin/universities/22', 'GET', '176.28.253.37', '[]', '2024-09-29 13:08:03', '2024-09-29 13:08:03'),
(1304, 1, 'admin/universities', 'GET', '176.28.253.37', '[]', '2024-09-29 13:08:28', '2024-09-29 13:08:28'),
(1305, 1, 'admin/testimonials', 'GET', '176.28.253.37', '[]', '2024-09-29 13:08:35', '2024-09-29 13:08:35'),
(1306, 1, 'admin/testimonials/create', 'GET', '176.28.253.37', '[]', '2024-09-29 13:08:37', '2024-09-29 13:08:37'),
(1307, 1, 'admin/testimonials', 'POST', '176.28.253.37', '{\"Name\":\"Test\",\"Title\":\"Test\",\"Image_file_del_\":\"new\\/VID-20240909-WA0008.mp4,\",\"Description\":\"Test\",\"_token\":\"CeMRcDT438DoJbOPB3gXgbnLd4JjEuk8EuON4uj7\"}', '2024-09-29 13:09:46', '2024-09-29 13:09:46'),
(1308, 1, 'admin/testimonials', 'GET', '176.28.253.37', '[]', '2024-09-29 13:09:46', '2024-09-29 13:09:46'),
(1309, 1, 'admin/testimonials/1', 'GET', '176.28.253.37', '[]', '2024-09-29 13:10:05', '2024-09-29 13:10:05'),
(1310, 1, 'admin/testimonials', 'GET', '176.28.253.37', '[]', '2024-09-29 13:10:07', '2024-09-29 13:10:07'),
(1311, 1, 'admin/testimonials/1', 'GET', '176.28.253.37', '[]', '2024-09-29 13:10:09', '2024-09-29 13:10:09'),
(1312, 1, 'admin/testimonials', 'GET', '176.28.253.37', '[]', '2024-09-29 13:10:12', '2024-09-29 13:10:12'),
(1313, 1, 'admin', 'GET', '176.28.253.37', '[]', '2024-09-29 15:37:21', '2024-09-29 15:37:21'),
(1314, 1, 'admin/testimonials', 'GET', '176.28.253.37', '[]', '2024-09-29 15:37:27', '2024-09-29 15:37:27'),
(1315, 1, 'admin', 'GET', '176.29.3.39', '[]', '2024-09-30 10:15:25', '2024-09-30 10:15:25'),
(1316, 1, 'admin/testimonials', 'GET', '176.29.3.39', '[]', '2024-09-30 10:15:30', '2024-09-30 10:15:30'),
(1317, 1, 'admin', 'GET', '176.29.3.39', '[]', '2024-09-30 10:16:09', '2024-09-30 10:16:09'),
(1318, 1, 'admin/universities', 'GET', '176.29.3.39', '[]', '2024-09-30 10:16:16', '2024-09-30 10:16:16'),
(1319, 1, 'admin/courses', 'GET', '176.29.3.39', '[]', '2024-09-30 10:16:21', '2024-09-30 10:16:21'),
(1320, 1, 'admin/universities', 'GET', '176.29.3.39', '[]', '2024-09-30 10:16:25', '2024-09-30 10:16:25'),
(1321, 1, 'admin', 'GET', '46.185.176.218', '[]', '2024-09-30 10:52:40', '2024-09-30 10:52:40'),
(1322, 1, 'admin/sliders', 'GET', '46.185.176.218', '[]', '2024-09-30 10:52:45', '2024-09-30 10:52:45'),
(1323, 1, 'admin/universities', 'GET', '46.185.176.218', '[]', '2024-09-30 10:52:48', '2024-09-30 10:52:48'),
(1324, 1, 'admin/universities', 'GET', '46.185.176.218', '{\"page\":\"6\"}', '2024-09-30 10:52:52', '2024-09-30 10:52:52'),
(1325, 1, 'admin/countries', 'GET', '46.185.176.218', '[]', '2024-09-30 10:52:56', '2024-09-30 10:52:56'),
(1326, 1, 'admin/services', 'GET', '46.185.176.218', '[]', '2024-09-30 10:53:16', '2024-09-30 10:53:16'),
(1327, 1, 'admin/testimonials', 'GET', '46.185.176.218', '[]', '2024-09-30 11:40:53', '2024-09-30 11:40:53'),
(1328, 1, 'admin/articles', 'GET', '46.185.176.218', '[]', '2024-09-30 11:41:14', '2024-09-30 11:41:14'),
(1329, 1, 'admin/articles/1/edit', 'GET', '46.185.176.218', '[]', '2024-09-30 11:41:17', '2024-09-30 11:41:17'),
(1330, 1, 'admin/articles/1', 'PUT', '46.185.176.218', '{\"title\":\"Strengthening Educational Ties: Bridge International and Philadelphia University Sign MOU\",\"Short_Description\":null,\"Full_Article\":\"We are excited to share the signing of a Memorandum of Understanding between Bridge International for Academic Services, represented by His Excellency Dr. Nidal Qatamin and Public Relations Manager Mr. Asim Al-Majali, and Philadelphia University, represented by President Professor Dr. Abdullah Al-Jarrah, with Dr. Sufyan Al-Nawafleh also present. \\r\\n\\r\\nThis partnership aims to strengthen collaboration in supporting Jordan\'s education sector and assist students aspiring to study abroad. Moreover, the agreement emphasizes attracting international students to local institutions, especially Philadelphia University, and organizing exhibitions and conferences domestically and internationally.\",\"_token\":\"UEh9jkuBfj9kNzRia1QvfOeqHZ9T8kd0INxXKRqF\",\"_method\":\"PUT\"}', '2024-09-30 11:44:24', '2024-09-30 11:44:24'),
(1331, 1, 'admin/articles', 'GET', '46.185.176.218', '[]', '2024-09-30 11:44:24', '2024-09-30 11:44:24'),
(1332, 1, 'admin/articles/1/edit', 'GET', '46.185.176.218', '[]', '2024-09-30 11:44:27', '2024-09-30 11:44:27'),
(1333, 1, 'admin/frequently-asks', 'GET', '46.185.176.218', '[]', '2024-09-30 11:44:54', '2024-09-30 11:44:54'),
(1334, 1, 'admin/articles', 'GET', '46.185.176.218', '[]', '2024-09-30 11:44:55', '2024-09-30 11:44:55'),
(1335, 1, 'admin/articles/1/edit', 'GET', '46.185.176.218', '[]', '2024-09-30 11:44:57', '2024-09-30 11:44:57'),
(1336, 1, 'admin/articles', 'GET', '46.185.176.218', '[]', '2024-09-30 11:45:03', '2024-09-30 11:45:03'),
(1337, 1, 'admin/articles/2/edit', 'GET', '46.185.176.218', '[]', '2024-09-30 11:45:10', '2024-09-30 11:45:10'),
(1338, 1, 'admin', 'GET', '176.29.3.14', '[]', '2024-09-30 11:46:41', '2024-09-30 11:46:41'),
(1339, 1, 'admin', 'GET', '176.29.147.98', '[]', '2024-09-30 11:47:33', '2024-09-30 11:47:33'),
(1340, 1, 'admin/articles', 'GET', '176.29.147.98', '[]', '2024-09-30 11:47:41', '2024-09-30 11:47:41'),
(1341, 1, 'admin/articles/1', 'GET', '176.29.147.98', '[]', '2024-09-30 11:47:45', '2024-09-30 11:47:45'),
(1342, 1, 'admin/articles', 'GET', '176.29.147.98', '[]', '2024-09-30 11:47:52', '2024-09-30 11:47:52'),
(1343, 1, 'admin', 'GET', '176.28.143.79', '[]', '2024-09-30 11:48:01', '2024-09-30 11:48:01'),
(1344, 1, 'admin/universities', 'GET', '176.28.143.79', '[]', '2024-09-30 11:48:04', '2024-09-30 11:48:04'),
(1345, 1, 'admin/testimonials', 'GET', '176.28.143.79', '[]', '2024-09-30 11:48:09', '2024-09-30 11:48:09'),
(1346, 1, 'admin/articles', 'GET', '176.28.143.79', '[]', '2024-09-30 11:48:12', '2024-09-30 11:48:12'),
(1347, 1, 'admin/form-messages', 'GET', '176.28.143.79', '[]', '2024-09-30 11:48:18', '2024-09-30 11:48:18'),
(1348, 1, 'admin/frequently-asks', 'GET', '176.28.143.79', '[]', '2024-09-30 11:48:20', '2024-09-30 11:48:20'),
(1349, 1, 'admin', 'GET', '176.29.147.98', '[]', '2024-09-30 11:48:54', '2024-09-30 11:48:54'),
(1350, 1, 'admin/articles', 'GET', '176.29.147.98', '[]', '2024-09-30 11:48:59', '2024-09-30 11:48:59'),
(1351, 1, 'admin/articles/create', 'GET', '176.29.147.98', '[]', '2024-09-30 11:49:01', '2024-09-30 11:49:01'),
(1352, 1, 'admin/articles', 'POST', '176.29.147.98', '{\"title\":\"Test\",\"Short_Description\":\"Test short description\",\"Full_Article\":\"Test full article\",\"_token\":\"YmpID1ofp5BKW6rebaGxAsSVCwbAw5JnMwkP03K1\"}', '2024-09-30 11:49:23', '2024-09-30 11:49:23'),
(1353, 1, 'admin/articles', 'GET', '176.29.147.98', '[]', '2024-09-30 11:49:23', '2024-09-30 11:49:23'),
(1354, 1, 'admin/articles/5', 'GET', '176.29.147.98', '[]', '2024-09-30 11:49:27', '2024-09-30 11:49:27'),
(1355, 1, 'admin/articles', 'GET', '176.29.147.98', '[]', '2024-09-30 11:49:30', '2024-09-30 11:49:30'),
(1356, 1, 'admin/auth/users', 'GET', '176.28.143.79', '[]', '2024-09-30 11:50:57', '2024-09-30 11:50:57'),
(1357, 1, 'admin/testimonials', 'GET', '46.185.176.218', '[]', '2024-09-30 11:51:50', '2024-09-30 11:51:50'),
(1358, 1, 'admin/testimonials/1/edit', 'GET', '46.185.176.218', '[]', '2024-09-30 11:51:55', '2024-09-30 11:51:55'),
(1359, 1, 'admin/testimonials/1', 'DELETE', '46.185.176.218', '{\"_method\":\"delete\",\"_token\":\"UEh9jkuBfj9kNzRia1QvfOeqHZ9T8kd0INxXKRqF\"}', '2024-09-30 11:51:59', '2024-09-30 11:51:59'),
(1360, 1, 'admin/testimonials', 'GET', '46.185.176.218', '[]', '2024-09-30 11:51:59', '2024-09-30 11:51:59'),
(1361, 1, 'admin/testimonials', 'GET', '46.185.176.218', '[]', '2024-09-30 13:19:40', '2024-09-30 13:19:40'),
(1362, 1, 'admin/sliders', 'GET', '46.185.176.218', '[]', '2024-09-30 13:20:53', '2024-09-30 13:20:53'),
(1363, 1, 'admin/courses', 'GET', '46.185.176.218', '[]', '2024-09-30 13:21:22', '2024-09-30 13:21:22'),
(1364, 1, 'admin', 'GET', '46.185.176.218', '[]', '2024-09-30 13:42:33', '2024-09-30 13:42:33'),
(1365, 1, 'admin', 'GET', '46.185.176.218', '[]', '2024-09-30 13:42:49', '2024-09-30 13:42:49'),
(1366, 1, 'admin', 'GET', '46.185.176.218', '[]', '2024-09-30 14:22:24', '2024-09-30 14:22:24'),
(1367, 1, 'admin', 'GET', '176.28.145.19', '[]', '2024-10-01 08:57:54', '2024-10-01 08:57:54'),
(1368, 1, 'admin', 'GET', '176.28.134.72', '[]', '2024-10-02 06:40:32', '2024-10-02 06:40:32'),
(1369, 1, 'admin', 'GET', '176.28.134.72', '[]', '2024-10-02 06:48:57', '2024-10-02 06:48:57'),
(1370, 1, 'admin', 'GET', '37.123.65.74', '[]', '2024-10-02 08:52:07', '2024-10-02 08:52:07'),
(1371, 1, 'admin', 'GET', '37.123.65.74', '[]', '2024-10-05 08:25:27', '2024-10-05 08:25:27'),
(1372, 1, 'admin/auth/menu', 'GET', '37.123.65.74', '[]', '2024-10-05 08:25:35', '2024-10-05 08:25:35'),
(1373, 1, 'admin/auth/menu/24', 'DELETE', '37.123.65.74', '{\"_method\":\"delete\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 08:25:40', '2024-10-05 08:25:40'),
(1374, 1, 'admin/auth/menu', 'GET', '37.123.65.74', '[]', '2024-10-05 08:25:40', '2024-10-05 08:25:40'),
(1375, 1, 'admin/auth/menu', 'GET', '37.123.65.74', '[]', '2024-10-05 08:25:44', '2024-10-05 08:25:44'),
(1376, 1, 'admin/countries', 'GET', '37.123.65.74', '[]', '2024-10-05 08:25:47', '2024-10-05 08:25:47'),
(1377, 1, 'admin/countries/3', 'GET', '37.123.65.74', '[]', '2024-10-05 08:25:52', '2024-10-05 08:25:52'),
(1378, 1, 'admin/countries', 'GET', '37.123.65.74', '[]', '2024-10-05 08:25:57', '2024-10-05 08:25:57'),
(1379, 1, 'admin/countries/create', 'GET', '37.123.65.74', '[]', '2024-10-05 08:25:59', '2024-10-05 08:25:59'),
(1380, 1, 'admin/universities', 'GET', '37.123.65.74', '[]', '2024-10-05 08:26:04', '2024-10-05 08:26:04'),
(1381, 1, 'admin/countries', 'GET', '37.123.65.74', '[]', '2024-10-05 08:26:21', '2024-10-05 08:26:21'),
(1382, 1, 'admin/services', 'GET', '37.123.65.74', '[]', '2024-10-05 08:26:24', '2024-10-05 08:26:24'),
(1383, 1, 'admin/brands', 'GET', '37.123.65.74', '[]', '2024-10-05 08:26:25', '2024-10-05 08:26:25'),
(1384, 1, 'admin/articles', 'GET', '37.123.65.74', '[]', '2024-10-05 08:27:07', '2024-10-05 08:27:07'),
(1385, 1, 'admin/articles/1', 'GET', '37.123.65.74', '[]', '2024-10-05 08:27:16', '2024-10-05 08:27:16'),
(1386, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.74', '[]', '2024-10-05 08:28:16', '2024-10-05 08:28:16'),
(1387, 1, 'admin/articles', 'GET', '37.123.65.74', '[]', '2024-10-05 08:28:48', '2024-10-05 08:28:48'),
(1388, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.74', '{\"table_name\":\"News\",\"model_name\":\"App\\\\Models\\\\NewsModel\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\NewsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"Title\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Short Description\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Full Article\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Image\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 08:30:04', '2024-10-05 08:30:04'),
(1389, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.74', '[]', '2024-10-05 08:30:06', '2024-10-05 08:30:06'),
(1390, 1, 'admin/articles', 'GET', '37.123.65.74', '[]', '2024-10-05 08:31:34', '2024-10-05 08:31:34'),
(1391, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.74', '[]', '2024-10-05 08:31:41', '2024-10-05 08:31:41'),
(1392, 1, 'admin/articles', 'GET', '37.123.65.74', '[]', '2024-10-05 08:32:05', '2024-10-05 08:32:05'),
(1393, 1, 'admin/auth/menu', 'GET', '37.123.65.74', '[]', '2024-10-05 08:32:12', '2024-10-05 08:32:12'),
(1394, 1, 'admin/auth/menu', 'GET', '37.123.65.74', '[]', '2024-10-05 08:32:43', '2024-10-05 08:32:43'),
(1395, 1, 'admin/auth/menu/34', 'DELETE', '37.123.65.74', '{\"_method\":\"delete\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 08:32:45', '2024-10-05 08:32:45'),
(1396, 1, 'admin/auth/menu', 'GET', '37.123.65.74', '[]', '2024-10-05 08:32:46', '2024-10-05 08:32:46'),
(1397, 1, 'admin/auth/menu', 'GET', '37.123.65.74', '[]', '2024-10-05 08:32:48', '2024-10-05 08:32:48'),
(1398, 1, 'admin/articles', 'GET', '37.123.65.74', '[]', '2024-10-05 08:32:54', '2024-10-05 08:32:54'),
(1399, 1, 'admin/articles/5/edit', 'GET', '37.123.65.74', '[]', '2024-10-05 08:32:59', '2024-10-05 08:32:59'),
(1400, 1, 'admin/articles/5', 'PUT', '37.123.65.74', '{\"title\":\"Test\",\"Short_Description\":\"dfg\",\"Full_Article\":\"dfg\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\",\"_method\":\"PUT\"}', '2024-10-05 08:33:04', '2024-10-05 08:33:04'),
(1401, 1, 'admin/articles', 'GET', '37.123.65.74', '[]', '2024-10-05 08:33:04', '2024-10-05 08:33:04'),
(1402, 1, 'admin/articles/5/edit', 'GET', '37.123.65.74', '[]', '2024-10-05 08:33:14', '2024-10-05 08:33:14'),
(1403, 1, 'admin/articles/5', 'PUT', '37.123.65.74', '{\"title\":\"Test\",\"Short_Description\":\"xcvxc\",\"Full_Article\":\"xcv\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\",\"after-save\":\"continue_editing\",\"_method\":\"PUT\"}', '2024-10-05 08:33:19', '2024-10-05 08:33:19'),
(1404, 1, 'admin/articles/5/edit', 'GET', '37.123.65.74', '[]', '2024-10-05 08:33:19', '2024-10-05 08:33:19'),
(1405, 1, 'admin/articles/5', 'DELETE', '37.123.65.74', '{\"_method\":\"delete\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 08:33:36', '2024-10-05 08:33:36'),
(1406, 1, 'admin/articles', 'GET', '37.123.65.74', '[]', '2024-10-05 08:33:36', '2024-10-05 08:33:36'),
(1407, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.74', '[]', '2024-10-05 08:33:51', '2024-10-05 08:33:51'),
(1408, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.74', '{\"table_name\":\"expo\",\"model_name\":\"App\\\\Models\\\\News\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\NewsControl\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"Title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Short Description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Full Article\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"Image\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 08:35:10', '2024-10-05 08:35:10'),
(1409, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.74', '[]', '2024-10-05 08:35:11', '2024-10-05 08:35:11'),
(1410, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.74', '[]', '2024-10-05 08:35:14', '2024-10-05 08:35:14'),
(1411, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.74', '[]', '2024-10-05 08:35:25', '2024-10-05 08:35:25'),
(1412, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.74', '[]', '2024-10-05 08:35:26', '2024-10-05 08:35:26'),
(1413, 1, 'admin/auth/menu', 'GET', '37.123.65.74', '[]', '2024-10-05 08:35:33', '2024-10-05 08:35:33'),
(1414, 1, 'admin/auth/menu', 'GET', '37.123.65.74', '[]', '2024-10-05 08:35:55', '2024-10-05 08:35:55'),
(1415, 1, 'admin/news', 'GET', '37.123.65.74', '[]', '2024-10-05 08:36:51', '2024-10-05 08:36:51'),
(1416, 1, 'admin/auth/menu', 'GET', '37.123.65.74', '[]', '2024-10-05 08:36:59', '2024-10-05 08:36:59'),
(1417, 1, 'admin/news/create', 'GET', '37.123.65.74', '[]', '2024-10-05 08:37:03', '2024-10-05 08:37:03'),
(1418, 1, 'admin/news', 'GET', '37.123.65.74', '[]', '2024-10-05 08:37:07', '2024-10-05 08:37:07'),
(1419, 1, 'admin/articles', 'GET', '37.123.65.74', '[]', '2024-10-05 08:37:26', '2024-10-05 08:37:26'),
(1420, 1, 'admin/news', 'GET', '37.123.65.74', '[]', '2024-10-05 08:37:28', '2024-10-05 08:37:28'),
(1421, 1, 'admin/news/create', 'GET', '37.123.65.74', '[]', '2024-10-05 08:37:29', '2024-10-05 08:37:29'),
(1422, 1, 'admin/news', 'POST', '37.123.65.74', '{\"Title\":\"test\",\"Short_Description\":\"test\",\"Full_Article\":\"testdf\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 08:38:06', '2024-10-05 08:38:06'),
(1423, 1, 'admin/news/create', 'GET', '37.123.65.74', '[]', '2024-10-05 08:38:07', '2024-10-05 08:38:07'),
(1424, 1, 'admin/news', 'POST', '37.123.65.74', '{\"Title\":\"test\",\"Short_Description\":\"fgdfg\",\"Full_Article\":\"dfgdg\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 08:40:19', '2024-10-05 08:40:19'),
(1425, 1, 'admin/news/create', 'GET', '37.123.65.74', '[]', '2024-10-05 08:40:19', '2024-10-05 08:40:19'),
(1426, 1, 'admin/auth/menu/35', 'DELETE', '37.123.65.74', '{\"_method\":\"delete\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 08:40:34', '2024-10-05 08:40:34'),
(1427, 1, 'admin/auth/menu', 'GET', '37.123.65.74', '[]', '2024-10-05 08:40:34', '2024-10-05 08:40:34'),
(1428, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.74', '[]', '2024-10-05 08:40:45', '2024-10-05 08:40:45'),
(1429, 1, 'admin/articles', 'GET', '37.123.65.74', '[]', '2024-10-05 08:42:52', '2024-10-05 08:42:52'),
(1430, 1, 'admin/articles/create', 'GET', '37.123.65.74', '[]', '2024-10-05 08:42:54', '2024-10-05 08:42:54'),
(1431, 1, 'admin', 'GET', '91.186.243.35', '[]', '2024-10-05 08:43:28', '2024-10-05 08:43:28'),
(1432, 1, 'admin', 'GET', '91.186.243.35', '[]', '2024-10-05 08:43:33', '2024-10-05 08:43:33'),
(1433, 1, 'admin/helpers/scaffold', 'POST', '37.123.65.74', '{\"table_name\":\"News\",\"model_name\":\"App\\\\Models\\\\News\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\NewsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"Title\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"short_description\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"full_description\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 08:43:38', '2024-10-05 08:43:38'),
(1434, 1, 'admin/helpers/scaffold', 'GET', '37.123.65.74', '[]', '2024-10-05 08:43:38', '2024-10-05 08:43:38'),
(1435, 1, 'admin/articles/create', 'GET', '37.123.65.74', '[]', '2024-10-05 08:43:52', '2024-10-05 08:43:52'),
(1436, 1, 'admin/news', 'GET', '37.123.65.74', '[]', '2024-10-05 08:43:54', '2024-10-05 08:43:54'),
(1437, 1, 'admin/news/create', 'GET', '37.123.65.74', '[]', '2024-10-05 08:43:56', '2024-10-05 08:43:56'),
(1438, 1, 'admin/news', 'POST', '37.123.65.74', '{\"Title\":\"test\",\"short_description\":\"test\",\"full_description\":\"test\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 08:44:07', '2024-10-05 08:44:07'),
(1439, 1, 'admin/news', 'GET', '37.123.65.74', '[]', '2024-10-05 08:44:08', '2024-10-05 08:44:08'),
(1440, 1, 'admin/news/1', 'DELETE', '37.123.65.74', '{\"_method\":\"delete\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 08:44:53', '2024-10-05 08:44:53'),
(1441, 1, 'admin/news', 'GET', '37.123.65.74', '[]', '2024-10-05 08:44:54', '2024-10-05 08:44:54'),
(1442, 1, 'admin/articles', 'GET', '37.123.65.74', '[]', '2024-10-05 08:48:06', '2024-10-05 08:48:06'),
(1443, 1, 'admin/articles', 'GET', '37.123.65.74', '[]', '2024-10-05 08:49:31', '2024-10-05 08:49:31'),
(1444, 1, 'admin/articles/1/edit', 'GET', '37.123.65.74', '[]', '2024-10-05 08:49:34', '2024-10-05 08:49:34'),
(1445, 1, 'admin/articles/1', 'PUT', '37.123.65.74', '{\"title\":\"Strengthening Educational Ties: Bridge International and Philadelphia University Sign MOU\",\"short_description\":\"test\",\"full_article\":\"test\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\",\"_method\":\"PUT\"}', '2024-10-05 08:49:41', '2024-10-05 08:49:41'),
(1446, 1, 'admin/articles', 'GET', '37.123.65.74', '[]', '2024-10-05 08:49:41', '2024-10-05 08:49:41'),
(1447, 1, 'admin/articles/1/edit', 'GET', '37.123.65.74', '[]', '2024-10-05 08:49:48', '2024-10-05 08:49:48'),
(1448, 1, 'admin/articles/1', 'PUT', '37.123.65.74', '{\"title\":\"Strengthening Educational Ties: Bridge International and Philadelphia University Sign MOU\",\"short_description\":\"Short Description\",\"full_article\":\"Full Article\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\",\"_method\":\"PUT\"}', '2024-10-05 08:50:02', '2024-10-05 08:50:02'),
(1449, 1, 'admin/articles', 'GET', '37.123.65.74', '[]', '2024-10-05 08:50:02', '2024-10-05 08:50:02'),
(1450, 1, 'admin/universities', 'GET', '37.123.65.74', '[]', '2024-10-05 08:50:59', '2024-10-05 08:50:59'),
(1451, 1, 'admin/universities', 'GET', '37.123.65.74', '[]', '2024-10-05 08:51:50', '2024-10-05 08:51:50'),
(1452, 1, 'admin/countries', 'GET', '37.123.65.74', '[]', '2024-10-05 08:51:55', '2024-10-05 08:51:55'),
(1453, 1, 'admin/universities', 'GET', '37.123.65.74', '[]', '2024-10-05 08:51:57', '2024-10-05 08:51:57'),
(1454, 1, 'admin/universities/create', 'GET', '37.123.65.74', '[]', '2024-10-05 08:52:00', '2024-10-05 08:52:00'),
(1455, 1, 'admin/universities', 'GET', '37.123.65.74', '[]', '2024-10-05 08:52:22', '2024-10-05 08:52:22'),
(1456, 1, 'admin/universities/2', 'GET', '37.123.65.74', '[]', '2024-10-05 08:52:23', '2024-10-05 08:52:23'),
(1457, 1, 'admin/universities', 'GET', '37.123.65.74', '[]', '2024-10-05 08:52:40', '2024-10-05 08:52:40'),
(1458, 1, 'admin/universities', 'GET', '37.123.65.74', '[]', '2024-10-05 08:52:41', '2024-10-05 08:52:41'),
(1459, 1, 'admin/universities', 'GET', '37.123.65.74', '[]', '2024-10-05 08:52:42', '2024-10-05 08:52:42'),
(1460, 1, 'admin', 'GET', '91.186.243.35', '[]', '2024-10-05 08:53:31', '2024-10-05 08:53:31'),
(1461, 1, 'admin', 'GET', '91.186.243.35', '[]', '2024-10-05 08:53:37', '2024-10-05 08:53:37'),
(1462, 1, 'admin/universities', 'GET', '91.186.243.35', '[]', '2024-10-05 08:53:41', '2024-10-05 08:53:41'),
(1463, 1, 'admin', 'GET', '91.186.243.35', '[]', '2024-10-05 08:53:51', '2024-10-05 08:53:51'),
(1464, 1, 'admin/universities', 'GET', '37.123.65.74', '[]', '2024-10-05 08:53:51', '2024-10-05 08:53:51'),
(1465, 1, 'admin/universities', 'GET', '91.186.243.35', '[]', '2024-10-05 08:53:56', '2024-10-05 08:53:56'),
(1466, 1, 'admin/services', 'GET', '37.123.65.74', '[]', '2024-10-05 08:54:00', '2024-10-05 08:54:00'),
(1467, 1, 'admin/brands', 'GET', '37.123.65.74', '[]', '2024-10-05 08:54:08', '2024-10-05 08:54:08'),
(1468, 1, 'admin/brands/create', 'GET', '37.123.65.74', '[]', '2024-10-05 08:54:10', '2024-10-05 08:54:10'),
(1469, 1, 'admin/brands', 'POST', '37.123.65.74', '{\"name\":\"test\",\"link\":\"https:\\/\\/www.bridge.jo\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 08:54:41', '2024-10-05 08:54:41'),
(1470, 1, 'admin/brands', 'GET', '37.123.65.74', '[]', '2024-10-05 08:54:41', '2024-10-05 08:54:41'),
(1471, 1, 'admin/testimonials', 'GET', '37.123.65.74', '[]', '2024-10-05 08:55:04', '2024-10-05 08:55:04'),
(1472, 1, 'admin/testimonials/create', 'GET', '37.123.65.74', '[]', '2024-10-05 08:55:06', '2024-10-05 08:55:06'),
(1473, 1, 'admin/testimonials', 'POST', '37.123.65.74', '{\"Name\":\"test\",\"Title\":\"test\",\"Description\":\"test\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 08:55:16', '2024-10-05 08:55:16'),
(1474, 1, 'admin/testimonials', 'GET', '37.123.65.74', '[]', '2024-10-05 08:55:16', '2024-10-05 08:55:16'),
(1475, 1, 'admin/articles', 'GET', '37.123.65.74', '[]', '2024-10-05 08:55:21', '2024-10-05 08:55:21'),
(1476, 1, 'admin/auth/menu', 'GET', '37.123.65.74', '[]', '2024-10-05 08:55:32', '2024-10-05 08:55:32'),
(1477, 1, 'admin/auth/users', 'GET', '37.123.65.74', '[]', '2024-10-05 08:55:46', '2024-10-05 08:55:46'),
(1478, 1, 'admin/auth/roles', 'GET', '37.123.65.74', '[]', '2024-10-05 08:55:51', '2024-10-05 08:55:51'),
(1479, 1, 'admin/auth/roles/create', 'GET', '37.123.65.74', '[]', '2024-10-05 08:55:54', '2024-10-05 08:55:54'),
(1480, 1, 'admin/auth/roles/create', 'GET', '37.123.65.74', '[]', '2024-10-05 08:55:58', '2024-10-05 08:55:58'),
(1481, 1, 'admin/auth/menu', 'POST', '37.123.65.74', '{\"_order\":\"[{\\\"id\\\":\\\"21\\\"},{\\\"id\\\":\\\"22\\\"},{\\\"id\\\":\\\"25\\\"},{\\\"id\\\":\\\"26\\\"},{\\\"id\\\":\\\"27\\\"},{\\\"id\\\":\\\"28\\\"},{\\\"id\\\":\\\"33\\\"},{\\\"id\\\":\\\"36\\\"},{\\\"id\\\":\\\"32\\\"},{\\\"id\\\":\\\"31\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"}]}]\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 08:56:03', '2024-10-05 08:56:03'),
(1482, 1, 'admin/auth/menu', 'GET', '37.123.65.74', '[]', '2024-10-05 08:56:04', '2024-10-05 08:56:04'),
(1483, 1, 'admin/sliders', 'GET', '37.123.65.74', '[]', '2024-10-05 08:56:11', '2024-10-05 08:56:11'),
(1484, 1, 'admin/sliders', 'GET', '37.123.65.74', '[]', '2024-10-05 08:56:14', '2024-10-05 08:56:14'),
(1485, 1, 'admin', 'GET', '79.134.138.162', '[]', '2024-10-05 08:57:56', '2024-10-05 08:57:56'),
(1486, 1, 'admin/news', 'GET', '37.123.65.74', '[]', '2024-10-05 08:58:46', '2024-10-05 08:58:46'),
(1487, 1, 'admin/media', 'GET', '37.123.65.74', '[]', '2024-10-05 08:59:43', '2024-10-05 08:59:43'),
(1488, 1, 'admin/media', 'GET', '37.123.65.74', '{\"path\":\"\\/images\",\"fn\":\"selectFile\"}', '2024-10-05 08:59:47', '2024-10-05 08:59:47'),
(1489, 1, 'admin/media', 'GET', '37.123.65.74', '{\"path\":\"\\/images\",\"view\":\"list\",\"select\":\"0\",\"fn\":\"selectFile\"}', '2024-10-05 08:59:56', '2024-10-05 08:59:56'),
(1490, 1, 'admin/media', 'GET', '37.123.65.74', '{\"path\":\"\\/images\",\"view\":\"list\",\"select\":\"0\",\"fn\":\"selectFile\"}', '2024-10-05 08:59:59', '2024-10-05 08:59:59'),
(1491, 1, 'admin/media', 'GET', '37.123.65.74', '{\"path\":\"\\/images\",\"view\":\"list\",\"select\":\"0\",\"fn\":\"selectFile\"}', '2024-10-05 08:59:59', '2024-10-05 08:59:59'),
(1492, 1, 'admin/media', 'GET', '37.123.65.74', '{\"select\":\"0\",\"fn\":\"selectFile\"}', '2024-10-05 09:00:01', '2024-10-05 09:00:01'),
(1493, 1, 'admin/media', 'GET', '37.123.65.74', '{\"path\":\"\\/images\",\"select\":\"0\",\"fn\":\"selectFile\"}', '2024-10-05 09:00:04', '2024-10-05 09:00:04'),
(1494, 1, 'admin/testimonials', 'GET', '37.123.65.74', '[]', '2024-10-05 09:00:14', '2024-10-05 09:00:14'),
(1495, 1, 'admin/testimonials', 'GET', '37.123.65.74', '[]', '2024-10-05 09:01:35', '2024-10-05 09:01:35'),
(1496, 1, 'admin/testimonials/create', 'GET', '37.123.65.74', '[]', '2024-10-05 09:01:37', '2024-10-05 09:01:37'),
(1497, 1, 'admin/testimonials', 'POST', '37.123.65.74', '{\"Name\":\"new\",\"Title\":\"new\",\"Description\":\"new\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 09:01:48', '2024-10-05 09:01:48'),
(1498, 1, 'admin/testimonials', 'GET', '37.123.65.74', '[]', '2024-10-05 09:01:48', '2024-10-05 09:01:48'),
(1499, 1, 'admin/testimonials/3', 'DELETE', '37.123.65.74', '{\"_method\":\"delete\",\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 09:01:51', '2024-10-05 09:01:51'),
(1500, 1, 'admin/testimonials', 'GET', '37.123.65.74', '[]', '2024-10-05 09:01:51', '2024-10-05 09:01:51'),
(1501, 1, 'admin/testimonials', 'GET', '37.123.65.74', '[]', '2024-10-05 09:02:27', '2024-10-05 09:02:27'),
(1502, 1, 'admin/news', 'GET', '37.123.65.74', '[]', '2024-10-05 09:02:28', '2024-10-05 09:02:28'),
(1503, 1, 'admin/news', 'GET', '37.123.65.74', '[]', '2024-10-05 09:03:23', '2024-10-05 09:03:23'),
(1504, 1, 'admin/news/create', 'GET', '37.123.65.74', '[]', '2024-10-05 09:04:20', '2024-10-05 09:04:20'),
(1505, 1, 'admin/news', 'POST', '37.123.65.74', '{\"Title\":null,\"short_description\":null,\"_token\":\"uO8pRMVoj2ND6EoCYfGIAdgdpmzKjN8uMYH7TsJ7\"}', '2024-10-05 09:04:38', '2024-10-05 09:04:38'),
(1506, 1, 'admin/news/create', 'GET', '37.123.65.74', '[]', '2024-10-05 09:04:38', '2024-10-05 09:04:38'),
(1507, 1, 'admin', 'GET', '91.186.243.35', '[]', '2024-10-05 09:17:46', '2024-10-05 09:17:46'),
(1508, 1, 'admin/services', 'GET', '79.134.138.162', '[]', '2024-10-05 09:57:02', '2024-10-05 09:57:02'),
(1509, 1, 'admin/testimonials', 'GET', '37.123.65.74', '[]', '2024-10-05 10:37:24', '2024-10-05 10:37:24'),
(1510, 1, 'admin/services', 'GET', '37.123.65.74', '[]', '2024-10-05 10:37:30', '2024-10-05 10:37:30'),
(1511, 1, 'admin/sliders', 'GET', '37.123.65.74', '[]', '2024-10-05 10:37:56', '2024-10-05 10:37:56'),
(1512, 1, 'admin/testimonials', 'GET', '37.123.65.74', '[]', '2024-10-05 10:37:58', '2024-10-05 10:37:58'),
(1513, 1, 'admin/frequently-asks', 'GET', '37.123.65.74', '[]', '2024-10-05 10:38:02', '2024-10-05 10:38:02'),
(1514, 1, 'admin', 'GET', '92.253.28.196', '[]', '2024-10-05 12:38:25', '2024-10-05 12:38:25'),
(1515, 1, 'admin', 'GET', '94.249.2.187', '[]', '2024-10-05 14:34:11', '2024-10-05 14:34:11'),
(1516, 1, 'admin', 'GET', '94.249.2.187', '[]', '2024-10-05 17:44:43', '2024-10-05 17:44:43');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2024-09-11 03:28:12', '2024-09-11 03:28:12'),
(7, 'Media manager', 'ext.media-manager', '', '/media*', '2024-09-11 04:34:51', '2024-09-11 04:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-09-11 03:25:25', '2024-09-11 03:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$yvFLvVJduMEn4MsJyJFqSeCd0QPzk0qo1yc2lUSrE5ISAgAM/Bgl6', 'Administrator', NULL, 'ZtGQhbgF5ZeXlK8dczlNEzp41mEOTDx32xT3LQnQToA6Zm0oDgnQrrs5ykeW', '2024-09-11 03:25:25', '2024-09-11 03:25:25'),
(2, 'test', '$2y$12$WtVDhP4UQjJN4sq3vZUzouGgONrTI03KfztOZmIKnNDFu0AlcJduW', 'test', 'images/logo-1_1.png', NULL, '2024-09-11 04:55:36', '2024-09-11 04:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `full_article` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `short_description`, `full_article`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Strengthening Educational Ties: Bridge International and Philadelphia University Sign MOU', 'Short Description', 'Full Article', 'images/WhatsApp Image 2024-09-24 at 4.02.09 PM.jpeg', '2024-09-24 13:12:10', '2024-10-05 08:50:02'),
(2, 'BridgInternational Partners with De La Salle - Amman Schools to Enhance Educational Opportunities', NULL, NULL, 'images/WhatsApp Image 2024-09-24 at 4.03.31 PM.jpeg', '2024-09-24 13:24:26', '2024-09-24 13:24:26'),
(3, 'Bridge International\'s Sister Company Partners with British Council to Enhance Educational Offerings', NULL, NULL, 'images/WhatsApp Image 2024-09-24 at 4.05.11 PM.jpeg', '2024-09-24 13:30:22', '2024-09-24 13:30:22'),
(4, 'Celebrating Global Education: Our 31st Educational Fair', NULL, NULL, 'images/WhatsApp Image 2024-09-24 at 4.04.34 PM.jpeg', '2024-09-24 13:33:40', '2024-09-24 13:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `link`, `created_at`, `updated_at`) VALUES
(2, 'test', 'images/logo-1_5.png', 'https://www.bridge.jo', '2024-10-05 08:54:41', '2024-10-05 08:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(3, 'The United Kingdom - UK', 'images/flags-01.png', '2024-09-24 11:39:53', '2024-09-26 14:37:14'),
(4, 'The United States of America - USA', 'images/flags-02.png', '2024-09-24 11:42:34', '2024-09-26 14:37:47'),
(5, 'Canada', 'images/flags-07.png', '2024-09-24 11:50:39', '2024-09-26 14:39:07'),
(6, 'Europe', 'images/flags-05.png', '2024-09-24 11:50:49', '2024-09-26 14:38:23'),
(7, 'Turkey', 'images/flags-03_1.png', '2024-09-24 11:50:58', '2024-09-26 14:38:40'),
(8, 'Cyprus', 'images/flags-06.png', '2024-09-24 11:51:05', '2024-09-26 14:39:29'),
(9, 'Malta', 'images/flags-04.png', '2024-09-24 11:51:15', '2024-09-26 14:39:46'),
(10, 'New Zealand', 'images/flags-08.png', '2024-09-24 11:51:35', '2024-09-26 14:40:30'),
(11, 'Australia', 'images/flags-10.png', '2024-09-24 11:51:43', '2024-09-26 14:40:57'),
(12, 'Ireland', 'images/flags-09.png', '2024-09-24 14:51:28', '2024-09-26 14:41:38'),
(13, 'Hungary', 'images/flags-11.png', '2024-09-26 14:42:50', '2024-09-26 14:42:50'),
(14, 'Spain', 'images/flags-12.png', '2024-09-26 14:43:15', '2024-09-26 14:43:15'),
(15, 'Germany', 'images/flags-15.png', '2024-09-26 14:43:30', '2024-09-26 14:43:30'),
(16, 'Italy', '', '2024-09-26 14:44:12', '2024-09-26 14:44:12'),
(17, 'Malaysia', 'images/flags-21.png', '2024-09-26 14:44:51', '2024-09-26 14:44:51'),
(18, 'France', 'images/flags-13.png', '2024-09-26 14:45:26', '2024-09-26 14:45:26'),
(19, 'Denmark', 'images/flags-16.png', '2024-09-26 14:47:47', '2024-09-26 14:47:47'),
(20, 'Czech Republic', 'images/flags-22.png', '2024-09-26 14:51:44', '2024-09-26 14:51:44'),
(21, 'Netherlands', 'images/flags-14.png', '2024-09-26 14:53:20', '2024-09-26 14:53:20'),
(22, 'Finland', 'images/flags-19.png', '2024-09-26 14:54:16', '2024-09-26 14:54:16'),
(23, 'Latvia', 'images/flags-20.png', '2024-09-26 14:54:43', '2024-09-26 14:54:43'),
(24, 'Lithuania', 'images/flags-23.png', '2024-09-29 09:36:58', '2024-09-29 09:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `Qualification` varchar(255) DEFAULT NULL,
  `Fees` varchar(255) DEFAULT NULL,
  `Duration` varchar(255) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frequentlies_asks`
--

CREATE TABLE `frequentlies_asks` (
  `id` int(10) UNSIGNED NOT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `Question` varchar(255) DEFAULT NULL,
  `Answer` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frequentlies_asks`
--

INSERT INTO `frequentlies_asks` (`id`, `Category`, `Question`, `Answer`, `created_at`, `updated_at`) VALUES
(1, NULL, 'What Are the Benefits of Studying Abroad?', 'Studying abroad offers cultural enrichment, unique academic opportunities, improved career prospects, personal growth, and the chance to build an international network.', '2024-09-24 11:55:07', '2024-09-24 11:55:07'),
(2, NULL, 'How do I choose a study abroad destination?', 'Consider factors such as your academic goals, language preferences, budget, safety, and cultural interests. Our advisors can help you find the right fit for your needs.', '2024-09-24 11:55:54', '2024-09-24 11:55:54'),
(3, NULL, 'What types of programs do you offer?', 'We offer a variety of programs including Summer Camps, Bachelor’s, Master’s, PhD and Language Courses across multiple countries.', '2024-09-24 11:58:34', '2024-09-24 11:58:34'),
(4, NULL, 'How do I choose the right study abroad program?', 'Consider factors such as your academic goals, preferred location, language of instruction, lifestyle preferences, and financial considerations. Research universities, programs, and living conditions to find the best fit.', '2024-09-24 11:59:06', '2024-09-24 11:59:06'),
(5, NULL, 'What is the application process for studying abroad?', 'The process typically involves selecting a program, researching admission requirements, preparing necessary documents, submitting applications, and meeting deadlines. Each institution may have specific steps, so we check their guidelines carefully.', '2024-09-24 11:59:57', '2024-09-24 11:59:57'),
(6, NULL, 'What are the costs associated with studying abroad?', 'Costs vary by destination and program type, but typically include tuition, accommodation, travel, insurance, and living expenses. We provide detailed cost breakdowns for each program.', '2024-09-24 12:00:36', '2024-09-24 12:00:36'),
(7, NULL, 'How Long Do Study Abroad Programs take?', 'Study abroad durations vary by program and degree: undergraduate degrees typically take three to four years (three in the UK, four in the US), master’s degrees one to two years, and PhDs three to four years.', '2024-09-24 12:02:44', '2024-09-24 12:02:44'),
(8, NULL, 'What Are the Entry Requirements for Study Abroad programs?', 'Entry requirements vary by country and institution but usually include academic qualifications, proof of language proficiency, and sometimes-standardized test scores. Always verify specific requirements with your chosen universities.', '2024-09-24 12:03:17', '2024-09-24 12:03:17'),
(9, NULL, 'Are scholarships or financial aid available?', 'Yes, we offer information on various scholarships and partial discounts. Be sure to contact us for updates on available opportunities.', '2024-09-24 12:03:45', '2024-09-24 12:03:45'),
(10, NULL, 'What should I do if I have more questions or need assistance?', 'Contact us directly through our website, email, or phone. We are here to help with any questions or concerns you may have about your study abroad experience.', '2024-09-24 12:04:05', '2024-09-24 12:04:05');

-- --------------------------------------------------------

--
-- Table structure for table `frequently_asked_questions`
--

CREATE TABLE `frequently_asked_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hisham`
--

CREATE TABLE `hisham` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hisham`
--

INSERT INTO `hisham` (`id`, `name`, `age`, `created_at`, `updated_at`) VALUES
(1, 'hisham', 'images/138903280_1950794388395517_5449271252274154044_n.jpg', '2024-09-11 04:12:05', '2024-09-11 04:33:36'),
(2, 'new', 'images/uganda.jpg', '2024-09-11 04:34:03', '2024-09-11 04:34:03'),
(3, 'newSt', 'images/Screenshot 2024-05-27 151535.png', '2024-09-11 04:39:25', '2024-09-11 04:39:25'),
(4, 'jisas', 'images/logo-1.png', '2024-09-11 04:40:28', '2024-09-11 04:40:28');

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
(5, '2016_01_04_173148_create_admin_tables', 2),
(6, '2024_09_11_034825_create_countries_table', 3),
(7, '2024_09_11_035002_create_tr_table', 4),
(8, '2024_09_11_035316_create_countries_table', 5),
(9, '2024_09_11_035913_create_test_table', 6),
(10, '2024_09_11_040809_create_Student_table', 7),
(11, '2024_09_11_041107_create_hisham_table', 8),
(12, '2024_09_11_063000_create_slider_table', 9),
(13, '2024_09_11_063205_create_universities_table', 10),
(14, '2024_09_11_063514_create_courses_table', 11),
(15, '2024_09_11_064409_create_courses_table', 12),
(16, '2024_09_11_064515_create_countries_table', 13),
(17, '2024_09_11_064712_create_services_table', 14),
(18, '2024_09_11_064803_create_brands_table', 15),
(19, '2024_09_11_064915_create_testimonials_table', 16),
(20, '2024_09_11_065022_create_faqs_table', 17),
(21, '2024_09_11_065257_create_frequently_asked_questions_table', 18),
(22, '2024_09_11_065552_create_user_messages_table', 19),
(23, '2024_09_11_065921_create_frequentlies_asks_table', 20),
(24, '2024_09_11_070419_create_articles_table', 21),
(25, '2024_10_05_083004_create_News_table', 22),
(26, '2024_10_05_083510_create_expo_table', 23),
(27, '2024_10_05_084338_create_News_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `News`
--

CREATE TABLE `News` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `full_description` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `image`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'University Acceptances & Applications', 'images/University Acceptances & Applications.png', 'We guide you through the entire application process, ensuring your submission is complete and meets all requirements for successful acceptance.', '2024-09-24 12:34:20', '2024-09-29 07:19:10', NULL),
(2, 'Accredited Universities from the Jordanian Ministry of Higher Education', 'images/Accredited Universities from the Jordanian Ministry of Higher Education.png', 'We partner with accredited institutions recognized by the Ministry of Higher Education in Jordan, ensuring you receive a quality education that’s internationally acknowledged.', '2024-09-24 12:35:18', '2024-09-29 07:26:28', NULL),
(3, 'Instant University Offers', 'images/Instant University Offers.png', 'Receive fast-track offers from universities based on your qualifications, allowing you to secure your place quickly and easily.', '2024-09-24 12:35:44', '2024-09-29 09:37:19', NULL),
(4, 'Alternative Options for Lower Grades', 'images/Alternative Options for Lower Grades.png', 'If your results don’t meet expectations, Bridge provides a range of alternative university options to keep your study plans on track.', '2024-09-24 12:36:16', '2024-09-29 09:37:32', NULL),
(5, 'University Course Selection', 'images/University Course Selection.png', 'We assist you in selecting the right courses tailored to your career goals and interests, ensuring the best fit for your academic journey.', '2024-09-24 12:36:31', '2024-09-29 09:37:47', NULL),
(6, 'Personal Statements & Interview Preparations', 'images/Personal Statements & Interview Preparations.png', 'Get expert guidance in crafting compelling personal statements and preparing for interviews to enhance your application’s success.', '2024-09-24 12:36:52', '2024-09-29 09:38:03', NULL),
(7, 'Scholarships & Discounts', 'images/Scholarships & Discounts.png', 'Explore various scholarships and discounts available to international students, helping to make your education more affordable.', '2024-09-24 12:37:16', '2024-09-29 09:38:18', NULL),
(8, 'University Accommodation', 'images/University Accommodation.png', 'We help you find suitable accommodation options that meet your needs, ensuring a comfortable living environment during your studies.', '2024-09-24 12:37:38', '2024-09-29 09:38:33', NULL),
(9, 'Student Visa Assistance', 'images/Student Visa Assistance.png', 'Our team provides step-by-step support for obtaining your student visa, ensuring a smooth transition to studying abroad.', '2024-09-24 12:37:57', '2024-09-29 09:38:47', NULL),
(10, 'Summer Camps Abroad', 'images/Summer Camps Abroad.png', 'Join our exciting summer camps that offer cultural experiences and academic enrichment, perfect for enhancing your skills and networking.', '2024-09-24 12:38:43', '2024-09-29 09:40:29', NULL),
(11, 'English Language Courses Abroad', 'images/English Language Courses Abroad.png', 'Access language support services to improve your English proficiency, helping you succeed academically and socially in an English-speaking environment.', '2024-09-24 12:39:05', '2024-09-29 09:40:42', NULL),
(12, 'Ongoing Support', 'images/Ongoing Support.png', 'Receive continuous assistance before and during your academic journey, from your Bachelor’s degree to Master’s and PhD, so you always have guidance and support along the way.', '2024-09-24 12:40:31', '2024-09-29 09:40:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `link`, `created_at`, `updated_at`) VALUES
(1, 'images/logo-1.png', NULL, '2024-09-11 06:30:37', '2024-09-11 06:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`id`, `name`, `age`, `created_at`, `updated_at`) VALUES
(1, 'fdgdf', 'dfgdfg', NULL, NULL),
(2, 'fdgdf', 'dfgdfg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `Name`, `Title`, `Image`, `Description`, `created_at`, `updated_at`) VALUES
(2, 'test', 'test', 'images/logo-1_6.png', 'test', '2024-10-05 08:55:16', '2024-10-05 08:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `Images` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `name`, `description`, `Images`, `location`, `created_at`, `updated_at`) VALUES
(2, 'Aston University', NULL, 'images/ASTON university.png', 'UK', '2024-09-26 13:30:14', '2024-09-26 13:30:14'),
(3, 'University of Aberdeen', NULL, 'images/Aberdeen.png', 'UK', '2024-09-26 13:31:03', '2024-09-26 13:31:03'),
(4, 'Aberystwyth University', NULL, 'images/Aberystwyth University.jpg', 'UK', '2024-09-26 13:32:22', '2024-09-26 13:32:22'),
(5, 'Queen\'s University Belfast', NULL, 'images/BELFAST ( Queens Univ Belfast).jpg', 'UK', '2024-09-26 13:33:12', '2024-09-26 13:33:12'),
(6, 'Brunel University London', NULL, 'images/Brunel.png', 'UK', '2024-09-26 13:34:02', '2024-09-26 13:34:02'),
(7, 'University of Bradford', NULL, 'images/Bradford.jpg', 'UK', '2024-09-26 13:39:13', '2024-09-26 13:39:13'),
(8, 'University of Bath', NULL, 'images/BATH.png', 'UK', '2024-09-26 13:39:47', '2024-09-26 13:39:47'),
(9, 'University of Buckingham', NULL, 'images/Buckingham university.png', 'UK', '2024-09-26 13:40:25', '2024-09-26 13:40:25'),
(10, 'Bangor University', NULL, 'images/Bangor.png', 'UK', '2024-09-26 13:41:24', '2024-09-26 13:41:24'),
(11, 'UWE Bristol: University of the West of England Bristol', NULL, 'images/BUWE, Univ of the West of England.png', 'UK', '2024-09-26 13:42:11', '2024-09-26 13:42:11'),
(12, 'University of Brighton', NULL, 'images/Brighton.png', 'UK', '2024-09-26 13:43:37', '2024-09-26 13:43:37'),
(13, 'BPP University', NULL, 'images/BPP University.png', 'UK', '2024-09-26 13:46:12', '2024-09-26 13:46:12'),
(14, 'University of Bristol', NULL, 'images/Bristol.png', 'UK', '2024-09-26 13:47:22', '2024-09-26 13:47:22'),
(15, 'Birmingham City University', NULL, 'images/Birminham CITY  University.png', 'UK', '2024-09-26 13:48:57', '2024-09-26 13:48:57'),
(16, 'University of Birmingham', NULL, 'images/Birmingham.jpg', 'UK', '2024-09-26 13:49:37', '2024-09-26 13:49:37'),
(17, 'Bournemouth University', NULL, 'images/Bournemouth.png', 'UK', '2024-09-26 13:50:15', '2024-09-26 13:50:15'),
(18, 'Cardiff University', NULL, 'images/Cardiff.png', 'UK', '2024-09-26 13:51:16', '2024-09-26 13:51:16'),
(20, 'City, University of London', NULL, 'images/CITY.png', 'UK', '2024-09-26 14:19:41', '2024-09-26 14:19:41'),
(21, 'Coventry University', NULL, 'images/Coventry.png', 'UK', '2024-09-26 14:20:25', '2024-09-26 14:20:25'),
(22, 'Cranfield University', NULL, 'images/Cranfield University.jpg', 'UK', '2024-09-26 14:23:56', '2024-09-26 14:23:56'),
(23, 'De Montfort University', NULL, 'images/Demonfort.png', 'UK', '2024-09-26 14:24:58', '2024-09-26 14:24:58'),
(24, 'University of Dundee', NULL, 'images/Dundee.png', 'UK', '2024-09-26 14:25:42', '2024-09-26 14:25:42'),
(25, 'University of Essex', NULL, 'images/Essex.jpg', 'UK', '2024-09-26 14:26:36', '2024-09-26 14:26:36'),
(26, 'University of Exeter', NULL, 'images/Exeter.png', 'UK', '2024-09-26 14:27:20', '2024-09-26 14:27:20'),
(28, 'University of East London', NULL, 'images/East London ( UEL).png', 'UK', '2024-09-26 14:32:04', '2024-09-26 14:32:04'),
(29, 'Edinburgh Napier University', NULL, 'images/Edinburgh Napier University.png', 'UK', '2024-09-26 14:32:32', '2024-09-26 14:32:32'),
(30, 'University of Gloucestershire', NULL, 'images/Gloucestershire university UK.png', 'UK', '2024-09-26 14:33:33', '2024-09-26 14:33:33'),
(32, 'University of Hertfordshire', NULL, 'images/Hertforshire.png', 'UK', '2024-09-29 06:53:25', '2024-09-29 06:53:25'),
(33, 'Heriot-Watt University', NULL, 'images/Heriot Watt university.png', 'UK', '2024-09-29 06:54:03', '2024-09-29 06:54:03'),
(34, 'University of Kent', NULL, 'images/Kent.png', 'UK', '2024-09-29 06:54:51', '2024-09-29 06:54:51'),
(35, 'Keele University', NULL, 'images/Keele UNIVERSITY.jpg', 'UK', '2024-09-29 06:55:20', '2024-09-29 06:55:20'),
(36, 'Kingston University London', NULL, 'images/Kingston.png', 'UK', '2024-09-29 06:55:52', '2024-09-29 06:55:52'),
(37, 'University of Leeds', NULL, 'images/Leeds.png', 'UK', '2024-09-29 06:56:25', '2024-09-29 06:56:25'),
(38, 'University of Leicester', NULL, 'images/Leicester.jpg', 'UK', '2024-09-29 06:56:56', '2024-09-29 06:56:56'),
(39, 'London School of Commerce', NULL, 'images/LSC.png', 'UK', '2024-09-29 06:58:09', '2024-09-29 06:58:09'),
(40, 'The University of Liverpool', NULL, 'images/LIVERPOOL.jpg', 'UK', '2024-09-29 06:58:57', '2024-09-29 06:58:57'),
(41, 'Liverpool John Moores University', NULL, 'images/Liverpool john moores.png', 'UK', '2024-09-29 07:01:27', '2024-09-29 07:01:27'),
(42, 'London South Bank University', NULL, 'images/London South Bank University (LSBU).jpg', 'UK', '2024-09-29 07:02:01', '2024-09-29 07:02:01'),
(43, 'Nottingham Trent University', NULL, 'images/Nottingham Trent.jpg', 'UK', '2024-09-29 07:02:38', '2024-09-29 07:02:38'),
(44, 'University of Northampton', NULL, 'images/Northampton University.png', NULL, '2024-09-29 07:07:31', '2024-09-29 07:07:31'),
(45, 'Oxford Brookes University', NULL, 'images/OXFford Brookes.png', NULL, '2024-09-29 07:08:36', '2024-09-29 07:08:36'),
(46, 'University of Plymouth', NULL, 'images/Plymouth.png', 'UK', '2024-09-29 07:09:16', '2024-09-29 07:09:16'),
(47, 'University of Portsmouth', NULL, 'images/Portsmouth.png', 'UK', '2024-09-29 07:09:47', '2024-09-29 07:09:47'),
(48, 'Queen Mary University of London', NULL, 'images/QMUL.jpg', 'UK', '2024-09-29 07:10:19', '2024-09-29 07:10:19'),
(49, 'Queen Margaret University', NULL, 'images/Queen Mragaret.png', 'UK', '2024-09-29 07:10:56', '2024-09-29 07:10:56'),
(50, 'Queen Ethelburga\'s Collegiate', NULL, 'images/Queen Ethelburga\'s Collegiate.png', 'UK', '2024-09-29 07:13:16', '2024-09-29 07:13:16'),
(51, 'University of Reading', NULL, 'images/Reading.jpg', 'UK', '2024-09-29 07:14:28', '2024-09-29 07:14:28'),
(52, 'Swansea University', NULL, 'images/Swansea.png', 'UK', '2024-09-29 07:15:36', '2024-09-29 07:15:36'),
(53, 'The University of Sunderland', NULL, 'images/Sunderland.png', 'UK', '2024-09-29 07:24:23', '2024-09-29 07:24:23'),
(54, 'University of Southampton', NULL, 'images/Southampton.png', 'UK', '2024-09-29 07:25:05', '2024-09-29 07:25:05'),
(55, 'University of Salford', NULL, 'images/Salford.jpg', 'UK', '2024-09-29 07:25:57', '2024-09-29 07:25:57'),
(56, 'Southampton Solent University', NULL, 'images/Solent University.png', 'UK', '2024-09-29 07:44:24', '2024-09-29 07:44:24'),
(57, 'University of Staffordshire', NULL, 'images/Staffordshire University.png', 'UK', '2024-09-29 07:45:11', '2024-09-29 07:45:11'),
(58, 'Sheffield Hallam University', NULL, 'images/Sheffield Hallam.jpg', 'UK', '2024-09-29 07:45:43', '2024-09-29 07:45:43'),
(59, 'University of Stirling', NULL, 'images/Stirling.png', 'UK', '2024-09-29 07:47:04', '2024-09-29 07:47:04'),
(60, 'University of Strathclyde, Glasgow', NULL, 'images/Strathclyde University ( Glasgow).jpg', 'UK', '2024-09-29 07:47:36', '2024-09-29 07:47:36'),
(61, 'University of Central Lancashire - UCLan', NULL, NULL, 'UK', '2024-09-29 07:48:14', '2024-09-29 07:48:14'),
(62, 'University of East Anglia (UEA)', NULL, 'images/University of East Anglea.png', 'UK', '2024-09-29 07:48:51', '2024-09-29 07:48:51'),
(63, 'University of South Wales', NULL, NULL, 'UK', '2024-09-29 07:51:41', '2024-09-29 07:51:41'),
(64, 'University of Sussex', NULL, 'images/University of Sussex.png', 'UK', '2024-09-29 07:52:27', '2024-09-29 07:52:27'),
(65, 'SOAS University of London', NULL, 'images/SOAS UNIVERSITY UK.png', 'UK', '2024-09-29 07:53:56', '2024-09-29 07:53:56'),
(66, 'University of Surrey', NULL, 'images/Surrey.png', 'UK', '2024-09-29 07:54:46', '2024-09-29 07:54:46'),
(67, 'Teesside University', NULL, 'images/Teesside UNIVERSITY UK.png', 'UK', '2024-09-29 07:55:21', '2024-09-29 07:55:21'),
(68, 'Ulster University', NULL, 'images/Ulster.png', 'UK', '2024-09-29 07:55:48', '2024-09-29 07:55:48'),
(69, 'University for the Creative Arts', NULL, 'images/University of creative arts.png', 'UK', '2024-09-29 07:56:22', '2024-09-29 07:56:22'),
(70, 'University of Wolverhampton', NULL, 'images/University of Wolverhampton.jpg', 'UK', '2024-09-29 07:56:51', '2024-09-29 07:56:51'),
(71, 'University of Westminster', NULL, 'images/Westminister.png', 'UK', '2024-09-29 07:57:19', '2024-09-29 07:57:19'),
(72, 'University of York', NULL, 'images/YORK UNIVERSITY UK.png', 'UK', '2024-09-29 07:57:51', '2024-09-29 07:57:51'),
(73, 'Carleton University', NULL, 'images/Carelton.jpg', 'Canada', '2024-09-29 08:33:29', '2024-09-29 08:33:29'),
(74, 'University of Windsor', NULL, NULL, 'Canada', '2024-09-29 08:34:02', '2024-09-29 08:34:02'),
(75, 'Conestoga College', NULL, 'images/Conestoga.png', 'Canada', '2024-09-29 08:34:31', '2024-09-29 08:34:31'),
(76, 'Niagara College', NULL, 'images/niagara.png', 'Canada', '2024-09-29 08:35:03', '2024-09-29 08:35:03'),
(77, 'Acadia University', NULL, 'images/acadia.jpeg', 'Canada', '2024-09-29 08:35:29', '2024-09-29 08:35:29'),
(78, 'Santa Monica College', NULL, 'images/Santa_Monica_College_seal.svg.png', 'USA', '2024-09-29 08:37:09', '2024-09-29 08:37:09'),
(79, 'Kaplan', NULL, 'images/kaplan.png', 'UK\\USA\\Canada', '2024-09-29 08:39:01', '2024-09-29 08:44:55'),
(80, 'Shorelight', NULL, 'images/Shorelight S.png', 'USA', '2024-09-29 08:42:15', '2024-09-29 08:42:15'),
(81, 'Washington State University', NULL, 'images/Washington State University.png', 'USA', '2024-09-29 08:44:42', '2024-09-29 08:44:42'),
(82, 'Budapest University of Technology and Economics', NULL, 'images/Budapest University of Technology and Economics.jpg', 'Hungary', '2024-09-29 08:48:44', '2024-09-29 08:48:44'),
(83, 'University of Szeged', NULL, 'images/University of Szeged.jpg', 'Hungary', '2024-09-29 08:49:04', '2024-09-29 08:49:04'),
(84, 'University of Pecs', NULL, 'images/images.png', 'Hungary', '2024-09-29 08:49:20', '2024-09-29 08:49:20'),
(85, 'Budapest Business University', NULL, 'images/business.png', 'Hungary', '2024-09-29 08:49:39', '2024-09-29 08:49:39'),
(86, 'University College Dublin', NULL, 'images/university-college-dublin4379.jpg', 'Ireland', '2024-09-29 08:53:11', '2024-09-29 08:53:11'),
(87, 'University College Cork', NULL, 'images/university-college-cork-logo.png', 'Ireland', '2024-09-29 08:53:42', '2024-09-29 08:53:42'),
(88, 'Dublin City University', NULL, 'images/Dublin_City_University_(logo).png', 'Ireland', '2024-09-29 08:54:12', '2024-09-29 08:54:12'),
(89, 'UCAM Catholic University of Murcia', NULL, 'images/UCAM.png', 'Spain', '2024-09-29 08:58:57', '2024-09-29 08:58:57'),
(90, 'EU Business School', NULL, 'images/EU Business School.png', 'Spain', '2024-09-29 09:00:51', '2024-09-29 09:00:51'),
(91, 'IU International University of Applied Sciences', NULL, 'images/iu_Logo_D_black_CMYK_horizontal.jpg', 'Germany', '2024-09-29 09:02:44', '2024-09-29 09:02:44'),
(92, 'Bilkent University', NULL, 'images/Bilkent.jpeg', 'Turkey', '2024-09-29 09:08:13', '2024-09-29 09:08:13'),
(93, 'Sabancı University', NULL, 'images/Sabancı Universityi.png', 'Turkey', '2024-09-29 09:09:58', '2024-09-29 09:09:58'),
(94, 'Koç University', NULL, 'images/koc.png', 'Turkey', '2024-09-29 09:10:42', '2024-09-29 09:10:42'),
(95, 'Istanbul Bilgi University', NULL, 'images/bilgi.png', 'Turkey', '2024-09-29 09:11:26', '2024-09-29 09:11:26'),
(96, 'ATILIM ÜNİVERSİTESİ', NULL, 'images/Atilim.png', 'Turkey', '2024-09-29 09:12:11', '2024-09-29 09:12:11'),
(97, 'Başkent University', NULL, 'images/baskent.png', 'Turkey', '2024-09-29 09:13:59', '2024-09-29 09:13:59'),
(98, 'Bahçeşehir Üniversitesi', NULL, 'images/BAU.jpeg', 'Turkey', '2024-09-29 09:14:32', '2024-09-29 09:14:32'),
(99, 'Yeditepe Üniversitesi', NULL, 'images/yeditepe.png', 'Turkey', '2024-09-29 09:15:40', '2024-09-29 09:15:40'),
(100, 'Özyeğin University', NULL, 'images/ou_logo_eng.jpg', NULL, '2024-09-29 09:16:26', '2024-09-29 09:16:26'),
(101, 'İstanbul Okan University', NULL, 'images/İstanbul Okan University.jpg', 'Turkey', '2024-09-29 09:17:30', '2024-09-29 09:17:30'),
(102, 'İstanbul Aydın Üniversitesi', NULL, 'images/aydin.png', 'Turkey', '2024-09-29 09:18:26', '2024-09-29 09:18:26'),
(103, 'Üsküdar University', NULL, 'images/Uskudar.jpeg', 'Turkey', '2024-09-29 09:19:30', '2024-09-29 09:19:30'),
(104, 'Acıbadem Üniversitesi', NULL, 'images/acibadem-university-logo.png', 'Turkey', '2024-09-29 09:27:22', '2024-09-29 09:27:22'),
(105, 'İstanbul Medipol University', NULL, 'images/İstanbul Medipol University International ....png', 'Turkey', '2024-09-29 09:29:36', '2024-09-29 09:29:36'),
(106, 'İstanbul Gelişim Üniversitesi', NULL, 'images/istanbul-gelisim.jpg', 'Turkey', '2024-09-29 09:30:16', '2024-09-29 09:30:16'),
(107, 'İstinye Üniversitesi', NULL, 'images/ISU.jpeg', 'Turkey', '2024-09-29 09:31:18', '2024-09-29 09:31:18'),
(108, 'Beykent Üniversitesi', NULL, '', 'Turkey', '2024-09-29 09:33:00', '2024-09-29 09:33:00'),
(109, 'Altinbas University', NULL, 'images/Altinbas.png', 'Turkey', '2024-09-29 09:34:13', '2024-09-29 09:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `Preferred Study Destination` varchar(255) DEFAULT NULL,
  `Plan to Study` varchar(255) DEFAULT NULL,
  `Preferred Mode of Counseling` varchar(255) DEFAULT NULL,
  `Education Fund` varchar(255) DEFAULT NULL,
  `Preferred Study Level` varchar(255) DEFAULT NULL,
  `Additional Notes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frequentlies_asks`
--
ALTER TABLE `frequentlies_asks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frequently_asked_questions`
--
ALTER TABLE `frequently_asked_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hisham`
--
ALTER TABLE `hisham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `News`
--
ALTER TABLE `News`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1517;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frequentlies_asks`
--
ALTER TABLE `frequentlies_asks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `frequently_asked_questions`
--
ALTER TABLE `frequently_asked_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hisham`
--
ALTER TABLE `hisham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `News`
--
ALTER TABLE `News`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Student`
--
ALTER TABLE `Student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
