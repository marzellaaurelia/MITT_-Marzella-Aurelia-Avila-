-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2022 at 05:59 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skills`
--

-- --------------------------------------------------------

--
-- Table structure for table `levelskill`
--

CREATE TABLE `levelskill` (
  `id` int(11) NOT NULL,
  `id_skill` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `levelskill`
--

INSERT INTO `levelskill` (`id`, `id_skill`, `level`) VALUES
(1, 2, 'Basic'),
(2, 5, '1');

-- --------------------------------------------------------

--
-- Table structure for table `masterlevel`
--

CREATE TABLE `masterlevel` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masterlevel`
--

INSERT INTO `masterlevel` (`id`, `level`) VALUES
(1, 'Beginner'),
(2, 'Basic'),
(3, 'Intermediate'),
(4, 'Advanced');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1658824167),
('m130524_201442_init', 1658824169),
('m190124_110200_add_verification_token_column_to_user_table', 1658824169);

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `nameSkill` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `nameSkill`) VALUES
(1, 'UI/UX Design'),
(2, 'Yii2 Framework'),
(3, 'MySQL'),
(4, 'Python'),
(5, 'Java'),
(6, 'jQuery'),
(7, 'Laravel Framework'),
(8, 'PHP'),
(9, 'Javascript'),
(10, 'SQLite');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `address`, `age`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'admin', 'Admin', 'Jl. Serdang Baru 1 Gang 6 No 5 C, Kemayoran, Jakarta Pusat', 24, 'LbdnfGLoF8XV9zKsKA44aALKod9NNX2q', '$2y$13$1VsvI8KMrjsc2yj1mkai3uwgYdFxNFeMoiMXuY4OSfW9VpOBnJdja', NULL, 'admin@example.com', 10, 1658824201, 1658824201, 'fhTBGSc4sLivz58vkfiX1AkgLnIXdTy1_1658824201'),
(2, 'aurel', 'Marzella Aurelia Avila', 'Jl. Sentosa No 174 Batipuh Panjang, Koto Tangah, Padang', 23, 'aftRbK_e6EKwFoPjEl8Zo4WZSf6nNWKH', '$2y$13$ZisHm4ckQQVRr5CeGCJs1.TCpSTZE99OsEzvzmUQWEE/2bnrxBS3e', NULL, 'marzellaaurelia93@gmail.com', 10, 1658839180, 1658839180, 'ap-Fnw4xzBvmu2Jel74iUaoARoGzAigq_1658839179');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `levelskill`
--
ALTER TABLE `levelskill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_skill` (`id_skill`);

--
-- Indexes for table `masterlevel`
--
ALTER TABLE `masterlevel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `levelskill`
--
ALTER TABLE `levelskill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `masterlevel`
--
ALTER TABLE `masterlevel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
