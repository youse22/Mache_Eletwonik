-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mache_elektwonic
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acha`
--

DROP TABLE IF EXISTS `acha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acha` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dat` date DEFAULT NULL,
  `pwodwi` int DEFAULT NULL,
  `itilizate` int DEFAULT NULL,
  `kategori` int DEFAULT NULL,
  `kantite` int DEFAULT NULL,
  `kach_total` decimal(10,2) DEFAULT NULL,
  `eskont` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pwodwi` (`pwodwi`),
  KEY `itilizate` (`itilizate`),
  KEY `kategori` (`kategori`),
  CONSTRAINT `acha_ibfk_1` FOREIGN KEY (`pwodwi`) REFERENCES `pwodwi` (`id`),
  CONSTRAINT `acha_ibfk_2` FOREIGN KEY (`itilizate`) REFERENCES `itilizate` (`id`),
  CONSTRAINT `acha_ibfk_3` FOREIGN KEY (`kategori`) REFERENCES `kategori` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acha`
--

LOCK TABLES `acha` WRITE;
/*!40000 ALTER TABLE `acha` DISABLE KEYS */;
INSERT INTO `acha` VALUES (1,'2023-08-27',1,1,1,4,2400.00,200.00),(2,'2023-08-26',2,2,2,1,700.00,200.00),(3,'2023-08-19',3,3,3,2,1200.00,800.00),(4,'2023-08-23',4,4,4,2,160.00,140.00);
/*!40000 ALTER TABLE `acha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itilizate`
--

DROP TABLE IF EXISTS `itilizate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itilizate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `non` varchar(255) DEFAULT NULL,
  `siyati` varchar(255) DEFAULT NULL,
  `imel` varchar(255) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itilizate`
--

LOCK TABLES `itilizate` WRITE;
/*!40000 ALTER TABLE `itilizate` DISABLE KEYS */;
INSERT INTO `itilizate` VALUES (1,'Dupont','Jannette','jan@cli.com','-4434'),(2,'Jaques','Stefen','stef@cli.com','200'),(3,'Joy','Lola','lola@cli.com','34261661'),(4,'Looby','Jooma','jooma@cli.com','37342215');
/*!40000 ALTER TABLE `itilizate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategori` (
  `id` int NOT NULL AUTO_INCREMENT,
  `non` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (1,'telefon'),(2,'game'),(3,'odinatè'),(4,'game');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori_pwodwi`
--

DROP TABLE IF EXISTS `kategori_pwodwi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategori_pwodwi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pwodwi` int DEFAULT NULL,
  `kategori` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pwodwi` (`pwodwi`),
  KEY `kategori` (`kategori`),
  CONSTRAINT `kategori_pwodwi_ibfk_1` FOREIGN KEY (`pwodwi`) REFERENCES `pwodwi` (`id`),
  CONSTRAINT `kategori_pwodwi_ibfk_2` FOREIGN KEY (`kategori`) REFERENCES `kategori` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_pwodwi`
--

LOCK TABLES `kategori_pwodwi` WRITE;
/*!40000 ALTER TABLE `kategori_pwodwi` DISABLE KEYS */;
INSERT INTO `kategori_pwodwi` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4);
/*!40000 ALTER TABLE `kategori_pwodwi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panye`
--

DROP TABLE IF EXISTS `panye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `panye` (
  `id` int NOT NULL AUTO_INCREMENT,
  `itilizate` int DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `itilizate` (`itilizate`),
  CONSTRAINT `panye_ibfk_1` FOREIGN KEY (`itilizate`) REFERENCES `itilizate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panye`
--

LOCK TABLES `panye` WRITE;
/*!40000 ALTER TABLE `panye` DISABLE KEYS */;
INSERT INTO `panye` VALUES (1,1,2400.00),(2,2,700.00),(3,3,1200.00),(4,4,160.00);
/*!40000 ALTER TABLE `panye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pwodwi`
--

DROP TABLE IF EXISTS `pwodwi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pwodwi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `non` varchar(255) DEFAULT NULL,
  `deskripsyon` text,
  `kantite_disponib` int DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `vre_pri` decimal(10,2) DEFAULT NULL,
  `ansyen_pri` decimal(10,2) DEFAULT NULL,
  `aktif` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pwodwi`
--

LOCK TABLES `pwodwi` WRITE;
/*!40000 ALTER TABLE `pwodwi` DISABLE KEYS */;
INSERT INTO `pwodwi` VALUES (1,'Telefòn ','Telefòn entelijan ak dènye teknoloji',50,'telefòn.jpg',300.00,350.00,1),(2,'xbox','xbox bon kalite',34,'xbox.jpg',700.00,900.00,1),(3,'pc','pc pri tritri',10,'pc.jpg',600.00,1000.00,1),(4,'manette','manette pri kabonat',3,'manette.jpg',80.00,150.00,0);
/*!40000 ALTER TABLE `pwodwi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pwodwi_panye`
--

DROP TABLE IF EXISTS `pwodwi_panye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pwodwi_panye` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pwodwi` int DEFAULT NULL,
  `panye` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pwodwi` (`pwodwi`),
  KEY `panye` (`panye`),
  CONSTRAINT `pwodwi_panye_ibfk_1` FOREIGN KEY (`pwodwi`) REFERENCES `pwodwi` (`id`),
  CONSTRAINT `pwodwi_panye_ibfk_2` FOREIGN KEY (`panye`) REFERENCES `panye` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pwodwi_panye`
--

LOCK TABLES `pwodwi_panye` WRITE;
/*!40000 ALTER TABLE `pwodwi_panye` DISABLE KEYS */;
INSERT INTO `pwodwi_panye` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4);
/*!40000 ALTER TABLE `pwodwi_panye` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-27 12:48:33
