-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: dimensional_analysis
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit` (
  `idunit` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `base_unit` bit(1) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `time_dimension_exponent` int DEFAULT '0',
  `length_dimension_exponent` int DEFAULT '0',
  `mass_dimension_exponent` int DEFAULT '0',
  `electric_current_dimension_exponent` int DEFAULT '0',
  `thermodynamic_temperature_dimension_exponent` int DEFAULT '0',
  `amount_of_substance_dimension_exponent` int DEFAULT '0',
  `luminous_intensity_dimension_exponent` int DEFAULT '0',
  `epoynmouspeople` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idunit`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='there are seven base units and twenty two derived units with special names. This makes 29 units in total.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (1,'second',_binary '','s',1,0,0,0,0,0,0,NULL),(2,'meter',_binary '','m',0,1,0,0,0,0,0,NULL),(3,'kilogram',_binary '','kg',0,0,1,0,0,0,0,NULL),(4,'ampere',_binary '','A',0,0,0,1,0,0,0,'André-Marie Ampère'),(5,'kelvin',_binary '','K',0,0,0,0,1,0,0,'William Thmoson, 1st Baron Kelvin'),(6,'mole',_binary '','mol',0,0,0,0,0,1,0,NULL),(7,'candela',_binary '','cd',0,0,0,0,0,0,1,NULL),(8,'radian',_binary '\0','rad',0,0,0,0,0,0,0,NULL),(9,'steradian',_binary '\0','sr',0,0,0,0,0,0,0,NULL),(10,'hertz',_binary '\0','Hz',-1,0,0,0,0,0,0,'Heinrich Hertz'),(11,'newton',_binary '\0','N',-2,1,1,0,0,0,0,'Isaac Newton'),(12,'pascal',_binary '\0','Pa',-2,-1,1,0,0,0,0,'Blaise Pascal'),(13,'joule',_binary '\0','J',-2,2,1,0,0,0,0,'James Prescott Joule'),(14,'watt',_binary '\0','W',-3,2,1,0,0,0,0,'James Watt'),(15,'coulomb',_binary '\0','C',1,0,0,1,0,0,0,'Charles-Augustin de Coulomb'),(16,'volt',_binary '\0','V',-3,2,1,-1,0,0,0,'Alessandro Volta'),(17,'farad',_binary '\0','F',4,-2,-1,2,0,0,0,'Michael Faraday'),(18,'ohm',_binary '\0','\\[CapitalOmega]',-3,2,1,-2,0,0,0,'Geog Ohm'),(19,'siemens',_binary '\0','S',3,-2,-1,2,0,0,0,'Werner von Siemens'),(20,'weber',_binary '\0','Wb',-2,2,1,-1,0,0,0,'Wilhem Eduard Weber'),(21,'tesla',_binary '\0','T',-2,0,1,-1,0,0,0,'Nikola Tesla'),(22,'henry',_binary '\0','H',-2,2,1,-2,0,0,0,'Joseph Henry'),(23,'degree Celsius',_binary '\0','°C',0,0,0,0,1,0,0,'Anders Celsius'),(24,'lumen',_binary '\0','lm',0,0,0,0,0,0,1,NULL),(25,'lux',_binary '\0','lx',0,-2,0,0,0,0,1,NULL),(26,'becquerel',_binary '\0','Bq',-1,0,0,0,0,0,0,'Antoine Henri Becquerel'),(27,'gray',_binary '\0','Gy',-2,2,0,0,0,0,0,'Louis Harold Gray'),(28,'sievert',_binary '\0','Sv',-2,2,0,0,0,0,0,'Rolf Maximilian Sievert'),(29,'katal',_binary '\0','kat',-1,0,0,0,0,1,0,NULL);
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-30 13:05:22
