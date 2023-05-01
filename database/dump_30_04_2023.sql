-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour borabora
CREATE DATABASE IF NOT EXISTS `borabora` /*!40100 DEFAULT CHARACTER SET armscii8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `borabora`;

-- Listage de la structure de table borabora. brasserie
CREATE TABLE IF NOT EXISTS `brasserie` (
  `num_plat` int NOT NULL,
  `lib_plat` varchar(50) DEFAULT NULL,
  `prix_plat` float DEFAULT NULL,
  `cat` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`num_plat`),
  KEY `brasserie_ibfk_1` (`cat`),
  CONSTRAINT `brasserie_ibfk_1` FOREIGN KEY (`cat`) REFERENCES `cat_brasserie` (`cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table borabora. cat_brasserie
CREATE TABLE IF NOT EXISTS `cat_brasserie` (
  `cat` varchar(6) NOT NULL,
  `lib_cat` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table borabora. cat_cons
CREATE TABLE IF NOT EXISTS `cat_cons` (
  `cat` varchar(6) NOT NULL,
  `lib_cat` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table borabora. consommation
CREATE TABLE IF NOT EXISTS `consommation` (
  `num_cons` int NOT NULL,
  `lib_cons` varchar(50) DEFAULT NULL,
  `prix_cons` float DEFAULT NULL,
  `cat` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`num_cons`),
  KEY `consommation_ibfk_1` (`cat`),
  CONSTRAINT `consommation_ibfk_1` FOREIGN KEY (`cat`) REFERENCES `cat_cons` (`cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table borabora. spa
CREATE TABLE IF NOT EXISTS `spa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `soin` varchar(255) NOT NULL,
  `descriptifs` text,
  `durée` int NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table borabora. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
