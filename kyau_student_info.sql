-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2024 at 09:25 AM
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
(25, 'Can add general_ database', 7, 'add_general_database'),
(26, 'Can change general_ database', 7, 'change_general_database'),
(27, 'Can delete general_ database', 7, 'delete_general_database'),
(28, 'Can view general_ database', 7, 'view_general_database'),
(29, 'Can add clubs', 8, 'add_clubs'),
(30, 'Can change clubs', 8, 'change_clubs'),
(31, 'Can delete clubs', 8, 'delete_clubs'),
(32, 'Can view clubs', 8, 'view_clubs'),
(33, 'Can add department', 9, 'add_department'),
(34, 'Can change department', 9, 'change_department'),
(35, 'Can delete department', 9, 'delete_department'),
(36, 'Can view department', 9, 'view_department'),
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
(1, 'pbkdf2_sha256$600000$ltP7hcNLRLBMEDlKg3EIV5$hEtzjFUJSyELdqJN6f+/95afjwuJroAM/CUNjFTDjHQ=', '2024-02-08 04:20:38.151340', 1, 'admin', '', '', '', 1, 1, '2024-02-07 11:50:16.565989');

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
(1, '2024-02-07 11:51:14.966471', '1', 'Computer Club', 1, '[{\"added\": {}}]', 8, 1),
(2, '2024-02-07 11:51:17.668313', '2', 'Cultural Club', 1, '[{\"added\": {}}]', 8, 1),
(3, '2024-02-07 11:51:19.869389', '3', 'Robotics Club', 1, '[{\"added\": {}}]', 8, 1),
(4, '2024-02-07 11:54:33.067212', '2', 'Md. Al - Imran Sarker', 3, '', 7, 1),
(5, '2024-02-07 11:54:33.107102', '1', 'Md. Al - Imran Sarker', 3, '', 7, 1),
(6, '2024-02-07 12:22:37.464441', '4', 'SM Asifur Rahman', 1, '[{\"added\": {}}]', 7, 1),
(7, '2024-02-07 12:22:59.395086', '5', 'Rashik Chowdhury', 1, '[{\"added\": {}}]', 7, 1),
(8, '2024-02-07 12:23:22.913539', '6', 'Akash', 1, '[{\"added\": {}}]', 7, 1),
(9, '2024-02-07 13:17:04.105971', '1', 'Computer Club', 2, '[{\"changed\": {\"fields\": [\"Club desc\"]}}]', 8, 1),
(10, '2024-02-07 13:20:13.340637', '1', 'Computer Club', 2, '[{\"changed\": {\"fields\": [\"Club desc\"]}}]', 8, 1),
(11, '2024-02-07 13:20:33.663679', '2', 'Cultural Club', 2, '[{\"changed\": {\"fields\": [\"Club desc\"]}}]', 8, 1),
(12, '2024-02-07 13:20:42.604598', '3', 'Robotics Club', 2, '[{\"changed\": {\"fields\": [\"Club desc\"]}}]', 8, 1),
(13, '2024-02-07 14:18:44.692667', '1', 'Computer Club', 2, '[{\"changed\": {\"fields\": [\"Club desc\"]}}]', 8, 1),
(14, '2024-02-07 14:32:03.686154', '1', 'CSE', 1, '[{\"added\": {}}]', 9, 1),
(15, '2024-02-07 14:32:06.261384', '2', 'EEE', 1, '[{\"added\": {}}]', 9, 1),
(16, '2024-02-07 14:32:10.220730', '3', 'BBA', 1, '[{\"added\": {}}]', 9, 1),
(17, '2024-02-07 14:32:17.610506', '4', 'MIS', 1, '[{\"added\": {}}]', 9, 1),
(18, '2024-02-07 14:32:29.746499', '5', 'LLB', 1, '[{\"added\": {}}]', 9, 1),
(19, '2024-02-07 14:32:47.044174', '6', 'TE', 1, '[{\"added\": {}}]', 9, 1),
(20, '2024-02-07 14:32:51.374357', '7', 'LIS', 1, '[{\"added\": {}}]', 9, 1),
(21, '2024-02-07 14:33:27.353218', '8', 'English And Litereture', 1, '[{\"added\": {}}]', 9, 1);

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
(8, 'general', 'clubs'),
(9, 'general', 'department'),
(7, 'general', 'general_database'),
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
(1, 'contenttypes', '0001_initial', '2024-02-07 11:02:46.923607'),
(2, 'auth', '0001_initial', '2024-02-07 11:02:51.716386'),
(3, 'admin', '0001_initial', '2024-02-07 11:02:53.327388'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-02-07 11:02:53.353675'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-07 11:02:53.383574'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-02-07 11:02:53.807307'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-02-07 11:02:54.310044'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-02-07 11:02:54.438508'),
(9, 'auth', '0004_alter_user_username_opts', '2024-02-07 11:02:54.471654'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-02-07 11:02:54.865980'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-02-07 11:02:54.923715'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-02-07 11:02:54.988540'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-02-07 11:02:55.132067'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-02-07 11:02:55.851281'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-02-07 11:02:56.044704'),
(16, 'auth', '0011_update_proxy_permissions', '2024-02-07 11:02:56.071883'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-02-07 11:02:56.171497'),
(18, 'general', '0001_initial', '2024-02-07 11:02:56.339812'),
(19, 'general', '0002_alter_general_database_options_and_more', '2024-02-07 11:02:57.575263'),
(20, 'sessions', '0001_initial', '2024-02-07 11:02:57.837120'),
(21, 'general', '0003_clubs_remove_general_database_club1_and_more', '2024-02-07 11:28:28.109119'),
(22, 'general', '0004_clubs_club_desc', '2024-02-07 13:10:43.959825'),
(23, 'general', '0005_alter_clubs_club_desc_and_more', '2024-02-07 14:13:18.866207'),
(24, 'general', '0006_department_applications', '2024-02-07 14:31:38.276862');

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
('f5xu608ti98ebqsd0owo3bmuwuuothek', '.eJxVjDkOwjAUBe_iGll24pWSnjNY_ktwANlSnFSIu0OkFNC-mXkvkfK2lrR1XtJM4iy0OP1ukPHBdQd0z_XWJLa6LjPIXZEH7fLaiJ-Xw_07KLmXb81BG9DoAMkboMEEtDDm4IwNmMlxdOQHCBBoilZNkdkbHo11oLSKJN4f-v84Rg:1rXvtu:_-_kEqgtCECJhS77Ep5F6TlyB0tHBnPAH-s6ZrN2CrE', '2024-02-22 04:20:38.202512');

-- --------------------------------------------------------

--
-- Table structure for table `general_applications`
--

CREATE TABLE `general_applications` (
  `id` bigint(20) NOT NULL,
  `std_dept_id` bigint(20) NOT NULL,
  `std_name` varchar(50) NOT NULL,
  `std_batch` int(11) NOT NULL,
  `std_id` varchar(50) NOT NULL,
  `std_email` varchar(254) NOT NULL,
  `club_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_applications`
--

INSERT INTO `general_applications` (`id`, `std_dept_id`, `std_name`, `std_batch`, `std_id`, `std_email`, `club_id`) VALUES
(1, 1, 'Md. Al - Imran Sarker', 12, '0622110105101010', 'imranthelegend12@gmail.com', 1);

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
(1, 'Computer Club', 'This is the description of the computer club. This description is added by admin.\r\n\r\nWhy should you join KYAU Computer Club ( KYAUCC ) ?\r\nHere are the motive,\r\n1. Skill Development\r\n2. Project Experience\r\n3. Career Development\r\n4. Networking Opportunities\r\n5. Hackathons and Competitions\r\n6. Fun and Social Interaction\r\n7. Future Opportunities'),
(2, 'Cultural Club', 'This is the description of the Culturul club. This description is added by admin.'),
(3, 'Robotics Club', 'This is the description of the Robotics club. This description is added by admin.');

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
(4, 'MIS'),
(5, 'LLB'),
(6, 'TE'),
(7, 'LIS'),
(8, 'English And Litereture');

-- --------------------------------------------------------

--
-- Table structure for table `general_general_database`
--

CREATE TABLE `general_general_database` (
  `id` bigint(20) NOT NULL,
  `std_dept_id` bigint(20) NOT NULL,
  `std_batch` int(11) NOT NULL,
  `std_name` varchar(50) NOT NULL,
  `std_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_general_database`
--

INSERT INTO `general_general_database` (`id`, `std_dept_id`, `std_batch`, `std_name`, `std_id`) VALUES
(3, 0, 12, 'Md. Al - Imran Sarker', '0622110105101010'),
(4, 0, 12, 'SM Asifur Rahman', '0622110105101009'),
(5, 0, 12, 'Rashik Chowdhury', '0622110105101007'),
(6, 0, 12, 'Akash', '0622110105101006');

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
-- Dumping data for table `general_general_database_club`
--

INSERT INTO `general_general_database_club` (`id`, `general_database_id`, `clubs_id`) VALUES
(5, 3, 1),
(6, 3, 2),
(7, 4, 2),
(8, 5, 3),
(9, 6, 1);

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
  ADD KEY `general_applications_std_dept_id_cc8947ac` (`std_dept_id`);

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
  ADD KEY `general_general_database_std_dept_id_02ff9b9f` (`std_dept_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `general_applications`
--
ALTER TABLE `general_applications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_clubs`
--
ALTER TABLE `general_clubs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_department`
--
ALTER TABLE `general_department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `general_general_database`
--
ALTER TABLE `general_general_database`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `general_general_database_club`
--
ALTER TABLE `general_general_database_club`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- Constraints for table `general_general_database_club`
--
ALTER TABLE `general_general_database_club`
  ADD CONSTRAINT `general_general_data_clubs_id_94d5b718_fk_general_c` FOREIGN KEY (`clubs_id`) REFERENCES `general_clubs` (`id`),
  ADD CONSTRAINT `general_general_data_general_database_id_3421f186_fk_general_g` FOREIGN KEY (`general_database_id`) REFERENCES `general_general_database` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
