-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-07-2017 a las 11:55:08
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel_proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIF/DNI` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_start_booking` date DEFAULT NULL,
  `date_end_booking` date DEFAULT NULL,
  `range_date` int(11) DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci,
  `ammount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_of_payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_of_payment` int(11) DEFAULT NULL,
  `id_of_payment` text COLLATE utf8mb4_unicode_ci,
  `hotel_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotel_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `surname`, `NIF/DNI`, `date_start_booking`, `date_end_booking`, `range_date`, `notes`, `ammount`, `created_at`, `updated_at`, `type_of_payment`, `status_of_payment`, `id_of_payment`, `hotel_name`, `hotel_id`) VALUES
(1, 'Jett Gleichner', 'fsdfsdfsdfs', NULL, NULL, NULL, NULL, NULL, 30.00, '2017-07-09 03:10:29', '2017-07-09 03:10:29', 'paypal', NULL, NULL, '', ''),
(2, 'Jett Gleichner', 'fsdfsdfsdfs', NULL, NULL, NULL, NULL, NULL, 30.00, '2017-07-09 03:10:45', '2017-07-09 03:10:45', 'paypal', NULL, NULL, '', ''),
(3, 'Jett Gleichner', 'dasdasdas', NULL, NULL, NULL, NULL, NULL, 30.00, '2017-07-09 03:12:05', '2017-07-09 03:12:05', 'paypal', NULL, NULL, '', ''),
(4, 'sasa', 'sasa', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 03:33:49', '2017-07-09 03:33:49', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(5, 'sasassssssssssssssss', 'sasassssssssssssss', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 03:34:25', '2017-07-09 03:34:25', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(6, 'hola', 'hola', NULL, '2017-07-09', '2017-07-15', NULL, NULL, 30.00, '2017-07-09 04:07:20', '2017-07-09 04:07:20', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(7, 'sdddddddddddddddddddd', 'sssssssssssssssssss', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:12:20', '2017-07-09 04:12:20', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(8, 'manolita', 'gomez', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:13:16', '2017-07-09 04:13:16', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(9, 're', 're', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:14:45', '2017-07-09 04:14:45', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(10, 'popo', 'popo', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:15:53', '2017-07-09 04:15:53', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(11, 'ress', 'ress', NULL, '2017-07-09', '2017-07-09', NULL, NULL, 30.00, '2017-07-09 04:16:25', '2017-07-09 04:16:25', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(12, 'ew', 'ew', NULL, '2017-07-09', '2017-07-15', NULL, NULL, 30.00, '2017-07-09 04:17:58', '2017-07-09 04:17:58', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(13, 'pepe', 'lopez', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:18:55', '2017-07-09 04:18:55', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(14, 're', 're', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:20:11', '2017-07-09 04:20:11', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(15, 'manolita', 'jimenez', NULL, '2017-07-15', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 04:23:16', '2017-07-09 04:23:16', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(16, 'manola', 'lopez', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:26:46', '2017-07-09 04:26:46', 'paypal', NULL, NULL, 'Eleanore Ratke', '188'),
(17, 'pepita', 'lopez', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:28:14', '2017-07-09 04:28:14', 'paypal', NULL, NULL, 'Mrs. Chelsea Steuber', '203'),
(18, 'miprimera', 'miprimera', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:29:36', '2017-07-09 04:29:36', 'paypal', NULL, NULL, 'Ahmed Koch', '198'),
(19, 'pepe', 'martin', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:35:00', '2017-07-09 04:35:00', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(20, 'pepe', 'martin', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:35:21', '2017-07-09 04:35:21', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(21, 'rosaldo', 'martin', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:35:46', '2017-07-09 04:35:46', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(22, 'rerer', 'rewrwe', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:36:40', '2017-07-09 04:36:40', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(23, 'rerew', 'rewrwe', NULL, '2017-07-09', '2017-07-09', NULL, NULL, 30.00, '2017-07-09 04:37:18', '2017-07-09 04:37:18', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(24, 'manolete', 'perez', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 04:38:44', '2017-07-09 04:38:44', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(25, 'pepecis', 'mamanu', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:40:02', '2017-07-09 04:40:02', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(26, 'papaune', 'cucurrara', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:40:55', '2017-07-09 04:40:55', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(27, 'popop', 'popopop', NULL, '2017-07-09', '2017-07-09', NULL, NULL, 30.00, '2017-07-09 04:42:21', '2017-07-09 04:42:21', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(28, 'rerse', 'iioioio', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:42:51', '2017-07-09 04:42:51', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(29, 'rwerwe', 'rwerwerwe', NULL, '2017-07-09', '2017-07-09', NULL, NULL, 30.00, '2017-07-09 04:43:41', '2017-07-09 04:43:41', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(30, 'pepecita', 'martin', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:44:20', '2017-07-09 04:44:20', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(31, 'rew', 'sa', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 04:44:58', '2017-07-09 04:44:58', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(32, 'popre', 'porpeo', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:46:05', '2017-07-09 04:46:05', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(33, 'popre', 'porpeo', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:46:09', '2017-07-09 04:46:09', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(34, 'manuel', 'capopo', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:47:53', '2017-07-09 04:47:53', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(35, 'yuyuy', 'uyuyuyu', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:50:59', '2017-07-09 04:50:59', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(36, 'ytuyt', 'uytuytu', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:52:04', '2017-07-09 04:52:04', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(37, 'sssssssss', 'ssssssssss', NULL, '2017-07-09', '2017-07-09', NULL, NULL, 30.00, '2017-07-09 04:53:03', '2017-07-09 04:53:03', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(38, 'popop', 'op', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 04:56:46', '2017-07-09 04:56:46', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(39, 'poreiu', 'uriewoiu', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 04:57:40', '2017-07-09 04:57:40', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(40, 'rew', 'rwe', NULL, '2017-07-09', '2017-07-09', NULL, NULL, 30.00, '2017-07-09 04:58:36', '2017-07-09 04:58:36', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(41, 'resisi', 'iuiui', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 04:59:09', '2017-07-09 04:59:09', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(42, 'pepita', 'perex', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 05:01:42', '2017-07-09 05:01:42', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(43, 'wre', 'rewrew', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 05:02:24', '2017-07-09 05:02:24', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(44, 'wre', 'rewrew', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 05:04:36', '2017-07-09 05:04:36', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(45, 'res', 'res', NULL, '2017-07-09', '2017-07-30', NULL, NULL, 30.00, '2017-07-09 05:06:56', '2017-07-09 05:06:56', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(46, 'res', 'res', NULL, '2017-07-09', '2017-07-30', NULL, NULL, 30.00, '2017-07-09 05:10:01', '2017-07-09 05:10:01', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(47, 'loli', 'lili', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 05:14:42', '2017-07-09 05:14:42', 'redsys', NULL, NULL, 'Eleanore Ratke', '188'),
(48, 'manolita', 'pepetina', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 05:22:36', '2017-07-09 05:22:36', 'paypal', NULL, NULL, 'Eleanore Ratke', '188'),
(49, 'pere', 'popo', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 05:30:59', '2017-07-09 05:30:59', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(50, 'pere', 'popo', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 05:49:54', '2017-07-09 05:49:54', 'redsys', NULL, NULL, 'Jett Gleichner', '201'),
(51, 'pere', 'popo', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 05:51:06', '2017-07-09 05:51:06', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(52, 'pepe', 'torres', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 06:04:56', '2017-07-09 06:04:56', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(53, 'pepita', 'pepota', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 06:11:43', '2017-07-09 06:11:43', 'paypal', NULL, NULL, 'Javier Corwin', '181'),
(54, 'popopop', 'popopopo', NULL, '2017-07-09', '2017-07-09', NULL, NULL, 30.00, '2017-07-09 06:16:09', '2017-07-09 06:16:09', 'paypal', NULL, NULL, 'Javier Corwin', '181'),
(55, 'popop', 'opopopopo', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 06:17:50', '2017-07-09 06:17:50', 'paypal', NULL, NULL, 'Tia Walter', '214'),
(56, 'popop', 'opopop', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 06:18:13', '2017-07-09 06:18:13', 'paypal', NULL, NULL, 'Tia Walter', '214'),
(57, 'rtrytr', 'ytrytryt', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 06:19:53', '2017-07-09 06:19:53', 'paypal', NULL, NULL, 'Susan Franecki', '176'),
(58, 'porpo', 'oprewu', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 06:21:10', '2017-07-09 06:21:10', 'paypal', NULL, NULL, 'Nolan Spinka', '199'),
(59, 'rerere', 'rerere', NULL, '2017-07-09', '2017-07-22', NULL, NULL, 30.00, '2017-07-09 06:22:14', '2017-07-09 06:22:14', 'paypal', NULL, NULL, 'Javier Corwin', '181'),
(60, 'rewew', 'rew', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 06:24:47', '2017-07-09 06:24:47', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(61, 'rewew', 'rew', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 06:28:19', '2017-07-09 06:28:19', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(62, 'yuyuy', 'uyuyuyu', NULL, '2017-07-02', '2017-07-22', NULL, NULL, 30.00, '2017-07-09 06:30:22', '2017-07-09 06:30:22', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(63, 'ewrWErwe', 'rewrwe', NULL, '2017-07-09', '2017-07-09', NULL, NULL, 30.00, '2017-07-09 06:30:56', '2017-07-09 06:30:56', 'paypal', NULL, NULL, 'Jett Gleichner', '201'),
(64, 'wrewr', 'rewrew', NULL, '2017-07-14', '2017-07-21', NULL, NULL, 30.00, '2017-07-09 06:31:41', '2017-07-09 06:31:41', 'paypal', NULL, NULL, 'Nolan Spinka', '199'),
(65, 'rew', 'rew', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 06:32:38', '2017-07-09 06:32:38', 'paypal', NULL, NULL, 'Lexus Nader', '218'),
(66, 'pepa', 'manolis', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 06:36:38', '2017-07-09 06:36:38', 'redsys', NULL, NULL, 'Mrs. Chelsea Steuber', '203'),
(67, 'sssssssssss', 'saaa', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 06:37:31', '2017-07-09 06:37:31', 'paypal', NULL, NULL, 'Mrs. Chelsea Steuber', '203'),
(68, 'e', 'e', NULL, '2017-07-16', '2017-07-30', NULL, NULL, 30.00, '2017-07-09 06:37:47', '2017-07-09 06:37:47', 'redsys', NULL, NULL, 'Jett Gleichner', '201'),
(69, 'rew', 'rew', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 06:43:40', '2017-07-09 06:43:40', 'redsys', NULL, NULL, 'Nolan Spinka', '199'),
(70, 'rew', 'rew', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 07:11:37', '2017-07-09 07:11:37', 'redsys', NULL, NULL, 'Mrs. Chelsea Steuber', '203'),
(71, 'rewew', 'rew', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 07:15:14', '2017-07-09 07:15:14', 'redsys', NULL, NULL, 'Jett Gleichner', '201'),
(72, 'rewqrew', 'rwe', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 07:18:17', '2017-07-09 07:18:17', 'redsys', NULL, NULL, 'Susan Franecki', '176'),
(73, 'rewqrew', 'rwe', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 07:19:07', '2017-07-09 07:19:07', 'redsys', NULL, NULL, 'Susan Franecki', '176'),
(74, 'popo', 'popopop', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 07:22:08', '2017-07-09 07:22:08', 'redsys', NULL, NULL, 'Javier Corwin', '181'),
(75, 'rewrew', 'rwe', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 07:23:42', '2017-07-09 07:23:42', 'redsys', NULL, NULL, 'Javier Corwin', '181'),
(76, 'rewrew', 'rwe', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 07:24:23', '2017-07-09 07:24:23', 'redsys', NULL, NULL, 'Javier Corwin', '181'),
(77, 'rewew', 'wr', NULL, '2017-07-23', '2017-07-29', NULL, NULL, 30.00, '2017-07-09 07:25:30', '2017-07-09 07:25:30', 'redsys', NULL, NULL, 'Javier Corwin', '181'),
(78, 'rwe', 'rwe', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 07:26:48', '2017-07-09 07:26:48', 'redsys', NULL, NULL, 'Javier Corwin', '181'),
(79, 'rwe', 'rwe', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 07:27:21', '2017-07-09 07:27:21', 'redsys', NULL, NULL, 'Javier Corwin', '181'),
(80, 'rwe', 'rwe', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 07:27:31', '2017-07-09 07:27:31', 'redsys', NULL, NULL, 'Javier Corwin', '181'),
(81, 'rwe', 'rwe', NULL, '2017-07-09', '2017-07-16', NULL, NULL, 30.00, '2017-07-09 07:27:54', '2017-07-09 07:27:54', 'redsys', NULL, NULL, 'Javier Corwin', '181'),
(82, 'saDASDASDAS', 'sa', NULL, '2017-07-02', '2017-07-09', NULL, NULL, 30.00, '2017-07-09 07:28:32', '2017-07-09 07:28:32', 'redsys', NULL, NULL, 'Javier Corwin', '181'),
(83, 'maria', 'lalalalal', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 07:29:55', '2017-07-09 07:29:55', 'redsys', NULL, NULL, 'Susan Franecki', '176'),
(84, 'ewr', 'rwe', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 07:37:01', '2017-07-09 07:42:30', 'paypal', NULL, 'PAY-9EF801291A0525623LFQ7SQQ', 'Nolan Spinka', '199'),
(85, 'paco', 'pop', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 07:43:47', '2017-07-09 07:49:37', 'redsys', NULL, 'eyJEc19EYXRlIjoiMDklMkYwNyUyRjIwMTciLCJEc19Ib3VyIjoiMTElM0E0NCIsIkRzX1NlY3VyZVBheW1lbnQiOiIwIiwiRHNfQW1vdW50IjoiNjg1MjAwIiwiRHNfQ3VycmVuY3kiOiI5NzgiLCJEc19PcmRlciI6IjE0OTk1OTM0MjkiLCJEc19NZXJjaGFudENvZGUiOiI5OTkwMDg4ODEiLCJEc19UZXJtaW5hbCI6IjAwMSIsIkRzX1Jlc3BvbnNlIjoiMDAwMCIsIkRzX1RyYW5zYWN0aW9uVHlwZSI6IjAiLCJEc19NZXJjaGFudERhdGEiOiIiLCJEc19BdXRob3Jpc2F0aW9uQ29kZSI6IjMzNjQyMiIsIkRzX0NhcmRfTnVtYmVyIjoiNDU0ODgxKioqKioqMDAwNCIsIkRzX0NvbnN1bWVyTGFuZ3VhZ2UiOiIxIiwiRHNfQ2FyZF9Db3VudHJ5IjoiNzI0IiwiRHNfQ2FyZF9CcmFuZCI6IjEifQ==', 'Mrs. Chelsea Steuber', '203'),
(86, 'paparruchas', 'lallaala', NULL, '2017-07-09', '2017-07-23', NULL, NULL, 30.00, '2017-07-09 07:50:36', '2017-07-09 07:50:55', 'paypal', NULL, 'PAY-6LA42310R6665720MLFQ7Y4I', 'Susan Franecki', '176'),
(87, 'cocococo', 'cocococo', NULL, '2017-07-09', '2017-07-29', NULL, NULL, 30.00, '2017-07-09 07:51:30', '2017-07-09 07:51:47', 'redsys', NULL, 'eyJEc19EYXRlIjoiMDklMkYwNyUyRjIwMTciLCJEc19Ib3VyIjoiMTElM0E1MSIsIkRzX1NlY3VyZVBheW1lbnQiOiIwIiwiRHNfQW1vdW50IjoiNjg1MjAwIiwiRHNfQ3VycmVuY3kiOiI5NzgiLCJEc19PcmRlciI6IjE0OTk1OTM4OTIiLCJEc19NZXJjaGFudENvZGUiOiI5OTkwMDg4ODEiLCJEc19UZXJtaW5hbCI6IjAwMSIsIkRzX1Jlc3BvbnNlIjoiMDAwMCIsIkRzX1RyYW5zYWN0aW9uVHlwZSI6IjAiLCJEc19NZXJjaGFudERhdGEiOiIiLCJEc19BdXRob3Jpc2F0aW9uQ29kZSI6IjMzNjQ0NCIsIkRzX0NhcmRfTnVtYmVyIjoiNDU0ODgxKioqKioqMDAwNCIsIkRzX0NvbnN1bWVyTGFuZ3VhZ2UiOiIxIiwiRHNfQ2FyZF9Db3VudHJ5IjoiNzI0IiwiRHNfQ2FyZF9CcmFuZCI6IjEifQ==', 'Javier Corwin', '181');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoteles`
--

CREATE TABLE `hoteles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `services` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('5 stars','4 stars','3 stars','2 stars','1 star','rural hotel','hostal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_per_day` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `hoteles`
--

INSERT INTO `hoteles` (`id`, `name`, `city`, `country`, `adress`, `description`, `services`, `type`, `created_at`, `updated_at`, `slug`, `image`, `price_per_day`) VALUES
(175, 'Bertram Weissnat', 'Baileychester', 'Slovenia', '6354 Huel Landing Suite 574\nSouth Roslyn, GA 00617', 'Dolor et in incidunt culpa. Incidunt quod molestiae culpa optio consectetur dolorum. Consequatur corporis exercitationem sint cum.', 'Inventore ut rem molestias enim consequuntur voluptatem incidunt. Aut temporibus consequatur repudiandae. Neque iste id aut sed placeat sapiente.', '4 stars', '2017-07-07 05:07:06', '2017-07-07 05:07:06', 'ut-non-ipsa-aut-explicabo-voluptates-explicabo', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\42d7d503618beb29b98f944e5ce712d0.jpg', 30),
(176, 'Susan Franecki', 'North Bernhardborough', 'Kyrgyz Republic', '145 Sauer Mission\nWest Cesar, RI 85973-4239', 'Ex rerum autem non qui neque temporibus. Dolor nesciunt eius maxime pariatur enim maiores.', 'Minus voluptate perferendis nam modi aut ducimus. Rerum eaque sit minima veniam cupiditate. Non vel velit quia.', '1 star', '2017-07-07 05:07:06', '2017-07-07 05:07:06', 'assumenda-numquam-ipsum-et', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\ad631e4f94fbdefd9ff23a6872c67d9d.jpg', 30),
(177, 'Nelson Champlin', 'South Deontown', 'Germany', '384 Zieme Crest Apt. 347\nAshlyborough, KS 28658-1695', 'Sed maxime suscipit ut dolores. Quisquam laborum molestiae in laboriosam consectetur debitis tenetur.', 'Dignissimos quis iste quaerat velit cumque sequi. Quisquam ea tempora praesentium voluptas optio.', '4 stars', '2017-07-07 05:07:06', '2017-07-07 05:07:06', 'et-voluptatem-et-quia-nostrum-dolore-esse-eum', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\7a4d42b41a259589ce55ef2999120937.jpg', 30),
(178, 'Gretchen Olson', 'Trevionburgh', 'Morocco', '4202 Herzog Fords\nLake Kali, NM 15752', 'Cumque reiciendis minus aspernatur iste atque quo. Non ab officia autem aliquam qui temporibus. Quisquam occaecati voluptas perspiciatis vel.', 'Rem sequi aut et et non reprehenderit quam. Vero eaque at quae est. Dicta libero et omnis pariatur quisquam.', '2 stars', '2017-07-07 05:07:07', '2017-07-07 05:07:07', 'fugit-fugiat-fugiat-est-modi-ut-adipisci-et', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\c85d90a9660df9fb8770790caa8d6d4b.jpg', 30),
(179, 'Bruce Dach', 'New Maxieborough', 'Northern Mariana Islands', '96659 Stroman Port\nLemkeshire, GA 36150-1323', 'Voluptatem nam quod tempore modi quaerat. Nihil soluta id quibusdam quos enim sapiente. Ratione occaecati ut enim nam iusto reiciendis. Quas sapiente nostrum quis voluptatem.', 'Et debitis et rerum voluptas. Id nihil illum quas. Quo assumenda soluta aut doloremque aspernatur et eaque. Et ratione itaque ut nihil dolorum.', 'rural hotel', '2017-07-07 05:07:07', '2017-07-07 05:07:07', 'ducimus-delectus-in-animi-harum-et-expedita-impedit', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\2c473440eba62c25cdf2edb76f195937.jpg', 30),
(180, 'Dejah Hills Jr.', 'Mosciskiville', 'Guadeloupe', '660 Boyle Isle Suite 510\nMarquisville, AZ 64125', 'Excepturi voluptatem voluptatem pariatur rerum nobis sapiente adipisci. Facilis sint nostrum dolor vel. Sed ut ex labore eos quibusdam quis.', 'Temporibus quis officiis qui ut est amet totam qui. Rerum omnis ut quisquam non vero qui aut. Et rem consequatur quibusdam exercitationem. Et et quod at quis perferendis dolore corporis.', 'hostal', '2017-07-07 05:07:07', '2017-07-07 05:07:07', 'eos-qui-nulla-consequatur', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\3547fefe3c0bf867dd10305266fdd13a.jpg', 30),
(181, 'Javier Corwin', 'Nikitaview', 'Madagascar', '495 Janessa Plains Apt. 596\nCalehaven, MT 84413-2578', 'Consequatur quam velit aut sed maiores sed. Ipsam consequatur consectetur molestiae omnis officiis. Voluptate repellat excepturi veniam omnis.', 'Sed odio iusto assumenda aliquid occaecati. Quo quam possimus debitis possimus. Sed quo et earum rerum delectus sit provident. Recusandae est est et aut.', '1 star', '2017-07-07 05:07:07', '2017-07-07 05:07:07', 'voluptatibus-est-autem-rerum-officia-in-ut', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\e9a87df620eb675cddcef3328e5b4f2c.jpg', 30),
(182, 'Dr. Ralph King', 'Connellyland', 'Tanzania', '401 Tremblay Vista Apt. 083\nWest Hester, NY 14489-1906', 'Nam autem dolor sequi deserunt dolor. Aperiam voluptatem totam eos excepturi molestias. Sapiente aut quae debitis expedita voluptas.', 'Eveniet non non velit dolorem facilis. Quaerat non non consequuntur voluptatem aliquam consequatur. Distinctio harum repellendus error earum officiis est cum.', 'rural hotel', '2017-07-07 05:07:07', '2017-07-07 05:07:07', 'voluptatem-sed-veniam-culpa-et', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\c5e775e71cfb346722f3392c81fe5e67.jpg', 30),
(183, 'Addison Tromp', 'Loisbury', 'Barbados', '97744 Octavia Trail\nSouth Wilhelmfurt, WA 44730-1986', 'Eos aut necessitatibus ea quas ab error inventore. Dolor suscipit dolor autem. Eum molestiae dicta aperiam aut aut sapiente a. Quibusdam voluptas odit porro et ex quasi minima.', 'Omnis rem ut voluptatem autem deleniti laudantium. Rerum dolorem placeat veritatis temporibus. Dicta repellat sunt enim possimus molestiae ut molestias.', 'hostal', '2017-07-07 05:07:07', '2017-07-07 05:07:07', 'molestiae-quod-rerum-fugit-placeat-repellat-et', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\79a60f840cf6de5a96db266e83fb8e89.jpg', 30),
(184, 'Creola Legros Jr.', 'Ettieland', 'Turkmenistan', '9502 Harvey Port Suite 543\nAlfonsofort, OK 63723-7599', 'Ea sint voluptatum itaque eligendi fugit labore. Dolor saepe et magni fugiat atque ut voluptatem fugiat. Fugiat doloribus in ut impedit.', 'Modi amet velit deleniti iure. Aliquid est officia quia repudiandae ea sit quibusdam. Rerum voluptate animi odit corporis quia.', '3 stars', '2017-07-07 05:07:07', '2017-07-07 05:07:07', 'quos-odit-minima-eos-quaerat-qui-odio-qui', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\546b6440a1e5bcfb12923adb12bcde19.jpg', 30),
(185, 'Vida Langosh', 'South Werner', 'Brunei Darussalam', '29644 Kyla Forest\nWittingshire, ID 16298-6233', 'Et debitis occaecati earum sequi beatae iure quis. Dolor est beatae quia deserunt quidem vel.', 'Laborum qui illo sunt dolorem ut suscipit. Vel explicabo suscipit eum eveniet voluptatem corrupti. Beatae non et consequatur ducimus sed omnis. Iusto laborum rerum et libero vitae.', '2 stars', '2017-07-07 05:07:07', '2017-07-07 05:07:07', 'inventore-ut-provident-facilis-recusandae-fuga-placeat-eveniet', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\bf6900bd9280407f0c162de02718edda.jpg', 30),
(186, 'Erwin Kuphal', 'Guidofort', 'Argentina', '25097 Stephany Mill\nJacobsonberg, CO 51768-6566', 'Placeat voluptas eum est ducimus et atque. Ipsa accusamus et fugit pariatur. Repellendus a ab autem voluptatibus est. Eum consectetur dolores voluptates eum sapiente dolorem.', 'Iusto eum architecto neque recusandae velit harum. Aut natus nemo rerum doloribus rerum quia.', 'hostal', '2017-07-07 05:07:08', '2017-07-07 05:07:08', 'ab-reprehenderit-qui-eos-qui-delectus', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\1dbf932211521be12d370eed04577bab.jpg', 30),
(187, 'Maurine Runte I', 'Lake Dereck', 'Wallis and Futuna', '66592 Cruickshank Vista Suite 263\nNew Dereck, MA 55275-9252', 'Molestiae facilis unde et voluptates. Ut repellendus est non unde. Et distinctio harum optio omnis animi nostrum.', 'Voluptatem nobis quae maxime incidunt est deserunt pariatur. Facilis beatae delectus consectetur velit vel et esse. Sequi sint iure impedit dolorem alias ea. Facilis vero rerum cumque qui.', '4 stars', '2017-07-07 05:07:08', '2017-07-07 05:07:08', 'dignissimos-molestias-accusantium-non', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\ebc651bc5fbb79dba5f2c138c50acd1e.jpg', 30),
(188, 'Eleanore Ratke', 'Ziemannfort', 'Ireland', '388 Rod Canyon Suite 397\nChristiansenville, LA 82279', 'Placeat vitae iste et accusantium. Qui non qui sint explicabo. Corporis aut in maiores consequuntur. Consequatur eum quos nulla asperiores modi reprehenderit.', 'Itaque architecto nisi ut et. Ipsa neque accusamus esse ex. In tempora ratione fugiat et ut reprehenderit porro. Et facere deserunt dolore eligendi eum aut pariatur quos.', '1 star', '2017-07-07 05:07:08', '2017-07-07 05:07:08', 'iste-consectetur-beatae-hic-ipsa-ratione-aut', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\4e88853681e4bb34a3d12e6749c06691.jpg', 30),
(189, 'Sadye Dooley', 'Jenniferton', 'Angola', '62806 Eichmann Mountain Suite 356\nEast Savannashire, WY 87505', 'Incidunt iusto quia dolor earum placeat et. Aut eveniet illo autem. Occaecati eligendi rerum nihil quia omnis.', 'Eos quia quo necessitatibus quod sint porro. Sunt omnis quod quam similique. Blanditiis et et quos assumenda reiciendis. Accusamus natus nam quia quod animi neque.', 'rural hotel', '2017-07-07 05:07:08', '2017-07-07 05:07:08', 'repellat-doloribus-rerum-sint-ducimus-dolorem', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\f2eb95fc0c369c3b8b14a56f2b381efa.jpg', 30),
(190, 'Dr. Xzavier Towne II', 'South Ebbaton', 'Lebanon', '4504 Elliott Centers Apt. 680\nAlfredohaven, LA 66316', 'Tempora beatae dolores dicta eos nesciunt quidem quia. Dolore odio quasi in est quis cum molestiae. Excepturi sunt minus id iste consequatur facilis aut ab. Quisquam ullam minus hic perspiciatis velit.', 'Quas nisi quidem porro molestiae quia dolores veniam. Consequatur et dignissimos illo nobis doloremque. Commodi pariatur atque beatae a. Quia et sapiente placeat ipsum.', '5 stars', '2017-07-07 05:07:08', '2017-07-07 05:07:08', 'aliquid-officiis-accusamus-dolores', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\25a53aac4a01f86108d4a4bef7d712b4.jpg', 30),
(191, 'Kassandra White', 'Hirtheborough', 'Saint Barthelemy', '211 Adolphus Track Apt. 164\nPfefferfurt, CA 22811-9850', 'Autem velit nihil totam et. Tempore ab voluptas quos. Tempore et labore aliquam et eos.', 'Eligendi ipsam autem temporibus aspernatur ut culpa ab. Aut ut ipsa maiores rerum. Delectus laborum culpa suscipit. Consectetur dicta numquam ut ea.', '3 stars', '2017-07-07 05:07:08', '2017-07-07 05:07:08', 'recusandae-facere-rem-est', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\53047048a010c09d3d103b1629fc884a.jpg', 30),
(192, 'Abagail Osinski', 'Anitafort', 'South Africa', '814 Cory Islands\nPort Gillianshire, UT 81766', 'Alias ipsam sint soluta et sunt. Molestiae tempora aliquid est sit omnis voluptatem. Omnis nihil aliquid placeat et repellendus placeat. Officia ea harum dolorem debitis totam.', 'Recusandae hic dignissimos est ipsa temporibus. Ut neque voluptatem alias qui nemo possimus voluptatem. Porro natus culpa deserunt laborum sunt eos iusto quia.', '4 stars', '2017-07-07 05:07:08', '2017-07-07 05:07:08', 'omnis-expedita-modi-at-laudantium-dolor-voluptas', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\0365460341474336c9f583364eb4dcd9.jpg', 30),
(193, 'Gage Farrell', 'South Geo', 'New Zealand', '99465 Tyra Vista\nBurleyport, TX 94909-4186', 'Consequatur culpa magni blanditiis quibusdam cupiditate soluta. Tempora autem repudiandae voluptatem nemo magnam non. Deleniti adipisci aspernatur deserunt est. Et quis deserunt eos facilis voluptate perferendis.', 'Quibusdam et quidem eligendi fugiat. Consequatur quidem eligendi dolor facilis cupiditate. Minima tempore repellat qui ut praesentium cupiditate.', '3 stars', '2017-07-07 05:07:09', '2017-07-07 05:07:09', 'accusamus-hic-sint-repudiandae-qui-ut', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\e8ac04a7a84626e0f02baeee5452ed15.jpg', 30),
(194, 'Dr. Kendrick Carter Jr.', 'North Trudieberg', 'Palestinian Territory', '7173 Watsica Ferry\nPort Neha, CO 57114', 'Consectetur saepe praesentium aliquid nesciunt magnam. Quibusdam adipisci officiis neque voluptas quam omnis. Aut ab laboriosam qui est quisquam.', 'Pariatur ducimus nobis dolorem ad minus voluptatem. Asperiores mollitia et minus dicta quia at quisquam. Ullam illum deserunt dolorem ut.', '5 stars', '2017-07-07 05:07:09', '2017-07-07 05:07:09', 'nesciunt-eos-natus-cupiditate-magnam-aliquam', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\cbaba8c69c6982e269e379b83ae460da.jpg', 30),
(195, 'Ms. Tania Kilback', 'Wehnershire', 'Aruba', '53366 Kautzer Circle\nLake Santiagoport, NV 55791-8646', 'Ut est saepe nostrum rerum ipsam. Sed consectetur et quis aut. Ea unde et occaecati et est placeat veritatis.', 'Dignissimos impedit voluptatum facere adipisci. Officia magni eius ipsum deleniti. Dolores dolorem consectetur quidem. Distinctio dignissimos eligendi occaecati ut.', '4 stars', '2017-07-07 05:07:09', '2017-07-07 05:07:09', 'sed-quibusdam-molestias-velit-earum-vero', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\699b3026376d47db85931ca5ab904e61.jpg', 30),
(196, 'Hillary McDermott', 'East Trent', 'Rwanda', '1599 Champlin Ferry\nDewayneland, OK 32663-0969', 'Tempora illo ratione voluptas dolor provident at. Consequatur quos autem consequatur excepturi. Repudiandae est officiis quam ipsa minus aut.', 'Quibusdam provident veniam voluptas ut perferendis qui illum officia. Deserunt dolor facere beatae accusantium quaerat ex.', 'hostal', '2017-07-07 05:07:09', '2017-07-07 05:07:09', 'et-non-sint-a-quas-ratione-harum-libero-ad', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\93ea02bf3f5231b5425cdb19aba75427.jpg', 30),
(197, 'Sterling Tromp MD', 'Kozeyside', 'Macao', '317 Wilton Summit Apt. 946\nCollierborough, NE 30047-1156', 'Voluptatem rem non qui corrupti sed quas. Quia possimus quod aspernatur eos. Est consequatur qui harum omnis necessitatibus.', 'Id necessitatibus recusandae qui minima ut nihil quidem. Possimus in molestias dolorem. Enim et recusandae consequatur non non facilis.', '4 stars', '2017-07-07 05:07:09', '2017-07-07 05:07:09', 'eveniet-cum-sint-atque-magni-et-eligendi-ut-quia', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\7a53c50eeeff49ffca7bcb3eac2507f5.jpg', 30),
(198, 'Ahmed Koch', 'Blickberg', 'Wallis and Futuna', '96621 McKenzie Centers Suite 113\nWest Waino, WY 08347', 'Quos ipsa aperiam nisi alias eum dolores. Omnis dolores dolorem iste. Qui deserunt est vitae consequatur esse aut aut.', 'Qui aperiam quia quae iusto animi est. Suscipit quas veritatis ut voluptates deserunt sit. Libero dolorum autem enim harum deleniti dolores a.', '1 star', '2017-07-07 05:07:09', '2017-07-07 05:07:09', 'est-nesciunt-aperiam-provident-quia-repellendus-non-et', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\775a41a7981c2872662843c0384b4353.jpg', 30),
(199, 'Nolan Spinka', 'O\'Connerhaven', 'Angola', '451 Serena Meadows\nErnaburgh, CT 09883', 'Et nisi qui impedit sapiente facere. Consequatur voluptas consequatur voluptatem ipsam deleniti itaque sit. Aperiam qui rem id sint. Vel laudantium corrupti sed.', 'Sed eaque et esse laborum iusto et. Voluptas aperiam dolorem illum quia expedita reprehenderit voluptatem. Quia consequuntur sint in molestiae voluptatibus.', '1 star', '2017-07-07 05:07:09', '2017-07-07 05:07:09', 'iusto-aperiam-esse-sed', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\922270e603e6845cea189d3fa200674a.jpg', 30),
(200, 'Ezekiel Hoppe', 'North Scottyport', 'Switzerland', '28624 Marvin Center\nPort Sigurd, MN 13644-5595', 'Beatae consectetur dolorum cupiditate perferendis nostrum fuga. Aliquam et voluptate magni inventore a. Fugit quis fuga tenetur facere blanditiis quisquam vero aperiam.', 'Sint facilis nihil corporis voluptas quia. Iure perferendis autem esse suscipit est quia expedita enim. Accusamus accusantium libero quo et sed dolores.', 'hostal', '2017-07-07 05:07:09', '2017-07-07 05:07:09', 'quia-enim-velit-libero-voluptas-explicabo-dolorum-et', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\a80691e9c8dd8d89d5a5340e0cc363f8.jpg', 30),
(201, 'Jett Gleichner', 'Kertzmannmouth', 'Hong Kong', '6334 Quigley Mountain\nBlickfurt, WY 41241-9310', 'Qui quaerat velit sunt quo laborum est optio. Similique laudantium aut odio dolor consequatur. Qui dolores quia numquam assumenda amet et tempore. Quia laboriosam tempora rerum qui molestiae deleniti.', 'Eum dolorum eveniet dolorum quis eum rerum qui. Sequi qui et quia et. Facilis non aut autem dolore aperiam harum et omnis.', '1 star', '2017-07-07 05:07:10', '2017-07-07 05:07:10', 'ipsa-non-qui-maiores-voluptatum-autem-accusantium-consequatur', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\525cb3af0805384723ae576dabc5cab9.jpg', 30),
(202, 'Sonny Reichert', 'Melbaborough', 'Djibouti', '7775 Sophia Rapids Suite 022\nLefflerport, DC 89255-5057', 'Nulla nostrum expedita sed unde quia libero expedita. Provident ut aut vel et ut consequuntur in sunt. Expedita omnis et et id aut.', 'Doloremque magni nemo quo saepe voluptates in consequatur. Odio quo a ad. Esse repudiandae molestiae nemo blanditiis ipsum ut.', '5 stars', '2017-07-07 05:07:10', '2017-07-07 05:07:10', 'sed-cupiditate-aliquid-voluptatem-nisi-laudantium-natus', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\285bfb8b7ba245247253fa190898236c.jpg', 30),
(203, 'Mrs. Chelsea Steuber', 'New Chaim', 'Colombia', '5296 Holly Ways Apt. 612\nLemkeville, ME 20059-3824', 'Omnis at vero corrupti tenetur quia. Aut molestiae magnam qui. Quisquam aut ducimus at. Ipsam saepe iusto sed consequatur laborum reiciendis earum velit.', 'Quia vel qui distinctio qui et dolor. Sit quo voluptas id molestias sequi. Repellat aspernatur error deserunt nisi minima. Et iusto odit et occaecati in.', '1 star', '2017-07-07 05:07:10', '2017-07-07 05:07:10', 'magni-sapiente-quia-qui-veniam-dolorem-molestiae-ab-accusamus', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\9266fd19df97ccd74e443e45bd077f9c.jpg', 30),
(204, 'Jaylon Hermann', 'Bartonton', 'Haiti', '1478 Demetrius Junctions Suite 212\nSouth Jordan, CO 17982', 'Aliquid autem consequuntur in eos. Ad officiis sit ea maiores. Atque ut dignissimos consequatur cupiditate saepe ratione odio iure.', 'Eius nam placeat sapiente non animi. Atque minus vero repudiandae est illo mollitia voluptate possimus. Quia voluptatem dolorem voluptatem commodi. Id eius iusto ipsa accusantium suscipit eos aut.', '5 stars', '2017-07-07 05:07:10', '2017-07-07 05:07:10', 'ad-consectetur-voluptatem-impedit-mollitia-dolor-dignissimos-at', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\b6e0c3063407a96707f9b418d1458603.jpg', 30),
(205, 'Aric Bartell', 'East Eloisa', 'Saint Lucia', '232 Kristofer Course\nLake Rosalyn, WA 94880', 'Quia earum nihil molestias enim et atque et. Aliquam molestiae repellendus inventore error aut nemo quis. Dolorum voluptatem aliquid necessitatibus maxime.', 'Aut quia debitis consequuntur unde qui aut. Aut odio et id ducimus tempora sed.', '2 stars', '2017-07-07 05:07:10', '2017-07-07 05:07:10', 'consequatur-et-veritatis-fugit-quaerat', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\be101c0cbea86b44ddd736e8174a2d18.jpg', 30),
(206, 'Sophie Nolan', 'North Giovanny', 'Japan', '784 Doyle Mountains\nDaughertytown, KY 59807-6949', 'Fugit quidem aut ratione sit et impedit. Maiores expedita est est quos. Impedit nam quos omnis asperiores perferendis doloremque.', 'Cumque omnis modi aliquid consectetur. Et et quam tempore pariatur aut voluptas quo autem. Est labore ut maxime ea.', '4 stars', '2017-07-07 05:07:10', '2017-07-07 05:07:10', 'et-recusandae-optio-quaerat-sed-doloribus-id-velit', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\a71d9781238c12a831939e260c87c25e.jpg', 30),
(207, 'Garrett Conn', 'Kovacekport', 'American Samoa', '513 Carroll Bridge Apt. 184\nWest Nedra, PA 34033', 'Perferendis suscipit reiciendis maiores vel dolores facilis assumenda. Qui ut dolor sed aliquid ipsam assumenda qui expedita. Corporis recusandae veritatis nulla dolorem eaque at reprehenderit. Non natus voluptas laboriosam omnis repellat.', 'Voluptatem sit adipisci exercitationem aut. Aut accusamus ut dolores et id. Molestias quos aut incidunt quisquam aut accusantium porro.', 'hostal', '2017-07-07 05:07:10', '2017-07-07 05:07:10', 'fugit-placeat-et-eum', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\abe0d7c8b887cf3b14f7b05dba1e361a.jpg', 30),
(208, 'Kory Funk', 'Franzview', 'Guam', '88090 Vince Mews\nJuanaview, WA 07227', 'Blanditiis ea voluptate assumenda illum quo ut id. Id iure quo deleniti dolores. Tempora rerum dignissimos a sint qui commodi rem. Autem molestiae ut dignissimos.', 'Non sit odio sapiente vitae deserunt ut. Labore omnis atque sint nostrum impedit ipsum voluptatem. Necessitatibus nulla sed provident optio et sit reiciendis.', '4 stars', '2017-07-07 05:07:10', '2017-07-07 05:07:10', 'sint-beatae-necessitatibus-odio-quos', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\97267a4cc08dce0e44a69a33c5c2a9af.jpg', 30),
(209, 'Margarett Schmeler', 'Evalyntown', 'Sudan', '59430 Fisher Union\nWest Leila, AL 19047-4723', 'Nihil velit dolorem et. Quia tempore quisquam sapiente veniam id. Officia eaque aperiam et expedita.', 'Quia placeat reiciendis quo illo sed. Cumque fuga iusto officia. Maiores placeat et aperiam molestiae est.', 'hostal', '2017-07-07 05:07:10', '2017-07-07 05:07:10', 'aut-omnis-ad-quibusdam-nemo-dolorem-dolorem-voluptatem', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\2302f61982c03f07cfbe59e494abe024.jpg', 30),
(210, 'Hubert Grant II', 'Hamillview', 'Central African Republic', '412 Ronny Manor\nGailfurt, LA 64687', 'Recusandae odio odio sed quam quibusdam dolorem eos. In fuga molestiae sed maiores. Sint reprehenderit sed rerum quaerat deserunt nobis. Quia qui et ratione.', 'Similique sit maxime aliquid iure pariatur unde. Magnam fugiat nihil quos repudiandae et repudiandae maiores. Consequatur in inventore soluta molestias. Inventore et unde modi nisi quisquam.', 'hostal', '2017-07-07 05:07:11', '2017-07-07 05:07:11', 'corporis-laudantium-velit-deserunt-voluptates-mollitia-culpa-libero', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\607da85ed1593bb25812cb853e0016d1.jpg', 30),
(211, 'Prof. Brady Lowe I', 'Fayland', 'France', '34066 Harvey Fort\nNorth Constantin, MD 09815', 'Enim consequuntur quia harum qui doloremque qui quae. Est enim nulla ipsam doloribus. Quis rerum est necessitatibus tenetur voluptatem dolorum. Ipsum quis repudiandae mollitia qui.', 'Rerum eos laboriosam debitis sed qui. Quasi sapiente debitis sit enim vel ab. Quia rerum dolorum rerum sit commodi. Temporibus tempora non sed velit autem non voluptas.', 'rural hotel', '2017-07-07 05:07:11', '2017-07-07 05:07:11', 'ut-aut-iusto-ullam-atque-sed-reprehenderit', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\5a9b29301659c6370aad9a23472ca601.jpg', 30),
(212, 'Gregg McDermott PhD', 'South Carrie', 'United Arab Emirates', '9128 Hayes Rapid Suite 378\nWest Abbey, NH 41696', 'Quo itaque ea doloremque repellendus dolores qui voluptates. Consequatur expedita autem veniam accusamus. Voluptate molestiae qui nihil.', 'Molestiae vel molestiae ab mollitia vel quos aut. Quibusdam unde delectus suscipit beatae qui reprehenderit. Quas sed illum quos voluptas.', 'hostal', '2017-07-07 05:07:11', '2017-07-07 05:07:11', 'vel-accusamus-veritatis-maiores-voluptatum-veritatis-omnis-quibusdam', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\21134689e81fb187e0e6042965163110.jpg', 30),
(213, 'Ena Conroy', 'East Columbus', 'Micronesia', '31561 McCullough Dam\nEast Savannahtown, TX 01940', 'Est suscipit vel dolorem ut repudiandae ut. Consequatur corrupti voluptatem optio. Aut occaecati temporibus et nihil rerum voluptatem pariatur doloribus.', 'Omnis labore libero nemo quis enim ut ducimus. Eum rerum tenetur molestiae esse velit.', '5 stars', '2017-07-07 05:07:11', '2017-07-07 05:07:11', 'impedit-quos-consequatur-illum-quia-quia-eaque-recusandae-at', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\c4550dd58ca34f989eda1ea29aaeb1ac.jpg', 30),
(214, 'Tia Walter', 'North Wendy', 'Kazakhstan', '731 Nolan Loaf\nVanland, WI 43573', 'Est recusandae ullam nihil sed. Porro expedita voluptates assumenda et. Et harum officiis dolor aut repellendus dolor non et. Consequatur et qui nisi aspernatur.', 'Iste voluptatem et magni expedita voluptas consequatur non. Est aut praesentium fugiat ut omnis quos tempore.', '1 star', '2017-07-07 05:07:11', '2017-07-07 05:07:11', 'dolore-autem-sed-sit-beatae-officia', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\1bddd68b04db307df7814e3435a3d07f.jpg', 30),
(215, 'Israel Lehner', 'West Beulah', 'Armenia', '45782 Mallie Lodge\nBergstrombury, TX 09055-2785', 'Nostrum qui cupiditate saepe vel ipsum. Vitae sint iure vel corrupti soluta. Sunt dolorum possimus minima iusto nemo molestiae voluptas. Distinctio ab repellat qui soluta officiis eum dolores.', 'Provident quia in dolores libero quo qui. Explicabo eos eos tempore error alias. Quisquam officia pariatur porro. Maiores placeat itaque quod magni dolorem commodi.', '4 stars', '2017-07-07 05:07:11', '2017-07-07 05:07:11', 'non-repudiandae-eveniet-qui-voluptatem-id-est', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\0eceee09800b2716d68df034384a26d5.jpg', 30),
(216, 'Dr. Jedidiah Cummings II', 'Kyleehaven', 'Philippines', '3516 Little Trafficway\nSpencerfort, WI 25850', 'Possimus alias ut sit voluptas. Rerum consequatur qui repellat ea quidem unde voluptatem corporis. Explicabo ea suscipit dignissimos quia dolorem aut.', 'Non temporibus non error. Voluptas ad eum quisquam et facilis. Quisquam architecto qui cumque perferendis quae sed adipisci.', '3 stars', '2017-07-07 05:07:11', '2017-07-07 05:07:11', 'voluptatem-consequatur-ad-possimus-aut-vitae', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\83e991142b0c1fe33e2ba54f90a23bd8.jpg', 30),
(217, 'Marina Krajcik', 'South Travismouth', 'Algeria', '9553 Arnoldo Rest Apt. 464\nAlejandraton, HI 74306', 'Molestiae assumenda dolores non omnis. Optio dolore animi enim occaecati ducimus et dignissimos. Ipsa consequatur voluptas laborum quaerat aliquam officiis et.', 'Quod et eaque omnis cum iusto. Impedit voluptatibus possimus iusto perspiciatis velit facere molestiae possimus. Consequatur nihil totam distinctio maxime odio eum ut asperiores.', 'hostal', '2017-07-07 05:07:12', '2017-07-07 05:07:12', 'ad-suscipit-exercitationem-enim-quisquam-et-eveniet-eveniet', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\2201f95693528d787b4d1b051bc6c7aa.jpg', 30),
(218, 'Lexus Nader', 'South Chanelville', 'Burkina Faso', '9538 Clay Valley Suite 122\nGreenholtland, CA 44971-7427', 'Itaque tenetur occaecati omnis a nesciunt. Esse voluptatem qui et impedit fugiat ea qui. Eius dolor commodi quibusdam.', 'Quos aliquid placeat fugit sunt est. Minima molestias sit inventore magni aut cumque. Voluptates facere perferendis animi eaque. Aut maxime incidunt atque et quo voluptatem.', '1 star', '2017-07-07 05:07:12', '2017-07-07 05:07:12', 'distinctio-ex-facere-dolorem-occaecati-corporis', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\077b2e5913868fecc178c7c984def9c3.jpg', 30),
(219, 'Name Flatley', 'West Stephania', 'Wallis and Futuna', '1790 Abbott Islands\nSouth Zita, OR 36241-1086', 'Magnam quo excepturi consequuntur ut corporis sint qui. Sunt dolores incidunt accusantium voluptatem. Consectetur cupiditate omnis eum nobis dolorem totam magnam. Molestias facere ut corrupti quod quasi ducimus.', 'Ut ducimus est eius est distinctio repellat. Ipsum cupiditate quo quae quod omnis tenetur. Incidunt maxime beatae deserunt autem facilis. Vel qui dolore voluptas quidem omnis velit.', 'rural hotel', '2017-07-07 05:07:12', '2017-07-07 05:07:12', 'molestiae-voluptas-ipsum-quos-qui', 'C:\\xampp\\htdocs\\laravel\\proyecto\\public\\imghoteles\\c98625a2f4877ced6fa676d23d618adb.jpg', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_07_053528_create_table_hoteles', 2),
(4, '2017_07_07_062249_agregar_campos_table_hoteles', 3),
(5, '2017_07_07_090356_create_table_bookings', 4),
(6, '2017_07_07_091934_adding_price_table_hoteles', 5),
(7, '2017_07_09_043702_add_fields_to_booking_table', 6),
(8, '2017_07_09_051550_add_more_tables_to_booking_table', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ruth', 'quintana@gmail.com', '$2y$10$wiG6QE3pz6OpbpaAKZSboOEoJiJc/CXAfiXN/PwIVrUHGSx5UxZKu', 'admin', 'GfdsJBTM1ffegV2BV9dmqtqqXg3oCN9LlXxwPgbOghn1Hua6ScGnz8H4K3JL', '2017-07-06 03:50:24', '2017-07-06 03:50:24'),
(2, 'user', 'user@user.com', '$2y$10$1Dn0m1qKK2aPOPL9.5oVNuSzMaENX2d55Yg1wGn.83e57epYXcDpu', 'user', 'mTfSRanZAJXHuY4d2J6dSHRdCxzQ4BnD08IavyW3gnofHHTvlgQA59z3Whde', '2017-07-06 03:51:22', '2017-07-06 03:51:22'),
(3, 'ruth', 'ruth@gmail.com', '$2y$10$vj0N1arTGmTJG7XiH3A2R.jggqcLjGrQtlMKBtaCODMaxwdpyzqSC', 'admin', 'C1Jd9QELtJwB8nVdDXnVC6ktlPhl1jkwpJpU2YhQSH6Adm5gT0ElVfeza2I7', '2017-07-06 04:55:51', '2017-07-06 04:55:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hoteles`
--
ALTER TABLE `hoteles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT de la tabla `hoteles`
--
ALTER TABLE `hoteles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
