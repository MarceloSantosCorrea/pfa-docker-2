CREATE DATABASE IF NOT EXISTS laravel;
USE laravel;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
BEGIN;
COMMIT;
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2021_04_24_114935_create_modules_table', 1);
COMMIT;
DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
BEGIN;
INSERT INTO `modules` VALUES (1, 'Docker', '2021-05-01 20:29:28', '2021-05-01 20:29:28');
INSERT INTO `modules` VALUES (2, 'Fundamentos de Arquitetura de Software', '2021-05-01 20:29:28', '2021-05-01 20:29:28');
INSERT INTO `modules` VALUES (3, 'Comunicação', '2021-05-01 20:29:28', '2021-05-01 20:29:28');
INSERT INTO `modules` VALUES (4, 'RabbitMQ', '2021-05-01 20:29:28', '2021-05-01 20:29:28');
INSERT INTO `modules` VALUES (5, 'Autenticação e Keycloak', '2021-05-01 20:29:28', '2021-05-01 20:29:28');
INSERT INTO `modules` VALUES (6, 'Domain Driven Design e Arquitetura hexagonal', '2021-05-01 20:29:28', '2021-05-01 20:29:28');
INSERT INTO `modules` VALUES (7, 'Arquitetura do projeto prático - Codeflix', '2021-05-01 20:29:28', '2021-05-01 20:29:28');
INSERT INTO `modules` VALUES (8, 'Microsserviço: Catálogo de vídeos com Laravel ( Back-end )', '2021-05-01 20:29:28', '2021-05-01 20:29:28');
INSERT INTO `modules` VALUES (9, 'Microsserviço: Catálogo de vídeos com React ( Front-end )', '2021-05-01 20:29:28', '2021-05-01 20:29:28');
INSERT INTO `modules` VALUES (10, 'Microsserviço de Encoder de Vídeo com Go Lang', '2021-05-01 20:29:28', '2021-05-01 20:29:28');
INSERT INTO `modules` VALUES (11, 'Microsserviço - API do Catálogo com Node.JS (Back-end)', '2021-05-01 20:29:28', '2021-05-01 20:29:28');
INSERT INTO `modules` VALUES (12, 'Microsserviço - Aplicação do Assinante com React.js (Front-end)', '2021-05-01 20:29:28', '2021-05-01 20:29:28');
INSERT INTO `modules` VALUES (13, 'Autenticação entre os microsserviços', '2021-05-01 20:29:28', '2021-05-01 20:29:28');
COMMIT;
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
BEGIN;
COMMIT;
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
BEGIN;
COMMIT;
SET FOREIGN_KEY_CHECKS = 1;

