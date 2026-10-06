-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_prisma_auth
CREATE DATABASE IF NOT EXISTS `db_prisma_auth` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_prisma_auth`;

-- Dumping structure for table db_prisma_auth.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `User_email_key` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_prisma_auth.user: ~4 rows (approximately)
INSERT INTO `user` (`id`, `name`, `email`, `password`, `createdAt`) VALUES
	('44aee4fb-9824-4d89-ba93-54763c928f33', 'Gracia Tesalonika', 'tesuy@gmail.com', '$2b$10$ye0R8OqtHhjnYlAGTKIdV.fQkAmffAGW2xmIorf08Upg795Gn6ceC', '2026-10-06 03:37:42.614'),
	('91aadf52-0303-4285-8a59-ebc7984063b7', 'Najwa Roro', 'najwa@gmail.com', '$2b$10$fMCtqRxG3Rr1oEO/yDH2qeq6uM0MJ8v8Ph0wKVQyqz7oF8zu4mqAa', '2026-10-06 03:30:29.454'),
	('bd2e5175-fe20-4c7c-a758-001717eb9ac3', 'Neng Sarah', 'sarah@gmail.com', '$2b$10$VbR2VigXLyV9xVlyBZsMf.V7xoZpgrhDX0pE7FBAU1znC2svvlzfy', '2026-10-06 03:36:47.593'),
	('c272a003-48c0-435b-bf09-fd6cf8c1c35e', 'Afanin Kamila', 'fanin@gmail.com', '$2b$10$k0bJZ94kavmemCkmQ.TnmehqcBF7dva.Q0Xtp/Xf4CBIJbWKP2tr6', '2026-10-06 03:28:24.427');

-- Dumping structure for table db_prisma_auth._prisma_migrations
CREATE TABLE IF NOT EXISTS `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_prisma_auth._prisma_migrations: ~1 rows (approximately)
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
	('2a2c43d7-a814-4712-b535-31916aeb5240', 'dbc99e09fe4b06f0848d78f084c649c413bf748495d3ea6b80c864a0ebd7baad', '2026-10-06 01:54:40.229', '20261006015440_init_users', NULL, NULL, '2026-10-06 01:54:40.169', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
