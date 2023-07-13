-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2023 at 08:10 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlm`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add levels', 7, 'add_levels'),
(26, 'Can change levels', 7, 'change_levels'),
(27, 'Can delete levels', 7, 'delete_levels'),
(28, 'Can view levels', 7, 'view_levels'),
(29, 'Can add rank', 8, 'add_rank'),
(30, 'Can change rank', 8, 'change_rank'),
(31, 'Can delete rank', 8, 'delete_rank'),
(32, 'Can view rank', 8, 'view_rank'),
(33, 'Can add wallet', 9, 'add_wallet'),
(34, 'Can change wallet', 9, 'change_wallet'),
(35, 'Can delete wallet', 9, 'delete_wallet'),
(36, 'Can view wallet', 9, 'view_wallet'),
(37, 'Can add user referral', 10, 'add_userreferral'),
(38, 'Can change user referral', 10, 'change_userreferral'),
(39, 'Can delete user referral', 10, 'delete_userreferral'),
(40, 'Can view user referral', 10, 'view_userreferral'),
(41, 'Can add user rank', 11, 'add_userrank'),
(42, 'Can change user rank', 11, 'change_userrank'),
(43, 'Can delete user rank', 11, 'delete_userrank'),
(44, 'Can view user rank', 11, 'view_userrank'),
(45, 'Can add transactions', 12, 'add_transactions'),
(46, 'Can change transactions', 12, 'change_transactions'),
(47, 'Can delete transactions', 12, 'delete_transactions'),
(48, 'Can view transactions', 12, 'view_transactions'),
(49, 'Can add login_history', 13, 'add_login_history'),
(50, 'Can change login_history', 13, 'change_login_history'),
(51, 'Can delete login_history', 13, 'delete_login_history'),
(52, 'Can view login_history', 13, 'view_login_history'),
(53, 'Can add current_level', 14, 'add_current_level'),
(54, 'Can change current_level', 14, 'change_current_level'),
(55, 'Can delete current_level', 14, 'delete_current_level'),
(56, 'Can view current_level', 14, 'view_current_level'),
(57, 'Can add status_activity', 15, 'add_status_activity'),
(58, 'Can change status_activity', 15, 'change_status_activity'),
(59, 'Can delete status_activity', 15, 'delete_status_activity'),
(60, 'Can view status_activity', 15, 'view_status_activity');

-- --------------------------------------------------------

--
-- Table structure for table `core_login_history`
--

CREATE TABLE `core_login_history` (
  `id` bigint(20) NOT NULL,
  `login_time` varchar(200) NOT NULL,
  `logout_time` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_status_activity`
--

CREATE TABLE `core_status_activity` (
  `id` bigint(20) NOT NULL,
  `time` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `amount_freezed` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_status_activity`
--

INSERT INTO `core_status_activity` (`id`, `time`, `status`, `amount_freezed`, `user_id`) VALUES
(1, '2023-07-13 06:02:52.891078', '0', '0', 31),
(2, '2023-07-13 06:02:52.891078', '1', '0', 31);

-- --------------------------------------------------------

--
-- Table structure for table `current_level`
--

CREATE TABLE `current_level` (
  `id` bigint(20) NOT NULL,
  `level_id` varchar(200) NOT NULL,
  `points` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `current_level`
--

INSERT INTO `current_level` (`id`, `level_id`, `points`, `user_id`) VALUES
(1, '0', '0', 1),
(26, '0', '0', 29),
(27, '2', '50', 31),
(28, '1', '10', 32),
(29, '1', '10', 33),
(30, '1', '10', 34),
(31, '1', '10', 35),
(32, '1', '10', 36),
(33, '0', '0', 37),
(34, '0', '0', 39),
(35, '0', '0', 40),
(36, '0', '0', 41),
(37, '0', '0', 43),
(40, '0', '0', 47),
(41, '0', '0', 48),
(42, '0', '0', 49),
(43, '0', '0', 50),
(44, '0', '0', 51),
(45, '0', '0', 52),
(46, '0', '0', 53),
(47, '0', '0', 54),
(48, '0', '0', 55),
(49, '0', '0', 56),
(50, '0', '0', 57),
(51, '0', '0', 58),
(52, '0', '0', 59),
(53, '0', '0', 60),
(54, '0', '0', 61),
(55, '0', '0', 62),
(56, '0', '0', 63),
(57, '0', '0', 64),
(58, '0', '0', 65),
(59, '0', '0', 66),
(60, '0', '0', 67),
(61, '0', '0', 68),
(62, '0', '0', 69),
(63, '0', '0', 70),
(64, '0', '0', 71),
(65, '0', '0', 72),
(66, '0', '0', 73),
(67, '0', '0', 74),
(68, '0', '0', 75),
(69, '0', '0', 76),
(70, '0', '0', 77),
(71, '0', '0', 78),
(72, '0', '0', 79),
(73, '0', '0', 80),
(74, '0', '0', 81),
(75, '0', '0', 82),
(76, '0', '0', 83),
(77, '0', '0', 84),
(78, '0', '0', 85),
(79, '0', '0', 86),
(80, '0', '0', 87),
(81, '0', '0', 88),
(82, '0', '0', 89),
(83, '0', '0', 90),
(84, '0', '0', 91),
(85, '0', '0', 92),
(86, '0', '0', 93),
(87, '0', '0', 94),
(88, '0', '0', 95),
(89, '0', '0', 96),
(90, '0', '0', 97),
(91, '0', '0', 98),
(92, '0', '0', 99),
(93, '0', '0', 100),
(94, '0', '0', 101),
(95, '0', '0', 102),
(96, '0', '0', 103),
(97, '0', '0', 104),
(98, '0', '0', 105),
(99, '0', '0', 106),
(100, '0', '0', 107),
(101, '0', '0', 108);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(14, 'core', 'current_level'),
(7, 'core', 'levels'),
(13, 'core', 'login_history'),
(8, 'core', 'rank'),
(15, 'core', 'status_activity'),
(12, 'core', 'transactions'),
(6, 'core', 'user'),
(11, 'core', 'userrank'),
(10, 'core', 'userreferral'),
(9, 'core', 'wallet'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-09 11:28:14.227867'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-07-09 11:28:14.280738'),
(3, 'auth', '0001_initial', '2023-07-09 11:28:14.489109'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-07-09 11:28:14.541357'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-07-09 11:28:14.548355'),
(6, 'auth', '0004_alter_user_username_opts', '2023-07-09 11:28:14.556427'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-07-09 11:28:14.562534'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-07-09 11:28:14.565514'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-07-09 11:28:14.572660'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-07-09 11:28:14.578542'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-07-09 11:28:14.585544'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-07-09 11:28:14.608056'),
(13, 'auth', '0011_update_proxy_permissions', '2023-07-09 11:28:14.613620'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-07-09 11:28:14.620621'),
(15, 'auth', '0013_alter_user_username', '2023-07-09 11:28:14.628122'),
(16, 'core', '0001_initial', '2023-07-09 11:28:15.432138'),
(17, 'admin', '0001_initial', '2023-07-09 11:28:15.546074'),
(18, 'admin', '0002_logentry_remove_auto_add', '2023-07-09 11:28:15.559313'),
(19, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-09 11:28:15.569694'),
(20, 'sessions', '0001_initial', '2023-07-09 11:28:15.610086'),
(21, 'core', '0002_alter_user_created_at_alter_user_referal_code_and_more', '2023-07-10 04:39:48.689880'),
(22, 'core', '0003_alter_user_created_at_alter_user_referal_code_and_more', '2023-07-10 04:39:48.717587'),
(23, 'core', '0004_alter_user_created_at_alter_user_referal_code_and_more', '2023-07-10 04:48:08.066752'),
(24, 'core', '0005_userrank_points_alter_user_created_at_and_more', '2023-07-10 07:59:33.197947'),
(25, 'core', '0006_alter_user_created_at_alter_user_updated_at_and_more', '2023-07-13 05:45:46.934449');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('le86bs9uj50uep2puqff8d1ysy2rtuhp', 'eyJlbWFpbCI6InNodWJoYW1ib3hmeUBnbWFpbC5jb20iLCJyb2xlIjoiYWRtaW4ifQ:1qJ9t9:gdhuVAp7Oai-3CmzvoK-FIZ-kNKy9qdc2QN-sIIL2EY', '2023-07-25 09:42:31.478076'),
('lkix1n35ks3qhjbtocq36tlecog504fy', 'eyJlbWFpbCI6InNodWJoYW1ib3hmeUBnbWFpbC5jb20iLCJyb2xlIjoiYWRtaW4ifQ:1qJmbf:t8WGEBHcn5aRQup0KHptX8XbIgVI6DAC9QpwkNDqm5M', '2023-07-27 03:03:03.690809');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) NOT NULL,
  `points` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `points`) VALUES
(1, '5'),
(2, '10'),
(3, '15'),
(4, '20'),
(5, '25'),
(6, '30'),
(7, '35'),
(8, '40'),
(9, '45'),
(10, '50'),
(11, '55'),
(12, '60'),
(13, '65'),
(14, '70'),
(15, '75'),
(16, '80'),
(17, '85'),
(18, '90'),
(19, '95'),
(20, '100'),
(21, '105'),
(22, '110'),
(23, '115'),
(24, '120'),
(25, '125'),
(26, '130'),
(27, '135'),
(28, '140'),
(29, '145'),
(30, '150'),
(31, '155'),
(32, '160'),
(33, '165'),
(34, '170'),
(35, '175'),
(36, '180'),
(37, '185'),
(38, '190'),
(39, '195'),
(40, '200');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` bigint(20) NOT NULL,
  `rank` varchar(200) NOT NULL,
  `royality_income` varchar(200) NOT NULL,
  `points` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `rank`, `royality_income`, `points`) VALUES
(1, 'silver', '5 direct', '20'),
(2, 'Gold', '5 silver', '20'),
(3, 'Perl', '4 gold', '20'),
(4, 'Saffire', '3 pearl', '20'),
(5, 'Platinum', '2 saffire', '20'),
(6, 'Diamond', '1 platinum', '20');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL,
  `transactions` longtext NOT NULL,
  `wallet_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified_at` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `updated_at` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `remember_token` varchar(200) NOT NULL,
  `referal_by` varchar(200) DEFAULT NULL,
  `referal_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `email`, `verified_at`, `role`, `status`, `updated_at`, `created_at`, `remember_token`, `referal_by`, `referal_code`) VALUES
(1, 'pbkdf2_sha256$390000$T74S78E0fzz97fNzYHfuU3$FGR5RQ5pQjgyaAR+qv2cADWUWXec/zpBAU8Il/oukJ8=', NULL, 1, 'shubham', 'Shubham', 'Sharma', 1, 1, '2023-07-09 11:28:45.501935', 'shubhamboxfy@gmail.com', 'True', 'admin', '1', '2023-07-09 11:28:26.336200', '2023-07-09 11:28:26.336200', 'False', NULL, 'b89735d6'),
(29, '123', NULL, 0, 'shubhamsharma', 'shubham', 'sharma', 0, 0, '2023-07-09 14:07:13.391810', 'shubham@gmail.com', 'True', 'user', '1', '2023-07-09 14:07:08.924798', '2023-07-09 14:07:08.924798', 'False', '20e1960e', 'e47eeaf2'),
(31, '123', NULL, 0, 'abc', 'shubham', 'sharma', 0, 0, '2023-07-09 14:08:12.905568', 'abc@gmail.com', 'True', 'user', '1', '2023-07-09 14:08:05.734143', '2023-07-09 14:08:05.734143', 'False', NULL, '065b55ff'),
(32, '123', NULL, 0, 'abc1', 'shubham', 'sharma', 0, 0, '2023-07-09 14:09:20.081692', 'abc1@gmail.com', 'True', 'user', '1', '2023-07-09 14:08:46.157874', '2023-07-09 14:08:46.157874', 'False', '065b55ff', '1e7381fb'),
(33, '123', NULL, 0, 'abc2', 'shubham', 'sharma', 0, 0, '2023-07-09 14:10:20.342430', 'abc2@gmail.com', 'True', 'user', '1', '2023-07-09 14:10:08.539224', '2023-07-09 14:10:08.539224', 'False', '065b55ff', '4f8e0f33'),
(34, '123', NULL, 0, 'abc3', 'shubham', 'sharma', 0, 0, '2023-07-09 14:11:08.023880', 'abc3@gmail.com', 'True', 'user', '1', '2023-07-09 14:11:04.023583', '2023-07-09 14:11:04.023583', 'False', '065b55ff', '70a0253f'),
(35, '123', NULL, 0, 'abc4', 'shubham', 'sharma', 0, 0, '2023-07-09 14:11:24.451486', 'abc4@gmail.com', 'True', 'user', '1', '2023-07-09 14:11:16.433092', '2023-07-09 14:11:16.433092', 'False', '065b55ff', '7805afb1'),
(36, '123', NULL, 0, 'abc5', 'shubham', 'sharma', 0, 0, '2023-07-09 14:13:26.987962', 'abc5@gmail.com', 'True', 'user', '1', '2023-07-09 14:12:01.640297', '2023-07-09 14:12:01.640297', 'False', '065b55ff', '92f7c221'),
(37, '123', NULL, 0, 'abc6', 'shubham', 'sharma', 0, 0, '2023-07-09 14:14:14.750779', 'abc6@gmail.com', 'True', 'user', '1', '2023-07-09 14:13:57.926346', '2023-07-09 14:13:57.926346', 'False', '065b55ff', 'd84799e6'),
(39, '123', NULL, 0, 'abc7', 'shubham', 'sharma', 0, 0, '2023-07-09 14:15:29.813509', 'abc7@gmail.com', 'True', 'user', '1', '2023-07-09 14:15:26.299397', '2023-07-09 14:15:26.299397', 'False', '1e7381fb', '0cf44234'),
(40, '123', NULL, 0, 'abc8', 'shubham', 'sharma', 0, 0, '2023-07-09 14:15:48.980036', 'abc8@gmail.com', 'True', 'user', '1', '2023-07-09 14:15:46.170955', '2023-07-09 14:15:46.171965', 'False', '1e7381fb', '18cc926a'),
(41, '123', NULL, 0, 'abc9', 'shubham', 'sharma', 0, 0, '2023-07-09 14:17:50.357711', 'abc9@gmail.com', 'True', 'user', '1', '2023-07-09 14:16:56.322408', '2023-07-09 14:16:56.322408', 'False', '7805afb1', '429cae10'),
(43, '123', NULL, 0, 'abc10', 'shubham', 'sharma', 0, 0, '2023-07-09 14:18:13.539658', 'abc10@gmail.com', 'True', 'user', '1', '2023-07-09 14:18:09.431368', '2023-07-09 14:18:09.431368', 'False', '7805afb1', '6e3038d7'),
(47, '123', NULL, 0, 'abc13', 'shubham', 'sharma', 0, 0, '2023-07-10 08:06:03.630495', 'abc13@gmail.com', 'True', 'user', '1', '2023-07-10 08:05:57.043815', '2023-07-10 08:05:57.043815', 'False', '7805afb1', '4933d1aa'),
(48, '123', NULL, 0, 'abc14', 'shubham', 'sharma', 0, 0, '2023-07-10 08:06:17.965007', 'abc14@gmail.com', 'True', 'user', '1', '2023-07-10 08:05:57.043815', '2023-07-10 08:05:57.043815', 'False', '7805afb1', 'a6046e94'),
(49, 'pbkdf2_sha256$390000$32lAvBpgJeyGUNdehBgEQT$vycRF77XjNKsz5AU0X4XeKYQMyrAVsdmlhak8oitdzE=', NULL, 1, 'shubhamsharma001', '', '', 1, 1, '2023-07-10 11:01:12.399262', 'shubhamsharma@gmail.com', 'True', 'user', '1', '2023-07-10 11:00:34.629803', '2023-07-10 11:00:34.630803', 'False', NULL, '3adb015a'),
(50, '123', NULL, 0, 'jkl1', 'shubham', 'sharma', 0, 0, '2023-07-11 10:03:44.926882', 'jkl1@gmail.com', 'True', 'user', '1', '2023-07-11 09:59:35.892555', '2023-07-11 09:59:35.892555', 'False', '1e7381fb', '72fbe790'),
(51, '123', NULL, 0, 'jkl2', 'shubham', 'sharma', 0, 0, '2023-07-11 10:03:57.568652', 'jkl2@gmail.com', 'True', 'user', '1', '2023-07-11 09:59:35.892555', '2023-07-11 09:59:35.892555', 'False', '1e7381fb', 'ce84590b'),
(52, '123', NULL, 0, 'jkl3', 'shubham', 'sharma', 0, 0, '2023-07-11 10:04:10.218690', 'jkl3@gmail.com', 'True', 'user', '1', '2023-07-11 09:59:35.892555', '2023-07-11 09:59:35.892555', 'False', '1e7381fb', 'f6feb66f'),
(53, '123', NULL, 0, 'jkl4', 'shubham', 'sharma', 0, 0, '2023-07-11 10:05:18.018038', 'jkl4@gmail.com', 'True', 'user', '1', '2023-07-11 09:59:35.892555', '2023-07-11 09:59:35.892555', 'False', '7805afb1', '14a963fe'),
(54, '123', NULL, 0, 'jkl5', 'shubham', 'sharma', 0, 0, '2023-07-11 10:28:44.436391', 'jkl5@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '4f8e0f33', '99fd7fd4'),
(55, '123', NULL, 0, 'jkl6', 'shubham', 'sharma', 0, 0, '2023-07-11 10:28:54.340864', 'jkl6@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '4f8e0f33', '149fed70'),
(56, '123', NULL, 0, 'jkl7', 'shubham', 'sharma', 0, 0, '2023-07-11 10:29:03.013546', 'jkl7@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '4f8e0f33', 'bf8c08fe'),
(57, '123', NULL, 0, 'jkl8', 'shubham', 'sharma', 0, 0, '2023-07-11 10:29:12.201106', 'jkl8@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '4f8e0f33', 'edf94434'),
(58, '123', NULL, 0, 'jkl9', 'shubham', 'sharma', 0, 0, '2023-07-11 10:29:20.421342', 'jkl9@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '4f8e0f33', 'ba9a9b98'),
(59, '123', NULL, 0, 'jkl10', 'shubham', 'sharma', 0, 0, '2023-07-11 10:30:15.754036', 'jkl10@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '70a0253f', '1d25142c'),
(60, '123', NULL, 0, 'jkl11', 'shubham', 'sharma', 0, 0, '2023-07-11 10:30:26.881346', 'jkl11@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '70a0253f', '3292c1fd'),
(61, '123', NULL, 0, 'jkl12', 'shubham', 'sharma', 0, 0, '2023-07-11 10:30:37.242290', 'jkl12@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '70a0253f', '07ee96ff'),
(62, '123', NULL, 0, 'jkl13', 'shubham', 'sharma', 0, 0, '2023-07-11 10:30:46.516254', 'jkl13@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '70a0253f', '9f3bc078'),
(63, '123', NULL, 0, 'jkl14', 'shubham', 'sharma', 0, 0, '2023-07-11 10:30:56.596414', 'jkl14@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '70a0253f', '55552012'),
(64, '123', NULL, 0, 'jkl15', 'shubham', 'sharma', 0, 0, '2023-07-11 10:37:35.352748', 'jkl15@gmail.com', 'False', 'user', '1', '2023-07-11 10:37:02.275083', '2023-07-11 10:37:02.275083', 'False', '92f7c221', '2d934495'),
(65, '123', NULL, 0, 'jkl16', 'shubham', 'sharma', 0, 0, '2023-07-11 10:37:48.743403', 'jkl16@gmail.com', 'False', 'user', '1', '2023-07-11 10:37:02.275083', '2023-07-11 10:37:02.275083', 'False', '92f7c221', 'b0b24940'),
(66, '123', NULL, 0, 'jkl17', 'shubham', 'sharma', 0, 0, '2023-07-11 10:38:00.260228', 'jkl17@gmail.com', 'False', 'user', '1', '2023-07-11 10:37:02.275083', '2023-07-11 10:37:02.275083', 'False', '92f7c221', 'c1d85129'),
(67, '123', NULL, 0, 'jkl18', 'shubham', 'sharma', 0, 0, '2023-07-11 10:38:13.081054', 'jkl18@gmail.com', 'False', 'user', '1', '2023-07-11 10:37:02.275083', '2023-07-11 10:37:02.275083', 'False', '92f7c221', 'cc9ee2da'),
(68, '123', NULL, 0, 'jkl19', 'shubham', 'sharma', 0, 0, '2023-07-11 10:38:25.286873', 'jkl19@gmail.com', 'False', 'user', '1', '2023-07-11 10:37:02.275083', '2023-07-11 10:37:02.275083', 'False', '92f7c221', 'f97b804f'),
(69, '123', NULL, 0, 'jkl20', 'shubham', 'sharma', 0, 0, '2023-07-11 10:39:53.839668', 'jkl20@gmail.com', 'False', 'user', '1', '2023-07-11 10:39:30.203942', '2023-07-11 10:39:30.203942', 'False', '92f7c221', 'f84d54ad'),
(70, '123', NULL, 0, 'jkl21', 'shubham', 'sharma', 0, 0, '2023-07-11 10:41:45.338743', 'jkl21@gmail.com', 'False', 'user', '1', '2023-07-11 10:41:34.617669', '2023-07-11 10:41:34.617669', 'False', '92f7c221', '9ef9ad3f'),
(71, '123', NULL, 0, 'jkl22', 'shubham', 'sharma', 0, 0, '2023-07-11 10:44:58.825144', 'jkl22@gmail.com', 'False', 'user', '1', '2023-07-11 10:42:35.732403', '2023-07-11 10:42:35.732403', 'False', '92f7c221', '199d225c'),
(72, '123', NULL, 0, 'jkl23', 'shubham', 'sharma', 0, 0, '2023-07-11 10:45:52.878713', 'jkl23@gmail.com', 'False', 'user', '1', '2023-07-11 10:45:34.673770', '2023-07-11 10:45:34.673770', 'False', '92f7c221', 'be39e90b'),
(73, '123', NULL, 0, 'jkl24', 'shubham', 'sharma', 0, 0, '2023-07-11 10:46:30.063279', 'jkl24@gmail.com', 'False', 'user', '1', '2023-07-11 10:46:16.585840', '2023-07-11 10:46:16.585840', 'False', '92f7c221', '003405cf'),
(74, '123', NULL, 0, 'jkl25', 'shubham', 'sharma', 0, 0, '2023-07-11 10:47:25.430814', 'jkl25@gmail.com', 'False', 'user', '1', '2023-07-11 10:47:15.615444', '2023-07-11 10:47:15.615444', 'False', '92f7c221', 'a916a109'),
(75, '123', NULL, 0, 'jkl26', 'shubham', 'sharma', 0, 0, '2023-07-11 10:51:06.785006', 'jkl26@gmail.com', 'False', 'user', '1', '2023-07-11 10:48:43.005536', '2023-07-11 10:48:43.005536', 'False', '92f7c221', '4f0b34ac'),
(76, '123', NULL, 0, 'jkl27', 'shubham', 'sharma', 0, 0, '2023-07-11 10:51:33.654383', 'jkl27@gmail.com', 'False', 'user', '1', '2023-07-11 10:51:19.354848', '2023-07-11 10:51:19.354848', 'False', '92f7c221', 'e4ae29d6'),
(77, '123', NULL, 0, 'jkl28', 'shubham', 'sharma', 0, 0, '2023-07-11 10:52:07.353351', 'jkl28@gmail.com', 'False', 'user', '1', '2023-07-11 10:51:54.625897', '2023-07-11 10:51:54.625897', 'False', '92f7c221', '3c08dcbf'),
(78, '123', NULL, 0, 'jkl29', 'shubham', 'sharma', 0, 0, '2023-07-11 10:53:24.737963', 'jkl29@gmail.com', 'False', 'user', '1', '2023-07-11 10:53:12.939099', '2023-07-11 10:53:12.939099', 'False', '92f7c221', 'cceeb7c1'),
(79, '123', NULL, 0, 'jkl30', 'shubham', 'sharma', 0, 0, '2023-07-11 10:54:04.426258', 'jkl30@gmail.com', 'False', 'user', '1', '2023-07-11 10:53:44.855175', '2023-07-11 10:53:44.855175', 'False', '92f7c221', '09b14f22'),
(80, '123', NULL, 0, 'jkl31', 'shubham', 'sharma', 0, 0, '2023-07-11 10:54:49.977566', 'jkl31@gmail.com', 'False', 'user', '1', '2023-07-11 10:54:33.956641', '2023-07-11 10:54:33.956641', 'False', '92f7c221', '4f54f8db'),
(81, '123', NULL, 0, 'jkl32', 'shubham', 'sharma', 0, 0, '2023-07-11 10:56:38.082456', 'jkl32@gmail.com', 'False', 'user', '1', '2023-07-11 10:56:26.845451', '2023-07-11 10:56:26.845451', 'False', '92f7c221', 'dbee07d2'),
(82, '123', NULL, 0, 'jkl33', 'shubham', 'sharma', 0, 0, '2023-07-11 10:57:29.595737', 'jkl33@gmail.com', 'False', 'user', '1', '2023-07-11 10:57:15.388856', '2023-07-11 10:57:15.388856', 'False', '92f7c221', '4d2f7823'),
(83, '123', NULL, 0, 'jkl34', 'shubham', 'sharma', 0, 0, '2023-07-11 11:01:36.929397', 'jkl34@gmail.com', 'False', 'user', '1', '2023-07-11 11:01:32.170724', '2023-07-11 11:01:32.170724', 'False', '92f7c221', '31783580'),
(84, '123', NULL, 0, 'jkl35', 'shubham', 'sharma', 0, 0, '2023-07-11 11:03:08.111327', 'jkl35@gmail.com', 'False', 'user', '1', '2023-07-11 11:02:50.266672', '2023-07-11 11:02:50.266672', 'False', '92f7c221', '2efd173b'),
(85, '123', NULL, 0, 'jkl36', 'shubham', 'sharma', 0, 0, '2023-07-11 11:06:41.423276', 'jkl36@gmail.com', 'False', 'user', '1', '2023-07-11 11:06:20.082467', '2023-07-11 11:06:20.082467', 'False', '92f7c221', '53dcc3d0'),
(86, '123', NULL, 0, 'jkl37', 'shubham', 'sharma', 0, 0, '2023-07-11 11:08:43.315326', 'jkl37@gmail.com', 'False', 'user', '1', '2023-07-11 11:08:27.780972', '2023-07-11 11:08:27.780972', 'False', '92f7c221', '39143cb2'),
(87, '123', NULL, 0, 'jkl38', 'shubham', 'sharma', 0, 0, '2023-07-11 11:10:24.626114', 'jkl38@gmail.com', 'False', 'user', '1', '2023-07-11 11:10:12.941349', '2023-07-11 11:10:12.941349', 'False', '92f7c221', '17269e0a'),
(88, '123', NULL, 0, 'jkl39', 'shubham', 'sharma', 0, 0, '2023-07-11 11:11:35.061394', 'jkl39@gmail.com', 'False', 'user', '1', '2023-07-11 11:11:24.000913', '2023-07-11 11:11:24.000913', 'False', '92f7c221', '3d54a3b5'),
(89, '123', NULL, 0, 'jkl40', 'shubham', 'sharma', 0, 0, '2023-07-11 11:13:43.305888', 'jkl40@gmail.com', 'False', 'user', '1', '2023-07-11 11:13:30.971075', '2023-07-11 11:13:30.971075', 'False', '92f7c221', 'd3082161'),
(90, '123', NULL, 0, 'jkl41', 'shubham', 'sharma', 0, 0, '2023-07-11 11:15:47.308928', 'jkl41@gmail.com', 'False', 'user', '1', '2023-07-11 11:15:39.238856', '2023-07-11 11:15:39.238856', 'False', '92f7c221', '7ec74b1b'),
(91, '123', NULL, 0, 'jkl42', 'shubham', 'sharma', 0, 0, '2023-07-11 11:19:14.263884', 'jkl42@gmail.com', 'False', 'user', '1', '2023-07-11 11:19:00.868889', '2023-07-11 11:19:00.868889', 'False', '92f7c221', '3c2e7f82'),
(92, '123', NULL, 0, 'jkl43', 'shubham', 'sharma', 0, 0, '2023-07-11 11:19:56.553270', 'jkl43@gmail.com', 'False', 'user', '1', '2023-07-11 11:19:44.631679', '2023-07-11 11:19:44.631679', 'False', '92f7c221', '89bdf4d8'),
(93, '123', NULL, 0, 'jkl44', 'shubham', 'sharma', 0, 0, '2023-07-11 11:20:46.250913', 'jkl44@gmail.com', 'False', 'user', '1', '2023-07-11 11:20:35.002179', '2023-07-11 11:20:35.002179', 'False', '92f7c221', 'f179abe1'),
(94, '123', NULL, 0, 'jkl45', 'shubham', 'sharma', 0, 0, '2023-07-11 11:22:23.936328', 'jkl45@gmail.com', 'False', 'user', '1', '2023-07-11 11:21:18.125107', '2023-07-11 11:21:18.125107', 'False', '92f7c221', '477c4058'),
(95, '123', NULL, 0, 'jkl46', 'shubham', 'sharma', 0, 0, '2023-07-11 11:22:58.113497', 'jkl46@gmail.com', 'False', 'user', '1', '2023-07-11 11:22:49.432975', '2023-07-11 11:22:49.432975', 'False', '92f7c221', '87bf52da'),
(96, '123', NULL, 0, 'jkl47', 'shubham', 'sharma', 0, 0, '2023-07-11 11:23:37.210203', 'jkl47@gmail.com', 'False', 'user', '1', '2023-07-11 11:23:25.026363', '2023-07-11 11:23:25.026363', 'False', '92f7c221', '7a173c18'),
(97, '123', NULL, 0, 'jkl48', 'shubham', 'sharma', 0, 0, '2023-07-11 11:24:17.001805', 'jkl48@gmail.com', 'False', 'user', '1', '2023-07-11 11:24:05.999771', '2023-07-11 11:24:05.999771', 'False', '92f7c221', '6f010b37'),
(98, '123', NULL, 0, 'jkl49', 'shubham', 'sharma', 0, 0, '2023-07-11 11:25:28.912445', 'jkl49@gmail.com', 'False', 'user', '1', '2023-07-11 11:25:16.063508', '2023-07-11 11:25:16.063508', 'False', '92f7c221', '47c1b01f'),
(99, '123', NULL, 0, 'jkl50', 'shubham', 'sharma', 0, 0, '2023-07-11 11:26:13.801519', 'jkl50@gmail.com', 'False', 'user', '1', '2023-07-11 11:25:57.914462', '2023-07-11 11:25:57.914462', 'False', '92f7c221', 'f2e146a9'),
(100, '123', NULL, 0, 'jkl51', 'shubham', 'sharma', 0, 0, '2023-07-11 11:26:50.672789', 'jkl51@gmail.com', 'False', 'user', '1', '2023-07-11 11:26:39.445507', '2023-07-11 11:26:39.445507', 'False', '92f7c221', '6c490021'),
(101, '123', NULL, 0, 'jkl52', 'shubham', 'sharma', 0, 0, '2023-07-11 11:27:13.117809', 'jkl52@gmail.com', 'False', 'user', '1', '2023-07-11 11:27:00.876862', '2023-07-11 11:27:00.876862', 'False', '92f7c221', '6f6d63d4'),
(102, '123', NULL, 0, 'jkl54', 'shubham', 'sharma', 0, 0, '2023-07-12 04:55:39.975889', 'jkl54@gmail.com', 'False', 'user', '1', '2023-07-12 04:54:48.498564', '2023-07-12 04:54:48.498564', 'False', NULL, '65168f81'),
(103, '123', NULL, 0, 'jkl56', 'shubham', 'sharma', 0, 0, '2023-07-12 05:01:41.937609', 'jkl56@gmail.com', 'True', 'user', '1', '2023-07-12 05:01:11.526360', '2023-07-12 05:01:11.526360', 'False', '92f7c221', '82313006'),
(104, '123', NULL, 0, 'jkl57', 'shubham', 'sharma', 0, 0, '2023-07-12 05:07:25.466213', 'jkl57@gmail.com', 'False', 'user', '1', '2023-07-12 05:06:40.202805', '2023-07-12 05:06:40.202805', 'False', '92f7c221', 'f3faa4bf'),
(105, '123', NULL, 0, 'jkl58', 'shubham', 'sharma', 0, 0, '2023-07-12 05:08:46.816699', 'jkl58@gmail.com', 'False', 'user', '1', '2023-07-12 05:08:34.229400', '2023-07-12 05:08:34.229400', 'False', '92f7c221', 'e9b47e36'),
(106, '123', NULL, 0, 'jkl59', 'shubham', 'sharma', 0, 0, '2023-07-12 05:09:26.175193', 'jkl59@gmail.com', 'True', 'user', '1', '2023-07-12 05:09:17.105124', '2023-07-12 05:09:17.105124', 'False', '92f7c221', 'b7073002'),
(107, '123', NULL, 0, 'jkl60', 'shubham', 'sharma', 0, 0, '2023-07-12 05:19:49.278007', 'jkl60@gmail.com', 'True', 'user', '1', '2023-07-12 05:17:59.142158', '2023-07-12 05:17:59.142158', 'False', '92f7c221', '0514c379'),
(108, '123', NULL, 0, 'jkl61', 'shubham', 'sharma', 0, 0, '2023-07-12 05:27:27.686522', 'jkl61@gmail.com', 'True', 'user', '1', '2023-07-12 05:25:57.297587', '2023-07-12 05:25:57.297587', 'False', '92f7c221', '6526b308');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_user_permissions`
--

CREATE TABLE `users_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_rank`
--

CREATE TABLE `user_rank` (
  `id` bigint(20) NOT NULL,
  `rank_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `points` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_rank`
--

INSERT INTO `user_rank` (`id`, `rank_id`, `user_id`, `points`) VALUES
(1, 2, 31, '20');

-- --------------------------------------------------------

--
-- Table structure for table `user_referral`
--

CREATE TABLE `user_referral` (
  `id` bigint(20) NOT NULL,
  `child_id_id` bigint(20) NOT NULL,
  `level_id` bigint(20) NOT NULL,
  `parent_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_referral`
--

INSERT INTO `user_referral` (`id`, `child_id_id`, `level_id`, `parent_id_id`) VALUES
(24, 32, 1, 31),
(25, 33, 1, 31),
(26, 34, 1, 31),
(27, 35, 1, 31),
(28, 36, 1, 31),
(29, 37, 1, 31),
(30, 39, 1, 32),
(31, 40, 1, 32),
(32, 41, 1, 35),
(33, 43, 1, 35),
(36, 47, 1, 35),
(37, 48, 1, 35),
(38, 50, 1, 32),
(39, 51, 1, 32),
(40, 52, 1, 32),
(41, 53, 1, 35),
(42, 54, 1, 33),
(43, 55, 1, 33),
(44, 56, 1, 33),
(45, 57, 1, 33),
(46, 58, 1, 33),
(47, 59, 1, 34),
(48, 60, 1, 34),
(49, 61, 1, 34),
(50, 62, 1, 34),
(51, 63, 1, 34),
(52, 64, 1, 36),
(53, 65, 1, 36),
(54, 66, 1, 36),
(55, 67, 1, 36),
(56, 68, 1, 36),
(57, 69, 1, 36),
(58, 70, 1, 36),
(59, 71, 1, 36),
(60, 72, 1, 36),
(61, 73, 1, 36),
(62, 74, 1, 36),
(63, 75, 1, 36),
(64, 76, 1, 36),
(65, 77, 1, 36),
(66, 78, 1, 36),
(67, 79, 1, 36),
(68, 80, 1, 36),
(69, 81, 1, 36),
(70, 82, 1, 36),
(71, 83, 1, 36),
(72, 84, 1, 36),
(73, 85, 1, 36),
(74, 86, 1, 36),
(75, 87, 1, 36),
(76, 88, 1, 36),
(77, 89, 1, 36),
(78, 90, 1, 36),
(79, 91, 1, 36),
(80, 92, 1, 36),
(81, 93, 1, 36),
(82, 94, 1, 36),
(83, 95, 1, 36),
(84, 96, 1, 36),
(85, 97, 1, 36),
(86, 98, 1, 36),
(87, 99, 1, 36),
(88, 100, 1, 36),
(89, 101, 1, 36),
(90, 104, 1, 36),
(91, 105, 1, 36),
(92, 106, 1, 36),
(93, 107, 1, 36),
(94, 108, 1, 36);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` bigint(20) NOT NULL,
  `avaliable_balance` varchar(200) NOT NULL,
  `freezed_balance` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `avaliable_balance`, `freezed_balance`, `user_id`) VALUES
(1, '0', '0', 1),
(26, '0', '0', 29),
(27, '0', '0', 31),
(28, '0', '0', 32),
(29, '0', '0', 33),
(30, '0', '0', 34),
(31, '0', '0', 35),
(32, '0', '0', 36),
(33, '0', '0', 37),
(34, '0', '0', 39),
(35, '0', '0', 40),
(36, '0', '0', 41),
(37, '0', '0', 43),
(40, '0', '0', 47),
(41, '0', '0', 48),
(42, '0', '0', 49),
(43, '0', '0', 50),
(44, '0', '0', 51),
(45, '0', '0', 52),
(46, '0', '0', 53),
(47, '0', '0', 54),
(48, '0', '0', 55),
(49, '0', '0', 56),
(50, '0', '0', 57),
(51, '0', '0', 58),
(52, '0', '0', 59),
(53, '0', '0', 60),
(54, '0', '0', 61),
(55, '0', '0', 62),
(56, '0', '0', 63),
(57, '0', '0', 64),
(58, '0', '0', 65),
(59, '0', '0', 66),
(60, '0', '0', 67),
(61, '0', '0', 68),
(62, '0', '0', 69),
(63, '0', '0', 70),
(64, '0', '0', 71),
(65, '0', '0', 72),
(66, '0', '0', 73),
(67, '0', '0', 74),
(68, '0', '0', 75),
(69, '0', '0', 76),
(70, '0', '0', 77),
(71, '0', '0', 78),
(72, '0', '0', 79),
(73, '0', '0', 80),
(74, '0', '0', 81),
(75, '0', '0', 82),
(76, '0', '0', 83),
(77, '0', '0', 84),
(78, '0', '0', 85),
(79, '0', '0', 86),
(80, '0', '0', 87),
(81, '0', '0', 88),
(82, '0', '0', 89),
(83, '0', '0', 90),
(84, '0', '0', 91),
(85, '0', '0', 92),
(86, '0', '0', 93),
(87, '0', '0', 94),
(88, '0', '0', 95),
(89, '0', '0', 96),
(90, '0', '0', 97),
(91, '0', '0', 98),
(92, '0', '0', 99),
(93, '0', '0', 100),
(94, '0', '0', 101),
(95, '0', '0', 102),
(96, '0', '0', 103),
(97, '0', '0', 104),
(98, '0', '0', 105),
(99, '0', '0', 106),
(100, '0', '0', 107),
(101, '0', '0', 108);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `core_login_history`
--
ALTER TABLE `core_login_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_login_history_user_id_c539e665_fk_users_id` (`user_id`);

--
-- Indexes for table `core_status_activity`
--
ALTER TABLE `core_status_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_status_activity_user_id_b539cf0e_fk_users_id` (`user_id`);

--
-- Indexes for table `current_level`
--
ALTER TABLE `current_level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `current_level_user_id_f0128532_fk_users_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rank` (`rank`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_wallet_id_ce705075_fk_wallet_id` (`wallet_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `referal_code` (`referal_code`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_groups_user_id_group_id_fc7788e8_uniq` (`user_id`,`group_id`),
  ADD KEY `users_groups_group_id_2f3517aa_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_user_permissions`
--
ALTER TABLE `users_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_permissions_user_id_permission_id_3b86cbdf_uniq` (`user_id`,`permission_id`),
  ADD KEY `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `user_rank`
--
ALTER TABLE `user_rank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_rank_rank_id_afdeb20f_fk_rank_id` (`rank_id`),
  ADD KEY `user_rank_user_id_c2b3ca12_fk_users_id` (`user_id`);

--
-- Indexes for table `user_referral`
--
ALTER TABLE `user_referral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_referral_child_id_id_de75dad4_fk_users_id` (`child_id_id`),
  ADD KEY `user_referral_level_id_8f3a91dd_fk_levels_id` (`level_id`),
  ADD KEY `user_referral_parent_id_id_5df4353f_fk_users_id` (`parent_id_id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_user_id_03d82c01_fk_users_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `core_login_history`
--
ALTER TABLE `core_login_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_status_activity`
--
ALTER TABLE `core_status_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `current_level`
--
ALTER TABLE `current_level`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_user_permissions`
--
ALTER TABLE `users_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_rank`
--
ALTER TABLE `user_rank`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_referral`
--
ALTER TABLE `user_referral`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `core_login_history`
--
ALTER TABLE `core_login_history`
  ADD CONSTRAINT `core_login_history_user_id_c539e665_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_status_activity`
--
ALTER TABLE `core_status_activity`
  ADD CONSTRAINT `core_status_activity_user_id_b539cf0e_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `current_level`
--
ALTER TABLE `current_level`
  ADD CONSTRAINT `current_level_user_id_f0128532_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_wallet_id_ce705075_fk_wallet_id` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `users_groups_group_id_2f3517aa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_groups_user_id_f500bee5_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users_user_permissions`
--
ALTER TABLE `users_user_permissions`
  ADD CONSTRAINT `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `users_user_permissions_user_id_92473840_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_rank`
--
ALTER TABLE `user_rank`
  ADD CONSTRAINT `user_rank_rank_id_afdeb20f_fk_rank_id` FOREIGN KEY (`rank_id`) REFERENCES `rank` (`id`),
  ADD CONSTRAINT `user_rank_user_id_c2b3ca12_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_referral`
--
ALTER TABLE `user_referral`
  ADD CONSTRAINT `user_referral_child_id_id_de75dad4_fk_users_id` FOREIGN KEY (`child_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_referral_level_id_8f3a91dd_fk_levels_id` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `user_referral_parent_id_id_5df4353f_fk_users_id` FOREIGN KEY (`parent_id_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_user_id_03d82c01_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
