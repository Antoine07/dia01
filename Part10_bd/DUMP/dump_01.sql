SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `db_aviation`;
CREATE DATABASE `db_aviation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_aviation`;

DROP TABLE IF EXISTS `compagnies`;
CREATE TABLE `compagnies` (
  `comp` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `numStreet` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`comp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `compagnies` (`comp`, `street`, `city`, `name`, `numStreet`) VALUES
('AUS',	'Shenton Park',	'Perth',	'Australia Air',	20),
('CHI',	'Qinghai',	'Xian de Tongde',	'CHINA Air',	17),
('FRE1',	'Rue de la Lieure',	'Voiron',	'Air France',	11),
('FRE2',	'paris',	'France',	'Air Electric',	22),
('ITA',	'mapoli',	'Rome',	'ITALIA Air',	20),
('SIN',	'Marymount',	'Singapour',	'SIN A',	1);

DROP TABLE IF EXISTS `pilots`;
CREATE TABLE `pilots` (
  `certificate` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bonus` decimal(10,2) DEFAULT NULL,
  `numFlying` decimal(7,1) DEFAULT NULL,
  `compagny` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plane` enum('A380','A320','A340') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_day` datetime DEFAULT NULL,
  `next_flight` datetime DEFAULT NULL,
  `num_jobs` smallint unsigned DEFAULT '0',
  PRIMARY KEY (`certificate`),
  KEY `fk_pilots_compagny` (`compagny`),
  CONSTRAINT `fk_pilots_compagny` FOREIGN KEY (`compagny`) REFERENCES `compagnies` (`comp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `pilots` (`certificate`, `bonus`, `numFlying`, `compagny`, `name`, `last_name`, `plane`, `birth_day`, `next_flight`, `num_jobs`) VALUES
('ct-1',	1000.00,	90.0,	'AUS',	'Alan',	'Dupont',	'A380',	NULL,	NULL,	0),
('ct-10',	500.00,	90.0,	'FRE1',	'Tom',	'Lu',	'A320',	NULL,	NULL,	0),
('ct-100',	500.00,	200.0,	'SIN',	'Yi',	'Dupont',	'A340',	'1978-02-04 00:00:00',	'2020-12-04 09:50:52',	10),
('ct-11',	1000.00,	200.0,	'AUS',	'Sophie',	'Dupont',	'A380',	'1978-10-17 00:00:00',	'2020-06-11 12:00:52',	50),
('ct-12',	1000.00,	190.0,	'AUS',	'Albert',	'Pierre',	'A380',	'1990-04-04 00:00:00',	'2020-05-08 12:50:52',	10),
('ct-16',	500.00,	190.0,	'SIN',	'Yan',	'chai',	'A340',	'1998-01-04 00:00:00',	'2020-05-08 12:50:52',	30),
('ct-56',	2000.00,	300.0,	'AUS',	'Benoit',	'chai',	'A380',	'2000-01-04 00:00:00',	'2020-02-04 12:50:52',	7),
('ct-6',	500.00,	20.0,	'FRE1',	'Jhon',	'chai',	'A320',	'2000-01-04 00:00:00',	'2020-12-04 12:50:52',	13),
('ct-7',	500.00,	80.0,	'CHI',	'Pierre',	'chai',	'A320',	'1977-01-04 00:00:00',	'2020-05-04 12:50:52',	8);

