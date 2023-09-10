-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2023 at 12:38 PM
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
-- Database: `casewise`
--
CREATE DATABASE IF NOT EXISTS `casewise` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `casewise`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(25, 'Can add case', 7, 'add_case'),
(26, 'Can change case', 7, 'change_case'),
(27, 'Can delete case', 7, 'delete_case'),
(28, 'Can view case', 7, 'view_case');

-- --------------------------------------------------------

--
-- Table structure for table `caselist_case`
--

CREATE TABLE `caselist_case` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `crime_type` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `caselist_case`
--

INSERT INTO `caselist_case` (`id`, `name`, `description`, `crime_type`, `user_id`) VALUES
(1, 'Ishaan ka GPL', 'ishaan is preganent', 'Child Molestation', 1);

-- --------------------------------------------------------

--
-- Table structure for table `caselist_user`
--

CREATE TABLE `caselist_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `caselist_user`
--

INSERT INTO `caselist_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `name`) VALUES
(1, 'pbkdf2_sha256$390000$U2Cs2FpN39SoWoH4zgu69v$rPVwDBX0Dnxhc4HlKOTK5OpdUVL6nljUYT2m/Np7aCA=', '2023-09-10 10:36:03.348525', 0, 'chanm', '', '', 'chanmeetsinghsahni@gmail.com', 0, 1, '2023-09-10 10:35:55.948232', 'Chanmeet Singh Sahni');

-- --------------------------------------------------------

--
-- Table structure for table `caselist_user_groups`
--

CREATE TABLE `caselist_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `caselist_user_user_permissions`
--

CREATE TABLE `caselist_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(7, 'caselist', 'case'),
(6, 'caselist', 'user'),
(4, 'contenttypes', 'contenttype'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-09-10 10:35:33.589521'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-09-10 10:35:33.681337'),
(3, 'auth', '0001_initial', '2023-09-10 10:35:34.040415'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-09-10 10:35:34.127843'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-09-10 10:35:34.178526'),
(6, 'auth', '0004_alter_user_username_opts', '2023-09-10 10:35:34.187380'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-09-10 10:35:34.196470'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-09-10 10:35:34.203419'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-09-10 10:35:34.213884'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-09-10 10:35:34.224541'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-09-10 10:35:34.234705'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-09-10 10:35:34.265305'),
(13, 'auth', '0011_update_proxy_permissions', '2023-09-10 10:35:34.283387'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-09-10 10:35:34.294426'),
(15, 'caselist', '0001_initial', '2023-09-10 10:35:34.903192'),
(16, 'admin', '0001_initial', '2023-09-10 10:35:35.100884'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-09-10 10:35:35.109463'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-10 10:35:35.120935'),
(19, 'caselist', '0002_alter_user_managers', '2023-09-10 10:35:35.130965'),
(20, 'sessions', '0001_initial', '2023-09-10 10:35:35.230091');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('f9r5c9gwpgq47jht0beopmcoyymqoqxp', '.eJxVjEEOwiAQRe_C2pABBxCX7nsGAswgVUOT0q6Md7dNutDte-__twhxXWpYO89hJHEVSpx-WYr5yW0X9IjtPsk8tWUek9wTedguh4n4dTvav4Mae93WrDBhVFahtkU7xoKoDWSDG_fALllyGSJoUzx4z_bCiVg7UnQGdOLzBcWeNzw:1qfHnP:wwx6XhiN37njI0ZlEm0D2hI_LfI5fbtGqHx54UOBBsM', '2023-09-24 10:36:03.354353');

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
-- Indexes for table `caselist_case`
--
ALTER TABLE `caselist_case`
  ADD PRIMARY KEY (`id`),
  ADD KEY `caselist_case_user_id_b1b1e6db_fk_caselist_user_id` (`user_id`);

--
-- Indexes for table `caselist_user`
--
ALTER TABLE `caselist_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `caselist_user_groups`
--
ALTER TABLE `caselist_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `caselist_user_groups_user_id_group_id_dbeaad01_uniq` (`user_id`,`group_id`),
  ADD KEY `caselist_user_groups_group_id_b7d1169f_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `caselist_user_user_permissions`
--
ALTER TABLE `caselist_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `caselist_user_user_permi_user_id_permission_id_0ed025c7_uniq` (`user_id`,`permission_id`),
  ADD KEY `caselist_user_user_p_permission_id_ad4be498_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_caselist_user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `caselist_case`
--
ALTER TABLE `caselist_case`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `caselist_user`
--
ALTER TABLE `caselist_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `caselist_user_groups`
--
ALTER TABLE `caselist_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `caselist_user_user_permissions`
--
ALTER TABLE `caselist_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- Constraints for table `caselist_case`
--
ALTER TABLE `caselist_case`
  ADD CONSTRAINT `caselist_case_user_id_b1b1e6db_fk_caselist_user_id` FOREIGN KEY (`user_id`) REFERENCES `caselist_user` (`id`);

--
-- Constraints for table `caselist_user_groups`
--
ALTER TABLE `caselist_user_groups`
  ADD CONSTRAINT `caselist_user_groups_group_id_b7d1169f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `caselist_user_groups_user_id_fce05d86_fk_caselist_user_id` FOREIGN KEY (`user_id`) REFERENCES `caselist_user` (`id`);

--
-- Constraints for table `caselist_user_user_permissions`
--
ALTER TABLE `caselist_user_user_permissions`
  ADD CONSTRAINT `caselist_user_user_p_permission_id_ad4be498_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `caselist_user_user_p_user_id_354aab31_fk_caselist_` FOREIGN KEY (`user_id`) REFERENCES `caselist_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_caselist_user_id` FOREIGN KEY (`user_id`) REFERENCES `caselist_user` (`id`);
--
-- Database: `counsellingmaims`
--
CREATE DATABASE IF NOT EXISTS `counsellingmaims` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `counsellingmaims`;

-- --------------------------------------------------------

--
-- Table structure for table `allowed_ip_addresses`
--

CREATE TABLE `allowed_ip_addresses` (
  `id` bigint(20) NOT NULL,
  `ip_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allowed_ip_addresses`
--

INSERT INTO `allowed_ip_addresses` (`id`, `ip_address`) VALUES
(1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(25, 'Can add login', 7, 'add_login'),
(26, 'Can change login', 7, 'change_login'),
(27, 'Can delete login', 7, 'delete_login'),
(28, 'Can view login', 7, 'view_login'),
(29, 'Can add courses login', 8, 'add_courseslogin'),
(30, 'Can change courses login', 8, 'change_courseslogin'),
(31, 'Can delete courses login', 8, 'delete_courseslogin'),
(32, 'Can view courses login', 8, 'view_courseslogin'),
(33, 'Can add allowed ip', 9, 'add_allowedip'),
(34, 'Can change allowed ip', 9, 'change_allowedip'),
(35, 'Can delete allowed ip', 9, 'delete_allowedip'),
(36, 'Can view allowed ip', 9, 'view_allowedip'),
(37, 'Can add bank details', 10, 'add_bankdetails'),
(38, 'Can change bank details', 10, 'change_bankdetails'),
(39, 'Can delete bank details', 10, 'delete_bankdetails'),
(40, 'Can view bank details', 10, 'view_bankdetails'),
(41, 'Can add bba temp', 11, 'add_bbatemp'),
(42, 'Can change bba temp', 11, 'change_bbatemp'),
(43, 'Can delete bba temp', 11, 'delete_bbatemp'),
(44, 'Can view bba temp', 11, 'view_bbatemp'),
(45, 'Can add bba', 12, 'add_bba'),
(46, 'Can change bba', 12, 'change_bba'),
(47, 'Can delete bba', 12, 'delete_bba'),
(48, 'Can view bba', 12, 'view_bba'),
(49, 'Can add bcom temp', 13, 'add_bcomtemp'),
(50, 'Can change bcom temp', 13, 'change_bcomtemp'),
(51, 'Can delete bcom temp', 13, 'delete_bcomtemp'),
(52, 'Can view bcom temp', 13, 'view_bcomtemp'),
(53, 'Can add bcom', 14, 'add_bcom'),
(54, 'Can change bcom', 14, 'change_bcom'),
(55, 'Can delete bcom', 14, 'delete_bcom'),
(56, 'Can view bcom', 14, 'view_bcom'),
(57, 'Can add bjmc temp', 15, 'add_bjmctemp'),
(58, 'Can change bjmc temp', 15, 'change_bjmctemp'),
(59, 'Can delete bjmc temp', 15, 'delete_bjmctemp'),
(60, 'Can view bjmc temp', 15, 'view_bjmctemp'),
(61, 'Can add bjmc', 16, 'add_bjmc'),
(62, 'Can change bjmc', 16, 'change_bjmc'),
(63, 'Can delete bjmc', 16, 'delete_bjmc'),
(64, 'Can view bjmc', 16, 'view_bjmc'),
(65, 'Can add ballb temp', 17, 'add_ballbtemp'),
(66, 'Can change ballb temp', 17, 'change_ballbtemp'),
(67, 'Can delete ballb temp', 17, 'delete_ballbtemp'),
(68, 'Can view ballb temp', 17, 'view_ballbtemp'),
(69, 'Can add ballb', 18, 'add_ballb'),
(70, 'Can change ballb', 18, 'change_ballb'),
(71, 'Can delete ballb', 18, 'delete_ballb'),
(72, 'Can view ballb', 18, 'view_ballb'),
(73, 'Can add bballb temp', 19, 'add_bballbtemp'),
(74, 'Can change bballb temp', 19, 'change_bballbtemp'),
(75, 'Can delete bballb temp', 19, 'delete_bballbtemp'),
(76, 'Can view bballb temp', 19, 'view_bballbtemp'),
(77, 'Can add bballb', 20, 'add_bballb'),
(78, 'Can change bballb', 20, 'change_bballb'),
(79, 'Can delete bballb', 20, 'delete_bballb'),
(80, 'Can view bballb', 20, 'view_bballb'),
(81, 'Can add eco temp', 21, 'add_ecotemp'),
(82, 'Can change eco temp', 21, 'change_ecotemp'),
(83, 'Can delete eco temp', 21, 'delete_ecotemp'),
(84, 'Can view eco temp', 21, 'view_ecotemp'),
(85, 'Can add eco', 22, 'add_eco'),
(86, 'Can change eco', 22, 'change_eco'),
(87, 'Can delete eco', 22, 'delete_eco'),
(88, 'Can view eco', 22, 'view_eco'),
(89, 'Can add llm temp', 23, 'add_llmtemp'),
(90, 'Can change llm temp', 23, 'change_llmtemp'),
(91, 'Can delete llm temp', 23, 'delete_llmtemp'),
(92, 'Can view llm temp', 23, 'view_llmtemp'),
(93, 'Can add llm', 24, 'add_llm'),
(94, 'Can change llm', 24, 'change_llm'),
(95, 'Can delete llm', 24, 'delete_llm'),
(96, 'Can view llm', 24, 'view_llm');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$48IiGGBy67PgnpdUUFRaz3$kfJn7HwS4YyatW5wVMhfCVTpbEH2B6jlLrBCE0+TzmM=', '2023-09-04 07:33:19.245688', 1, 'chanm', '', '', '', 1, 1, '2023-09-04 07:32:58.394885');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ballb`
--

CREATE TABLE `ballb` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `allow_for_counselling` tinyint(1) NOT NULL,
  `allow_editing` tinyint(1) NOT NULL,
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) NOT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`fourth_subject_12th` >= 0),
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) NOT NULL,
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(255) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ballb_temp`
--

CREATE TABLE `ballb_temp` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) DEFAULT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`fourth_subject_12th` >= 0),
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) DEFAULT NULL,
  `maths_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(100) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` bigint(20) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `course` varchar(25) NOT NULL,
  `account_holder_name` varchar(75) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `ifsc_code` varchar(50) NOT NULL,
  `cheque_copy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bba`
--

CREATE TABLE `bba` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `allow_for_counselling` tinyint(1) NOT NULL,
  `allow_editing` tinyint(1) NOT NULL,
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) NOT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`fourth_subject_12th` >= 0),
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) NOT NULL,
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(255) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bballb`
--

CREATE TABLE `bballb` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `allow_for_counselling` tinyint(1) NOT NULL,
  `allow_editing` tinyint(1) NOT NULL,
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) NOT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`fourth_subject_12th` >= 0),
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) NOT NULL,
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(255) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bballb_temp`
--

CREATE TABLE `bballb_temp` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) DEFAULT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`fourth_subject_12th` >= 0),
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) DEFAULT NULL,
  `maths_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(100) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bba_temp`
--

CREATE TABLE `bba_temp` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) DEFAULT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`fourth_subject_12th` >= 0),
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) DEFAULT NULL,
  `maths_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(100) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bcom`
--

CREATE TABLE `bcom` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `allow_for_counselling` tinyint(1) NOT NULL,
  `allow_editing` tinyint(1) NOT NULL,
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) NOT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`fourth_subject_12th` >= 0),
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) NOT NULL,
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(255) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bcom_temp`
--

CREATE TABLE `bcom_temp` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) DEFAULT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`fourth_subject_12th` >= 0),
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) DEFAULT NULL,
  `maths_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(100) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bjmc`
--

CREATE TABLE `bjmc` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `allow_for_counselling` tinyint(1) NOT NULL,
  `allow_editing` tinyint(1) NOT NULL,
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) NOT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`fourth_subject_12th` >= 0),
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) NOT NULL,
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(255) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bjmc_temp`
--

CREATE TABLE `bjmc_temp` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) DEFAULT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`fourth_subject_12th` >= 0),
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) DEFAULT NULL,
  `maths_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(100) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_login`
--

CREATE TABLE `course_login` (
  `id` bigint(20) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `course` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-09-04 07:35:02.531977', '1', '127.0.0.1', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'form', 'allowedip'),
(18, 'form', 'ballb'),
(17, 'form', 'ballbtemp'),
(10, 'form', 'bankdetails'),
(12, 'form', 'bba'),
(20, 'form', 'bballb'),
(19, 'form', 'bballbtemp'),
(11, 'form', 'bbatemp'),
(14, 'form', 'bcom'),
(13, 'form', 'bcomtemp'),
(16, 'form', 'bjmc'),
(15, 'form', 'bjmctemp'),
(8, 'form', 'courseslogin'),
(22, 'form', 'eco'),
(21, 'form', 'ecotemp'),
(24, 'form', 'llm'),
(23, 'form', 'llmtemp'),
(7, 'form', 'login'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-29 09:15:58.055895'),
(2, 'auth', '0001_initial', '2023-08-29 09:15:59.649580'),
(3, 'admin', '0001_initial', '2023-08-29 09:16:00.155302'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-08-29 09:16:00.171055'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-29 09:16:00.184019'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-08-29 09:16:00.682006'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-08-29 09:16:00.931133'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-08-29 09:16:00.946861'),
(9, 'auth', '0004_alter_user_username_opts', '2023-08-29 09:16:00.974694'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-08-29 09:16:01.069845'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-08-29 09:16:01.075849'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-08-29 09:16:01.085004'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-08-29 09:16:01.105065'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-08-29 09:16:01.129320'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-08-29 09:16:01.159950'),
(16, 'auth', '0011_update_proxy_permissions', '2023-08-29 09:16:01.169984'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-08-29 09:16:01.189942'),
(18, 'form', '0001_initial', '2023-08-29 09:16:02.172824'),
(19, 'sessions', '0001_initial', '2023-08-29 09:16:02.311614');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('x6bjhebex9bgcjn7i87oqk5au9n00v3m', '.eJxVj7FygzAMht-FOYVYCjbu1mwZGHp5AJ9sK-CWw5wxUy_vHpxmaDXq-_Tfr5_K0JZHs62cTPDVeyWqw9-dJffNcwH-i-Yh1i7OOQVbF6V-0bXuo-fp_HL_BYy0jvs1CsVOS99abJVEJo0dYQviJmWLsNOT7vAmO-jYCSmcA6c8eLJWsdalVVg2k3gIa06UQ5xLWRSAx-cUg5ZlCu4Jf5_pPy79tek_GzgCvsGpEUIqlKB3eYrDwN6EPSenje8P7PtTtw:1qd48w:890pJZFOlWevOZ48GLUsvJuROXbsOrTGMcjw9EmkYXw', '2023-09-18 07:37:06.876997');

-- --------------------------------------------------------

--
-- Table structure for table `eco`
--

CREATE TABLE `eco` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `allow_for_counselling` tinyint(1) NOT NULL,
  `allow_editing` tinyint(1) NOT NULL,
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) NOT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`fourth_subject_12th` >= 0),
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) NOT NULL,
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(255) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eco_temp`
--

CREATE TABLE `eco_temp` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) DEFAULT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`fourth_subject_12th` >= 0),
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) DEFAULT NULL,
  `maths_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(100) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llm`
--

CREATE TABLE `llm` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `allow_for_counselling` tinyint(1) NOT NULL,
  `allow_editing` tinyint(1) NOT NULL,
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) NOT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`fourth_subject_12th` >= 0),
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) NOT NULL,
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `ug_type` varchar(10) NOT NULL,
  `board_ug` varchar(75) NOT NULL,
  `year_of_ug` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_ug` >= 0),
  `rollno_ug` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_ug` >= 0),
  `school_ug` varchar(125) NOT NULL,
  `aggregate_ug` varchar(125) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(20) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `ug_degree` varchar(100) NOT NULL,
  `graduation_result` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `llm_temp`
--

CREATE TABLE `llm_temp` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) DEFAULT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`fourth_subject_12th` >= 0),
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) DEFAULT NULL,
  `maths_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `ug_type` varchar(10) NOT NULL,
  `board_ug` varchar(75) NOT NULL,
  `year_of_ug` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_ug` >= 0),
  `rollno_ug` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_ug` >= 0),
  `school_ug` varchar(125) NOT NULL,
  `aggregate_ug` varchar(125) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(20) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `ug_degree` varchar(100) NOT NULL,
  `graduation_result` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `password` varchar(25) NOT NULL,
  `candidate_name` varchar(100) NOT NULL,
  `candidate_email` varchar(100) NOT NULL,
  `candidate_mobile` bigint(20) UNSIGNED NOT NULL CHECK (`candidate_mobile` >= 0),
  `ip_address` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `application_id`, `ipu_registration`, `password`, `candidate_name`, `candidate_email`, `candidate_mobile`, `ip_address`, `created_at`) VALUES
(1, 'MAIMS/MQ/2023-24/11673629', 131230000001, 'NoW2Ua4ckbHQ', 'CHANMEET S', 'chanmeetsinghsahni@gmail.com', 8800675489, '127.0.0.1', '2023-09-04 07:35:25.993968');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allowed_ip_addresses`
--
ALTER TABLE `allowed_ip_addresses`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `ballb`
--
ALTER TABLE `ballb`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `ballb_temp`
--
ALTER TABLE `ballb_temp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `bba`
--
ALTER TABLE `bba`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `bballb`
--
ALTER TABLE `bballb`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `bballb_temp`
--
ALTER TABLE `bballb_temp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `bba_temp`
--
ALTER TABLE `bba_temp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `bcom`
--
ALTER TABLE `bcom`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `bcom_temp`
--
ALTER TABLE `bcom_temp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `bjmc`
--
ALTER TABLE `bjmc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `bjmc_temp`
--
ALTER TABLE `bjmc_temp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `course_login`
--
ALTER TABLE `course_login`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `eco`
--
ALTER TABLE `eco`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `eco_temp`
--
ALTER TABLE `eco_temp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `llm`
--
ALTER TABLE `llm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `llm_temp`
--
ALTER TABLE `llm_temp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allowed_ip_addresses`
--
ALTER TABLE `allowed_ip_addresses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

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
-- AUTO_INCREMENT for table `ballb`
--
ALTER TABLE `ballb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ballb_temp`
--
ALTER TABLE `ballb_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bba`
--
ALTER TABLE `bba`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bballb`
--
ALTER TABLE `bballb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bballb_temp`
--
ALTER TABLE `bballb_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bba_temp`
--
ALTER TABLE `bba_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bcom`
--
ALTER TABLE `bcom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bcom_temp`
--
ALTER TABLE `bcom_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bjmc`
--
ALTER TABLE `bjmc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bjmc_temp`
--
ALTER TABLE `bjmc_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_login`
--
ALTER TABLE `course_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `eco`
--
ALTER TABLE `eco`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eco_temp`
--
ALTER TABLE `eco_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llm`
--
ALTER TABLE `llm`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `llm_temp`
--
ALTER TABLE `llm_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Database: `counsellingmait`
--
CREATE DATABASE IF NOT EXISTS `counsellingmait` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `counsellingmait`;

-- --------------------------------------------------------

--
-- Table structure for table `allowed_ip_addresses`
--

CREATE TABLE `allowed_ip_addresses` (
  `id` bigint(20) NOT NULL,
  `ip_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allowed_ip_addresses`
--

INSERT INTO `allowed_ip_addresses` (`id`, `ip_address`) VALUES
(2, '0.0.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add login', 1, 'add_login'),
(2, 'Can change login', 1, 'change_login'),
(3, 'Can delete login', 1, 'delete_login'),
(4, 'Can view login', 1, 'view_login'),
(5, 'Can add allowed ip', 2, 'add_allowedip'),
(6, 'Can change allowed ip', 2, 'change_allowedip'),
(7, 'Can delete allowed ip', 2, 'delete_allowedip'),
(8, 'Can view allowed ip', 2, 'view_allowedip'),
(9, 'Can add bank details', 3, 'add_bankdetails'),
(10, 'Can change bank details', 3, 'change_bankdetails'),
(11, 'Can delete bank details', 3, 'delete_bankdetails'),
(12, 'Can view bank details', 3, 'view_bankdetails'),
(13, 'Can add btech temp', 4, 'add_btechtemp'),
(14, 'Can change btech temp', 4, 'change_btechtemp'),
(15, 'Can delete btech temp', 4, 'delete_btechtemp'),
(16, 'Can view btech temp', 4, 'view_btechtemp'),
(17, 'Can add btech', 5, 'add_btech'),
(18, 'Can change btech', 5, 'change_btech'),
(19, 'Can delete btech', 5, 'delete_btech'),
(20, 'Can view btech', 5, 'view_btech'),
(21, 'Can add btech le temp', 6, 'add_btechletemp'),
(22, 'Can change btech le temp', 6, 'change_btechletemp'),
(23, 'Can delete btech le temp', 6, 'delete_btechletemp'),
(24, 'Can view btech le temp', 6, 'view_btechletemp'),
(25, 'Can add btech le', 7, 'add_btechle'),
(26, 'Can change btech le', 7, 'change_btechle'),
(27, 'Can delete btech le', 7, 'delete_btechle'),
(28, 'Can view btech le', 7, 'view_btechle'),
(29, 'Can add bba temp', 8, 'add_bbatemp'),
(30, 'Can change bba temp', 8, 'change_bbatemp'),
(31, 'Can delete bba temp', 8, 'delete_bbatemp'),
(32, 'Can view bba temp', 8, 'view_bbatemp'),
(33, 'Can add bba', 9, 'add_bba'),
(34, 'Can change bba', 9, 'change_bba'),
(35, 'Can delete bba', 9, 'delete_bba'),
(36, 'Can view bba', 9, 'view_bba'),
(37, 'Can add mba temp', 10, 'add_mbatemp'),
(38, 'Can change mba temp', 10, 'change_mbatemp'),
(39, 'Can delete mba temp', 10, 'delete_mbatemp'),
(40, 'Can view mba temp', 10, 'view_mbatemp'),
(41, 'Can add mba', 11, 'add_mba'),
(42, 'Can change mba', 11, 'change_mba'),
(43, 'Can delete mba', 11, 'delete_mba'),
(44, 'Can view mba', 11, 'view_mba'),
(45, 'Can add log entry', 12, 'add_logentry'),
(46, 'Can change log entry', 12, 'change_logentry'),
(47, 'Can delete log entry', 12, 'delete_logentry'),
(48, 'Can view log entry', 12, 'view_logentry'),
(49, 'Can add permission', 13, 'add_permission'),
(50, 'Can change permission', 13, 'change_permission'),
(51, 'Can delete permission', 13, 'delete_permission'),
(52, 'Can view permission', 13, 'view_permission'),
(53, 'Can add group', 14, 'add_group'),
(54, 'Can change group', 14, 'change_group'),
(55, 'Can delete group', 14, 'delete_group'),
(56, 'Can view group', 14, 'view_group'),
(57, 'Can add user', 15, 'add_user'),
(58, 'Can change user', 15, 'change_user'),
(59, 'Can delete user', 15, 'delete_user'),
(60, 'Can view user', 15, 'view_user'),
(61, 'Can add content type', 16, 'add_contenttype'),
(62, 'Can change content type', 16, 'change_contenttype'),
(63, 'Can delete content type', 16, 'delete_contenttype'),
(64, 'Can view content type', 16, 'view_contenttype'),
(65, 'Can add session', 17, 'add_session'),
(66, 'Can change session', 17, 'change_session'),
(67, 'Can delete session', 17, 'delete_session'),
(68, 'Can view session', 17, 'view_session');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$locoqZi8EKPwzl3cYzTDdf$8tvxrEHeYlSoIZSE0sIU5oEJTLY69tmlkNtFYS3bHt0=', '2023-08-26 08:53:49.744223', 1, 'chanm', '', '', '', 1, 1, '2023-08-26 08:53:41.110780');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` bigint(20) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `course` varchar(25) NOT NULL,
  `account_holder_name` varchar(75) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `ifsc_code` varchar(50) NOT NULL,
  `cheque_copy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`id`, `ipu_registration`, `course`, `account_holder_name`, `account_number`, `bank_name`, `ifsc_code`, `cheque_copy`) VALUES
(10, 131230000001, 'Btech', 'chan', '1234', 'idbi', 'ifsc', 'cheque_copies/1234_RDghMIL.pdf'),
(11, 131230000003, 'Btech', 'chan', '1234', 'idbi', 'ifsc', 'cheque_copies/1234_hnUDfHC.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `bba`
--

CREATE TABLE `bba` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `allow_for_counselling` tinyint(1) NOT NULL,
  `allow_editing` tinyint(1) NOT NULL,
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) NOT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL,
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL,
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL,
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL,
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) NOT NULL,
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(255) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bba_temp`
--

CREATE TABLE `bba_temp` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) DEFAULT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL,
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL,
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL,
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL,
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) DEFAULT NULL,
  `maths_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(100) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btech`
--

CREATE TABLE `btech` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `allow_for_counselling` tinyint(1) NOT NULL,
  `allow_editing` tinyint(1) NOT NULL,
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) NOT NULL,
  `maths_12th` int(10) UNSIGNED NOT NULL CHECK (`maths_12th` >= 0),
  `physics_12th` int(10) UNSIGNED NOT NULL CHECK (`physics_12th` >= 0),
  `chemistry_12th` int(10) UNSIGNED NOT NULL CHECK (`chemistry_12th` >= 0),
  `english_12th` int(10) UNSIGNED NOT NULL CHECK (`english_12th` >= 0),
  `other_subject_12th` varchar(100) NOT NULL,
  `other_subject_2_12th` varchar(100) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) NOT NULL,
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `jee_rank` int(10) UNSIGNED NOT NULL CHECK (`jee_rank` >= 0),
  `jee_percentile` decimal(15,11) NOT NULL,
  `jee_rollno` varchar(100) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `preference1` varchar(125) NOT NULL,
  `preference2` varchar(125) NOT NULL,
  `preference3` varchar(125) NOT NULL,
  `preference4` varchar(125) NOT NULL,
  `preference5` varchar(125) NOT NULL,
  `preference6` varchar(125) NOT NULL,
  `preference7` varchar(125) NOT NULL,
  `preference8` varchar(125) NOT NULL,
  `preference9` varchar(125) NOT NULL,
  `preference10` varchar(125) NOT NULL,
  `preference11` varchar(125) NOT NULL,
  `preference12` varchar(125) NOT NULL,
  `preference13` varchar(125) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `jee_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btech`
--

INSERT INTO `btech` (`id`, `application_id`, `ipu_registration`, `allow_for_counselling`, `allow_editing`, `candidate_first_name`, `candidate_middle_name`, `candidate_last_name`, `dob`, `complete_address`, `email`, `candidate_number`, `gender`, `category`, `region`, `father_first_name`, `father_middle_name`, `father_last_name`, `mother_first_name`, `mother_middle_name`, `mother_last_name`, `father_qualification`, `mother_qualification`, `father_job`, `mother_job`, `father_job_designation`, `mother_job_designation`, `father_business_type`, `mother_business_type`, `father_number`, `mother_number`, `father_office_address`, `mother_office_address`, `guardian_name`, `board_12th`, `year_of_12th`, `rollno_12th`, `school_12th`, `aggregate_12th`, `maths_12th`, `physics_12th`, `chemistry_12th`, `english_12th`, `other_subject_12th`, `other_subject_2_12th`, `board_10th`, `year_of_10th`, `rollno_10th`, `school_10th`, `aggregate_10th`, `maths_10th`, `science_10th`, `english_10th`, `sst_10th`, `other_subject_10th`, `other_subject_2_10th`, `jee_rank`, `jee_percentile`, `jee_rollno`, `special_achievements`, `preference1`, `preference2`, `preference3`, `preference4`, `preference5`, `preference6`, `preference7`, `preference8`, `preference9`, `preference10`, `preference11`, `preference12`, `preference13`, `passport_photo`, `jee_result`, `marksheet_10th`, `marksheet_12th`, `aadhaar`, `pancard`, `ipuregistrationproof`, `transaction_id`, `transaction_proof`, `counselling_transaction_id`, `counselling_transaction_proof`, `ip_address`, `forwarded_address`, `browser_info`, `created_at`) VALUES
(1, 'MAIT/MQ/2023-24/95010147', 131230000001, 1, 0, 'CHANMEET', 'SINGH', 'SAHNI', '2023-08-26', 'CC 43 E HARI NAGAR', 'chanmeetsinghsahni@gmail.com', '8800675489', 'Male', 'UR/Gen', 'Delhi', 'HARVINDER', '', 'SAHNI', 'HARPREET', '', 'SAHNI', 'Intermediate', 'Graduate', 'Other', 'Teacher', '', '', '', '', '8826225210', '9968221340', '', '', '', 'CBSE', 2022, 2345234567, 'SSMS', 92.50, 92, 91, 90, 97, '', '', 'CBSE', 2020, 2345234589, 'SSMS', 76.75, 77, 76, 79, 75, '', '', 60990, 93.21000000000, '12233', '', 'COMPUTER SCIENCE AND ENGINEERING', 'COMPUTER SCIENCE AND ENGINEERING (ARTIFICIAL INTELLIGENCE AND MACHINE LEARNING)', 'COMPUTER SCIENCE AND ENGINEERING (ARTIFICIAL INTELLIGENCE)', 'preference4', 'preference5', 'preference6', 'preference7', 'preference8', 'preference9', 'preference10', 'preference11', 'preference12', 'preference13', 'btech/photographs/131230000001.jpeg', 'btech/jeeresult/131230000001.pdf', 'btech/marksheet10th/131230000001.pdf', 'btech/marksheet12th/131230000001.pdf', 'btech/aadhar/131230000001.pdf', 'btech/pancard/131230000001.pdf', 'btech/ipuregistration/131230000001.pdf', '12345', 'btech/transactions/131230000001.pdf', '12345', 'btech/counselling_transactions/131230000001.pdf', '127.0.0.1', '-1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2023-08-26 14:26:46'),
(3, 'MAIT/MQ/2023-24/23662548', 131230000003, 1, 1, 'CHANMEET', 'SINGH', 'SAHNI', '2023-08-27', 'CC 43 E HARI NAGAR', 'chanmeetsinghsahni@gmail.com', '8800675489', 'Male', 'UR/Gen', 'Delhi', 'HARVINDER', 'SINGH', 'SAHNI', 'HARPREET', 'KAUR', 'SAHNI', 'Intermediate', 'Graduate', 'Other', 'Teacher', '', '', '', '', '8826225210', '9968221340', '', '', 'HARGUN SINGH SAHNI', 'CBSE', 2022, 2345234567, 'SSMS', 92.50, 92, 91, 90, 97, '', '', 'CBSE', 2020, 2345234589, 'SSMS', 76.75, 77, 76, 79, 75, '', '', 60990, 93.21000000000, '12233', '', 'COMPUTER SCIENCE AND ENGINEERING', 'COMPUTER SCIENCE AND ENGINEERING (ARTIFICIAL INTELLIGENCE AND MACHINE LEARNING)', 'COMPUTER SCIENCE AND ENGINEERING (ARTIFICIAL INTELLIGENCE)', 'COMPUTER SCIENCE AND ENGINEERING (DATA SCIENCE)', 'COMPUTER SCIENCE AND TECHNOLOGY', 'ELECTRICAL AND ELECTRONICS ENGINEERING', 'INFORMATION TECHNOLOGY', 'ELECTRONICS AND COMMUNICATIONS ENGINEERING', 'INFORMATION TECHNOLOGY AND ENGINEERING', 'MECHANICAL AND AUTOMATION ENGINEERING', 'MECHANICAL ENGINEERING', 'ELECTRONICS ENGINEERING (VLSI DESIGN AND TECHNOLOGY)', 'ELECTRONICS AND COMMUNICATION (ADVANCED COMMUNICATION TECHNOLOGY)', 'btech/photographs/131230000003.jpeg', 'btech/jeeresult/131230000003.pdf', 'btech/marksheet10th/131230000003.pdf', 'btech/marksheet12th/131230000003.pdf', 'btech/aadhar/131230000003.pdf', 'btech/pancard/131230000003.pdf', 'btech/ipuregistration/131230000003.pdf', '12345', 'btech/transactions/131230000003.pdf', '12345', 'btech/counselling_transactions/131230000003.pdf', '127.0.0.1', '-1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2023-08-27 19:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `btechle`
--

CREATE TABLE `btechle` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `allow_for_counselling` tinyint(1) NOT NULL,
  `allow_editing` tinyint(1) NOT NULL,
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(255) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(75) NOT NULL,
  `year_of_12th` varchar(75) NOT NULL,
  `rollno_12th` varchar(75) NOT NULL,
  `school_12th` varchar(125) NOT NULL,
  `aggregate_12th` varchar(75) NOT NULL,
  `maths_12th` varchar(75) NOT NULL,
  `physics_12th` varchar(75) NOT NULL,
  `chemistry_12th` varchar(75) NOT NULL,
  `english_12th` varchar(75) NOT NULL,
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) NOT NULL,
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `diploma_bsc_type` varchar(75) DEFAULT NULL,
  `board_diploma_bsc` varchar(75) DEFAULT NULL,
  `year_of_diploma_bsc` varchar(75) DEFAULT NULL,
  `rollno_diploma_bsc` varchar(75) DEFAULT NULL,
  `school_diploma_bsc` varchar(125) DEFAULT NULL,
  `aggregate_diploma_bsc` varchar(75) DEFAULT NULL,
  `ug_degree` varchar(100) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(20) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `preference1` varchar(100) NOT NULL,
  `preference2` varchar(100) NOT NULL,
  `preference3` varchar(100) NOT NULL,
  `preference4` varchar(100) NOT NULL,
  `preference5` varchar(100) NOT NULL,
  `preference6` varchar(100) NOT NULL,
  `preference7` varchar(100) NOT NULL,
  `preference8` varchar(100) NOT NULL,
  `preference9` varchar(100) NOT NULL,
  `preference10` varchar(100) NOT NULL,
  `preference11` varchar(100) NOT NULL,
  `preference12` varchar(100) NOT NULL,
  `preference13` varchar(100) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `diploma_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btech_le_temp`
--

CREATE TABLE `btech_le_temp` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(75) NOT NULL,
  `year_of_12th` varchar(75) NOT NULL,
  `rollno_12th` varchar(75) NOT NULL,
  `school_12th` varchar(125) NOT NULL,
  `aggregate_12th` varchar(75) NOT NULL,
  `maths_12th` varchar(75) NOT NULL,
  `physics_12th` varchar(75) NOT NULL,
  `chemistry_12th` varchar(75) NOT NULL,
  `english_12th` varchar(75) NOT NULL,
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(100) NOT NULL,
  `year_of_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) DEFAULT NULL,
  `maths_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `diploma_bsc_type` varchar(75) DEFAULT NULL,
  `board_diploma_bsc` varchar(75) DEFAULT NULL,
  `year_of_diploma_bsc` varchar(75) DEFAULT NULL,
  `rollno_diploma_bsc` varchar(75) DEFAULT NULL,
  `school_diploma_bsc` varchar(125) DEFAULT NULL,
  `aggregate_diploma_bsc` varchar(75) DEFAULT NULL,
  `ug_degree` varchar(100) NOT NULL,
  `cet_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(20) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `preference1` varchar(100) NOT NULL,
  `preference2` varchar(100) NOT NULL,
  `preference3` varchar(100) NOT NULL,
  `preference4` varchar(100) NOT NULL,
  `preference5` varchar(100) NOT NULL,
  `preference6` varchar(100) NOT NULL,
  `preference7` varchar(100) NOT NULL,
  `preference8` varchar(100) NOT NULL,
  `preference9` varchar(100) NOT NULL,
  `preference10` varchar(100) NOT NULL,
  `preference11` varchar(100) NOT NULL,
  `preference12` varchar(100) NOT NULL,
  `preference13` varchar(100) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `diploma_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btech_temp`
--

CREATE TABLE `btech_temp` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) DEFAULT NULL,
  `maths_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`maths_12th` >= 0),
  `physics_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`physics_12th` >= 0),
  `chemistry_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`chemistry_12th` >= 0),
  `english_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`english_12th` >= 0),
  `other_subject_12th` varchar(100) NOT NULL,
  `other_subject_2_12th` varchar(100) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) DEFAULT NULL,
  `maths_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `jee_rank` int(10) UNSIGNED DEFAULT NULL CHECK (`jee_rank` >= 0),
  `jee_percentile` decimal(15,11) DEFAULT NULL,
  `jee_rollno` varchar(100) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `preference1` varchar(125) NOT NULL,
  `preference2` varchar(125) NOT NULL,
  `preference3` varchar(125) NOT NULL,
  `preference4` varchar(125) NOT NULL,
  `preference5` varchar(125) NOT NULL,
  `preference6` varchar(125) NOT NULL,
  `preference7` varchar(125) NOT NULL,
  `preference8` varchar(125) NOT NULL,
  `preference9` varchar(125) NOT NULL,
  `preference10` varchar(125) NOT NULL,
  `preference11` varchar(125) NOT NULL,
  `preference12` varchar(125) NOT NULL,
  `preference13` varchar(125) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `jee_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-08-26 08:57:29.974880', '1', 'CHANMEET SAHNI', 2, '[{\"changed\": {\"fields\": [\"Allow for counselling\"]}}]', 5, 1),
(2, '2023-08-26 09:14:06.860456', '2', 'CHANMEET SAHNI', 2, '[{\"changed\": {\"fields\": [\"Allow for counselling\"]}}]', 5, 1),
(3, '2023-08-26 09:14:18.274781', '1', 'BankDetails object (1)', 3, '', 3, 1),
(4, '2023-08-26 09:43:15.037903', '4', 'BankDetails object (4)', 3, '', 3, 1),
(5, '2023-08-26 09:43:15.096006', '3', 'BankDetails object (3)', 3, '', 3, 1),
(6, '2023-08-26 11:57:25.655486', '2', 'CHANMEET SAHNI', 2, '[{\"changed\": {\"fields\": [\"Counselling transaction id\", \"Counselling transaction proof\"]}}]', 5, 1),
(7, '2023-08-26 11:58:11.798798', '1', '127.0.0.1', 1, '[{\"added\": {}}]', 2, 1),
(8, '2023-08-26 12:00:18.412994', '6', 'BankDetails object (6)', 3, '', 3, 1),
(9, '2023-08-26 12:02:28.648159', '2', 'CHANMEET SAHNI', 2, '[]', 5, 1),
(10, '2023-08-26 12:02:38.075493', '7', 'BankDetails object (7)', 3, '', 3, 1),
(11, '2023-08-26 12:06:37.895978', '2', 'Login object (2)', 3, '', 1, 1),
(12, '2023-08-26 12:07:13.872660', '8', 'BankDetails object (8)', 3, '', 3, 1),
(13, '2023-08-26 12:07:13.880845', '5', 'BankDetails object (5)', 3, '', 3, 1),
(14, '2023-08-26 12:08:51.907608', '2', 'CHANMEET SAHNI', 3, '', 5, 1),
(15, '2023-08-26 12:09:03.454856', '1', 'CHANMEET SAHNI', 2, '[{\"changed\": {\"fields\": [\"Counselling transaction id\", \"Counselling transaction proof\"]}}]', 5, 1),
(16, '2023-08-26 12:11:05.053804', '9', 'BankDetails object (9)', 3, '', 3, 1),
(17, '2023-08-26 12:11:14.320996', '1', 'CHANMEET SAHNI', 2, '[]', 5, 1),
(18, '2023-08-27 14:12:25.034903', '1', '127.0.0.1', 3, '', 2, 1),
(19, '2023-08-27 14:12:31.499268', '2', '0.0.0.0', 1, '[{\"added\": {}}]', 2, 1),
(20, '2023-08-27 14:12:42.027365', '2', '0.0.0.0.', 2, '[{\"changed\": {\"fields\": [\"Ip address\"]}}]', 2, 1),
(21, '2023-08-27 14:13:05.296038', '2', '0.0.0.0', 2, '[{\"changed\": {\"fields\": [\"Ip address\"]}}]', 2, 1),
(22, '2023-08-27 14:16:41.294015', '3', 'CHANMEET SAHNI', 2, '[{\"changed\": {\"fields\": [\"Allow for counselling\", \"Allow editing\"]}}]', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(12, 'admin', 'logentry'),
(14, 'auth', 'group'),
(13, 'auth', 'permission'),
(15, 'auth', 'user'),
(16, 'contenttypes', 'contenttype'),
(2, 'form', 'allowedip'),
(3, 'form', 'bankdetails'),
(9, 'form', 'bba'),
(8, 'form', 'bbatemp'),
(5, 'form', 'btech'),
(7, 'form', 'btechle'),
(6, 'form', 'btechletemp'),
(4, 'form', 'btechtemp'),
(1, 'form', 'login'),
(11, 'form', 'mba'),
(10, 'form', 'mbatemp'),
(17, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-17 16:27:58.881260'),
(2, 'auth', '0001_initial', '2023-08-17 16:27:59.759298'),
(3, 'admin', '0001_initial', '2023-08-17 16:27:59.959764'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-08-17 16:27:59.963871'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-17 16:27:59.982313'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-08-17 16:28:00.056872'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-08-17 16:28:00.146103'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-08-17 16:28:00.167459'),
(9, 'auth', '0004_alter_user_username_opts', '2023-08-17 16:28:00.178420'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-08-17 16:28:00.247440'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-08-17 16:28:00.254433'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-08-17 16:28:00.263436'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-08-17 16:28:00.283443'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-08-17 16:28:00.304482'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-08-17 16:28:00.325221'),
(16, 'auth', '0011_update_proxy_permissions', '2023-08-17 16:28:00.334646'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-08-17 16:28:00.354238'),
(18, 'form', '0001_initial', '2023-08-17 16:28:00.664579'),
(19, 'sessions', '0001_initial', '2023-08-17 16:28:00.714265'),
(20, 'form', '0002_alter_bba_first_subject_12th_and_more', '2023-08-17 16:33:49.567372'),
(21, 'form', '0003_alter_mba_rollno_ug_alter_mba_year_of_ug_and_more', '2023-08-17 17:44:24.181840'),
(22, 'form', '0004_alter_login_created_at_alter_login_ip_address', '2023-08-21 09:03:28.362966'),
(23, 'form', '0005_alter_bba_browser_info_alter_bba_created_at_and_more', '2023-08-21 09:03:30.466494'),
(24, 'form', '0006_bankdetails', '2023-08-25 17:19:23.284476');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ar74lk2eimhoirqdx34ab1dkfn9ebjyl', '.eJxVj71ywyAQhN9FdSJhQBili7sUKjKTnjmOs4SjERp-qozf3ch24Vy5--3O3l9joOTZlETReNd8NIfm7VWzgL-07oa7wDqFFsOao7ftjrRPN7VjcLScnuy_ghnSXNN0RKvPTqqBgZbSkdbuCFpxxaU4cOy1ZEPv0CLqQaDSylLPUFb3LEDuq_xWTKTJpxwh-7DuY2tUsPuJSmAoMVHVT5lwrgJs2-LxTj--Gz-_frrxu-OMi3cuOy6U4r3UlV3CNJEzvvbmWOh6A5k4WP4:1qaGa7:36DAfx7eKMhvnzIO6T8SbY3WAAVGOkfylJ1pXaDMORw', '2023-09-10 14:17:35.883359');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `password` varchar(25) NOT NULL,
  `candidate_name` varchar(100) NOT NULL,
  `candidate_email` varchar(100) NOT NULL,
  `candidate_mobile` bigint(20) UNSIGNED NOT NULL CHECK (`candidate_mobile` >= 0),
  `course` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `application_id`, `ipu_registration`, `password`, `candidate_name`, `candidate_email`, `candidate_mobile`, `course`, `ip_address`, `created_at`) VALUES
(1, 'MAIT/MQ/2023-24/95010147', 131230000001, 'FfBTMPNRRAYF', 'CHANMEET S', 'chanmeetsinghsahni@gmail.com', 8800675489, 'Btech', '127.0.0.1', '2023-08-26 08:53:09.125072'),
(3, 'MAIT/MQ/2023-24/23662548', 131230000003, 'SOeCw0zZzOON', 'CHANMEET S', 'sahnichanmeetsingh@gmail.com', 8800675488, 'Btech', '127.0.0.1', '2023-08-27 14:12:06.789087');

-- --------------------------------------------------------

--
-- Table structure for table `mba`
--

CREATE TABLE `mba` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `allow_for_counselling` tinyint(1) NOT NULL,
  `allow_editing` tinyint(1) NOT NULL,
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) NOT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL,
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL,
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL,
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL,
  `other_subject_12th` varchar(100) NOT NULL,
  `other_subject_2_12th` varchar(100) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) NOT NULL,
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `cat_or_cmat` varchar(10) NOT NULL,
  `cat_or_cmat_rank` int(10) UNSIGNED DEFAULT NULL,
  `cat_or_cmat_rollno` bigint(20) UNSIGNED DEFAULT NULL,
  `ug_type` varchar(75) NOT NULL,
  `board_ug` varchar(75) NOT NULL,
  `year_of_ug` int(10) UNSIGNED DEFAULT NULL,
  `rollno_ug` bigint(20) UNSIGNED DEFAULT NULL,
  `school_ug` varchar(125) NOT NULL,
  `aggregate_ug` varchar(25) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cat_or_cmat_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `ug_degree` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mba_temp`
--

CREATE TABLE `mba_temp` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `candidate_first_name` varchar(100) NOT NULL,
  `candidate_middle_name` varchar(100) NOT NULL,
  `candidate_last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `candidate_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `father_first_name` varchar(100) NOT NULL,
  `father_middle_name` varchar(100) NOT NULL,
  `father_last_name` varchar(100) NOT NULL,
  `mother_first_name` varchar(100) NOT NULL,
  `mother_middle_name` varchar(100) NOT NULL,
  `mother_last_name` varchar(100) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `father_job_designation` varchar(100) NOT NULL,
  `mother_job_designation` varchar(100) NOT NULL,
  `father_business_type` varchar(100) NOT NULL,
  `mother_business_type` varchar(100) NOT NULL,
  `father_number` varchar(100) NOT NULL,
  `mother_number` varchar(100) NOT NULL,
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `board_12th` varchar(255) NOT NULL,
  `year_of_12th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(255) NOT NULL,
  `aggregate_12th` decimal(5,2) DEFAULT NULL,
  `first_subject_12th` int(10) UNSIGNED DEFAULT NULL,
  `second_subject_12th` int(10) UNSIGNED DEFAULT NULL,
  `third_subject_12th` int(10) UNSIGNED DEFAULT NULL,
  `fourth_subject_12th` int(10) UNSIGNED DEFAULT NULL,
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(255) NOT NULL,
  `year_of_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED DEFAULT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(255) NOT NULL,
  `aggregate_10th` decimal(5,2) DEFAULT NULL,
  `maths_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED DEFAULT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(100) NOT NULL,
  `other_subject_2_10th` varchar(100) NOT NULL,
  `cat_or_cmat` varchar(10) NOT NULL,
  `cat_or_cmat_rank` int(10) UNSIGNED DEFAULT NULL,
  `cat_or_cmat_rollno` bigint(20) UNSIGNED DEFAULT NULL,
  `ug_type` varchar(75) NOT NULL,
  `board_ug` varchar(75) NOT NULL,
  `year_of_ug` int(10) UNSIGNED DEFAULT NULL,
  `rollno_ug` bigint(20) UNSIGNED DEFAULT NULL,
  `school_ug` varchar(125) NOT NULL,
  `aggregate_ug` varchar(25) NOT NULL,
  `special_achievements` varchar(255) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cat_or_cmat_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `ug_degree` varchar(100) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `forwarded_address` varchar(255) DEFAULT NULL,
  `browser_info` varchar(1000) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allowed_ip_addresses`
--
ALTER TABLE `allowed_ip_addresses`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `bba`
--
ALTER TABLE `bba`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `bba_temp`
--
ALTER TABLE `bba_temp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `btech`
--
ALTER TABLE `btech`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `btechle`
--
ALTER TABLE `btechle`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `btech_le_temp`
--
ALTER TABLE `btech_le_temp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `btech_temp`
--
ALTER TABLE `btech_temp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

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
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `mba`
--
ALTER TABLE `mba`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- Indexes for table `mba_temp`
--
ALTER TABLE `mba_temp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_id` (`application_id`),
  ADD UNIQUE KEY `ipu_registration` (`ipu_registration`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allowed_ip_addresses`
--
ALTER TABLE `allowed_ip_addresses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

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
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bba`
--
ALTER TABLE `bba`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bba_temp`
--
ALTER TABLE `bba_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btech`
--
ALTER TABLE `btech`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `btechle`
--
ALTER TABLE `btechle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btech_le_temp`
--
ALTER TABLE `btech_le_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btech_temp`
--
ALTER TABLE `btech_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mba`
--
ALTER TABLE `mba`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mba_temp`
--
ALTER TABLE `mba_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- Database: `erp`
--
CREATE DATABASE IF NOT EXISTS `erp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `erp`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(25, 'Can add student', 7, 'add_student'),
(26, 'Can change student', 7, 'change_student'),
(27, 'Can delete student', 7, 'delete_student'),
(28, 'Can view student', 7, 'view_student'),
(29, 'Can add employee', 8, 'add_employee'),
(30, 'Can change employee', 8, 'change_employee'),
(31, 'Can delete employee', 8, 'delete_employee'),
(32, 'Can view employee', 8, 'view_employee');

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
  `user_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-09-10 08:13:47.757137', '1234', '1234', 2, '[]', 6, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(8, 'AuthPortal', 'employee'),
(7, 'AuthPortal', 'student'),
(6, 'AuthPortal', 'user'),
(4, 'contenttypes', 'contenttype'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-09-03 17:06:17.822383'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-09-03 17:06:17.896824'),
(3, 'auth', '0001_initial', '2023-09-03 17:06:18.230297'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-09-03 17:06:18.305842'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-09-03 17:06:18.308511'),
(6, 'auth', '0004_alter_user_username_opts', '2023-09-03 17:06:18.316517'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-09-03 17:06:18.316517'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-09-03 17:06:18.327146'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-09-03 17:06:18.332831'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-09-03 17:06:18.340975'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-09-03 17:06:18.348987'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-09-03 17:06:18.373148'),
(13, 'auth', '0011_update_proxy_permissions', '2023-09-03 17:06:18.373148'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-09-03 17:06:18.381511'),
(15, 'AuthPortal', '0001_initial', '2023-09-03 17:06:19.041220'),
(16, 'admin', '0001_initial', '2023-09-03 17:06:19.265001'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-09-03 17:06:19.276415'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-03 17:06:19.282283'),
(19, 'sessions', '0001_initial', '2023-09-03 17:06:19.331830');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('648pfytnsbp95f6xhfhmnms05bnawzdo', '.eJxVjDsOwyAQBe9CHSH-hpTpfQa0C0twEmHJ2FWUu0dILpL2zcx7swjHXuPRaYtLZlcmlTaWXX53hPSkNmB-QLuvPK1t3xbkQ-En7XxeM71up_t3UKHXUVvSTqIuyWbvQ0o0eRcUQsEEwqMWmowoSiMFRYqsBFuym7wpUroS2OcLmEE5Ow:1qfFuI:Mn7wWdPrU_09vVmCbHB2wVOUW0Rt9TAh-7OIUoHOsTM', '2023-09-24 08:35:02.186317'),
('nuhjvrenf3dt5az2yq7ukox1ot97hb9q', '.eJxVjEEOwiAQRe_C2hCgA9O6dN8zkGkHpGogKe3KeHdp0oVu33v_v4WnfUt-r2H1C4ur0KYDcfnFE83PkA_HD8r3IueSt3WZ5JHI01Y5Fg6v29n-HSSqqa0t94AUewQwQ1BKsYUOFLSHQEzaxa5BQLABmBjdoA0SMDiMjEqLzxc6_jfL:1qfFXh:Ps_DCFt0fUiEUY0mtvaKcKbqPUJQfoguD7lWe_Jbs34', '2023-09-24 08:11:41.862612');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `ip_address` char(39) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `employee_id_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `ip_address` char(39) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `student_id_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `contact_number`, `ip_address`, `created_at`, `student_id_id`) VALUES
(1, 'cc', 'c@cc.com', '1234567890', '127.0.0.1', '2023-09-10 08:26:36.074192', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`password`, `last_login`, `is_superuser`, `email`, `is_staff`, `is_active`, `date_joined`, `user_id`, `name`, `role`) VALUES
('pbkdf2_sha256$390000$CoAmJMP1R2PAHQpzBjuDPD$corb/UEG3wuUioDcIsxRjWyLumwkrKFGVyr3hTiKE9U=', '2023-09-10 08:11:41.000000', 1, 'c@c.com', 1, 1, '2023-09-10 08:11:19.000000', '1234', 'chanm', 'ADMIN'),
('pbkdf2_sha256$390000$ocnEV7jT6qfJCn8wyfhbXD$pbVC5xZMV16AnNcPLUFho14WTx064Cy3tYtE7F7z3qs=', '2023-09-10 08:35:02.023695', 0, 'c@cc.com', 0, 1, '2023-09-10 08:26:35.912948', '12345', 'cc', 'STUDENT');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_user_permissions`
--

CREATE TABLE `users_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`);

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
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id_id` (`employee_id_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id_id` (`student_id_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_employee_id_id_91690778_fk_users_user_id` FOREIGN KEY (`employee_id_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_student_id_id_df57b54f_fk_users_user_id` FOREIGN KEY (`student_id_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `users_groups_group_id_2f3517aa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_groups_user_id_f500bee5_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `users_user_permissions`
--
ALTER TABLE `users_user_permissions`
  ADD CONSTRAINT `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `users_user_permissions_user_id_92473840_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
--
-- Database: `maimsmq`
--
CREATE DATABASE IF NOT EXISTS `maimsmq` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `maimsmq`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add login', 1, 'add_login'),
(2, 'Can change login', 1, 'change_login'),
(3, 'Can delete login', 1, 'delete_login'),
(4, 'Can view login', 1, 'view_login'),
(5, 'Can add bba', 2, 'add_bba'),
(6, 'Can change bba', 2, 'change_bba'),
(7, 'Can delete bba', 2, 'delete_bba'),
(8, 'Can view bba', 2, 'view_bba'),
(9, 'Can add bcom', 3, 'add_bcom'),
(10, 'Can change bcom', 3, 'change_bcom'),
(11, 'Can delete bcom', 3, 'delete_bcom'),
(12, 'Can view bcom', 3, 'view_bcom'),
(13, 'Can add bjmc', 4, 'add_bjmc'),
(14, 'Can change bjmc', 4, 'change_bjmc'),
(15, 'Can delete bjmc', 4, 'delete_bjmc'),
(16, 'Can view bjmc', 4, 'view_bjmc'),
(17, 'Can add eco', 5, 'add_eco'),
(18, 'Can change eco', 5, 'change_eco'),
(19, 'Can delete eco', 5, 'delete_eco'),
(20, 'Can view eco', 5, 'view_eco'),
(21, 'Can add ballb', 6, 'add_ballb'),
(22, 'Can change ballb', 6, 'change_ballb'),
(23, 'Can delete ballb', 6, 'delete_ballb'),
(24, 'Can view ballb', 6, 'view_ballb'),
(25, 'Can add bballb', 7, 'add_bballb'),
(26, 'Can change bballb', 7, 'change_bballb'),
(27, 'Can delete bballb', 7, 'delete_bballb'),
(28, 'Can view bballb', 7, 'view_bballb'),
(29, 'Can add llm', 8, 'add_llm'),
(30, 'Can change llm', 8, 'change_llm'),
(31, 'Can delete llm', 8, 'delete_llm'),
(32, 'Can view llm', 8, 'view_llm'),
(33, 'Can add log entry', 9, 'add_logentry'),
(34, 'Can change log entry', 9, 'change_logentry'),
(35, 'Can delete log entry', 9, 'delete_logentry'),
(36, 'Can view log entry', 9, 'view_logentry'),
(37, 'Can add permission', 10, 'add_permission'),
(38, 'Can change permission', 10, 'change_permission'),
(39, 'Can delete permission', 10, 'delete_permission'),
(40, 'Can view permission', 10, 'view_permission'),
(41, 'Can add group', 11, 'add_group'),
(42, 'Can change group', 11, 'change_group'),
(43, 'Can delete group', 11, 'delete_group'),
(44, 'Can view group', 11, 'view_group'),
(45, 'Can add user', 12, 'add_user'),
(46, 'Can change user', 12, 'change_user'),
(47, 'Can delete user', 12, 'delete_user'),
(48, 'Can view user', 12, 'view_user'),
(49, 'Can add content type', 13, 'add_contenttype'),
(50, 'Can change content type', 13, 'change_contenttype'),
(51, 'Can delete content type', 13, 'delete_contenttype'),
(52, 'Can view content type', 13, 'view_contenttype'),
(53, 'Can add session', 14, 'add_session'),
(54, 'Can change session', 14, 'change_session'),
(55, 'Can delete session', 14, 'delete_session'),
(56, 'Can view session', 14, 'view_session');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(9, 'admin', 'logentry'),
(11, 'auth', 'group'),
(10, 'auth', 'permission'),
(12, 'auth', 'user'),
(13, 'contenttypes', 'contenttype'),
(6, 'form', 'ballb'),
(2, 'form', 'bba'),
(7, 'form', 'bballb'),
(3, 'form', 'bcom'),
(4, 'form', 'bjmc'),
(5, 'form', 'eco'),
(8, 'form', 'llm'),
(1, 'form', 'login'),
(14, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-06 19:08:31.671266'),
(2, 'auth', '0001_initial', '2023-08-06 19:08:32.548935'),
(3, 'admin', '0001_initial', '2023-08-06 19:08:32.722122'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-08-06 19:08:32.734729'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-06 19:08:32.745888'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-08-06 19:08:32.828795'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-08-06 19:08:32.954918'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-08-06 19:08:32.975183'),
(9, 'auth', '0004_alter_user_username_opts', '2023-08-06 19:08:32.984211'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-08-06 19:08:33.049861'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-08-06 19:08:33.054195'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-08-06 19:08:33.066629'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-08-06 19:08:33.083087'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-08-06 19:08:33.107316'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-08-06 19:08:33.131572'),
(16, 'auth', '0011_update_proxy_permissions', '2023-08-06 19:08:33.141204'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-08-06 19:08:33.195813'),
(18, 'form', '0001_initial', '2023-08-06 19:08:33.396037'),
(19, 'sessions', '0001_initial', '2023-08-06 19:08:33.451813');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_ballb`
--

CREATE TABLE `form_ballb` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `allow_for_counselling` tinyint(1) NOT NULL,
  `category` varchar(256) NOT NULL,
  `region` varchar(256) NOT NULL,
  `candidate_first_name` varchar(40) NOT NULL,
  `candidate_middle_name` varchar(40) NOT NULL,
  `candidate_last_name` varchar(40) NOT NULL,
  `father_first_name` varchar(40) NOT NULL,
  `father_middle_name` varchar(40) NOT NULL,
  `father_last_name` varchar(40) NOT NULL,
  `mother_first_name` varchar(40) NOT NULL,
  `mother_middle_name` varchar(40) NOT NULL,
  `mother_last_name` varchar(40) NOT NULL,
  `father_qualification` varchar(40) NOT NULL,
  `mother_qualification` varchar(40) NOT NULL,
  `father_job` varchar(40) NOT NULL,
  `mother_job` varchar(40) NOT NULL,
  `father_job_designation` varchar(40) NOT NULL,
  `mother_job_designation` varchar(40) NOT NULL,
  `father_business_type` varchar(40) NOT NULL,
  `mother_business_type` varchar(40) NOT NULL,
  `father_number` bigint(20) UNSIGNED NOT NULL CHECK (`father_number` >= 0),
  `mother_number` bigint(20) UNSIGNED NOT NULL CHECK (`mother_number` >= 0),
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `candidate_number` bigint(20) UNSIGNED NOT NULL CHECK (`candidate_number` >= 0),
  `gender` varchar(10) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `dob` date NOT NULL,
  `board_12th` varchar(75) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(125) NOT NULL,
  `aggregate_12th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_12th` >= 0),
  `first_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`fourth_subject_12th` >= 0),
  `fifth_subject_12th` varchar(10) NOT NULL,
  `sixth_subject_12th` varchar(10) NOT NULL,
  `board_10th` varchar(75) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(125) NOT NULL,
  `aggregate_10th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_10th` >= 0),
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(10) NOT NULL,
  `other_subject_2_10th` varchar(10) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` varchar(255) NOT NULL,
  `cet_rollno` varchar(20) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `special_achievements` varchar(250) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(1024) NOT NULL,
  `forwarded_address` varchar(1024) NOT NULL,
  `browser_info` varchar(1024) NOT NULL,
  `created_at` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_bba`
--

CREATE TABLE `form_bba` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `allow_for_counselling` tinyint(1) NOT NULL,
  `category` varchar(256) NOT NULL,
  `region` varchar(256) NOT NULL,
  `candidate_first_name` varchar(40) NOT NULL,
  `candidate_middle_name` varchar(40) NOT NULL,
  `candidate_last_name` varchar(40) NOT NULL,
  `father_first_name` varchar(40) NOT NULL,
  `father_middle_name` varchar(40) NOT NULL,
  `father_last_name` varchar(40) NOT NULL,
  `mother_first_name` varchar(40) NOT NULL,
  `mother_middle_name` varchar(40) NOT NULL,
  `mother_last_name` varchar(40) NOT NULL,
  `father_qualification` varchar(40) NOT NULL,
  `mother_qualification` varchar(40) NOT NULL,
  `father_job` varchar(40) NOT NULL,
  `mother_job` varchar(40) NOT NULL,
  `father_job_designation` varchar(40) NOT NULL,
  `mother_job_designation` varchar(40) NOT NULL,
  `father_business_type` varchar(40) NOT NULL,
  `mother_business_type` varchar(40) NOT NULL,
  `father_number` bigint(20) UNSIGNED NOT NULL CHECK (`father_number` >= 0),
  `mother_number` bigint(20) UNSIGNED NOT NULL CHECK (`mother_number` >= 0),
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `candidate_number` bigint(20) UNSIGNED NOT NULL CHECK (`candidate_number` >= 0),
  `gender` varchar(10) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `dob` date NOT NULL,
  `board_12th` varchar(75) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(125) NOT NULL,
  `aggregate_12th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_12th` >= 0),
  `first_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`fourth_subject_12th` >= 0),
  `fifth_subject_12th` varchar(10) NOT NULL,
  `sixth_subject_12th` varchar(10) NOT NULL,
  `board_10th` varchar(75) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(125) NOT NULL,
  `aggregate_10th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_10th` >= 0),
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(10) NOT NULL,
  `other_subject_2_10th` varchar(10) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` varchar(255) NOT NULL,
  `cet_rollno` varchar(20) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `special_achievements` varchar(250) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(1024) NOT NULL,
  `forwarded_address` varchar(1024) NOT NULL,
  `browser_info` varchar(1024) NOT NULL,
  `created_at` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_bballb`
--

CREATE TABLE `form_bballb` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `allow_for_counselling` tinyint(1) NOT NULL,
  `category` varchar(256) NOT NULL,
  `region` varchar(256) NOT NULL,
  `candidate_first_name` varchar(40) NOT NULL,
  `candidate_middle_name` varchar(40) NOT NULL,
  `candidate_last_name` varchar(40) NOT NULL,
  `father_first_name` varchar(40) NOT NULL,
  `father_middle_name` varchar(40) NOT NULL,
  `father_last_name` varchar(40) NOT NULL,
  `mother_first_name` varchar(40) NOT NULL,
  `mother_middle_name` varchar(40) NOT NULL,
  `mother_last_name` varchar(40) NOT NULL,
  `father_qualification` varchar(40) NOT NULL,
  `mother_qualification` varchar(40) NOT NULL,
  `father_job` varchar(40) NOT NULL,
  `mother_job` varchar(40) NOT NULL,
  `father_job_designation` varchar(40) NOT NULL,
  `mother_job_designation` varchar(40) NOT NULL,
  `father_business_type` varchar(40) NOT NULL,
  `mother_business_type` varchar(40) NOT NULL,
  `father_number` bigint(20) UNSIGNED NOT NULL CHECK (`father_number` >= 0),
  `mother_number` bigint(20) UNSIGNED NOT NULL CHECK (`mother_number` >= 0),
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `candidate_number` bigint(20) UNSIGNED NOT NULL CHECK (`candidate_number` >= 0),
  `gender` varchar(10) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `dob` date NOT NULL,
  `board_12th` varchar(75) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(125) NOT NULL,
  `aggregate_12th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_12th` >= 0),
  `first_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`fourth_subject_12th` >= 0),
  `fifth_subject_12th` varchar(10) NOT NULL,
  `sixth_subject_12th` varchar(10) NOT NULL,
  `board_10th` varchar(75) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(125) NOT NULL,
  `aggregate_10th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_10th` >= 0),
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(10) NOT NULL,
  `other_subject_2_10th` varchar(10) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` varchar(255) NOT NULL,
  `cet_rollno` varchar(20) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `special_achievements` varchar(250) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(1024) NOT NULL,
  `forwarded_address` varchar(1024) NOT NULL,
  `browser_info` varchar(1024) NOT NULL,
  `created_at` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_bcom`
--

CREATE TABLE `form_bcom` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `allow_for_counselling` tinyint(1) NOT NULL,
  `category` varchar(256) NOT NULL,
  `region` varchar(256) NOT NULL,
  `candidate_first_name` varchar(40) NOT NULL,
  `candidate_middle_name` varchar(40) NOT NULL,
  `candidate_last_name` varchar(40) NOT NULL,
  `father_first_name` varchar(40) NOT NULL,
  `father_middle_name` varchar(40) NOT NULL,
  `father_last_name` varchar(40) NOT NULL,
  `mother_first_name` varchar(40) NOT NULL,
  `mother_middle_name` varchar(40) NOT NULL,
  `mother_last_name` varchar(40) NOT NULL,
  `father_qualification` varchar(40) NOT NULL,
  `mother_qualification` varchar(40) NOT NULL,
  `father_job` varchar(40) NOT NULL,
  `mother_job` varchar(40) NOT NULL,
  `father_job_designation` varchar(40) NOT NULL,
  `mother_job_designation` varchar(40) NOT NULL,
  `father_business_type` varchar(40) NOT NULL,
  `mother_business_type` varchar(40) NOT NULL,
  `father_number` bigint(20) UNSIGNED NOT NULL CHECK (`father_number` >= 0),
  `mother_number` bigint(20) UNSIGNED NOT NULL CHECK (`mother_number` >= 0),
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `candidate_number` bigint(20) UNSIGNED NOT NULL CHECK (`candidate_number` >= 0),
  `gender` varchar(10) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `dob` date NOT NULL,
  `board_12th` varchar(75) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(125) NOT NULL,
  `aggregate_12th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_12th` >= 0),
  `first_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`fourth_subject_12th` >= 0),
  `fifth_subject_12th` varchar(10) NOT NULL,
  `sixth_subject_12th` varchar(10) NOT NULL,
  `board_10th` varchar(75) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(125) NOT NULL,
  `aggregate_10th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_10th` >= 0),
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(10) NOT NULL,
  `other_subject_2_10th` varchar(10) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` varchar(255) NOT NULL,
  `cet_rollno` varchar(20) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `special_achievements` varchar(250) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(1024) NOT NULL,
  `forwarded_address` varchar(1024) NOT NULL,
  `browser_info` varchar(1024) NOT NULL,
  `created_at` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_bjmc`
--

CREATE TABLE `form_bjmc` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `allow_for_counselling` tinyint(1) NOT NULL,
  `category` varchar(256) NOT NULL,
  `region` varchar(256) NOT NULL,
  `candidate_first_name` varchar(40) NOT NULL,
  `candidate_middle_name` varchar(40) NOT NULL,
  `candidate_last_name` varchar(40) NOT NULL,
  `father_first_name` varchar(40) NOT NULL,
  `father_middle_name` varchar(40) NOT NULL,
  `father_last_name` varchar(40) NOT NULL,
  `mother_first_name` varchar(40) NOT NULL,
  `mother_middle_name` varchar(40) NOT NULL,
  `mother_last_name` varchar(40) NOT NULL,
  `father_qualification` varchar(40) NOT NULL,
  `mother_qualification` varchar(40) NOT NULL,
  `father_job` varchar(40) NOT NULL,
  `mother_job` varchar(40) NOT NULL,
  `father_job_designation` varchar(40) NOT NULL,
  `mother_job_designation` varchar(40) NOT NULL,
  `father_business_type` varchar(40) NOT NULL,
  `mother_business_type` varchar(40) NOT NULL,
  `father_number` bigint(20) UNSIGNED NOT NULL CHECK (`father_number` >= 0),
  `mother_number` bigint(20) UNSIGNED NOT NULL CHECK (`mother_number` >= 0),
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `candidate_number` bigint(20) UNSIGNED NOT NULL CHECK (`candidate_number` >= 0),
  `gender` varchar(10) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `dob` date NOT NULL,
  `board_12th` varchar(75) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(125) NOT NULL,
  `aggregate_12th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_12th` >= 0),
  `first_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`fourth_subject_12th` >= 0),
  `fifth_subject_12th` varchar(10) NOT NULL,
  `sixth_subject_12th` varchar(10) NOT NULL,
  `board_10th` varchar(75) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(125) NOT NULL,
  `aggregate_10th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_10th` >= 0),
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(10) NOT NULL,
  `other_subject_2_10th` varchar(10) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` varchar(255) NOT NULL,
  `cet_rollno` varchar(20) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `special_achievements` varchar(250) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(1024) NOT NULL,
  `forwarded_address` varchar(1024) NOT NULL,
  `browser_info` varchar(1024) NOT NULL,
  `created_at` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_eco`
--

CREATE TABLE `form_eco` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `allow_for_counselling` tinyint(1) NOT NULL,
  `category` varchar(256) NOT NULL,
  `region` varchar(256) NOT NULL,
  `candidate_first_name` varchar(40) NOT NULL,
  `candidate_middle_name` varchar(40) NOT NULL,
  `candidate_last_name` varchar(40) NOT NULL,
  `father_first_name` varchar(40) NOT NULL,
  `father_middle_name` varchar(40) NOT NULL,
  `father_last_name` varchar(40) NOT NULL,
  `mother_first_name` varchar(40) NOT NULL,
  `mother_middle_name` varchar(40) NOT NULL,
  `mother_last_name` varchar(40) NOT NULL,
  `father_qualification` varchar(40) NOT NULL,
  `mother_qualification` varchar(40) NOT NULL,
  `father_job` varchar(40) NOT NULL,
  `mother_job` varchar(40) NOT NULL,
  `father_job_designation` varchar(40) NOT NULL,
  `mother_job_designation` varchar(40) NOT NULL,
  `father_business_type` varchar(40) NOT NULL,
  `mother_business_type` varchar(40) NOT NULL,
  `father_number` bigint(20) UNSIGNED NOT NULL CHECK (`father_number` >= 0),
  `mother_number` bigint(20) UNSIGNED NOT NULL CHECK (`mother_number` >= 0),
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `candidate_number` bigint(20) UNSIGNED NOT NULL CHECK (`candidate_number` >= 0),
  `gender` varchar(10) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `dob` date NOT NULL,
  `board_12th` varchar(75) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(125) NOT NULL,
  `aggregate_12th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_12th` >= 0),
  `first_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`fourth_subject_12th` >= 0),
  `fifth_subject_12th` varchar(10) NOT NULL,
  `sixth_subject_12th` varchar(10) NOT NULL,
  `board_10th` varchar(75) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(125) NOT NULL,
  `aggregate_10th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_10th` >= 0),
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(10) NOT NULL,
  `other_subject_2_10th` varchar(10) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` varchar(255) NOT NULL,
  `cet_rollno` varchar(20) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `special_achievements` varchar(250) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(1024) NOT NULL,
  `forwarded_address` varchar(1024) NOT NULL,
  `browser_info` varchar(1024) NOT NULL,
  `created_at` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_llm`
--

CREATE TABLE `form_llm` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `allow_for_counselling` tinyint(1) NOT NULL,
  `category` varchar(256) NOT NULL,
  `region` varchar(256) NOT NULL,
  `candidate_first_name` varchar(40) NOT NULL,
  `candidate_middle_name` varchar(40) NOT NULL,
  `candidate_last_name` varchar(40) NOT NULL,
  `father_first_name` varchar(40) NOT NULL,
  `father_middle_name` varchar(40) NOT NULL,
  `father_last_name` varchar(40) NOT NULL,
  `mother_first_name` varchar(40) NOT NULL,
  `mother_middle_name` varchar(40) NOT NULL,
  `mother_last_name` varchar(40) NOT NULL,
  `father_qualification` varchar(40) NOT NULL,
  `mother_qualification` varchar(40) NOT NULL,
  `father_job` varchar(40) NOT NULL,
  `mother_job` varchar(40) NOT NULL,
  `father_job_designation` varchar(40) NOT NULL,
  `mother_job_designation` varchar(40) NOT NULL,
  `father_business_type` varchar(40) NOT NULL,
  `mother_business_type` varchar(40) NOT NULL,
  `father_number` bigint(20) UNSIGNED NOT NULL CHECK (`father_number` >= 0),
  `mother_number` bigint(20) UNSIGNED NOT NULL CHECK (`mother_number` >= 0),
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `candidate_number` bigint(20) UNSIGNED NOT NULL CHECK (`candidate_number` >= 0),
  `gender` varchar(10) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `dob` date NOT NULL,
  `board_12th` varchar(75) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(125) NOT NULL,
  `aggregate_12th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_12th` >= 0),
  `first_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`fourth_subject_12th` >= 0),
  `fifth_subject_12th` varchar(10) NOT NULL,
  `sixth_subject_12th` varchar(10) NOT NULL,
  `board_10th` varchar(75) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(125) NOT NULL,
  `aggregate_10th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_10th` >= 0),
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(10) NOT NULL,
  `other_subject_2_10th` varchar(10) NOT NULL,
  `ug_type` varchar(7) NOT NULL,
  `board_ug` varchar(75) NOT NULL,
  `year_of_ug` int(10) UNSIGNED NOT NULL CHECK (`year_of_ug` >= 0),
  `rollno_ug` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_ug` >= 0),
  `school_ug` varchar(125) NOT NULL,
  `aggregate_ug` varchar(125) NOT NULL,
  `cet_rank` int(10) UNSIGNED NOT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(20) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `special_achievements` varchar(250) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `graduation_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `ug_degree` varchar(100) NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(1024) NOT NULL,
  `forwarded_address` varchar(1024) NOT NULL,
  `browser_info` varchar(1024) NOT NULL,
  `created_at` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_login`
--

CREATE TABLE `form_login` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(80) NOT NULL,
  `password` varchar(40) NOT NULL,
  `candidate_name` varchar(60) NOT NULL,
  `candidate_email` varchar(60) NOT NULL,
  `candidate_mobile` bigint(20) UNSIGNED NOT NULL CHECK (`candidate_mobile` >= 0),
  `course` varchar(50) NOT NULL,
  `ip_address` varchar(256) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `form_ballb`
--
ALTER TABLE `form_ballb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_bba`
--
ALTER TABLE `form_bba`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_bballb`
--
ALTER TABLE `form_bballb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_bcom`
--
ALTER TABLE `form_bcom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_bjmc`
--
ALTER TABLE `form_bjmc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_eco`
--
ALTER TABLE `form_eco`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_llm`
--
ALTER TABLE `form_llm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_login`
--
ALTER TABLE `form_login`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `form_ballb`
--
ALTER TABLE `form_ballb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_bba`
--
ALTER TABLE `form_bba`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_bballb`
--
ALTER TABLE `form_bballb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_bcom`
--
ALTER TABLE `form_bcom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_bjmc`
--
ALTER TABLE `form_bjmc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_eco`
--
ALTER TABLE `form_eco`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_llm`
--
ALTER TABLE `form_llm`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_login`
--
ALTER TABLE `form_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- Database: `maitmq`
--
CREATE DATABASE IF NOT EXISTS `maitmq` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `maitmq`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add login', 1, 'add_login'),
(2, 'Can change login', 1, 'change_login'),
(3, 'Can delete login', 1, 'delete_login'),
(4, 'Can view login', 1, 'view_login'),
(5, 'Can add btech', 2, 'add_btech'),
(6, 'Can change btech', 2, 'change_btech'),
(7, 'Can delete btech', 2, 'delete_btech'),
(8, 'Can view btech', 2, 'view_btech'),
(9, 'Can add btech le', 3, 'add_btechle'),
(10, 'Can change btech le', 3, 'change_btechle'),
(11, 'Can delete btech le', 3, 'delete_btechle'),
(12, 'Can view btech le', 3, 'view_btechle'),
(13, 'Can add bba', 4, 'add_bba'),
(14, 'Can change bba', 4, 'change_bba'),
(15, 'Can delete bba', 4, 'delete_bba'),
(16, 'Can view bba', 4, 'view_bba'),
(17, 'Can add mba', 5, 'add_mba'),
(18, 'Can change mba', 5, 'change_mba'),
(19, 'Can delete mba', 5, 'delete_mba'),
(20, 'Can view mba', 5, 'view_mba'),
(21, 'Can add log entry', 6, 'add_logentry'),
(22, 'Can change log entry', 6, 'change_logentry'),
(23, 'Can delete log entry', 6, 'delete_logentry'),
(24, 'Can view log entry', 6, 'view_logentry'),
(25, 'Can add permission', 7, 'add_permission'),
(26, 'Can change permission', 7, 'change_permission'),
(27, 'Can delete permission', 7, 'delete_permission'),
(28, 'Can view permission', 7, 'view_permission'),
(29, 'Can add group', 8, 'add_group'),
(30, 'Can change group', 8, 'change_group'),
(31, 'Can delete group', 8, 'delete_group'),
(32, 'Can view group', 8, 'view_group'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add content type', 10, 'add_contenttype'),
(38, 'Can change content type', 10, 'change_contenttype'),
(39, 'Can delete content type', 10, 'delete_contenttype'),
(40, 'Can view content type', 10, 'view_contenttype'),
(41, 'Can add session', 11, 'add_session'),
(42, 'Can change session', 11, 'change_session'),
(43, 'Can delete session', 11, 'delete_session'),
(44, 'Can view session', 11, 'view_session');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(6, 'admin', 'logentry'),
(8, 'auth', 'group'),
(7, 'auth', 'permission'),
(9, 'auth', 'user'),
(10, 'contenttypes', 'contenttype'),
(4, 'form', 'bba'),
(2, 'form', 'btech'),
(3, 'form', 'btechle'),
(1, 'form', 'login'),
(5, 'form', 'mba'),
(11, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-05 17:08:45.683621'),
(2, 'auth', '0001_initial', '2023-08-05 17:08:46.529237'),
(3, 'admin', '0001_initial', '2023-08-05 17:08:46.800145'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-08-05 17:08:46.816267'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-05 17:08:46.824279'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-08-05 17:08:46.920827'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-08-05 17:08:47.018453'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-08-05 17:08:47.045626'),
(9, 'auth', '0004_alter_user_username_opts', '2023-08-05 17:08:47.051147'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-08-05 17:08:47.116689'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-08-05 17:08:47.124725'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-08-05 17:08:47.140683'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-08-05 17:08:47.163499'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-08-05 17:08:47.180013'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-08-05 17:08:47.199733'),
(16, 'auth', '0011_update_proxy_permissions', '2023-08-05 17:08:47.215353'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-08-05 17:08:47.238342'),
(18, 'sessions', '0001_initial', '2023-08-05 17:08:47.283518'),
(19, 'form', '0001_initial', '2023-08-05 17:09:29.865834'),
(20, 'form', '0002_bba_allow_for_counselling_and_more', '2023-08-05 17:50:39.145192'),
(21, 'form', '0003_bba_counselling_transaction_id_and_more', '2023-08-06 16:54:57.904492');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_bba`
--

CREATE TABLE `form_bba` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `candidate_first_name` varchar(40) NOT NULL,
  `candidate_middle_name` varchar(40) NOT NULL,
  `candidate_last_name` varchar(40) NOT NULL,
  `category` varchar(256) NOT NULL,
  `region` varchar(256) NOT NULL,
  `father_first_name` varchar(40) NOT NULL,
  `father_middle_name` varchar(40) NOT NULL,
  `father_last_name` varchar(40) NOT NULL,
  `mother_first_name` varchar(40) NOT NULL,
  `mother_middle_name` varchar(40) NOT NULL,
  `mother_last_name` varchar(40) NOT NULL,
  `father_qualification` varchar(40) NOT NULL,
  `mother_qualification` varchar(40) NOT NULL,
  `father_job` varchar(40) NOT NULL,
  `mother_job` varchar(40) NOT NULL,
  `father_job_designation` varchar(40) NOT NULL,
  `mother_job_designation` varchar(40) NOT NULL,
  `father_business_type` varchar(40) NOT NULL,
  `mother_business_type` varchar(40) NOT NULL,
  `father_number` bigint(20) UNSIGNED NOT NULL CHECK (`father_number` >= 0),
  `mother_number` bigint(20) UNSIGNED NOT NULL CHECK (`mother_number` >= 0),
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `candidate_number` bigint(20) UNSIGNED NOT NULL CHECK (`candidate_number` >= 0),
  `gender` varchar(10) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `dob` date NOT NULL,
  `board_12th` varchar(75) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(125) NOT NULL,
  `aggregate_12th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_12th` >= 0),
  `first_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`fourth_subject_12th` >= 0),
  `fifth_subject_12th` varchar(10) NOT NULL,
  `sixth_subject_12th` varchar(10) NOT NULL,
  `board_10th` varchar(75) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(125) NOT NULL,
  `aggregate_10th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_10th` >= 0),
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(10) NOT NULL,
  `other_subject_2_10th` varchar(10) NOT NULL,
  `cet_or_cuet` varchar(10) NOT NULL,
  `cet_rank` int(10) UNSIGNED NOT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(20) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `special_achievements` varchar(250) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(1024) NOT NULL,
  `forwarded_address` varchar(1024) NOT NULL,
  `browser_info` varchar(1024) NOT NULL,
  `created_at` varchar(256) NOT NULL,
  `allow_for_counselling` tinyint(1) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_btech`
--

CREATE TABLE `form_btech` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `candidate_first_name` varchar(40) NOT NULL,
  `candidate_middle_name` varchar(40) NOT NULL,
  `candidate_last_name` varchar(40) NOT NULL,
  `category` varchar(256) NOT NULL,
  `region` varchar(256) NOT NULL,
  `father_first_name` varchar(40) NOT NULL,
  `father_middle_name` varchar(40) NOT NULL,
  `father_last_name` varchar(40) NOT NULL,
  `mother_first_name` varchar(40) NOT NULL,
  `mother_middle_name` varchar(40) NOT NULL,
  `mother_last_name` varchar(40) NOT NULL,
  `father_qualification` varchar(40) NOT NULL,
  `mother_qualification` varchar(40) NOT NULL,
  `father_job` varchar(40) NOT NULL,
  `mother_job` varchar(40) NOT NULL,
  `father_job_designation` varchar(40) NOT NULL,
  `mother_job_designation` varchar(40) NOT NULL,
  `father_business_type` varchar(40) NOT NULL,
  `mother_business_type` varchar(40) NOT NULL,
  `father_number` bigint(20) UNSIGNED NOT NULL CHECK (`father_number` >= 0),
  `mother_number` bigint(20) UNSIGNED NOT NULL CHECK (`mother_number` >= 0),
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `candidate_number` bigint(20) UNSIGNED NOT NULL CHECK (`candidate_number` >= 0),
  `gender` varchar(10) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `dob` date NOT NULL,
  `board_12th` varchar(75) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(125) NOT NULL,
  `aggregate_12th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_12th` >= 0),
  `maths_12th` int(10) UNSIGNED NOT NULL CHECK (`maths_12th` >= 0),
  `physics_12th` int(10) UNSIGNED NOT NULL CHECK (`physics_12th` >= 0),
  `chemistry_12th` int(10) UNSIGNED NOT NULL CHECK (`chemistry_12th` >= 0),
  `english_12th` int(10) UNSIGNED NOT NULL CHECK (`english_12th` >= 0),
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(75) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(125) NOT NULL,
  `aggregate_10th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_10th` >= 0),
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(10) NOT NULL,
  `other_subject_2_10th` varchar(10) NOT NULL,
  `jee_rank` int(10) UNSIGNED NOT NULL CHECK (`jee_rank` >= 0),
  `jee_percentile` decimal(15,11) NOT NULL,
  `jee_rollno` varchar(60) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `special_achievements` varchar(250) NOT NULL,
  `preference1` varchar(150) NOT NULL,
  `preference2` varchar(150) NOT NULL,
  `preference3` varchar(150) NOT NULL,
  `preference4` varchar(150) NOT NULL,
  `preference5` varchar(150) NOT NULL,
  `preference6` varchar(150) NOT NULL,
  `preference7` varchar(150) NOT NULL,
  `preference8` varchar(150) NOT NULL,
  `preference9` varchar(150) NOT NULL,
  `preference10` varchar(150) NOT NULL,
  `preference11` varchar(150) NOT NULL,
  `preference12` varchar(150) NOT NULL,
  `preference13` varchar(150) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `jee_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(1024) NOT NULL,
  `forwarded_address` varchar(1024) NOT NULL,
  `browser_info` varchar(1024) NOT NULL,
  `created_at` varchar(256) NOT NULL,
  `allow_for_counselling` tinyint(1) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_btechle`
--

CREATE TABLE `form_btechle` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `allow_for_counselling` tinyint(1) NOT NULL,
  `candidate_first_name` varchar(40) NOT NULL,
  `candidate_middle_name` varchar(40) NOT NULL,
  `candidate_last_name` varchar(40) NOT NULL,
  `category` varchar(256) NOT NULL,
  `region` varchar(256) NOT NULL,
  `father_first_name` varchar(40) NOT NULL,
  `father_middle_name` varchar(40) NOT NULL,
  `father_last_name` varchar(40) NOT NULL,
  `mother_first_name` varchar(40) NOT NULL,
  `mother_middle_name` varchar(40) NOT NULL,
  `mother_last_name` varchar(40) NOT NULL,
  `father_qualification` varchar(40) NOT NULL,
  `mother_qualification` varchar(40) NOT NULL,
  `father_job` varchar(40) NOT NULL,
  `mother_job` varchar(40) NOT NULL,
  `father_job_designation` varchar(40) NOT NULL,
  `mother_job_designation` varchar(40) NOT NULL,
  `father_business_type` varchar(40) NOT NULL,
  `mother_business_type` varchar(40) NOT NULL,
  `father_number` bigint(20) UNSIGNED NOT NULL CHECK (`father_number` >= 0),
  `mother_number` bigint(20) UNSIGNED NOT NULL CHECK (`mother_number` >= 0),
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `candidate_number` bigint(20) UNSIGNED NOT NULL CHECK (`candidate_number` >= 0),
  `gender` varchar(10) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `dob` date NOT NULL,
  `board_12th` varchar(75) NOT NULL,
  `year_of_12th` varchar(75) NOT NULL,
  `rollno_12th` varchar(75) NOT NULL,
  `school_12th` varchar(125) NOT NULL,
  `aggregate_12th` varchar(75) NOT NULL,
  `maths_12th` varchar(75) NOT NULL,
  `physics_12th` varchar(75) NOT NULL,
  `chemistry_12th` varchar(75) NOT NULL,
  `english_12th` varchar(75) NOT NULL,
  `other_subject_12th` varchar(10) NOT NULL,
  `other_subject_2_12th` varchar(10) NOT NULL,
  `board_10th` varchar(75) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(125) NOT NULL,
  `aggregate_10th` varchar(75) NOT NULL,
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(10) NOT NULL,
  `other_subject_2_10th` varchar(10) NOT NULL,
  `diploma_bsc_type` varchar(7) NOT NULL,
  `board_diploma_bsc` varchar(75) NOT NULL,
  `year_of_diploma_bsc` varchar(75) NOT NULL,
  `rollno_diploma_bsc` varchar(75) NOT NULL,
  `school_diploma_bsc` varchar(125) NOT NULL,
  `aggregate_diploma_bsc` varchar(75) NOT NULL,
  `ug_degree` varchar(100) NOT NULL,
  `cet_rank` int(10) UNSIGNED NOT NULL CHECK (`cet_rank` >= 0),
  `cet_rollno` varchar(20) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `special_achievements` varchar(250) NOT NULL,
  `preference1` varchar(150) NOT NULL,
  `preference2` varchar(150) NOT NULL,
  `preference3` varchar(150) NOT NULL,
  `preference4` varchar(150) NOT NULL,
  `preference5` varchar(150) NOT NULL,
  `preference6` varchar(150) NOT NULL,
  `preference7` varchar(150) NOT NULL,
  `preference8` varchar(150) NOT NULL,
  `preference9` varchar(150) NOT NULL,
  `preference10` varchar(150) NOT NULL,
  `preference11` varchar(150) NOT NULL,
  `preference12` varchar(150) NOT NULL,
  `preference13` varchar(150) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cet_result` varchar(100) NOT NULL,
  `diploma_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(1024) NOT NULL,
  `forwarded_address` varchar(1024) NOT NULL,
  `browser_info` varchar(1024) NOT NULL,
  `created_at` varchar(256) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_login`
--

CREATE TABLE `form_login` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(80) NOT NULL,
  `password` varchar(40) NOT NULL,
  `candidate_name` varchar(60) NOT NULL,
  `candidate_email` varchar(60) NOT NULL,
  `candidate_mobile` bigint(20) UNSIGNED NOT NULL CHECK (`candidate_mobile` >= 0),
  `course` varchar(50) NOT NULL,
  `ip_address` varchar(256) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_login`
--

INSERT INTO `form_login` (`id`, `user_id`, `password`, `candidate_name`, `candidate_email`, `candidate_mobile`, `course`, `ip_address`, `created_at`) VALUES
(1, 'MAIT/MQ/2023-24/12660370', 'aNd4JgIuYs1a', 'Chanmeet S', 'chanmeetsinghsahni@gmail.com', 8800675489, 'MBA', '127.0.0.1', '2023-08-18 06:28:54.000000');

-- --------------------------------------------------------

--
-- Table structure for table `form_mba`
--

CREATE TABLE `form_mba` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(100) NOT NULL,
  `candidate_first_name` varchar(40) NOT NULL,
  `candidate_middle_name` varchar(40) NOT NULL,
  `candidate_last_name` varchar(40) NOT NULL,
  `category` varchar(256) NOT NULL,
  `region` varchar(256) NOT NULL,
  `father_first_name` varchar(40) NOT NULL,
  `father_middle_name` varchar(40) NOT NULL,
  `father_last_name` varchar(40) NOT NULL,
  `mother_first_name` varchar(40) NOT NULL,
  `mother_middle_name` varchar(40) NOT NULL,
  `mother_last_name` varchar(40) NOT NULL,
  `father_qualification` varchar(40) NOT NULL,
  `mother_qualification` varchar(40) NOT NULL,
  `father_job` varchar(40) NOT NULL,
  `mother_job` varchar(40) NOT NULL,
  `father_job_designation` varchar(40) NOT NULL,
  `mother_job_designation` varchar(40) NOT NULL,
  `father_business_type` varchar(40) NOT NULL,
  `mother_business_type` varchar(40) NOT NULL,
  `father_number` bigint(20) UNSIGNED NOT NULL CHECK (`father_number` >= 0),
  `mother_number` bigint(20) UNSIGNED NOT NULL CHECK (`mother_number` >= 0),
  `father_office_address` varchar(100) NOT NULL,
  `mother_office_address` varchar(100) NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `candidate_number` bigint(20) UNSIGNED NOT NULL CHECK (`candidate_number` >= 0),
  `gender` varchar(10) NOT NULL,
  `guardian_name` varchar(75) NOT NULL,
  `dob` date NOT NULL,
  `board_12th` varchar(75) NOT NULL,
  `year_of_12th` int(10) UNSIGNED NOT NULL CHECK (`year_of_12th` >= 0),
  `rollno_12th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_12th` >= 0),
  `school_12th` varchar(125) NOT NULL,
  `aggregate_12th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_12th` >= 0),
  `first_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`first_subject_12th` >= 0),
  `second_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`second_subject_12th` >= 0),
  `third_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`third_subject_12th` >= 0),
  `fourth_subject_12th` int(10) UNSIGNED NOT NULL CHECK (`fourth_subject_12th` >= 0),
  `fifth_subject_12th` varchar(10) NOT NULL,
  `sixth_subject_12th` varchar(10) NOT NULL,
  `board_10th` varchar(75) NOT NULL,
  `year_of_10th` int(10) UNSIGNED NOT NULL CHECK (`year_of_10th` >= 0),
  `rollno_10th` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_10th` >= 0),
  `school_10th` varchar(125) NOT NULL,
  `aggregate_10th` int(10) UNSIGNED NOT NULL CHECK (`aggregate_10th` >= 0),
  `maths_10th` int(10) UNSIGNED NOT NULL CHECK (`maths_10th` >= 0),
  `science_10th` int(10) UNSIGNED NOT NULL CHECK (`science_10th` >= 0),
  `english_10th` int(10) UNSIGNED NOT NULL CHECK (`english_10th` >= 0),
  `sst_10th` int(10) UNSIGNED NOT NULL CHECK (`sst_10th` >= 0),
  `other_subject_10th` varchar(10) NOT NULL,
  `other_subject_2_10th` varchar(10) NOT NULL,
  `cat_or_cmat` varchar(10) NOT NULL,
  `cat_or_cmat_rank` int(10) UNSIGNED NOT NULL CHECK (`cat_or_cmat_rank` >= 0),
  `cat_or_cmat_rollno` bigint(20) UNSIGNED NOT NULL CHECK (`cat_or_cmat_rollno` >= 0),
  `ug_type` varchar(7) NOT NULL,
  `board_ug` varchar(75) NOT NULL,
  `year_of_ug` int(10) UNSIGNED NOT NULL CHECK (`year_of_ug` >= 0),
  `rollno_ug` bigint(20) UNSIGNED NOT NULL CHECK (`rollno_ug` >= 0),
  `school_ug` varchar(125) NOT NULL,
  `aggregate_ug` varchar(125) NOT NULL,
  `ipu_registration` bigint(20) UNSIGNED NOT NULL CHECK (`ipu_registration` >= 0),
  `special_achievements` varchar(250) NOT NULL,
  `passport_photo` varchar(100) NOT NULL,
  `cat_or_cmat_result` varchar(100) NOT NULL,
  `marksheet_10th` varchar(100) NOT NULL,
  `marksheet_12th` varchar(100) NOT NULL,
  `aadhaar` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `ipuregistrationproof` varchar(100) NOT NULL,
  `ug_degree` varchar(100) NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `transaction_proof` varchar(100) NOT NULL,
  `ip_address` varchar(1024) NOT NULL,
  `forwarded_address` varchar(1024) NOT NULL,
  `browser_info` varchar(1024) NOT NULL,
  `created_at` varchar(256) NOT NULL,
  `allow_for_counselling` tinyint(1) NOT NULL,
  `counselling_transaction_id` varchar(255) NOT NULL,
  `counselling_transaction_proof` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `form_bba`
--
ALTER TABLE `form_bba`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_btech`
--
ALTER TABLE `form_btech`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_btechle`
--
ALTER TABLE `form_btechle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_login`
--
ALTER TABLE `form_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_mba`
--
ALTER TABLE `form_mba`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `form_bba`
--
ALTER TABLE `form_bba`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_btech`
--
ALTER TABLE `form_btech`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_btechle`
--
ALTER TABLE `form_btechle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_login`
--
ALTER TABLE `form_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `form_mba`
--
ALTER TABLE `form_mba`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-08-04 22:17:41', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":-81.01050000000001}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
