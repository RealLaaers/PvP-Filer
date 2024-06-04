-- --------------------------------------------------------
-- Vært:                         127.0.0.1
-- Server-version:               10.4.28-MariaDB - mariadb.org binary distribution
-- ServerOS:                     Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
-- Lavet af Laaers & Insery

-- Dumping database structure for relentless
CREATE DATABASE IF NOT EXISTS `relentless` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `relentless`;

-- Dumping structure for tabel relentless.bans
CREATE TABLE IF NOT EXISTS `bans` (
  `name` text DEFAULT NULL,
  `steam` text DEFAULT NULL,
  `license` text DEFAULT NULL,
  `discord` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table relentless.bans: ~1 rows (tilnærmelsesvis)
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
REPLACE INTO `bans` (`name`, `steam`, `license`, `discord`, `ip`, `reason`, `expire`, `bannedby`) VALUES
	('2E - insery', 'steam:110000141530bdb', 'license2:867c746bac66f5e84f63ae86cd2ceb02fa397f37', 'discord:1032792288964915200', 'ip:169.254.122.76', 'testa', 2147483647, '2E - insery');
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;

-- Dumping structure for tabel relentless.crew
CREATE TABLE IF NOT EXISTS `crew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `identifier` varchar(100) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table relentless.crew: ~0 rows (tilnærmelsesvis)
/*!40000 ALTER TABLE `crew` DISABLE KEYS */;
/*!40000 ALTER TABLE `crew` ENABLE KEYS */;

-- Dumping structure for tabel relentless.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table relentless.datastore: ~11 rows (tilnærmelsesvis)
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('dressing', 'Outfits\r\n', 0),
	('property', 'propleste', 0),
	('society_ambulance', 'EMS', 1),
	('society_police', 'Police', 1),
	('society_revisor', 'Revisor', 1),
	('society_taxi', 'Taxi', 1),
	('user_ears', 'Ears', 0),
	('user_glasses', 'Glasses', 0),
	('user_helmet', 'Helmet', 0),
	('user_mask', 'Mask', 0),
	('society_Våbenhandler', 'Våbenhandler', 1);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- Dumping structure for tabel relentless.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table relentless.datastore_data: ~47 rows (tilnærmelsesvis)
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
REPLACE INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(17084, 'society_ambulance', NULL, '{}'),
	(17085, 'society_police', NULL, '{}'),
	(17086, 'society_revisor', NULL, '{}'),
	(17087, 'society_taxi', NULL, '{}'),
	(17088, 'society_Våbenhandler', NULL, '{}'),
	(17089, 'dressing', 'char1:347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17090, 'property', 'char1:347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17091, 'user_ears', 'char1:347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17092, 'user_glasses', 'char1:347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17093, 'user_helmet', 'char1:347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17094, 'user_mask', 'char1:347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17095, 'dressing', 'char2:347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17096, 'user_ears', 'char2:347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17097, 'property', 'char2:347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17098, 'user_helmet', 'char2:347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17099, 'user_glasses', 'char2:347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17100, 'user_mask', 'char2:347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17101, 'dressing', '347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17102, 'user_ears', '347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17103, 'property', '347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17104, 'user_glasses', '347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17105, 'user_helmet', '347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17106, 'user_mask', '347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{}'),
	(17107, 'dressing', 'e99f2eb83aa90b3bc12627820bb597e44bcfb59f', '{}'),
	(17108, 'property', 'e99f2eb83aa90b3bc12627820bb597e44bcfb59f', '{}'),
	(17109, 'user_glasses', 'e99f2eb83aa90b3bc12627820bb597e44bcfb59f', '{}'),
	(17110, 'user_ears', 'e99f2eb83aa90b3bc12627820bb597e44bcfb59f', '{}'),
	(17111, 'user_helmet', 'e99f2eb83aa90b3bc12627820bb597e44bcfb59f', '{}'),
	(17112, 'user_mask', 'e99f2eb83aa90b3bc12627820bb597e44bcfb59f', '{}'),
	(17113, 'dressing', 'eeaa0ba5aa38bb56b58fafe52552e87f37a31a16', '{}'),
	(17114, 'property', 'eeaa0ba5aa38bb56b58fafe52552e87f37a31a16', '{}'),
	(17115, 'user_ears', 'eeaa0ba5aa38bb56b58fafe52552e87f37a31a16', '{}'),
	(17116, 'user_helmet', 'eeaa0ba5aa38bb56b58fafe52552e87f37a31a16', '{}'),
	(17117, 'user_glasses', 'eeaa0ba5aa38bb56b58fafe52552e87f37a31a16', '{}'),
	(17118, 'user_mask', 'eeaa0ba5aa38bb56b58fafe52552e87f37a31a16', '{}'),
	(17119, 'dressing', 'char1:e99f2eb83aa90b3bc12627820bb597e44bcfb59f', '{}'),
	(17120, 'property', 'char1:e99f2eb83aa90b3bc12627820bb597e44bcfb59f', '{}'),
	(17121, 'user_helmet', 'char1:e99f2eb83aa90b3bc12627820bb597e44bcfb59f', '{}'),
	(17122, 'user_ears', 'char1:e99f2eb83aa90b3bc12627820bb597e44bcfb59f', '{}'),
	(17123, 'user_glasses', 'char1:e99f2eb83aa90b3bc12627820bb597e44bcfb59f', '{}'),
	(17124, 'user_mask', 'char1:e99f2eb83aa90b3bc12627820bb597e44bcfb59f', '{}'),
	(17125, 'dressing', 'b28db3544e1b9230b2306ddcd2a265b0dad4e0bc', '{}'),
	(17126, 'property', 'b28db3544e1b9230b2306ddcd2a265b0dad4e0bc', '{}'),
	(17127, 'user_ears', 'b28db3544e1b9230b2306ddcd2a265b0dad4e0bc', '{}'),
	(17128, 'user_glasses', 'b28db3544e1b9230b2306ddcd2a265b0dad4e0bc', '{}'),
	(17129, 'user_helmet', 'b28db3544e1b9230b2306ddcd2a265b0dad4e0bc', '{}'),
	(17130, 'user_mask', 'b28db3544e1b9230b2306ddcd2a265b0dad4e0bc', '{}'),
	(17131, 'dressing', '28f7d8e907d1c36f26a3a5e89dc02ffb3dfa9a4d', '{}'),
	(17132, 'property', '28f7d8e907d1c36f26a3a5e89dc02ffb3dfa9a4d', '{}'),
	(17133, 'user_ears', '28f7d8e907d1c36f26a3a5e89dc02ffb3dfa9a4d', '{}'),
	(17134, 'user_glasses', '28f7d8e907d1c36f26a3a5e89dc02ffb3dfa9a4d', '{}'),
	(17135, 'user_helmet', '28f7d8e907d1c36f26a3a5e89dc02ffb3dfa9a4d', '{}'),
	(17136, 'user_mask', '28f7d8e907d1c36f26a3a5e89dc02ffb3dfa9a4d', '{}');
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- Dumping structure for tabel relentless.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table relentless.jobs: ~1 rows (tilnærmelsesvis)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
REPLACE INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('unemployed', 'Kontanthjælp', 0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for tabel relentless.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2050 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table relentless.job_grades: ~1 rows (tilnærmelsesvis)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
REPLACE INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'Arbejdsløs', 500, '{}', '{}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Dumping structure for tabel relentless.leaderboard
CREATE TABLE IF NOT EXISTS `leaderboard` (
  `identifier` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `kills` int(11) DEFAULT NULL,
  `deaths` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table relentless.leaderboard: ~2 rows (tilnærmelsesvis)
/*!40000 ALTER TABLE `leaderboard` DISABLE KEYS */;
REPLACE INTO `leaderboard` (`identifier`, `name`, `kills`, `deaths`, `score`) VALUES
	('steam:110000141a6f8e7', '2E Tonick', 13, 1, 55),
	('steam:110000141530bdb', '2E - insery', 8, 6, 0);
/*!40000 ALTER TABLE `leaderboard` ENABLE KEYS */;

-- Dumping structure for tabel relentless.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(46) DEFAULT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) NOT NULL DEFAULT 'civ',
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `storedhouse` int(11) DEFAULT NULL,
  `t1ger_keys` tinyint(1) NOT NULL DEFAULT 0,
  `t1ger_alarm` tinyint(1) NOT NULL DEFAULT 0,
  `model` varchar(60) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `category` varchar(60) DEFAULT NULL,
  `paidprice` int(11) NOT NULL DEFAULT 0,
  `finance` longtext DEFAULT NULL,
  `houseId` varchar(50) DEFAULT NULL,
  `wanted` tinyint(1) DEFAULT NULL,
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table relentless.owned_vehicles: ~0 rows (tilnærmelsesvis)
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;

-- Dumping structure for tabel relentless.ox_inventory
CREATE TABLE IF NOT EXISTS `ox_inventory` (
  `owner` varchar(60) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  UNIQUE KEY `owner` (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table relentless.ox_inventory: ~1 rows (tilnærmelsesvis)
/*!40000 ALTER TABLE `ox_inventory` DISABLE KEYS */;
REPLACE INTO `ox_inventory` (`owner`, `name`, `data`, `lastupdated`) VALUES
	('347f37a25e9f4edf60a4faa1329f3bf97b7329ed', 'admintrash', '[{"name":"ammo1","slot":1,"metadata":{"slot":1,"weight":1,"metadata":[],"label":"Argent Sale","close":true,"stack":true},"count":10000}]', '2023-10-12 23:52:47');
/*!40000 ALTER TABLE `ox_inventory` ENABLE KEYS */;

-- Dumping structure for tabel relentless.ranking_crew
CREATE TABLE IF NOT EXISTS `ranking_crew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `members` int(11) DEFAULT 1,
  `kills` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table relentless.ranking_crew: ~0 rows (tilnærmelsesvis)
/*!40000 ALTER TABLE `ranking_crew` DISABLE KEYS */;
/*!40000 ALTER TABLE `ranking_crew` ENABLE KEYS */;

-- Dumping structure for tabel relentless.users
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(46) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(255) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disabled` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `last_seen` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `phone_number` varchar(20) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `lastHouse` varchar(50) DEFAULT NULL,
  `officer_id` int(11) DEFAULT NULL,
  `tablet_notes` mediumtext NOT NULL DEFAULT '',
  `profile_logo` mediumtext NOT NULL DEFAULT 'https://i.imgur.com/YSXdYqv.png',
  `jail` int(11) NOT NULL DEFAULT 0,
  `tattoos` longtext DEFAULT NULL,
  `foto` longtext DEFAULT 'https://us.123rf.com/450wm/thesomeday123/thesomeday1231712/thesomeday123171200008/91087328-icono-de-perfil-de-avatar-predeterminado-para-mujer-marcador-de-posición-de-foto-gris-vector-de-ilus.jpg?ver=6',
  `search` varchar(255) DEFAULT '{"inSearch":false,"motivo":""}',
  `dangerous` varchar(255) DEFAULT '{"danger":false,"motivo":""}',
  PRIMARY KEY (`identifier`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `index_users_phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=1535 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table relentless.users: ~4 rows (tilnærmelsesvis)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`identifier`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `position`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `skin`, `status`, `id`, `disabled`, `last_property`, `created_at`, `last_seen`, `phone_number`, `pincode`, `lastHouse`, `officer_id`, `tablet_notes`, `profile_logo`, `jail`, `tattoos`, `foto`, `search`, `dangerous`) VALUES
	('28f7d8e907d1c36f26a3a5e89dc02ffb3dfa9a4d', '{"money":0,"bank":500000,"black_money":0}', 'user', '[{"count":1,"name":"WEAPON_PISTOL50","slot":1,"metadata":{"components":["at_clip_extended"],"ammo":12,"durability":100.0,"registered":"2E Profeten.gg","serial":"425264CPS353503"}},{"count":1,"name":"WEAPON_APPISTOL","slot":2,"metadata":{"components":[],"ammo":18,"durability":100.0,"registered":"2E Profeten.gg","serial":"932562VRF530305"}},{"name":"skudsikkervest100","slot":3,"count":5990},{"name":"ammo1","slot":19,"count":26603},{"name":"panodiler","slot":5,"count":293},{"name":"at_clip_extended","slot":10,"count":9}]', 'unemployed', 0, '[]', '{"z":31.2,"heading":205.8,"x":-269.4,"y":-955.3}', 'D', 'D', '08/02/2000', 'm', 143, '{"age_2":0,"age_1":0,"bracelets_1":-1,"blemishes_1":0,"watches_2":0,"sex":0,"eyebrows_4":0,"chain_1":0,"chest_2":0,"makeup_1":0,"glasses_2":0,"arms":0,"face":0,"hair_color_2":0,"makeup_3":0,"bproof_2":0,"glasses_1":0,"lipstick_3":0,"hair_2":0,"helmet_1":-1,"pants_1":0,"makeup_2":0,"complexion_1":0,"lipstick_1":0,"tshirt_2":0,"pants_2":0,"eyebrows_3":0,"hair_1":0,"eye_color":0,"decals_2":0,"watches_1":-1,"sun_1":0,"helmet_2":0,"eyebrows_2":0,"beard_4":0,"mask_2":0,"eyebrows_1":0,"moles_2":0,"skin":0,"chest_3":0,"bodyb_2":0,"beard_3":0,"bags_1":0,"sun_2":0,"bags_2":0,"blemishes_2":0,"beard_2":0,"ears_2":0,"shoes_1":0,"hair_color_1":0,"lipstick_2":0,"tshirt_1":0,"torso_2":0,"makeup_4":0,"shoes_2":0,"torso_1":0,"complexion_2":0,"blush_2":0,"moles_1":0,"bodyb_1":0,"decals_1":0,"arms_2":0,"mask_1":0,"ears_1":-1,"beard_1":0,"lipstick_4":0,"chest_1":0,"bproof_1":0,"blush_3":0,"bracelets_2":0,"chain_2":0,"blush_1":0}', NULL, 1533, 0, NULL, '2023-10-07 00:39:50', '2023-10-07 01:23:52', NULL, NULL, NULL, NULL, '', 'https://i.imgur.com/YSXdYqv.png', 0, NULL, 'https://us.123rf.com/450wm/thesomeday123/thesomeday1231712/thesomeday123171200008/91087328-icono-de-perfil-de-avatar-predeterminado-para-mujer-marcador-de-posición-de-foto-gris-vector-de-ilus.jpg?ver=6', '{"inSearch":false,"motivo":""}', '{"danger":false,"motivo":""}'),
	('347f37a25e9f4edf60a4faa1329f3bf97b7329ed', '{"black_money":0,"bank":500000,"money":0}', 'admin', '[{"metadata":{"ammo":2,"registered":"Benjamin Ahmed","durability":100.0,"serial":"152342XLP930536","components":[]},"slot":1,"name":"WEAPON_PISTOL50","count":1},{"slot":2,"name":"ammo1","count":9754}]', 'unemployed', 0, '[]', '{"y":-817.4,"x":-76.1,"heading":0.0,"z":326.2}', 'Benjamin', 'Ahmed', '10/07/1991', 'm', 204, '{"moles_1":0,"torso_1":0,"eyebrows_3":0,"face":0,"age_1":0,"eyebrows_4":0,"lipstick_3":0,"shoes_1":0,"ears_2":0,"lipstick_2":0,"blush_1":0,"pants_1":0,"hair_2":0,"beard_3":0,"sun_2":0,"makeup_2":0,"lipstick_4":0,"chest_1":0,"moles_2":0,"bodyb_1":0,"decals_2":0,"bracelets_2":0,"shoes_2":0,"watches_1":-1,"eyebrows_1":0,"blemishes_1":0,"chain_1":0,"tshirt_1":0,"bracelets_1":-1,"pants_2":0,"eye_color":0,"bags_1":0,"complexion_2":0,"skin":0,"bags_2":0,"beard_1":0,"hair_1":0,"arms_2":0,"bproof_1":0,"bproof_2":0,"glasses_2":0,"helmet_1":-1,"arms":0,"makeup_4":0,"chest_3":0,"chain_2":0,"watches_2":0,"age_2":0,"chest_2":0,"sun_1":0,"helmet_2":0,"blush_2":0,"blemishes_2":0,"tshirt_2":0,"hair_color_2":0,"mask_2":0,"makeup_3":0,"bodyb_2":0,"glasses_1":0,"complexion_1":0,"mask_1":0,"torso_2":0,"eyebrows_2":0,"decals_1":0,"sex":0,"beard_2":0,"makeup_1":0,"beard_4":0,"hair_color_1":0,"lipstick_1":0,"blush_3":0,"ears_1":-1}', NULL, 1532, 0, NULL, '2023-09-25 20:49:28', '2023-10-14 21:38:34', NULL, NULL, NULL, NULL, '', 'https://i.imgur.com/YSXdYqv.png', 0, '[]', 'https://us.123rf.com/450wm/thesomeday123/thesomeday1231712/thesomeday123171200008/91087328-icono-de-perfil-de-avatar-predeterminado-para-mujer-marcador-de-posición-de-foto-gris-vector-de-ilus.jpg?ver=6', '{"inSearch":false,"motivo":""}', '{"danger":false,"motivo":""}'),
	('b28db3544e1b9230b2306ddcd2a265b0dad4e0bc', '{"money":0,"black_money":0,"bank":500000}', 'admin', '[{"count":1,"slot":1,"name":"WEAPON_PISTOL50","metadata":{"components":[],"registered":"2E Tonick","serial":"362440RNX922240","ammo":9,"durability":100.0}},{"count":1,"slot":2,"name":"WEAPON_APPISTOL","metadata":{"components":[],"registered":"2E Tonick","serial":"382619EUO496263","ammo":9,"durability":100.0}},{"count":1,"slot":3,"name":"WEAPON_GUSENBERG","metadata":{"components":[],"registered":"Soeren Fiskaeg","serial":"635334IEC469554","ammo":16,"durability":100.0}},{"count":493,"name":"skudsikkervest100","slot":4},{"count":586,"name":"ammo1","slot":5},{"count":20,"name":"at_suppressor_light","slot":6},{"count":25,"name":"panodiler","slot":7},{"count":1,"name":"radio","slot":8},{"count":10,"name":"scope","slot":9},{"count":20,"name":"at_clip_extended","slot":10}]', 'unemployed', 0, '[]', '{"y":-955.3,"x":-269.4,"heading":205.8,"z":31.2}', 'Soeren', 'Fiskaeg', '02/02/1998', 'm', 210, '{"bodyb_1":0,"makeup_3":0,"torso_2":0,"bags_1":0,"beard_2":0,"moles_1":0,"beard_3":0,"ears_2":0,"hair_color_2":0,"bproof_1":0,"beard_1":0,"helmet_2":0,"lipstick_1":0,"bags_2":0,"skin":20,"mask_1":0,"bproof_2":0,"pants_2":0,"hair_1":6,"hair_2":0,"makeup_2":0,"shoes_2":0,"complexion_1":0,"chest_1":0,"chest_3":0,"blush_2":0,"eye_color":0,"sex":0,"arms_2":0,"watches_1":-1,"sun_1":0,"lipstick_4":0,"chest_2":0,"decals_2":0,"hair_color_1":9,"blush_1":0,"arms":0,"shoes_1":0,"bracelets_1":-1,"tshirt_2":0,"eyebrows_4":0,"blush_3":0,"eyebrows_3":0,"glasses_1":0,"tshirt_1":0,"moles_2":0,"face":1,"makeup_4":0,"chain_1":0,"glasses_2":0,"beard_4":0,"decals_1":0,"makeup_1":0,"chain_2":0,"age_2":0,"blemishes_1":0,"watches_2":0,"eyebrows_1":0,"complexion_2":0,"bodyb_2":0,"age_1":0,"blemishes_2":0,"lipstick_2":0,"lipstick_3":0,"torso_1":0,"mask_2":0,"ears_1":-1,"bracelets_2":0,"sun_2":0,"helmet_1":-1,"eyebrows_2":0,"pants_1":0}', NULL, 1534, 0, NULL, '2023-10-12 23:12:50', '2023-10-14 00:52:08', NULL, NULL, NULL, NULL, '', 'https://i.imgur.com/YSXdYqv.png', 0, '[]', 'https://us.123rf.com/450wm/thesomeday123/thesomeday1231712/thesomeday123171200008/91087328-icono-de-perfil-de-avatar-predeterminado-para-mujer-marcador-de-posición-de-foto-gris-vector-de-ilus.jpg?ver=6', '{"inSearch":false,"motivo":""}', '{"danger":false,"motivo":""}'),
	('e99f2eb83aa90b3bc12627820bb597e44bcfb59f', '{"black_money":0,"bank":500000,"money":0}', 'user', '[{"count":1,"metadata":{"durability":100.0,"components":[],"registered":"2E MYRIC","ammo":2,"serial":"290531VOM699161"},"name":"WEAPON_VINTAGEPISTOL","slot":1},{"count":1909,"name":"ammo1","slot":2},{"count":6,"name":"water","slot":3}]', 'unemployed', 0, '[]', '{"x":-1507.4,"y":-2996.0,"z":-83.0,"heading":297.7}', 'Benny', 'Larsen', '07/12/1998', 'm', 141, '{"chain_2":0,"bracelets_1":-1,"sun_1":0,"makeup_3":0,"lipstick_4":0,"chest_2":0,"shoes_1":0,"moles_2":0,"chest_1":0,"decals_2":0,"chest_3":0,"beard_3":0,"eyebrows_1":0,"makeup_1":0,"age_2":0,"mask_1":0,"bproof_1":0,"bracelets_2":0,"blemishes_1":0,"mask_2":0,"glasses_1":0,"watches_2":0,"makeup_2":0,"bproof_2":0,"beard_1":0,"blemishes_2":0,"pants_1":0,"hair_1":0,"blush_1":0,"ears_2":0,"hair_color_1":0,"sex":0,"moles_1":0,"pants_2":0,"complexion_2":0,"hair_2":0,"bags_2":0,"tshirt_2":0,"torso_2":0,"glasses_2":0,"bodyb_2":0,"beard_4":0,"ears_1":-1,"tshirt_1":0,"sun_2":0,"blush_2":0,"beard_2":0,"blush_3":0,"chain_1":0,"eyebrows_2":0,"bodyb_1":0,"lipstick_2":0,"bags_1":0,"eye_color":0,"lipstick_3":0,"face":0,"complexion_1":0,"age_1":0,"helmet_1":-1,"hair_color_2":0,"arms":0,"torso_1":0,"watches_1":-1,"shoes_2":0,"eyebrows_4":0,"eyebrows_3":0,"makeup_4":0,"lipstick_1":0,"arms_2":0,"skin":0,"decals_1":0,"helmet_2":0}', NULL, 1531, 0, NULL, '2023-09-25 20:48:05', '2023-10-05 18:26:58', NULL, NULL, NULL, NULL, '', 'https://i.imgur.com/YSXdYqv.png', 0, NULL, 'https://us.123rf.com/450wm/thesomeday123/thesomeday1231712/thesomeday123171200008/91087328-icono-de-perfil-de-avatar-predeterminado-para-mujer-marcador-de-posición-de-foto-gris-vector-de-ilus.jpg?ver=6', '{"inSearch":false,"motivo":""}', '{"danger":false,"motivo":""}');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
