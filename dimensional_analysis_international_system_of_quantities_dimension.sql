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
-- Table structure for table `international_system_of_quantities_dimension`
--

DROP TABLE IF EXISTS `international_system_of_quantities_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `international_system_of_quantities_dimension` (
  `idinternational_system_of_quantities_dimension` int NOT NULL,
  `dimension_name` varchar(255) DEFAULT NULL,
  `international_system_of_quantities_canonical_dimensional_symbol` varchar(255) DEFAULT NULL,
  `international_system_of_units_base_unit` int DEFAULT NULL,
  `international_system_of_units_physical_constant` int DEFAULT NULL,
  PRIMARY KEY (`idinternational_system_of_quantities_dimension`),
  KEY `international_system_of_units_base_unit` (`international_system_of_units_base_unit`),
  KEY `international_system_of_units_physical_constant` (`international_system_of_units_physical_constant`),
  CONSTRAINT `international_system_of_quantities_dimension_ibfk_1` FOREIGN KEY (`international_system_of_units_base_unit`) REFERENCES `unit` (`idunit`),
  CONSTRAINT `international_system_of_quantities_dimension_ibfk_2` FOREIGN KEY (`international_system_of_units_physical_constant`) REFERENCES `physical_constant` (`idphysical_constant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `international_system_of_quantities_dimension`
--

LOCK TABLES `international_system_of_quantities_dimension` WRITE;
/*!40000 ALTER TABLE `international_system_of_quantities_dimension` DISABLE KEYS */;
INSERT INTO `international_system_of_quantities_dimension` VALUES (1,'time','T',1,1),(2,'length','L',2,2),(3,'mass','M',3,3),(4,'electric current','I',4,4),(5,'absolute thermodynamic temperature','\\[CapitalTheta]',5,5),(6,'amount of substance','N',6,6),(7,'luminous intensity of monochromatic radiation','J',7,7);
/*!40000 ALTER TABLE `international_system_of_quantities_dimension` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-30 13:05:21
