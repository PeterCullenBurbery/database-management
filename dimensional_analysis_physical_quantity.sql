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
-- Table structure for table `physical_quantity`
--

DROP TABLE IF EXISTS `physical_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `physical_quantity` (
  `idphysical_quantity` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `physical_quantity_lower_bound` int DEFAULT NULL,
  `physical_quantity_upper_bound` int DEFAULT NULL,
  PRIMARY KEY (`idphysical_quantity`),
  KEY `physical_quantity_lower_bound` (`physical_quantity_lower_bound`),
  KEY `physical_quantity_upper_bound` (`physical_quantity_upper_bound`),
  CONSTRAINT `physical_quantity_ibfk_1` FOREIGN KEY (`physical_quantity_lower_bound`) REFERENCES `international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`),
  CONSTRAINT `physical_quantity_ibfk_2` FOREIGN KEY (`physical_quantity_upper_bound`) REFERENCES `international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physical_quantity`
--

LOCK TABLES `physical_quantity` WRITE;
/*!40000 ALTER TABLE `physical_quantity` DISABLE KEYS */;
INSERT INTO `physical_quantity` VALUES (1,'piezeoelectric sensor acceleration',NULL,19),(2,'air pressure',19,NULL),(3,'blood pressure',19,NULL),(4,'actigraph frequency',NULL,NULL),(5,'radar altimeter altitude',NULL,NULL),(6,'atomic force microscope width',16,18),(7,'atomic force microscope height',16,18),(8,'capacitance meter capacitance',16,18),(9,'depth gauge pressure',19,17),(10,'quartz fiber dosimeter',20,NULL),(11,'extensometer length',20,NULL),(12,'Gardon gauge wavelength',16,NULL),(13,'gaussmeter magnetic flux density',20,NULL),(14,'Hall effect sensor magnetic flux density',20,NULL),(15,'Hall effect sensor electric potential difference',20,NULL),(16,'Hegman gauge diameter',18,NULL),(17,'hot-filament ionization gauge pressure',16,20),(18,'laser rangefinder distance',NULL,19),(19,'fluxgate magnetometer magnetic flux density',20,NULL),(20,'mass flow meter mass flow rate',20,19),(21,'McLeod gauge pressure',18,19),(22,'megohmmeter resistance',NULL,17),(23,'microbolometer wavelength',18,NULL),(24,'microphone frequency',NULL,19),(25,'microwave radiometer frequency',15,13),(26,'optical power meter radiant power',16,20),(27,'personal RF safety monitor frequency',17,15),(28,'pressure gauge pressure',16,19),(29,'seismometer frequency',20,NULL),(30,'salinometer mass density',20,NULL);
/*!40000 ALTER TABLE `physical_quantity` ENABLE KEYS */;
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
