-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2024 at 02:15 PM
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
-- Database: `kyau_student_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add clubs', 7, 'add_clubs'),
(26, 'Can change clubs', 7, 'change_clubs'),
(27, 'Can delete clubs', 7, 'delete_clubs'),
(28, 'Can view clubs', 7, 'view_clubs'),
(29, 'Can add department', 8, 'add_department'),
(30, 'Can change department', 8, 'change_department'),
(31, 'Can delete department', 8, 'delete_department'),
(32, 'Can view department', 8, 'view_department'),
(33, 'Can add general_ database', 9, 'add_general_database'),
(34, 'Can change general_ database', 9, 'change_general_database'),
(35, 'Can delete general_ database', 9, 'delete_general_database'),
(36, 'Can view general_ database', 9, 'view_general_database'),
(37, 'Can add applications', 10, 'add_applications'),
(38, 'Can change applications', 10, 'change_applications'),
(39, 'Can delete applications', 10, 'delete_applications'),
(40, 'Can view applications', 10, 'view_applications');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$u98Q1A9YYlrjANv50IELZu$RVDMlJiyy+2gvl1gJEeU5W5/2tWE8WSWfBUy2M1cJLc=', '2024-02-10 13:12:35.495694', 1, 'admin', '', '', '', 1, 1, '2024-02-08 09:20:59.726270');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-02-08 09:22:03.410898', '1', 'Cultural Club', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-02-08 09:22:17.265659', '2', 'Computer Club', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-02-08 09:22:22.832060', '3', 'Robotics Club', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-02-08 09:22:55.650544', '1', 'CSE', 1, '[{\"added\": {}}]', 8, 1),
(5, '2024-02-08 09:22:58.007739', '2', 'EEE', 1, '[{\"added\": {}}]', 8, 1),
(6, '2024-02-08 09:23:01.616545', '3', 'BBA', 1, '[{\"added\": {}}]', 8, 1),
(7, '2024-02-08 09:23:06.113125', '4', 'LLB', 1, '[{\"added\": {}}]', 8, 1),
(8, '2024-02-08 09:23:27.237592', '5', 'Phermacy', 1, '[{\"added\": {}}]', 8, 1),
(9, '2024-02-08 09:23:42.268752', '1', 'Md. Al - Imran Sarker', 1, '[{\"added\": {}}]', 9, 1),
(10, '2024-02-08 09:23:50.433163', '2', 'SM Asifur Rahman', 1, '[{\"added\": {}}]', 9, 1),
(11, '2024-02-08 09:24:00.005844', '3', 'Rashik Chowdhury', 1, '[{\"added\": {}}]', 9, 1),
(12, '2024-02-08 09:24:09.759969', '4', 'Akash', 1, '[{\"added\": {}}]', 9, 1),
(13, '2024-02-09 09:26:47.297118', '1', 'Computer Club', 2, '[{\"changed\": {\"fields\": [\"Accept membership\"]}}]', 10, 1),
(14, '2024-02-09 09:26:50.943245', '2', 'Computer Club', 2, '[{\"changed\": {\"fields\": [\"Accept membership\"]}}]', 10, 1),
(15, '2024-02-09 09:28:24.976777', '2', 'Computer Club', 2, '[{\"changed\": {\"fields\": [\"Accept membership\"]}}]', 10, 1),
(16, '2024-02-09 09:35:58.207801', '2', 'Computer Club', 2, '[{\"changed\": {\"fields\": [\"Accept membership\"]}}]', 10, 1),
(17, '2024-02-09 09:40:05.676044', '2', 'Computer Club', 2, '[{\"changed\": {\"fields\": [\"Accept membership\"]}}]', 10, 1),
(18, '2024-02-09 09:40:10.665966', '1', 'Computer Club', 2, '[{\"changed\": {\"fields\": [\"Accept membership\"]}}]', 10, 1),
(19, '2024-02-09 09:42:26.367525', '2', 'Computer Club', 2, '[{\"changed\": {\"fields\": [\"Accept membership\"]}}]', 10, 1),
(20, '2024-02-09 09:42:29.601429', '1', 'Computer Club', 2, '[{\"changed\": {\"fields\": [\"Accept membership\"]}}]', 10, 1),
(21, '2024-02-09 09:42:32.341174', '3', 'Cultural Club', 2, '[{\"changed\": {\"fields\": [\"Accept membership\"]}}]', 10, 1),
(22, '2024-02-09 09:55:21.618559', '4', 'Computer Club', 1, '[{\"added\": {}}]', 10, 1),
(23, '2024-02-09 09:55:26.089753', '4', 'Computer Club', 2, '[]', 10, 1),
(24, '2024-02-09 09:55:28.614452', '1', 'Computer Club', 2, '[{\"changed\": {\"fields\": [\"Accept membership\"]}}]', 10, 1),
(25, '2024-02-09 09:56:25.111774', '4', 'Computer Club', 2, '[{\"changed\": {\"fields\": [\"Accept membership\"]}}]', 10, 1),
(26, '2024-02-10 03:29:20.717164', '4', 'Akash', 2, '[{\"changed\": {\"fields\": [\"Club\"]}}]', 9, 1),
(27, '2024-02-10 03:32:41.907702', '3', 'Rashik Chowdhury', 2, '[{\"changed\": {\"fields\": [\"Club\"]}}]', 9, 1),
(28, '2024-02-10 03:32:54.452461', '1', 'Md. Al - Imran Sarker', 2, '[{\"changed\": {\"fields\": [\"Club\"]}}]', 9, 1),
(29, '2024-02-10 04:10:52.159813', '1', 'Md. Al - Imran Sarker', 2, '[{\"changed\": {\"fields\": [\"Club\"]}}]', 9, 1),
(30, '2024-02-10 04:12:10.588141', '4', 'Akash', 2, '[{\"changed\": {\"fields\": [\"Club\"]}}]', 9, 1),
(31, '2024-02-10 04:12:19.545696', '4', 'Akash', 2, '[{\"changed\": {\"fields\": [\"Club\"]}}]', 9, 1),
(32, '2024-02-10 04:14:31.398305', '3', 'Rashik Chowdhury', 2, '[{\"changed\": {\"fields\": [\"Club\"]}}]', 9, 1),
(33, '2024-02-10 04:14:39.123082', '1', 'Md. Al - Imran Sarker', 2, '[{\"changed\": {\"fields\": [\"Club\"]}}]', 9, 1),
(34, '2024-02-10 04:17:13.936613', '1', 'Computer Club Batch 12 id:0622110105101010', 2, '[{\"changed\": {\"fields\": [\"Accept membership\"]}}]', 10, 1),
(35, '2024-02-10 04:33:05.550819', '4', 'Akash', 2, '[{\"changed\": {\"fields\": [\"Std id\"]}}]', 9, 1),
(36, '2024-02-10 04:33:11.161738', '3', 'Rashik Chowdhury', 2, '[{\"changed\": {\"fields\": [\"Std id\"]}}]', 9, 1),
(37, '2024-02-10 04:33:18.583712', '1', 'Md. Al - Imran Sarker', 2, '[{\"changed\": {\"fields\": [\"Std id\"]}}]', 9, 1),
(38, '2024-02-10 04:33:22.293067', '4', 'Akash', 2, '[]', 9, 1),
(39, '2024-02-10 04:33:26.041693', '3', 'Rashik Chowdhury', 2, '[]', 9, 1),
(40, '2024-02-10 04:33:31.206513', '5', 'Akash', 2, '[{\"changed\": {\"fields\": [\"Std id\"]}}]', 9, 1),
(41, '2024-02-10 04:33:35.899757', '2', 'SM Asifur Rahman', 2, '[{\"changed\": {\"fields\": [\"Std id\"]}}]', 9, 1),
(42, '2024-02-10 04:34:12.988428', '5', 'Mamun', 2, '[{\"changed\": {\"fields\": [\"Std name\", \"Std id\"]}}]', 9, 1),
(43, '2024-02-10 04:47:58.289887', '1', 'Md. Al - Imran Sarker', 2, '[{\"changed\": {\"fields\": [\"Std id\"]}}]', 9, 1),
(44, '2024-02-10 04:48:09.281389', '5', 'Mamun', 2, '[{\"changed\": {\"fields\": [\"Std id\"]}}]', 9, 1),
(45, '2024-02-10 04:48:16.306107', '4', 'Akash', 2, '[{\"changed\": {\"fields\": [\"Std id\"]}}]', 9, 1),
(46, '2024-02-10 04:48:20.613393', '3', 'Rashik Chowdhury', 2, '[{\"changed\": {\"fields\": [\"Std id\"]}}]', 9, 1),
(47, '2024-02-10 04:48:24.914102', '2', 'SM Asifur Rahman', 2, '[{\"changed\": {\"fields\": [\"Std id\"]}}]', 9, 1),
(48, '2024-02-10 04:49:10.902406', '3', 'Rashik Chowdhury', 2, '[{\"changed\": {\"fields\": [\"Std id\"]}}]', 9, 1),
(49, '2024-02-10 04:50:48.293302', '5', 'Mamun', 2, '[{\"changed\": {\"fields\": [\"Std id\"]}}]', 9, 1),
(50, '2024-02-10 04:50:52.700626', '4', 'Akash', 2, '[{\"changed\": {\"fields\": [\"Std id\"]}}]', 9, 1),
(51, '2024-02-10 04:50:57.494714', '2', 'SM Asifur Rahman', 2, '[{\"changed\": {\"fields\": [\"Std id\"]}}]', 9, 1),
(52, '2024-02-10 04:51:01.608009', '1', 'Md. Al - Imran Sarker', 2, '[{\"changed\": {\"fields\": [\"Std id\"]}}]', 9, 1),
(53, '2024-02-10 04:51:07.488329', '3', 'Rashik Chowdhury', 2, '[{\"changed\": {\"fields\": [\"Std id\"]}}]', 9, 1),
(54, '2024-02-10 12:57:33.975544', '12', 'Computer Club Batch 12 id:10', 3, '', 10, 1),
(55, '2024-02-10 12:57:34.004467', '11', 'Computer Club Batch 12 id:7', 3, '', 10, 1),
(56, '2024-02-10 12:57:34.020609', '10', 'Computer Club Batch 12 id:3', 3, '', 10, 1),
(57, '2024-02-10 12:57:34.046356', '9', 'Computer Club Batch 12 id:0622110105101004', 3, '', 10, 1),
(58, '2024-02-10 12:57:34.070476', '8', 'Computer Club Batch 12 id:0622110105101004', 3, '', 10, 1),
(59, '2024-02-10 12:57:34.096223', '7', 'Computer Club Batch 12 id:0622110105101004', 3, '', 10, 1),
(60, '2024-02-10 12:57:34.113178', '6', 'Computer Club Batch 12 id:0622110105101004', 3, '', 10, 1),
(61, '2024-02-10 12:57:34.138110', '5', 'Computer Club Batch 12 id:0622110105101004', 3, '', 10, 1),
(62, '2024-02-10 12:57:34.204116', '4', 'Computer Club Batch 12 id:0622110105101009', 3, '', 10, 1),
(63, '2024-02-10 12:57:34.221885', '1', 'Computer Club Batch 12 id:0622110105101010', 3, '', 10, 1),
(64, '2024-02-10 12:57:34.237848', '3', 'Cultural Club Batch 16 id:0622123456101009', 3, '', 10, 1),
(65, '2024-02-10 13:12:55.316545', '13', 'Computer Club Batch 12 id:7', 3, '', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'general', 'applications'),
(7, 'general', 'clubs'),
(8, 'general', 'department'),
(9, 'general', 'general_database'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-02-08 09:20:00.177096'),
(2, 'auth', '0001_initial', '2024-02-08 09:20:05.078913'),
(3, 'admin', '0001_initial', '2024-02-08 09:20:06.438616'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-02-08 09:20:06.492322'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-08 09:20:06.711571'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-02-08 09:20:07.536939'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-02-08 09:20:08.166801'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-02-08 09:20:08.290594'),
(9, 'auth', '0004_alter_user_username_opts', '2024-02-08 09:20:08.319747'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-02-08 09:20:08.719644'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-02-08 09:20:08.742988'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-02-08 09:20:08.783887'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-02-08 09:20:08.962966'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-02-08 09:20:09.086249'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-02-08 09:20:09.220147'),
(16, 'auth', '0011_update_proxy_permissions', '2024-02-08 09:20:09.284654'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-02-08 09:20:09.362167'),
(18, 'general', '0001_initial', '2024-02-08 09:20:13.237710'),
(19, 'sessions', '0001_initial', '2024-02-08 09:20:13.604030'),
(20, 'general', '0002_alter_applications_options_and_more', '2024-02-09 13:28:37.951986'),
(21, 'general', '0003_alter_general_database_std_id', '2024-02-10 04:50:34.364873');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hdm50xtib7op0vk3kv4ea7v3sffvtwdw', '.eJxVjEEOwiAQRe_C2hCEwlCX7nsGMjOAVA0kpV0Z765NutDtf-_9lwi4rSVsPS1hjuIizuL0uxHyI9UdxDvWW5Pc6rrMJHdFHrTLqcX0vB7u30HBXr61RmeMUQzECTyOVsVsPTitkFxUmtKgc2aXwVkgUINCNhlHbzIP4Em8P-CYOAQ:1rYn9n:6f59i7IfzYDnu2Bt2EO4C5i2EgskgNYmwHZbHDeB-lI', '2024-02-24 13:12:35.536588');

-- --------------------------------------------------------

--
-- Table structure for table `general_applications`
--

CREATE TABLE `general_applications` (
  `id` bigint(20) NOT NULL,
  `std_name` varchar(50) NOT NULL,
  `std_batch` int(11) NOT NULL,
  `std_id` varchar(50) NOT NULL,
  `std_email` varchar(254) NOT NULL,
  `accept_membership` tinyint(1) NOT NULL,
  `club_id` bigint(20) NOT NULL,
  `std_dept_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_applications`
--

INSERT INTO `general_applications` (`id`, `std_name`, `std_batch`, `std_id`, `std_email`, `accept_membership`, `club_id`, `std_dept_id`) VALUES
(14, 'Md. Al - Imran Sarker', 12, '10', 'turzo@gmail.com', 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `general_clubs`
--

CREATE TABLE `general_clubs` (
  `id` bigint(20) NOT NULL,
  `club_name` varchar(50) NOT NULL,
  `club_desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_clubs`
--

INSERT INTO `general_clubs` (`id`, `club_name`, `club_desc`) VALUES
(1, 'Cultural Club', 'This is club description.'),
(2, 'Computer Club', 'This is club description.'),
(3, 'Robotics Club', 'This is club description.');

-- --------------------------------------------------------

--
-- Table structure for table `general_department`
--

CREATE TABLE `general_department` (
  `id` bigint(20) NOT NULL,
  `dept_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_department`
--

INSERT INTO `general_department` (`id`, `dept_name`) VALUES
(1, 'CSE'),
(2, 'EEE'),
(3, 'BBA'),
(4, 'LLB'),
(5, 'Phermacy');

-- --------------------------------------------------------

--
-- Table structure for table `general_general_database`
--

CREATE TABLE `general_general_database` (
  `id` bigint(20) NOT NULL,
  `std_batch` int(11) NOT NULL,
  `std_name` varchar(50) NOT NULL,
  `std_id` bigint(20) NOT NULL,
  `std_dept_id` bigint(20) NOT NULL,
  `std_email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_general_database`
--

INSERT INTO `general_general_database` (`id`, `std_batch`, `std_name`, `std_id`, `std_dept_id`, `std_email`) VALUES
(1, 12, 'Md. Al - Imran Sarker', 10, 1, ''),
(2, 12, 'SM Asifur Rahman', 9, 1, ''),
(3, 12, 'Rashik Chowdhury', 7, 1, ''),
(4, 12, 'Akash', 6, 1, ''),
(5, 12, 'Mamun', 4, 1, ''),
(6, 12, 'Md. Farhad Reza', 3, 1, 'farhad@gmail.com'),
(7, 12, 'Tanjin Jani Turzo', 1, 1, 'turzo@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `general_general_database_club`
--

CREATE TABLE `general_general_database_club` (
  `id` bigint(20) NOT NULL,
  `general_database_id` bigint(20) NOT NULL,
  `clubs_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `general_applications`
--
ALTER TABLE `general_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `general_applications_club_id_afdd7e82_fk_general_clubs_id` (`club_id`),
  ADD KEY `general_applications_std_dept_id_cc8947ac_fk_general_d` (`std_dept_id`);

--
-- Indexes for table `general_clubs`
--
ALTER TABLE `general_clubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_department`
--
ALTER TABLE `general_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_general_database`
--
ALTER TABLE `general_general_database`
  ADD PRIMARY KEY (`id`),
  ADD KEY `general_general_data_std_dept_id_02ff9b9f_fk_general_d` (`std_dept_id`);

--
-- Indexes for table `general_general_database_club`
--
ALTER TABLE `general_general_database_club`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `general_general_database_general_database_id_club_6f16dc90_uniq` (`general_database_id`,`clubs_id`),
  ADD KEY `general_general_data_clubs_id_94d5b718_fk_general_c` (`clubs_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `general_applications`
--
ALTER TABLE `general_applications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `general_clubs`
--
ALTER TABLE `general_clubs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_department`
--
ALTER TABLE `general_department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `general_general_database`
--
ALTER TABLE `general_general_database`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `general_general_database_club`
--
ALTER TABLE `general_general_database_club`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `general_applications`
--
ALTER TABLE `general_applications`
  ADD CONSTRAINT `general_applications_club_id_afdd7e82_fk_general_clubs_id` FOREIGN KEY (`club_id`) REFERENCES `general_clubs` (`id`),
  ADD CONSTRAINT `general_applications_std_dept_id_cc8947ac_fk_general_d` FOREIGN KEY (`std_dept_id`) REFERENCES `general_department` (`id`);

--
-- Constraints for table `general_general_database`
--
ALTER TABLE `general_general_database`
  ADD CONSTRAINT `general_general_data_std_dept_id_02ff9b9f_fk_general_d` FOREIGN KEY (`std_dept_id`) REFERENCES `general_department` (`id`);

--
-- Constraints for table `general_general_database_club`
--
ALTER TABLE `general_general_database_club`
  ADD CONSTRAINT `general_general_data_clubs_id_94d5b718_fk_general_c` FOREIGN KEY (`clubs_id`) REFERENCES `general_clubs` (`id`),
  ADD CONSTRAINT `general_general_data_general_database_id_3421f186_fk_general_g` FOREIGN KEY (`general_database_id`) REFERENCES `general_general_database` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
