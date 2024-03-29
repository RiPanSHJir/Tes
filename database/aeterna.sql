-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for legacy194
CREATE DATABASE IF NOT EXISTS `legacy194` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `legacy194`;

-- Dumping structure for table legacy194.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.addon_account: ~8 rows (approximately)
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
REPLACE INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('bank_savings', 'Savings account', 0),
	('caution', 'caution', 0),
	('society_ambulance', 'EMS', 1),
	('society_banker', 'Bank', 1),
	('society_cardealer', 'Cardealer', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_police', 'Police', 1),
	('society_taxi', 'Taxi', 1);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- Dumping structure for table legacy194.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.addon_account_data: ~10 rows (approximately)
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
REPLACE INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1, 'society_cardealer', 0, NULL),
	(2, 'society_police', 0, NULL),
	(3, 'society_ambulance', 0, NULL),
	(4, 'society_mechanic', 0, NULL),
	(5, 'society_taxi', 0, NULL),
	(9, 'society_banker', 0, NULL),
	(10, 'caution', 0, 'char1:0480dc4699b39928d7bf1206b80a8e96e03f1715'),
	(11, 'bank_savings', 0, 'char1:0480dc4699b39928d7bf1206b80a8e96e03f1715'),
	(12, 'bank_savings', 0, 'char1:11000010f35ae78'),
	(13, 'caution', 0, 'char1:11000010f35ae78');
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- Dumping structure for table legacy194.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.addon_inventory: ~5 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
REPLACE INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_ambulance', 'EMS', 1),
	('society_cardealer', 'Cardealer', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_police', 'Police', 1),
	('society_taxi', 'Taxi', 1);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;

-- Dumping structure for table legacy194.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.addon_inventory_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;

-- Dumping structure for table legacy194.banking
CREATE TABLE IF NOT EXISTS `banking` (
  `identifier` varchar(46) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `amount` int(64) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `balance` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.banking: ~0 rows (approximately)
/*!40000 ALTER TABLE `banking` DISABLE KEYS */;
/*!40000 ALTER TABLE `banking` ENABLE KEYS */;

-- Dumping structure for table legacy194.billing
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(46) DEFAULT NULL,
  `sender` varchar(60) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.billing: ~0 rows (approximately)
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;

-- Dumping structure for table legacy194.cardealer_vehicles
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.cardealer_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;

-- Dumping structure for table legacy194.crypto_transactions
CREATE TABLE IF NOT EXISTS `crypto_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(46) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.crypto_transactions: ~0 rows (approximately)
/*!40000 ALTER TABLE `crypto_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `crypto_transactions` ENABLE KEYS */;

-- Dumping structure for table legacy194.darkchat_messages
CREATE TABLE IF NOT EXISTS `darkchat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(46) DEFAULT NULL,
  `name` varchar(50) DEFAULT '',
  `messages` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.darkchat_messages: ~0 rows (approximately)
/*!40000 ALTER TABLE `darkchat_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `darkchat_messages` ENABLE KEYS */;

-- Dumping structure for table legacy194.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.datastore: ~9 rows (approximately)
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
REPLACE INTO `datastore` (`name`, `label`, `shared`) VALUES
	('property', 'Property', 0),
	('society_ambulance', 'EMS', 1),
	('society_mechanic', 'Mechanic', 1),
	('society_police', 'Police', 1),
	('society_taxi', 'Taxi', 1),
	('user_ears', 'Ears', 0),
	('user_glasses', 'Glasses', 0),
	('user_helmet', 'Helmet', 0),
	('user_mask', 'Mask', 0);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- Dumping structure for table legacy194.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.datastore_data: ~77 rows (approximately)
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
REPLACE INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1, 'society_police', NULL, '{}'),
	(2, 'society_ambulance', NULL, '{}'),
	(3, 'society_mechanic', NULL, '{}'),
	(4, 'society_taxi', NULL, '{}'),
	(5, 'property', NULL, '{}'),
	(6, 'property', NULL, '{}'),
	(7, 'user_helmet', 'char1:0480dc4699b39928d7bf1206b80a8e96e03f1715', '{}'),
	(8, 'user_ears', 'char1:0480dc4699b39928d7bf1206b80a8e96e03f1715', '{}'),
	(9, 'property', 'char1:0480dc4699b39928d7bf1206b80a8e96e03f1715', '{}'),
	(10, 'user_glasses', 'char1:0480dc4699b39928d7bf1206b80a8e96e03f1715', '{}'),
	(11, 'user_mask', 'char1:0480dc4699b39928d7bf1206b80a8e96e03f1715', '{}'),
	(12, 'property', NULL, '{}'),
	(13, 'property', NULL, '{}'),
	(14, 'property', NULL, '{}'),
	(15, 'property', 'char1:11000010f35ae78', '{}'),
	(16, 'user_helmet', 'char1:11000010f35ae78', '{}'),
	(17, 'user_ears', 'char1:11000010f35ae78', '{}'),
	(18, 'user_glasses', 'char1:11000010f35ae78', '{}'),
	(19, 'user_mask', 'char1:11000010f35ae78', '{}'),
	(20, 'property', NULL, '{}'),
	(21, 'property', NULL, '{}'),
	(22, 'property', NULL, '{}'),
	(23, 'property', NULL, '{}'),
	(24, 'property', NULL, '{}'),
	(25, 'property', NULL, '{}'),
	(26, 'property', NULL, '{}'),
	(27, 'property', NULL, '{}'),
	(28, 'property', NULL, '{}'),
	(29, 'property', NULL, '{}'),
	(30, 'property', NULL, '{}'),
	(31, 'property', NULL, '{}'),
	(32, 'property', NULL, '{}'),
	(33, 'property', NULL, '{}'),
	(34, 'property', NULL, '{}'),
	(35, 'property', NULL, '{}'),
	(36, 'property', NULL, '{}'),
	(37, 'property', NULL, '{}'),
	(38, 'property', NULL, '{}'),
	(39, 'property', NULL, '{}'),
	(40, 'property', NULL, '{}'),
	(41, 'property', NULL, '{}'),
	(42, 'property', NULL, '{}'),
	(43, 'property', NULL, '{}'),
	(44, 'property', NULL, '{}'),
	(45, 'property', NULL, '{}'),
	(46, 'property', NULL, '{}'),
	(47, 'property', NULL, '{}'),
	(48, 'property', NULL, '{}'),
	(49, 'property', NULL, '{}'),
	(50, 'property', NULL, '{}'),
	(51, 'property', NULL, '{}'),
	(52, 'property', NULL, '{}'),
	(53, 'property', NULL, '{}'),
	(54, 'property', NULL, '{}'),
	(55, 'property', NULL, '{}'),
	(56, 'property', NULL, '{}'),
	(57, 'property', NULL, '{}'),
	(58, 'property', NULL, '{}'),
	(59, 'property', NULL, '{}'),
	(60, 'property', NULL, '{}'),
	(61, 'property', NULL, '{}'),
	(62, 'property', NULL, '{}'),
	(63, 'property', NULL, '{}'),
	(64, 'property', NULL, '{}'),
	(65, 'property', NULL, '{}'),
	(66, 'property', NULL, '{}'),
	(67, 'property', NULL, '{}'),
	(68, 'property', NULL, '{}'),
	(69, 'property', NULL, '{}'),
	(70, 'property', NULL, '{}'),
	(71, 'property', NULL, '{}'),
	(72, 'property', NULL, '{}'),
	(73, 'property', NULL, '{}'),
	(74, 'property', NULL, '{}'),
	(75, 'property', NULL, '{}'),
	(76, 'property', NULL, '{}'),
	(77, 'property', NULL, '{}'),
	(78, 'property', NULL, '{}');
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- Dumping structure for table legacy194.esegovic_bans
CREATE TABLE IF NOT EXISTS `esegovic_bans` (
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` int(20) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table legacy194.esegovic_bans: 0 rows
/*!40000 ALTER TABLE `esegovic_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `esegovic_bans` ENABLE KEYS */;

-- Dumping structure for table legacy194.financedata
CREATE TABLE IF NOT EXISTS `financedata` (
  `identifier` varchar(46) DEFAULT NULL,
  `max` int(64) DEFAULT NULL,
  `financed` longtext DEFAULT NULL,
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.financedata: ~0 rows (approximately)
/*!40000 ALTER TABLE `financedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `financedata` ENABLE KEYS */;

-- Dumping structure for table legacy194.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.fine_types: ~52 rows (approximately)
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Misuse of a horn', 30, 0),
	(2, 'Illegally Crossing a continuous Line', 40, 0),
	(3, 'Driving on the wrong side of the road', 250, 0),
	(4, 'Illegal U-Turn', 250, 0),
	(5, 'Illegally Driving Off-road', 170, 0),
	(6, 'Refusing a Lawful Command', 30, 0),
	(7, 'Illegally Stopping a Vehicle', 150, 0),
	(8, 'Illegal Parking', 70, 0),
	(9, 'Failing to Yield to the right', 70, 0),
	(10, 'Failure to comply with Vehicle Information', 90, 0),
	(11, 'Failing to stop at a Stop Sign ', 105, 0),
	(12, 'Failing to stop at a Red Light', 130, 0),
	(13, 'Illegal Passing', 100, 0),
	(14, 'Driving an illegal Vehicle', 100, 0),
	(15, 'Driving without a License', 1500, 0),
	(16, 'Hit and Run', 800, 0),
	(17, 'Exceeding Speeds Over < 5 mph', 90, 0),
	(18, 'Exceeding Speeds Over 5-15 mph', 120, 0),
	(19, 'Exceeding Speeds Over 15-30 mph', 180, 0),
	(20, 'Exceeding Speeds Over > 30 mph', 300, 0),
	(21, 'Impeding traffic flow', 110, 1),
	(22, 'Public Intoxication', 90, 1),
	(23, 'Disorderly conduct', 90, 1),
	(24, 'Obstruction of Justice', 130, 1),
	(25, 'Insults towards Civilans', 75, 1),
	(26, 'Disrespecting of an LEO', 110, 1),
	(27, 'Verbal Threat towards a Civilan', 90, 1),
	(28, 'Verbal Threat towards an LEO', 150, 1),
	(29, 'Providing False Information', 250, 1),
	(30, 'Attempt of Corruption', 1500, 1),
	(31, 'Brandishing a weapon in city Limits', 120, 2),
	(32, 'Brandishing a Lethal Weapon in city Limits', 300, 2),
	(33, 'No Firearms License', 600, 2),
	(34, 'Possession of an Illegal Weapon', 700, 2),
	(35, 'Possession of Burglary Tools', 300, 2),
	(36, 'Grand Theft Auto', 1800, 2),
	(37, 'Intent to Sell/Distrube of an illegal Substance', 1500, 2),
	(38, 'Frabrication of an Illegal Substance', 1500, 2),
	(39, 'Possession of an Illegal Substance ', 650, 2),
	(40, 'Kidnapping of a Civilan', 1500, 2),
	(41, 'Kidnapping of an LEO', 2000, 2),
	(42, 'Robbery', 650, 2),
	(43, 'Armed Robbery of a Store', 650, 2),
	(44, 'Armed Robbery of a Bank', 1500, 2),
	(45, 'Assault on a Civilian', 2000, 3),
	(46, 'Assault of an LEO', 2500, 3),
	(47, 'Attempt of Murder of a Civilian', 3000, 3),
	(48, 'Attempt of Murder of an LEO', 5000, 3),
	(49, 'Murder of a Civilian', 10000, 3),
	(50, 'Murder of an LEO', 30000, 3),
	(51, 'Involuntary manslaughter', 1800, 3),
	(52, 'Fraud', 2000, 2);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;

-- Dumping structure for table legacy194.garagekeys
CREATE TABLE IF NOT EXISTS `garagekeys` (
  `identifier` varchar(46) NOT NULL,
  `keys` longtext DEFAULT NULL,
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.garagekeys: ~0 rows (approximately)
/*!40000 ALTER TABLE `garagekeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `garagekeys` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_app_chat
CREATE TABLE IF NOT EXISTS `gksphone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table legacy194.gksphone_app_chat: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_app_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_app_chat` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_bank_transfer
CREATE TABLE IF NOT EXISTS `gksphone_bank_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `identifier` longtext DEFAULT NULL,
  `price` longtext NOT NULL,
  `name` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.gksphone_bank_transfer: ~4 rows (approximately)
/*!40000 ALTER TABLE `gksphone_bank_transfer` DISABLE KEYS */;
REPLACE INTO `gksphone_bank_transfer` (`id`, `type`, `identifier`, `price`, `name`, `time`) VALUES
	(1, 1, 'char1:0480dc4699b39928d7bf1206b80a8e96e03f1715', '100', 'Valet Fee', '2023-05-24 00:39:24'),
	(2, 1, 'char1:0480dc4699b39928d7bf1206b80a8e96e03f1715', '100', 'Valet Fee', '2023-05-24 00:39:39'),
	(3, 1, 'char1:0480dc4699b39928d7bf1206b80a8e96e03f1715', '100', 'Valet Fee', '2023-05-26 00:58:32'),
	(4, 1, 'char1:0480dc4699b39928d7bf1206b80a8e96e03f1715', '100', 'Valet Fee', '2023-05-26 00:58:55');
/*!40000 ALTER TABLE `gksphone_bank_transfer` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_blockednumber
CREATE TABLE IF NOT EXISTS `gksphone_blockednumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` longtext NOT NULL,
  `hex` longtext NOT NULL,
  `number` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.gksphone_blockednumber: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_blockednumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_blockednumber` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_calls
CREATE TABLE IF NOT EXISTS `gksphone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` longtext NOT NULL COMMENT 'Num tel proprio',
  `num` longtext NOT NULL COMMENT 'Num refÃ©rence du contact',
  `incoming` int(11) NOT NULL COMMENT 'DÃ©fini si on est Ã  l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table legacy194.gksphone_calls: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_calls` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_gallery
CREATE TABLE IF NOT EXISTS `gksphone_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hex` longtext NOT NULL,
  `image` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.gksphone_gallery: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_gallery` DISABLE KEYS */;
REPLACE INTO `gksphone_gallery` (`id`, `hex`, `image`, `time`) VALUES
	(1, 'char1:0480dc4699b39928d7bf1206b80a8e96e03f1715', '0', '2023-05-26 00:58:20');
/*!40000 ALTER TABLE `gksphone_gallery` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_gotur
CREATE TABLE IF NOT EXISTS `gksphone_gotur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` longtext NOT NULL,
  `price` int(11) DEFAULT 0,
  `count` int(11) NOT NULL,
  `item` longtext NOT NULL,
  `kapat` varchar(50) DEFAULT 'false',
  `adet` int(11) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.gksphone_gotur: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_gotur` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_gotur` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_gps
CREATE TABLE IF NOT EXISTS `gksphone_gps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hex` longtext NOT NULL,
  `nott` longtext DEFAULT NULL,
  `gps` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.gksphone_gps: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_gps` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_gps` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_group_message
CREATE TABLE IF NOT EXISTS `gksphone_group_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `owner` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ownerphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacts` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupid` (`groupid`) USING BTREE,
  CONSTRAINT `FK_phonegroupmessage` FOREIGN KEY (`groupid`) REFERENCES `gksphone_messages_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table legacy194.gksphone_group_message: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_group_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_group_message` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_insto_accounts
CREATE TABLE IF NOT EXISTS `gksphone_insto_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forename` longtext COLLATE utf8mb4_bin NOT NULL,
  `surname` longtext COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(250) CHARACTER SET utf8 NOT NULL,
  `password` longtext COLLATE utf8mb4_bin NOT NULL,
  `avatar_url` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `takip` longtext COLLATE utf8mb4_bin DEFAULT '[]',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table legacy194.gksphone_insto_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_insto_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_insto_accounts` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_insto_instas
CREATE TABLE IF NOT EXISTS `gksphone_insto_instas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `filters` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_gksphone_insto_instas_gksphone_insto_accounts` (`authorId`),
  CONSTRAINT `FK_gksphone_insto_instas_gksphone_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_insto_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table legacy194.gksphone_insto_instas: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_insto_instas` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_insto_instas` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_insto_likes
CREATE TABLE IF NOT EXISTS `gksphone_insto_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `inapId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gksphone_insto_likes_gksphone_insto_accounts` (`authorId`),
  KEY `FK_gksphone_insto_likes_gksphone_insto_instas` (`inapId`),
  CONSTRAINT `FK_gksphone_insto_likes_gksphone_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_insto_accounts` (`id`),
  CONSTRAINT `FK_gksphone_insto_likes_gksphone_insto_instas` FOREIGN KEY (`inapId`) REFERENCES `gksphone_insto_instas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table legacy194.gksphone_insto_likes: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_insto_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_insto_likes` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_insto_story
CREATE TABLE IF NOT EXISTS `gksphone_insto_story` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stories` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isRead` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_gksphone_insto_story_gksphone_insto_accounts` (`authorId`) USING BTREE,
  CONSTRAINT `FK_gksphone_insto_story_gksphone_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_insto_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table legacy194.gksphone_insto_story: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_insto_story` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_insto_story` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_job_message
CREATE TABLE IF NOT EXISTS `gksphone_job_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `number` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `photo` longtext DEFAULT NULL,
  `gps` varchar(255) NOT NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `jobm` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.gksphone_job_message: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_job_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_job_message` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_mails
CREATE TABLE IF NOT EXISTS `gksphone_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL DEFAULT '0',
  `sender` varchar(255) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '0',
  `image` text NOT NULL,
  `message` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table legacy194.gksphone_mails: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_mails` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_mails` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_messages
CREATE TABLE IF NOT EXISTS `gksphone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table legacy194.gksphone_messages: 0 rows
/*!40000 ALTER TABLE `gksphone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_messages` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_messages_group
CREATE TABLE IF NOT EXISTS `gksphone_messages_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` longtext NOT NULL,
  `ownerphone` varchar(50) NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `gimage` longtext NOT NULL,
  `contacts` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table legacy194.gksphone_messages_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_messages_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_messages_group` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_news
CREATE TABLE IF NOT EXISTS `gksphone_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hex` longtext DEFAULT NULL,
  `haber` longtext DEFAULT NULL,
  `baslik` longtext DEFAULT NULL,
  `resim` longtext DEFAULT NULL,
  `video` longtext DEFAULT NULL,
  `zaman` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table legacy194.gksphone_news: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_news` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_settings
CREATE TABLE IF NOT EXISTS `gksphone_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` longtext NOT NULL,
  `crypto` longtext NOT NULL DEFAULT '{}',
  `phone_number` varchar(50) DEFAULT NULL,
  `avatar_url` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.gksphone_settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_settings` DISABLE KEYS */;
REPLACE INTO `gksphone_settings` (`id`, `identifier`, `crypto`, `phone_number`, `avatar_url`) VALUES
	(1, 'char1:0480dc4699b39928d7bf1206b80a8e96e03f1715', '{}', '1287567', NULL);
/*!40000 ALTER TABLE `gksphone_settings` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_tinderacc
CREATE TABLE IF NOT EXISTS `gksphone_tinderacc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `passaword` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table legacy194.gksphone_tinderacc: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_tinderacc` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_tinderacc` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_tindermatch
CREATE TABLE IF NOT EXISTS `gksphone_tindermatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `friend_id` int(11) NOT NULL DEFAULT 0,
  `is_match` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table legacy194.gksphone_tindermatch: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_tindermatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_tindermatch` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_tindermessage
CREATE TABLE IF NOT EXISTS `gksphone_tindermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `tinderes` text NOT NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table legacy194.gksphone_tindermessage: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_tindermessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_tindermessage` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_twitter_accounts
CREATE TABLE IF NOT EXISTS `gksphone_twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `profilavatar` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table legacy194.gksphone_twitter_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_twitter_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_twitter_accounts` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_twitter_likes
CREATE TABLE IF NOT EXISTS `gksphone_twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gksphone_twitter_likes_gksphone_twitter_accounts` (`authorId`),
  KEY `FK_gksphone_twitter_likes_gksphone_twitter_tweets` (`tweetId`),
  CONSTRAINT `FK_gksphone_twitter_likes_gksphone_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_twitter_accounts` (`id`),
  CONSTRAINT `FK_gksphone_twitter_likes_gksphone_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `gksphone_twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table legacy194.gksphone_twitter_likes: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_twitter_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_twitter_likes` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_twitter_tweets
CREATE TABLE IF NOT EXISTS `gksphone_twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_gksphone_twitter_tweets_gksphone_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_gksphone_twitter_tweets_gksphone_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_twitter_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table legacy194.gksphone_twitter_tweets: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_twitter_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_twitter_tweets` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_users_contacts
CREATE TABLE IF NOT EXISTS `gksphone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` longtext CHARACTER SET utf8mb4 DEFAULT '-1',
  `avatar` longtext NOT NULL DEFAULT 'https://cdn.iconscout.com/icon/free/png-256/avatar-370-456322.png',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table legacy194.gksphone_users_contacts: 0 rows
/*!40000 ALTER TABLE `gksphone_users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_users_contacts` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_vehicle_sales
CREATE TABLE IF NOT EXISTS `gksphone_vehicle_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` longtext NOT NULL,
  `ownerphone` varchar(255) NOT NULL,
  `plate` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table legacy194.gksphone_vehicle_sales: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_vehicle_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_vehicle_sales` ENABLE KEYS */;

-- Dumping structure for table legacy194.gksphone_yellow
CREATE TABLE IF NOT EXISTS `gksphone_yellow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table legacy194.gksphone_yellow: ~0 rows (approximately)
/*!40000 ALTER TABLE `gksphone_yellow` DISABLE KEYS */;
/*!40000 ALTER TABLE `gksphone_yellow` ENABLE KEYS */;

-- Dumping structure for table legacy194.impound_garage
CREATE TABLE IF NOT EXISTS `impound_garage` (
  `garage` varchar(64) NOT NULL DEFAULT '',
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`garage`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.impound_garage: ~5 rows (approximately)
/*!40000 ALTER TABLE `impound_garage` DISABLE KEYS */;
REPLACE INTO `impound_garage` (`garage`, `data`) VALUES
	('air_impound', '[]'),
	('boat_impound', '[]'),
	('impound_davis', '[]'),
	('impound_mrpd', '[]'),
	('impound_vespucci', '[]');
/*!40000 ALTER TABLE `impound_garage` ENABLE KEYS */;

-- Dumping structure for table legacy194.instagram_account
CREATE TABLE IF NOT EXISTS `instagram_account` (
  `id` varchar(90) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `verify` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.instagram_account: ~0 rows (approximately)
/*!40000 ALTER TABLE `instagram_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `instagram_account` ENABLE KEYS */;

-- Dumping structure for table legacy194.instagram_followers
CREATE TABLE IF NOT EXISTS `instagram_followers` (
  `username` varchar(50) NOT NULL,
  `followed` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.instagram_followers: ~0 rows (approximately)
/*!40000 ALTER TABLE `instagram_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `instagram_followers` ENABLE KEYS */;

-- Dumping structure for table legacy194.instagram_posts
CREATE TABLE IF NOT EXISTS `instagram_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `location` varchar(50) NOT NULL,
  `filter` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `likes` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.instagram_posts: ~0 rows (approximately)
/*!40000 ALTER TABLE `instagram_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `instagram_posts` ENABLE KEYS */;

-- Dumping structure for table legacy194.instagram_stories
CREATE TABLE IF NOT EXISTS `instagram_stories` (
  `owner` varchar(46) COLLATE armscii8_bin NOT NULL,
  `data` text COLLATE armscii8_bin DEFAULT NULL,
  PRIMARY KEY (`owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Dumping data for table legacy194.instagram_stories: ~0 rows (approximately)
/*!40000 ALTER TABLE `instagram_stories` DISABLE KEYS */;
/*!40000 ALTER TABLE `instagram_stories` ENABLE KEYS */;

-- Dumping structure for table legacy194.insta_stories
CREATE TABLE IF NOT EXISTS `insta_stories` (
  `username` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `filter` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.insta_stories: ~0 rows (approximately)
/*!40000 ALTER TABLE `insta_stories` DISABLE KEYS */;
/*!40000 ALTER TABLE `insta_stories` ENABLE KEYS */;

-- Dumping structure for table legacy194.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.items: ~33 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
REPLACE INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('alive_chicken', 'Living chicken', 1, 0, 1),
	('bandage', 'Bandage', 2, 0, 1),
	('blowpipe', 'Blowtorch', 2, 0, 1),
	('bread', 'Bread', 1, 0, 1),
	('cannabis', 'Cannabis', 3, 0, 1),
	('carokit', 'Body Kit', 3, 0, 1),
	('carotool', 'Tools', 2, 0, 1),
	('clothe', 'Cloth', 1, 0, 1),
	('copper', 'Copper', 1, 0, 1),
	('cutted_wood', 'Cut wood', 1, 0, 1),
	('diamond', 'Diamond', 1, 0, 1),
	('essence', 'Gas', 1, 0, 1),
	('fabric', 'Fabric', 1, 0, 1),
	('fish', 'Fish', 1, 0, 1),
	('fixkit', 'Repair Kit', 3, 0, 1),
	('fixtool', 'Repair Tools', 2, 0, 1),
	('gazbottle', 'Gas Bottle', 2, 0, 1),
	('gold', 'Gold', 1, 0, 1),
	('iron', 'Iron', 1, 0, 1),
	('marijuana', 'Marijuana', 2, 0, 1),
	('medikit', 'Medikit', 2, 0, 1),
	('packaged_chicken', 'Chicken fillet', 1, 0, 1),
	('packaged_plank', 'Packaged wood', 1, 0, 1),
	('petrol', 'Oil', 1, 0, 1),
	('petrol_raffin', 'Processed oil', 1, 0, 1),
	('phone', 'Phone', 1, 0, 1),
	('radio', 'Radio', 1, 0, 1),
	('slaughtered_chicken', 'Slaughtered chicken', 1, 0, 1),
	('stone', 'Stone', 1, 0, 1),
	('washed_stone', 'Washed stone', 1, 0, 1),
	('water', 'Water', 1, 0, 1),
	('wood', 'Wood', 1, 0, 1),
	('wool', 'Wool', 1, 0, 1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table legacy194.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.jobs: ~14 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
REPLACE INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('ambulance', 'EMS', 0),
	('banker', 'Banker', 0),
	('cardealer', 'Cardealer', 0),
	('fisherman', 'Fisherman', 0),
	('fueler', 'Fueler', 0),
	('lumberjack', 'Lumberjack', 0),
	('mechanic', 'Mechanic', 0),
	('miner', 'Miner', 0),
	('police', 'LSPD', 0),
	('reporter', 'Reporter', 0),
	('slaughterer', 'Butcher', 0),
	('tailor', 'Tailor', 0),
	('taxi', 'Taxi', 0),
	('unemployed', 'Unemployed', 0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table legacy194.job_grades
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.job_grades: ~36 rows (approximately)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
REPLACE INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}'),
	(2, 'police', 0, 'recruit', 'Recruit', 20, '{}', '{}'),
	(3, 'police', 1, 'officer', 'Officer', 40, '{}', '{}'),
	(4, 'police', 2, 'sergeant', 'Sergeant', 60, '{}', '{}'),
	(5, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
	(6, 'police', 4, 'boss', 'Captain', 100, '{}', '{}'),
	(11, 'cardealer', 0, 'recruit', 'Recruit', 10, '{}', '{}'),
	(12, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
	(13, 'cardealer', 2, 'experienced', 'Experienced', 40, '{}', '{}'),
	(14, 'cardealer', 3, 'boss', 'Boss', 0, '{}', '{}'),
	(15, 'lumberjack', 0, 'employee', 'Employee', 0, '{}', '{}'),
	(16, 'fisherman', 0, 'employee', 'Employee', 0, '{}', '{}'),
	(17, 'fueler', 0, 'employee', 'Employee', 0, '{}', '{}'),
	(18, 'reporter', 0, 'employee', 'Employee', 0, '{}', '{}'),
	(19, 'tailor', 0, 'employee', 'Employee', 0, '{"mask_1":0,"arms":1,"glasses_1":0,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":0,"torso_1":24,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":0,"lipstick_2":0,"chain_1":0,"tshirt_1":0,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":36,"tshirt_2":0,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":48,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(20, 'miner', 0, 'employee', 'Employee', 0, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}', '{}'),
	(21, 'slaughterer', 0, 'employee', 'Employee', 0, '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":67,"pants_1":36,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":0,"torso_1":56,"beard_2":6,"shoes_1":12,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":15,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":0,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}', '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":72,"pants_1":45,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":1,"torso_1":49,"beard_2":6,"shoes_1":24,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":9,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":5,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}'),
	(22, 'ambulance', 0, 'ambulance', 'Jr. EMT', 20, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(23, 'ambulance', 1, 'doctor', 'EMT', 40, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(24, 'ambulance', 2, 'chief_doctor', 'Sr. EMT', 60, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(25, 'ambulance', 3, 'boss', 'EMT Supervisor', 80, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}'),
	(26, 'mechanic', 0, 'recrue', 'Recruit', 12, '{}', '{}'),
	(27, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
	(28, 'mechanic', 2, 'experimente', 'Experienced', 36, '{}', '{}'),
	(29, 'mechanic', 3, 'chief', 'Leader', 48, '{}', '{}'),
	(30, 'mechanic', 4, 'boss', 'Boss', 0, '{}', '{}'),
	(31, 'taxi', 0, 'recrue', 'Recruit', 12, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(32, 'taxi', 1, 'novice', 'Cabby', 24, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(33, 'taxi', 2, 'experimente', 'Experienced', 36, '{"hair_2":0,"hair_color_2":0,"torso_1":26,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":57,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":11,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(34, 'taxi', 3, 'uber', 'Uber Cabby', 48, '{"hair_2":0,"hair_color_2":0,"torso_1":26,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":57,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":11,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(35, 'taxi', 4, 'boss', 'Lead Cabby', 0, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(36, 'banker', 0, 'advisor', 'Consultant', 10, '{}', '{}'),
	(37, 'banker', 1, 'banker', 'Banker', 20, '{}', '{}'),
	(38, 'banker', 2, 'business_banker', 'Investment banker', 30, '{}', '{}'),
	(39, 'banker', 3, 'trader', 'Broker', 40, '{}', '{}'),
	(40, 'banker', 4, 'boss', 'Boss', 0, '{}', '{}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Dumping structure for table legacy194.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.licenses: ~6 rows (approximately)
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
REPLACE INTO `licenses` (`type`, `label`) VALUES
	('dmv', 'Driving Permit'),
	('drive', 'Drivers License'),
	('drive_bike', 'Motorcycle License'),
	('drive_truck', 'Commercial Drivers License'),
	('weapon', 'Weapon License'),
	('weed_processing', 'Weed Processing License');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;

-- Dumping structure for table legacy194.movableshops
CREATE TABLE IF NOT EXISTS `movableshops` (
  `identifier` varchar(46) DEFAULT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `money` longtext DEFAULT NULL,
  `items` longtext DEFAULT NULL,
  `plate` varchar(64) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `shopname` varchar(64) DEFAULT NULL,
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.movableshops: ~0 rows (approximately)
/*!40000 ALTER TABLE `movableshops` DISABLE KEYS */;
REPLACE INTO `movableshops` (`identifier`, `owner`, `money`, `items`, `plate`, `type`, `shopname`) VALUES
	('HotdogTruck:char1:11000010f35ae78', 'char1:11000010f35ae78', '{"black_money":0,"money":0}', '[]', NULL, 'object', 'HotdogTruck');
/*!40000 ALTER TABLE `movableshops` ENABLE KEYS */;

-- Dumping structure for table legacy194.multicharacter_slots
CREATE TABLE IF NOT EXISTS `multicharacter_slots` (
  `identifier` varchar(46) NOT NULL,
  `slots` int(11) NOT NULL,
  PRIMARY KEY (`identifier`) USING BTREE,
  KEY `slots` (`slots`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.multicharacter_slots: ~0 rows (approximately)
/*!40000 ALTER TABLE `multicharacter_slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `multicharacter_slots` ENABLE KEYS */;

-- Dumping structure for table legacy194.outfits
CREATE TABLE IF NOT EXISTS `outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(46) DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `ped` longtext DEFAULT NULL,
  `components` longtext DEFAULT NULL,
  `props` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table legacy194.outfits: ~0 rows (approximately)
/*!40000 ALTER TABLE `outfits` DISABLE KEYS */;
/*!40000 ALTER TABLE `outfits` ENABLE KEYS */;

-- Dumping structure for table legacy194.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(46) DEFAULT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(4) NOT NULL DEFAULT 0,
  `parking` varchar(60) DEFAULT NULL,
  `pound` varchar(60) DEFAULT NULL,
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL,
  `garage_id` varchar(32) NOT NULL DEFAULT 'A',
  `impound` int(1) NOT NULL DEFAULT 0,
  `park_coord` longtext DEFAULT NULL,
  `isparked` int(1) DEFAULT 0,
  `carseller` int(11) DEFAULT 0,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.owned_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;

-- Dumping structure for table legacy194.ox_doorlock
CREATE TABLE IF NOT EXISTS `ox_doorlock` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table legacy194.ox_doorlock: ~0 rows (approximately)
/*!40000 ALTER TABLE `ox_doorlock` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_doorlock` ENABLE KEYS */;

-- Dumping structure for table legacy194.ox_inventory
CREATE TABLE IF NOT EXISTS `ox_inventory` (
  `owner` varchar(46) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  UNIQUE KEY `owner` (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.ox_inventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `ox_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ox_inventory` ENABLE KEYS */;

-- Dumping structure for table legacy194.parking_meter
CREATE TABLE IF NOT EXISTS `parking_meter` (
  `identifier` varchar(46) DEFAULT NULL,
  `plate` varchar(32) DEFAULT '',
  `vehicle` longtext DEFAULT NULL,
  `coord` longtext DEFAULT NULL,
  `park_coord` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.parking_meter: ~0 rows (approximately)
/*!40000 ALTER TABLE `parking_meter` DISABLE KEYS */;
/*!40000 ALTER TABLE `parking_meter` ENABLE KEYS */;

-- Dumping structure for table legacy194.phone_accounts
CREATE TABLE IF NOT EXISTS `phone_accounts` (
  `app` varchar(50) NOT NULL,
  `id` varchar(80) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `interested` text NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.phone_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_accounts` ENABLE KEYS */;

-- Dumping structure for table legacy194.phone_alertjobs
CREATE TABLE IF NOT EXISTS `phone_alertjobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` varchar(255) NOT NULL,
  `alerts` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `job` (`job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.phone_alertjobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_alertjobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_alertjobs` ENABLE KEYS */;

-- Dumping structure for table legacy194.phone_chatrooms
CREATE TABLE IF NOT EXISTS `phone_chatrooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_code` varchar(10) NOT NULL,
  `room_name` varchar(15) NOT NULL,
  `room_owner_id` varchar(50) DEFAULT NULL,
  `room_owner_name` varchar(60) DEFAULT NULL,
  `room_members` text DEFAULT NULL,
  `room_pin` varchar(50) DEFAULT NULL,
  `unpaid_balance` decimal(10,2) DEFAULT 0.00,
  `is_masked` tinyint(1) DEFAULT 0,
  `is_pinned` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_code` (`room_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.phone_chatrooms: ~3 rows (approximately)
/*!40000 ALTER TABLE `phone_chatrooms` DISABLE KEYS */;
REPLACE INTO `phone_chatrooms` (`id`, `room_code`, `room_name`, `room_owner_id`, `room_owner_name`, `room_members`, `room_pin`, `unpaid_balance`, `is_masked`, `is_pinned`, `created`) VALUES
	(1, 'social', 'Social', 'official', 'Government', NULL, NULL, 0.00, 0, 1, '2023-04-10 04:35:14'),
	(2, 'lounge', 'The Lounge', 'official', 'Government', NULL, NULL, 0.00, 0, 1, '2023-04-10 04:35:14'),
	(3, 'events', 'Events', 'official', 'Government', NULL, NULL, 0.00, 0, 1, '2023-04-10 04:35:14');
/*!40000 ALTER TABLE `phone_chatrooms` ENABLE KEYS */;

-- Dumping structure for table legacy194.phone_chatroom_messages
CREATE TABLE IF NOT EXISTS `phone_chatroom_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` int(10) unsigned DEFAULT NULL,
  `member_id` varchar(50) DEFAULT NULL,
  `member_name` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `is_pinned` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.phone_chatroom_messages: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_chatroom_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_chatroom_messages` ENABLE KEYS */;

-- Dumping structure for table legacy194.phone_chats
CREATE TABLE IF NOT EXISTS `phone_chats` (
  `app` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.phone_chats: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_chats` ENABLE KEYS */;

-- Dumping structure for table legacy194.phone_debt
CREATE TABLE IF NOT EXISTS `phone_debt` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(46) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- Dumping data for table legacy194.phone_debt: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_debt` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_debt` ENABLE KEYS */;

-- Dumping structure for table legacy194.phone_gallery
CREATE TABLE IF NOT EXISTS `phone_gallery` (
  `identifier` varchar(46) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.phone_gallery: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_gallery` ENABLE KEYS */;

-- Dumping structure for table legacy194.phone_invoices
CREATE TABLE IF NOT EXISTS `phone_invoices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `society` tinytext DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table legacy194.phone_invoices: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_invoices` ENABLE KEYS */;

-- Dumping structure for table legacy194.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) DEFAULT NULL,
  `number` varchar(50) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `messages` text NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `read` int(11) DEFAULT NULL,
  `created` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.phone_messages: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- Dumping structure for table legacy194.phone_note
CREATE TABLE IF NOT EXISTS `phone_note` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(46) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `text` text DEFAULT NULL,
  `lastupdate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- Dumping data for table legacy194.phone_note: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_note` ENABLE KEYS */;

-- Dumping structure for table legacy194.phone_notifies
CREATE TABLE IF NOT EXISTS `phone_notifies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `msg_content` text NOT NULL,
  `msg_head` varchar(50) NOT NULL DEFAULT '',
  `app_name` text NOT NULL,
  `msg_time` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.phone_notifies: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_notifies` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_notifies` ENABLE KEYS */;

-- Dumping structure for table legacy194.phone_tweets
CREATE TABLE IF NOT EXISTS `phone_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(46) DEFAULT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `url` text DEFAULT NULL,
  `picture` text DEFAULT './img/default.png',
  `tweetId` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.phone_tweets: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_tweets` ENABLE KEYS */;

-- Dumping structure for table legacy194.player_contacts
CREATE TABLE IF NOT EXISTS `player_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(46) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0',
  `display` varchar(50) DEFAULT NULL,
  `note` text NOT NULL,
  `pp` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `identifier` (`identifier`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.player_contacts: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_contacts` ENABLE KEYS */;

-- Dumping structure for table legacy194.player_gallery
CREATE TABLE IF NOT EXISTS `player_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` text NOT NULL,
  `resim` text NOT NULL,
  `data` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.player_gallery: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_gallery` ENABLE KEYS */;

-- Dumping structure for table legacy194.player_mails
CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(46) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `identifier` (`identifier`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.player_mails: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_mails` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_mails` ENABLE KEYS */;

-- Dumping structure for table legacy194.player_notes
CREATE TABLE IF NOT EXISTS `player_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` text NOT NULL,
  `baslik` text NOT NULL,
  `aciklama` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.player_notes: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_notes` ENABLE KEYS */;

-- Dumping structure for table legacy194.player_vehicles
CREATE TABLE IF NOT EXISTS `player_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `fakeplate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(50) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `paymentamount` int(11) NOT NULL DEFAULT 0,
  `paymentsleft` int(11) NOT NULL DEFAULT 0,
  `financetime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`),
  KEY `identifier` (`identifier`),
  KEY `license` (`license`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.player_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_vehicles` ENABLE KEYS */;

-- Dumping structure for table legacy194.private_garage
CREATE TABLE IF NOT EXISTS `private_garage` (
  `identifier` varchar(46) DEFAULT NULL,
  `vehicles` longtext DEFAULT NULL,
  `garage` varchar(64) DEFAULT NULL,
  `inventory` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.private_garage: ~0 rows (approximately)
/*!40000 ALTER TABLE `private_garage` DISABLE KEYS */;
REPLACE INTO `private_garage` (`identifier`, `vehicles`, `garage`, `inventory`) VALUES
	('char1:0480dc4699b39928d7bf1206b80a8e96e03f1715', '[]', 'small', NULL);
/*!40000 ALTER TABLE `private_garage` ENABLE KEYS */;

-- Dumping structure for table legacy194.rented_vehicles
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.rented_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;

-- Dumping structure for table legacy194.renzu_stores
CREATE TABLE IF NOT EXISTS `renzu_stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop` varchar(60) DEFAULT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `money` longtext DEFAULT NULL,
  `items` longtext DEFAULT NULL,
  `employee` longtext DEFAULT NULL,
  `cashier` longtext DEFAULT NULL,
  `customitems` longtext DEFAULT NULL,
  `job` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.renzu_stores: ~0 rows (approximately)
/*!40000 ALTER TABLE `renzu_stores` DISABLE KEYS */;
REPLACE INTO `renzu_stores` (`id`, `shop`, `owner`, `money`, `items`, `employee`, `cashier`, `customitems`, `job`) VALUES
	(1, 'General Store #1', 'char1:11000010f35ae78', '{"money":0,"black_money":0}', '{"custom":{"marketbooth":{"stock":100},"blackmarketbooth":{"stock":100},"cheeseburger":{"stock":100},"angelsburger":{"stock":100}},"normal":{"burger":{"stock":100},"tomato":{"stock":100},"coffee":{"stock":100},"burgerpatty":{"stock":100},"lighter":{"stock":100},"phone":{"stock":100},"chicken":{"stock":100},"cheese":{"stock":100},"water":{"stock":100},"beef":{"stock":100},"pasta":{"stock":100},"radio":{"stock":100},"latte":{"stock":100},"sandwich":{"stock":100},"tacoshells":{"stock":100},"martini":{"stock":100},"tomatosauce":{"stock":100},"tacosauce":{"stock":100},"parachute":{"stock":100},"hotsauce":{"stock":100},"cola":{"stock":98},"donut":{"stock":100},"onion":{"stock":100},"mayonaise":{"stock":100},"ground_beef":{"stock":100},"lettuce":{"stock":100},"fish":{"stock":100}}}', '[]', '{"money":60,"black_money":0}', '[]', NULL);
/*!40000 ALTER TABLE `renzu_stores` ENABLE KEYS */;

-- Dumping structure for table legacy194.society_moneywash
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(46) DEFAULT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.society_moneywash: ~0 rows (approximately)
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;

-- Dumping structure for table legacy194.tinder_accounts
CREATE TABLE IF NOT EXISTS `tinder_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `pp` text NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `gender` varchar(50) NOT NULL,
  `targetGender` varchar(50) NOT NULL DEFAULT '0',
  `hobbies` varchar(50) NOT NULL DEFAULT '0',
  `age` varchar(50) NOT NULL DEFAULT '0',
  `description` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.tinder_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `tinder_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tinder_accounts` ENABLE KEYS */;

-- Dumping structure for table legacy194.tinder_likes
CREATE TABLE IF NOT EXISTS `tinder_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(1024) NOT NULL,
  `likeds` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.tinder_likes: ~0 rows (approximately)
/*!40000 ALTER TABLE `tinder_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tinder_likes` ENABLE KEYS */;

-- Dumping structure for table legacy194.tinder_messages
CREATE TABLE IF NOT EXISTS `tinder_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `messages` varchar(1024) DEFAULT '{}',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.tinder_messages: ~0 rows (approximately)
/*!40000 ALTER TABLE `tinder_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tinder_messages` ENABLE KEYS */;

-- Dumping structure for table legacy194.twitter_account
CREATE TABLE IF NOT EXISTS `twitter_account` (
  `id` varchar(90) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.twitter_account: ~0 rows (approximately)
/*!40000 ALTER TABLE `twitter_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_account` ENABLE KEYS */;

-- Dumping structure for table legacy194.twitter_hashtags
CREATE TABLE IF NOT EXISTS `twitter_hashtags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `created` varchar(50) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.twitter_hashtags: ~0 rows (approximately)
/*!40000 ALTER TABLE `twitter_hashtags` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_hashtags` ENABLE KEYS */;

-- Dumping structure for table legacy194.twitter_mentions
CREATE TABLE IF NOT EXISTS `twitter_mentions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tweet` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `mentioned` text NOT NULL,
  `created` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.twitter_mentions: ~0 rows (approximately)
/*!40000 ALTER TABLE `twitter_mentions` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_mentions` ENABLE KEYS */;

-- Dumping structure for table legacy194.twitter_tweets
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL,
  `message` longtext NOT NULL,
  `hashtags` varchar(50) NOT NULL,
  `mentions` varchar(50) NOT NULL,
  `created` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `likes` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.twitter_tweets: ~0 rows (approximately)
/*!40000 ALTER TABLE `twitter_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_tweets` ENABLE KEYS */;

-- Dumping structure for table legacy194.users
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
  `is_dead` tinyint(1) DEFAULT 0,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disabled` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `last_seen` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `phone_number` int(11) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `apps` text DEFAULT NULL,
  `widget` text DEFAULT NULL,
  `bt` text DEFAULT NULL,
  `charinfo` text DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL,
  `cryptocurrency` longtext DEFAULT NULL,
  `cryptocurrencytransfers` text DEFAULT NULL,
  PRIMARY KEY (`identifier`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `index_users_phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table legacy194.user_contacts
CREATE TABLE IF NOT EXISTS `user_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(46) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_contacts_identifier_name_number` (`identifier`,`name`,`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.user_contacts: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_contacts` ENABLE KEYS */;

-- Dumping structure for table legacy194.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.user_licenses: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;

-- Dumping structure for table legacy194.vehiclekeys
CREATE TABLE IF NOT EXISTS `vehiclekeys` (
  `plate` varchar(64) NOT NULL DEFAULT '',
  `keys` longtext DEFAULT NULL,
  PRIMARY KEY (`plate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.vehiclekeys: ~0 rows (approximately)
/*!40000 ALTER TABLE `vehiclekeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehiclekeys` ENABLE KEYS */;

-- Dumping structure for table legacy194.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `shop` varchar(50) DEFAULT 'pdm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.vehicles: ~411 rows (approximately)
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`, `shop`) VALUES
	('Adder', 'adder', 900000, 'super', 'pdm'),
	('Akuma', 'AKUMA', 7500, 'motorcycles', 'pdm'),
	('Alpha', 'alpha', 60000, 'sports', 'pdm'),
	('asbo', 'asbo', 8000, 'compacts', 'pdm'),
	('Asea', 'asea', 5500, 'sedans', 'pdm'),
	('asterope', 'asterope', 45000, 'sedans', 'pdm'),
	('Autarch', 'autarch', 1955000, 'super', 'pdm'),
	('Avarus', 'avarus', 18000, 'motorcycles', 'pdm'),
	('Bagger', 'bagger', 13500, 'motorcycles', 'pdm'),
	('Baller', 'baller2', 40000, 'suvs', 'pdm'),
	('Baller Sport', 'baller3', 60000, 'suvs', 'pdm'),
	('Baller Sport', 'baller4', 60000, 'suvs', 'pdm'),
	('Banshee', 'banshee', 70000, 'sports', 'pdm'),
	('Banshee 900R', 'banshee2', 255000, 'super', 'pdm'),
	('Bati 801', 'bati', 12000, 'motorcycles', 'pdm'),
	('Bati 801RR', 'bati2', 19000, 'motorcycles', 'pdm'),
	('Bestia GTS', 'bestiagts', 55000, 'sports', 'pdm'),
	('BF400', 'bf400', 6500, 'motorcycles', 'pdm'),
	('Bf Injection', 'bfinjection', 16000, 'offroad', 'pdm'),
	('Bifta', 'bifta', 12000, 'offroad', 'pdm'),
	('Bison', 'bison', 45000, 'vans', 'pdm'),
	('bison2', 'bison2', 20000, 'vans', 'pdm'),
	('bjxl', 'bjxl', 45000, 'suvs', 'pdm'),
	('Blade', 'blade', 15000, 'muscle', 'pdm'),
	('Blazer', 'blazer', 6500, 'offroad', 'pdm'),
	('Blazer Sport', 'blazer4', 8500, 'offroad', 'pdm'),
	('Blista', 'blista', 8000, 'compacts', 'pdm'),
	('blista2', 'blista2', 45000, 'sports', 'pdm'),
	('blista3', 'blista3', 45000, 'sports', 'pdm'),
	('BMX', 'bmx', 160, 'cycles', 'pdm'),
	('Bobcat XL', 'bobcatxl', 32000, 'vans', 'pdm'),
	('bodhi2', 'bodhi2', 45000, 'offroad', 'pdm'),
	('Brawler', 'brawler', 45000, 'offroad', 'pdm'),
	('Brioso R/A', 'brioso', 18000, 'compacts', 'pdm'),
	('brioso2', 'brioso2', 8000, 'compacts', 'pdm'),
	('Btype', 'btype', 62000, 'sportsclassics', 'pdm'),
	('Btype Hotroad', 'btype2', 155000, 'sportsclassics', 'pdm'),
	('Btype Luxe', 'btype3', 85000, 'sportsclassics', 'pdm'),
	('Buccaneer', 'buccaneer', 18000, 'muscle', 'pdm'),
	('Buccaneer Rider', 'buccaneer2', 24000, 'muscle', 'pdm'),
	('Buffalo', 'buffalo', 12000, 'sports', 'pdm'),
	('Buffalo S', 'buffalo2', 20000, 'sports', 'pdm'),
	('Buffalo3', 'buffalo3', 20000, 'sports', 'pdm'),
	('Bullet', 'bullet', 90000, 'super', 'pdm'),
	('burrito2', 'burrito2', 20000, 'vans', 'pdm'),
	('Burrito', 'burrito3', 19000, 'vans', 'pdm'),
	('burrito4', 'burrito4', 20000, 'vans', 'pdm'),
	('Camper', 'camper', 42000, 'vans', 'pdm'),
	('Carbonizzare', 'carbonizzare', 75000, 'sports', 'pdm'),
	('Carbon RS', 'carbonrs', 18000, 'motorcycles', 'pdm'),
	('Casco', 'casco', 30000, 'sportsclassics', 'pdm'),
	('cavalcade', 'cavalcade', 45000, 'suvs', 'pdm'),
	('Cavalcade', 'cavalcade2', 55000, 'suvs', 'pdm'),
	('Cheburek', 'cheburek', 20000, 'sedans', 'pdm'),
	('Cheetah', 'cheetah', 375000, 'super', 'pdm'),
	('cheetah2', 'cheetah2', 20000, 'sports', 'pdm'),
	('Chimera', 'chimera', 38000, 'motorcycles', 'pdm'),
	('Chino', 'chino', 15000, 'muscle', 'pdm'),
	('Chino Luxe', 'chino2', 19000, 'muscle', 'pdm'),
	('Cliffhanger', 'cliffhanger', 9500, 'motorcycles', 'pdm'),
	('clique', 'clique', 45000, 'muscle', 'pdm'),
	('club', 'club', 8000, 'compacts', 'pdm'),
	('cog55', 'cog55', 45000, 'sedans', 'pdm'),
	('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes', 'pdm'),
	('Cognoscenti', 'cognoscenti', 55000, 'sedans', 'pdm'),
	('Comet', 'comet2', 65000, 'sports', 'pdm'),
	('Comet 5', 'comet5', 145000, 'sports', 'pdm'),
	('Contender', 'contender', 70000, 'suvs', 'pdm'),
	('Coquette', 'coquette', 65000, 'sports', 'pdm'),
	('Coquette Classic', 'coquette2', 40000, 'sportsclassics', 'pdm'),
	('Coquette BlackFin', 'coquette3', 55000, 'muscle', 'pdm'),
	('Cruiser', 'cruiser', 510, 'cycles', 'pdm'),
	('Cyclone', 'cyclone', 1890000, 'super', 'pdm'),
	('Daemon', 'daemon', 11500, 'motorcycles', 'pdm'),
	('Daemon High', 'daemon2', 13500, 'motorcycles', 'pdm'),
	('Defiler', 'defiler', 9800, 'motorcycles', 'pdm'),
	('deveste', 'deveste', 20000, 'sports', 'pdm'),
	('deviant', 'deviant', 45000, 'muscle', 'pdm'),
	('diablous', 'diablous', 45000, 'motorcycles', 'pdm'),
	('diablous2', 'diablous2', 45000, 'motorcycles', 'pdm'),
	('dilettante', 'dilettante', 8000, 'compacts', 'pdm'),
	('dloader', 'dloader', 45000, 'offroad', 'pdm'),
	('Dominator', 'dominator', 35000, 'muscle', 'pdm'),
	('dominator2', 'dominator2', 45000, 'muscle', 'pdm'),
	('dominator3', 'dominator3', 45000, 'muscle', 'pdm'),
	('Double T', 'double', 28000, 'motorcycles', 'pdm'),
	('drafter', 'drafter', 20000, 'sports', 'pdm'),
	('Dubsta', 'dubsta', 45000, 'suvs', 'pdm'),
	('Dubsta Luxuary', 'dubsta2', 60000, 'suvs', 'pdm'),
	('Bubsta 6x6', 'dubsta3', 120000, 'offroad', 'pdm'),
	('Dukes', 'dukes', 28000, 'muscle', 'pdm'),
	('dukes3', 'dukes3', 45000, 'muscle', 'pdm'),
	('Dune Buggy', 'dune', 8000, 'offroad', 'pdm'),
	('dynasty', 'dynasty', 20000, 'sports', 'pdm'),
	('elegy', 'elegy', 20000, 'sports', 'pdm'),
	('Elegy', 'elegy2', 38500, 'sports', 'pdm'),
	('ellie', 'ellie', 45000, 'muscle', 'pdm'),
	('emerus', 'emerus', 20000, 'super', 'pdm'),
	('Emperor', 'emperor', 8500, 'sedans', 'pdm'),
	('emperor2', 'emperor2', 45000, 'sedans', 'pdm'),
	('Enduro', 'enduro', 5500, 'motorcycles', 'pdm'),
	('entity2', 'entity2', 20000, 'super', 'pdm'),
	('Entity XF', 'entityxf', 425000, 'super', 'pdm'),
	('Esskey', 'esskey', 4200, 'motorcycles', 'pdm'),
	('everon', 'everon', 45000, 'offroad', 'pdm'),
	('Exemplar', 'exemplar', 32000, 'coupes', 'pdm'),
	('F620', 'f620', 40000, 'coupes', 'pdm'),
	('Faction', 'faction', 20000, 'muscle', 'pdm'),
	('Faction Rider', 'faction2', 30000, 'muscle', 'pdm'),
	('fagaloa', 'fagaloa', 20000, 'sports', 'pdm'),
	('Faggio', 'faggio', 1900, 'motorcycles', 'pdm'),
	('Vespa', 'faggio2', 2800, 'motorcycles', 'pdm'),
	('faggio3', 'faggio3', 45000, 'motorcycles', 'pdm'),
	('fcr', 'fcr', 45000, 'motorcycles', 'pdm'),
	('fcr2', 'fcr2', 45000, 'motorcycles', 'pdm'),
	('Felon', 'felon', 42000, 'coupes', 'pdm'),
	('Felon GT', 'felon2', 55000, 'coupes', 'pdm'),
	('Feltzer', 'feltzer2', 55000, 'sports', 'pdm'),
	('Stirling GT', 'feltzer3', 65000, 'sportsclassics', 'pdm'),
	('Fixter', 'fixter', 225, 'cycles', 'pdm'),
	('flashgt', 'flashgt', 20000, 'sports', 'pdm'),
	('FMJ', 'fmj', 185000, 'super', 'pdm'),
	('Fhantom', 'fq2', 17000, 'suvs', 'pdm'),
	('freecrawler', 'freecrawler', 45000, 'offroad', 'pdm'),
	('Fugitive', 'fugitive', 12000, 'sedans', 'pdm'),
	('furia', 'furia', 20000, 'super', 'pdm'),
	('Furore GT', 'furoregt', 45000, 'sports', 'pdm'),
	('Fusilade', 'fusilade', 40000, 'sports', 'pdm'),
	('futo', 'futo', 20000, 'sports', 'pdm'),
	('Gargoyle', 'gargoyle', 16500, 'motorcycles', 'pdm'),
	('Gauntlet', 'gauntlet', 30000, 'muscle', 'pdm'),
	('gauntlet2', 'gauntlet2', 45000, 'muscle', 'pdm'),
	('gauntlet3', 'gauntlet3', 45000, 'muscle', 'pdm'),
	('gauntlet4', 'gauntlet4', 45000, 'muscle', 'pdm'),
	('gauntlet5', 'gauntlet5', 45000, 'muscle', 'pdm'),
	('gb200', 'gb200', 20000, 'sports', 'pdm'),
	('Gang Burrito', 'gburrito', 45000, 'vans', 'pdm'),
	('Burrito', 'gburrito2', 29000, 'vans', 'pdm'),
	('Glendale', 'glendale', 6500, 'sedans', 'pdm'),
	('glendale2', 'glendale2', 45000, 'sedans', 'pdm'),
	('gp1', 'gp1', 20000, 'super', 'pdm'),
	('Grabger', 'granger', 50000, 'suvs', 'pdm'),
	('Gresley', 'gresley', 47500, 'suvs', 'pdm'),
	('GT 500', 'gt500', 785000, 'sportsclassics', 'pdm'),
	('Guardian', 'guardian', 450000, 'offroad', 'pdm'),
	('habanero', 'habanero', 45000, 'suvs', 'pdm'),
	('Hakuchou', 'hakuchou', 31000, 'motorcycles', 'pdm'),
	('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles', 'pdm'),
	('hellion', 'hellion', 45000, 'offroad', 'pdm'),
	('Hermes', 'hermes', 535000, 'muscle', 'pdm'),
	('Hexer', 'hexer', 12000, 'motorcycles', 'pdm'),
	('Hotknife', 'hotknife', 125000, 'muscle', 'pdm'),
	('hotring', 'hotring', 20000, 'sports', 'pdm'),
	('Huntley S', 'huntley', 40000, 'suvs', 'pdm'),
	('Hustler', 'hustler', 625000, 'muscle', 'pdm'),
	('imorgon', 'imorgon', 20000, 'sports', 'pdm'),
	('impaler', 'impaler', 45000, 'muscle', 'pdm'),
	('Infernus', 'infernus', 180000, 'super', 'pdm'),
	('infernus2', 'infernus2', 20000, 'sports', 'pdm'),
	('ingot', 'ingot', 45000, 'sedans', 'pdm'),
	('Innovation', 'innovation', 23500, 'motorcycles', 'pdm'),
	('Intruder', 'intruder', 7500, 'sedans', 'pdm'),
	('Issi', 'issi2', 10000, 'compacts', 'pdm'),
	('issi3', 'issi3', 8000, 'compacts', 'pdm'),
	('issi7', 'issi7', 20000, 'sports', 'pdm'),
	('italigtb', 'italigtb', 20000, 'super', 'pdm'),
	('italigtb2', 'italigtb2', 20000, 'super', 'pdm'),
	('italigto', 'italigto', 20000, 'sports', 'pdm'),
	('italirsx', 'italirsx', 20000, 'sports', 'pdm'),
	('Jackal', 'jackal', 38000, 'coupes', 'pdm'),
	('Jester', 'jester', 65000, 'sports', 'pdm'),
	('Jester(Racecar)', 'jester2', 135000, 'sports', 'pdm'),
	('jester3', 'jester3', 20000, 'sports', 'pdm'),
	('Journey', 'journey', 6500, 'vans', 'pdm'),
	('jugular', 'jugular', 20000, 'sports', 'pdm'),
	('kalahari', 'kalahari', 45000, 'offroad', 'pdm'),
	('Kamacho', 'kamacho', 345000, 'offroad', 'pdm'),
	('kanjo', 'kanjo', 8000, 'compacts', 'pdm'),
	('Khamelion', 'khamelion', 38000, 'sports', 'pdm'),
	('komoda', 'komoda', 20000, 'sports', 'pdm'),
	('krieger', 'krieger', 20000, 'super', 'pdm'),
	('Kuruma', 'kuruma', 30000, 'sports', 'pdm'),
	('Landstalker', 'landstalker', 35000, 'suvs', 'pdm'),
	('landstalker2', 'landstalker2', 45000, 'suvs', 'pdm'),
	('RE-7B', 'le7b', 325000, 'super', 'pdm'),
	('locust', 'locust', 20000, 'sports', 'pdm'),
	('Lynx', 'lynx', 40000, 'sports', 'pdm'),
	('Mamba', 'mamba', 70000, 'sports', 'pdm'),
	('Manana', 'manana', 12800, 'sportsclassics', 'pdm'),
	('manana2', 'manana2', 20000, 'sports', 'pdm'),
	('Manchez', 'manchez', 5300, 'motorcycles', 'pdm'),
	('Manchez2', 'manchez2', 5300, 'motorcycles', 'pdm'),
	('Massacro', 'massacro', 65000, 'sports', 'pdm'),
	('Massacro(Racecar)', 'massacro2', 130000, 'sports', 'pdm'),
	('Mesa', 'mesa', 16000, 'suvs', 'pdm'),
	('Mesa Trail', 'mesa3', 40000, 'suvs', 'pdm'),
	('michelli', 'michelli', 20000, 'sports', 'pdm'),
	('Minivan', 'minivan', 13000, 'vans', 'pdm'),
	('minivan2', 'minivan2', 20000, 'vans', 'pdm'),
	('Monroe', 'monroe', 55000, 'sportsclassics', 'pdm'),
	('Moonbeam', 'moonbeam', 18000, 'vans', 'pdm'),
	('Moonbeam Rider', 'moonbeam2', 35000, 'vans', 'pdm'),
	('nebula', 'nebula', 20000, 'sports', 'pdm'),
	('Nemesis', 'nemesis', 5800, 'motorcycles', 'pdm'),
	('Neon', 'neon', 1500000, 'sports', 'pdm'),
	('nero', 'nero', 20000, 'super', 'pdm'),
	('nero2', 'nero2', 20000, 'super', 'pdm'),
	('Nightblade', 'nightblade', 35000, 'motorcycles', 'pdm'),
	('Nightshade', 'nightshade', 65000, 'muscle', 'pdm'),
	('9F', 'ninef', 65000, 'sports', 'pdm'),
	('9F Cabrio', 'ninef2', 80000, 'sports', 'pdm'),
	('novak', 'novak', 45000, 'suvs', 'pdm'),
	('Omnis', 'omnis', 35000, 'sports', 'pdm'),
	('oracle', 'oracle', 45000, 'coupes', 'pdm'),
	('Oracle XS', 'oracle2', 35000, 'coupes', 'pdm'),
	('Osiris', 'osiris', 160000, 'super', 'pdm'),
	('outlaw', 'outlaw', 45000, 'offroad', 'pdm'),
	('Panto', 'panto', 10000, 'compacts', 'pdm'),
	('Paradise', 'paradise', 19000, 'vans', 'pdm'),
	('paragon', 'paragon', 20000, 'sports', 'pdm'),
	('Pariah', 'pariah', 1420000, 'sports', 'pdm'),
	('Patriot', 'patriot', 55000, 'suvs', 'pdm'),
	('patriot2', 'patriot2', 45000, 'suvs', 'pdm'),
	('PCJ-600', 'pcj', 6200, 'motorcycles', 'pdm'),
	('penetrator', 'penetrator', 20000, 'super', 'pdm'),
	('Penumbra', 'penumbra', 28000, 'sports', 'pdm'),
	('penumbra2', 'penumbra2', 20000, 'sports', 'pdm'),
	('peyote', 'peyote', 20000, 'sports', 'pdm'),
	('peyote2', 'peyote2', 45000, 'muscle', 'pdm'),
	('peyote3', 'peyote3', 20000, 'sports', 'pdm'),
	('Pfister', 'pfister811', 85000, 'super', 'pdm'),
	('Phoenix', 'phoenix', 12500, 'muscle', 'pdm'),
	('Picador', 'picador', 18000, 'muscle', 'pdm'),
	('Pigalle', 'pigalle', 20000, 'sportsclassics', 'pdm'),
	('pony', 'pony', 20000, 'vans', 'pdm'),
	('pony2', 'pony2', 20000, 'vans', 'pdm'),
	('Prairie', 'prairie', 12000, 'compacts', 'pdm'),
	('Premier', 'premier', 8000, 'sedans', 'pdm'),
	('primo', 'primo', 45000, 'sedans', 'pdm'),
	('Primo Custom', 'primo2', 14000, 'sedans', 'pdm'),
	('X80 Proto', 'prototipo', 2500000, 'super', 'pdm'),
	('Radius', 'radi', 29000, 'suvs', 'pdm'),
	('raiden', 'raiden', 1375000, 'sports', 'pdm'),
	('rancherxl', 'rancherxl', 45000, 'offroad', 'pdm'),
	('Rapid GT', 'rapidgt', 35000, 'sports', 'pdm'),
	('Rapid GT Convertible', 'rapidgt2', 45000, 'sports', 'pdm'),
	('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics', 'pdm'),
	('raptor', 'raptor', 20000, 'sports', 'pdm'),
	('ratbike', 'ratbike', 45000, 'motorcycles', 'pdm'),
	('ratloader', 'ratloader', 45000, 'muscle', 'pdm'),
	('ratloader2', 'ratloader2', 45000, 'muscle', 'pdm'),
	('Reaper', 'reaper', 150000, 'super', 'pdm'),
	('rebel', 'rebel', 45000, 'offroad', 'pdm'),
	('Rebel', 'rebel2', 35000, 'offroad', 'pdm'),
	('rebla', 'rebla', 45000, 'suvs', 'pdm'),
	('Regina', 'regina', 5000, 'sedans', 'pdm'),
	('Retinue', 'retinue', 615000, 'sportsclassics', 'pdm'),
	('retinue2', 'retinue2', 20000, 'sports', 'pdm'),
	('Revolter', 'revolter', 1610000, 'sports', 'pdm'),
	('rhapsody', 'rhapsody', 8000, 'compacts', 'pdm'),
	('riata', 'riata', 380000, 'offroad', 'pdm'),
	('Rocoto', 'rocoto', 45000, 'suvs', 'pdm'),
	('Ruffian', 'ruffian', 6800, 'motorcycles', 'pdm'),
	('ruiner', 'ruiner', 45000, 'muscle', 'pdm'),
	('ruiner3', 'ruiner3', 45000, 'muscle', 'pdm'),
	('Rumpo', 'rumpo', 15000, 'vans', 'pdm'),
	('rumpo2', 'rumpo2', 20000, 'vans', 'pdm'),
	('ruston', 'ruston', 20000, 'sports', 'pdm'),
	('s80', 's80', 20000, 'super', 'pdm'),
	('Sabre Turbo', 'sabregt', 20000, 'muscle', 'pdm'),
	('Sabre GT', 'sabregt2', 25000, 'muscle', 'pdm'),
	('Sanchez', 'sanchez', 5300, 'motorcycles', 'pdm'),
	('Sanchez Sport', 'sanchez2', 5300, 'motorcycles', 'pdm'),
	('Sanctus', 'sanctus', 25000, 'motorcycles', 'pdm'),
	('Sandking', 'sandking', 55000, 'offroad', 'pdm'),
	('sandking2', 'sandking2', 45000, 'offroad', 'pdm'),
	('Savestra', 'savestra', 990000, 'sportsclassics', 'pdm'),
	('SC 1', 'sc1', 1603000, 'super', 'pdm'),
	('Schafter', 'schafter2', 25000, 'sedans', 'pdm'),
	('Schafter V12', 'schafter3', 50000, 'sports', 'pdm'),
	('schafter4', 'schafter4', 20000, 'sports', 'pdm'),
	('schlagen', 'schlagen', 20000, 'sports', 'pdm'),
	('schwarzer', 'schwarzer', 20000, 'sports', 'pdm'),
	('Scorcher', 'scorcher', 280, 'cycles', 'pdm'),
	('Seminole', 'seminole', 25000, 'suvs', 'pdm'),
	('seminole2', 'seminole2', 45000, 'suvs', 'pdm'),
	('Sentinel', 'sentinel', 32000, 'coupes', 'pdm'),
	('Sentinel XS', 'sentinel2', 40000, 'coupes', 'pdm'),
	('Sentinel3', 'sentinel3', 650000, 'sports', 'pdm'),
	('serrano', 'serrano', 45000, 'suvs', 'pdm'),
	('Seven 70', 'seven70', 39500, 'sports', 'pdm'),
	('ETR1', 'sheava', 220000, 'super', 'pdm'),
	('Slam Van', 'slamvan3', 11500, 'muscle', 'pdm'),
	('Sovereign', 'sovereign', 22000, 'motorcycles', 'pdm'),
	('specter', 'specter', 20000, 'sports', 'pdm'),
	('specter2', 'specter2', 20000, 'sports', 'pdm'),
	('speedo', 'speedo', 20000, 'vans', 'pdm'),
	('speedo2', 'speedo2', 20000, 'vans', 'pdm'),
	('speedo4', 'speedo4', 20000, 'vans', 'pdm'),
	('squaddie', 'squaddie', 45000, 'suvs', 'pdm'),
	('stafford', 'stafford', 45000, 'sedans', 'pdm'),
	('stalion', 'stalion', 45000, 'muscle', 'pdm'),
	('Stalion2', 'stalion2', 45000, 'muscle', 'pdm'),
	('stanier', 'stanier', 45000, 'sedans', 'pdm'),
	('Stinger', 'stinger', 80000, 'sportsclassics', 'pdm'),
	('Stinger GT', 'stingergt', 75000, 'sportsclassics', 'pdm'),
	('stratum', 'stratum', 45000, 'sedans', 'pdm'),
	('Streiter', 'streiter', 500000, 'sports', 'pdm'),
	('Stretch', 'stretch', 90000, 'sedans', 'pdm'),
	('stryder', 'stryder', 45000, 'motorcycles', 'pdm'),
	('sugoi', 'sugoi', 20000, 'sports', 'pdm'),
	('Sultan', 'sultan', 15000, 'sports', 'pdm'),
	('sultan2', 'sultan2', 20000, 'sports', 'pdm'),
	('Sultan RS', 'sultanrs', 65000, 'super', 'pdm'),
	('Super Diamond', 'superd', 130000, 'sedans', 'pdm'),
	('Surano', 'surano', 50000, 'sports', 'pdm'),
	('Surfer', 'surfer', 12000, 'vans', 'pdm'),
	('surfer2', 'surfer2', 20000, 'vans', 'pdm'),
	('surge', 'surge', 45000, 'sedans', 'pdm'),
	('swinger', 'swinger', 20000, 'sports', 'pdm'),
	('T20', 't20', 300000, 'super', 'pdm'),
	('taco', 'taco', 20000, 'vans', 'pdm'),
	('Tailgater', 'tailgater', 30000, 'sedans', 'pdm'),
	('taipan', 'taipan', 20000, 'super', 'pdm'),
	('Tampa', 'tampa', 16000, 'muscle', 'pdm'),
	('Drift Tampa', 'tampa2', 80000, 'sports', 'pdm'),
	('tempesta', 'tempesta', 20000, 'super', 'pdm'),
	('tezeract', 'tezeract', 20000, 'super', 'pdm'),
	('thrax', 'thrax', 20000, 'super', 'pdm'),
	('Thrust', 'thrust', 24000, 'motorcycles', 'pdm'),
	('tigon', 'tigon', 20000, 'super', 'pdm'),
	('torero', 'torero', 20000, 'sports', 'pdm'),
	('tornado', 'tornado', 20000, 'sports', 'pdm'),
	('tornado2', 'tornado2', 20000, 'sports', 'pdm'),
	('tornado3', 'tornado3', 20000, 'sports', 'pdm'),
	('tornado4', 'tornado4', 20000, 'sports', 'pdm'),
	('tornado5', 'tornado5', 20000, 'sports', 'pdm'),
	('tornado6', 'tornado6', 20000, 'sports', 'pdm'),
	('toros', 'toros', 45000, 'suvs', 'pdm'),
	('Tri bike', 'tribike', 520, 'cycles', 'pdm'),
	('Tri bike', 'tribike2', 520, 'cycles', 'pdm'),
	('Tri bike', 'tribike3', 520, 'cycles', 'pdm'),
	('Trophy Truck', 'trophytruck', 60000, 'offroad', 'pdm'),
	('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad', 'pdm'),
	('Tropos', 'tropos', 40000, 'sports', 'pdm'),
	('tulip', 'tulip', 45000, 'muscle', 'pdm'),
	('turismo2', 'turismo2', 20000, 'sports', 'pdm'),
	('Turismo R', 'turismor', 350000, 'super', 'pdm'),
	('tyrant', 'tyrant', 20000, 'super', 'pdm'),
	('Tyrus', 'tyrus', 600000, 'super', 'pdm'),
	('Vacca', 'vacca', 120000, 'super', 'pdm'),
	('Vader', 'vader', 7200, 'motorcycles', 'pdm'),
	('vagner', 'vagner', 20000, 'super', 'pdm'),
	('vagrant', 'vagrant', 45000, 'offroad', 'pdm'),
	('vamos', 'vamos', 45000, 'muscle', 'pdm'),
	('Verlierer', 'verlierer2', 70000, 'sports', 'pdm'),
	('verus', 'verus', 45000, 'offroad', 'pdm'),
	('Vigero', 'vigero', 12500, 'muscle', 'pdm'),
	('vindicator', 'vindicator', 45000, 'motorcycles', 'pdm'),
	('Virgo', 'virgo', 14000, 'muscle', 'pdm'),
	('virgo2', 'virgo2', 45000, 'muscle', 'pdm'),
	('virgo3', 'virgo3', 45000, 'muscle', 'pdm'),
	('Viseris', 'viseris', 875000, 'sportsclassics', 'pdm'),
	('Visione', 'visione', 2250000, 'super', 'pdm'),
	('Voltic', 'voltic', 90000, 'super', 'pdm'),
	('Voodoo', 'voodoo', 7200, 'muscle', 'pdm'),
	('voodoo2', 'voodoo2', 45000, 'muscle', 'pdm'),
	('Vortex', 'vortex', 9800, 'motorcycles', 'pdm'),
	('vstr', 'vstr', 20000, 'sports', 'pdm'),
	('Warrener', 'warrener', 4000, 'sedans', 'pdm'),
	('Washington', 'washington', 9000, 'sedans', 'pdm'),
	('weevil', 'weevil', 8000, 'compacts', 'pdm'),
	('Windsor', 'windsor', 95000, 'coupes', 'pdm'),
	('Windsor Drop', 'windsor2', 125000, 'coupes', 'pdm'),
	('winky', 'winky', 45000, 'offroad', 'pdm'),
	('Woflsbane', 'wolfsbane', 9000, 'motorcycles', 'pdm'),
	('xa21', 'xa21', 20000, 'super', 'pdm'),
	('XLS', 'xls', 32000, 'suvs', 'pdm'),
	('Yosemite', 'yosemite', 485000, 'muscle', 'pdm'),
	('yosemite2', 'yosemite2', 45000, 'muscle', 'pdm'),
	('yosemite3', 'yosemite3', 45000, 'muscle', 'pdm'),
	('Youga', 'youga', 10800, 'vans', 'pdm'),
	('Youga Luxuary', 'youga2', 14500, 'vans', 'pdm'),
	('youga3', 'youga3', 20000, 'vans', 'pdm'),
	('Z190', 'z190', 900000, 'sportsclassics', 'pdm'),
	('Zentorno', 'zentorno', 1500000, 'super', 'pdm'),
	('Zion', 'zion', 36000, 'coupes', 'pdm'),
	('Zion Cabrio', 'zion2', 45000, 'coupes', 'pdm'),
	('zion3', 'zion3', 20000, 'sports', 'pdm'),
	('Zombie', 'zombiea', 9500, 'motorcycles', 'pdm'),
	('Zombie Luxuary', 'zombieb', 12000, 'motorcycles', 'pdm'),
	('zorrusso', 'zorrusso', 20000, 'super', 'pdm'),
	('caracara2', 'caracara2', 20000, 'offroad', 'pdm'),
	('Z-Type', 'ztype', 220000, 'sportsclassics', 'pdm'),
	('comet6', 'comet6', 2000, 'sports', 'pdm'),
	('dominator7', 'dominator7', 2000, 'sports', 'pdm'),
	('dominator8', 'dominator8', 2000, 'sports', 'pdm'),
	('euros', 'euros', 2000, 'sports', 'pdm'),
	('futo2', 'futo2', 2000, 'sports', 'pdm'),
	('rt3000', 'rt3000', 2000, 'sports', 'pdm'),
	('sultan3', 'sultan3', 2000, 'sports', 'pdm'),
	('tailgater2', 'tailgater2', 2000, 'sports', 'pdm'),
	('growler', 'growler', 2000, 'sports', 'pdm'),
	('vectre', 'vectre', 2000, 'sports', 'pdm'),
	('remus', 'remus', 2000, 'sports', 'pdm'),
	('calico', 'calico', 2000, 'sports', 'pdm'),
	('cypher', 'cypher', 2000, 'sports', 'pdm'),
	('jester4', 'jester4', 2000, 'sports', 'pdm'),
	('zr350', 'zr350', 2000, 'sports', 'pdm'),
	('previon', 'previon', 2000, 'sports', 'pdm'),
	('warrener2', 'warrener2', 20000, 'sports', 'pdm');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

-- Dumping structure for table legacy194.vehicle_categories
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.vehicle_categories: ~11 rows (approximately)
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
REPLACE INTO `vehicle_categories` (`name`, `label`) VALUES
	('compacts', 'Compacts'),
	('coupes', 'CoupÃƒÆ’Ã‚Â©s'),
	('motorcycles', 'Motos'),
	('muscle', 'Muscle'),
	('offroad', 'Off Road'),
	('sedans', 'Sedans'),
	('sports', 'Sports'),
	('sportsclassics', 'Sports Classics'),
	('super', 'Super'),
	('suvs', 'SUVs'),
	('vans', 'Vans');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;

-- Dumping structure for table legacy194.vehicle_sold
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.vehicle_sold: ~0 rows (approximately)
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;

-- Dumping structure for table legacy194.whatsapp_accounts
CREATE TABLE IF NOT EXISTS `whatsapp_accounts` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table legacy194.whatsapp_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `whatsapp_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `whatsapp_accounts` ENABLE KEYS */;

-- Dumping structure for table legacy194.whatsapp_chats
CREATE TABLE IF NOT EXISTS `whatsapp_chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `created` varchar(50) NOT NULL,
  `messages` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.whatsapp_chats: ~0 rows (approximately)
/*!40000 ALTER TABLE `whatsapp_chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `whatsapp_chats` ENABLE KEYS */;

-- Dumping structure for table legacy194.whatsapp_groups
CREATE TABLE IF NOT EXISTS `whatsapp_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `created` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.whatsapp_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `whatsapp_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `whatsapp_groups` ENABLE KEYS */;

-- Dumping structure for table legacy194.whatsapp_groups_messages
CREATE TABLE IF NOT EXISTS `whatsapp_groups_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(46) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table legacy194.whatsapp_groups_messages: ~0 rows (approximately)
/*!40000 ALTER TABLE `whatsapp_groups_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `whatsapp_groups_messages` ENABLE KEYS */;

-- Dumping structure for table legacy194.whatsapp_groups_users
CREATE TABLE IF NOT EXISTS `whatsapp_groups_users` (
  `number_group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table legacy194.whatsapp_groups_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `whatsapp_groups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `whatsapp_groups_users` ENABLE KEYS */;

-- Dumping structure for table legacy194.whatsapp_stories
CREATE TABLE IF NOT EXISTS `whatsapp_stories` (
  `phone` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `created` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `filter` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.whatsapp_stories: ~0 rows (approximately)
/*!40000 ALTER TABLE `whatsapp_stories` DISABLE KEYS */;
/*!40000 ALTER TABLE `whatsapp_stories` ENABLE KEYS */;

-- Dumping structure for table legacy194.whitelist
CREATE TABLE IF NOT EXISTS `whitelist` (
  `identifier` varchar(46) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table legacy194.whitelist: ~0 rows (approximately)
/*!40000 ALTER TABLE `whitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `whitelist` ENABLE KEYS */;

-- Dumping structure for table legacy194.yellowpages_posts
CREATE TABLE IF NOT EXISTS `yellowpages_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` text NOT NULL,
  `mesaj` text NOT NULL,
  `isim` text NOT NULL,
  `telno` text NOT NULL,
  `resim` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table legacy194.yellowpages_posts: ~0 rows (approximately)
/*!40000 ALTER TABLE `yellowpages_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `yellowpages_posts` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
