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
-- Table structure for table `international_system_of_units_prefixes`
--

DROP TABLE IF EXISTS `international_system_of_units_prefixes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `international_system_of_units_prefixes` (
  `idinternational_system_of_units_prefixes` int NOT NULL,
  `prefix_name` varchar(255) DEFAULT NULL,
  `prefix_symbol` varchar(255) DEFAULT NULL,
  `base_10_logarithm_of_multiplier` int DEFAULT NULL,
  PRIMARY KEY (`idinternational_system_of_units_prefixes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `international_system_of_units_prefixes`
--

LOCK TABLES `international_system_of_units_prefixes` WRITE;
/*!40000 ALTER TABLE `international_system_of_units_prefixes` DISABLE KEYS */;
INSERT INTO `international_system_of_units_prefixes` VALUES (1,'quetta','Q',30),(2,'quecto','q',-30),(3,'ronna','R',27),(4,'ronto','r',-27),(5,'yotta','Y',24),(6,'yocto','y',-24),(7,'zetta','Z',21),(8,'zepto','z',-21),(9,'exa','E',18),(10,'atto','a',-18),(11,'peta','P',15),(12,'femto','f',-15),(13,'tera','T',12),(14,'pico','p',-12),(15,'giga','G',9),(16,'nano','n',-9),(17,'mega','M',6),(18,'micro','\\[Mu]',-6),(19,'kilo','k',3),(20,'milli','m',-3);
/*!40000 ALTER TABLE `international_system_of_units_prefixes` ENABLE KEYS */;
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
