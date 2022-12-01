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
-- Table structure for table `physical_constant`
--

DROP TABLE IF EXISTS `physical_constant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `physical_constant` (
  `idphysical_constant` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  `symbol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idphysical_constant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physical_constant`
--

LOCK TABLES `physical_constant` WRITE;
/*!40000 ALTER TABLE `physical_constant` DISABLE KEYS */;
INSERT INTO `physical_constant` VALUES (1,'unperturbed hyperfine transition frequency of the cesium-133 atom','Quantity[\"Cesium133HyperfineSplittingFrequency\"]','\\Delta \\nu_{Cs}'),(2,'speed of light in vacuum as a proper length','Quantity[\"SpeedOfLight\"]','c'),(3,'Planck constant','Quantity[\"PlanckConstant\"]','h'),(4,'elementary charge and coupling strenth of the electromagnetic force','Quantity[\"ElementaryCharge\"]','e'),(5,'Boltzmann constant and relation between temperature and energy or entropy and quantum mechanically accessible states','Quantity[\"BoltzmannConstant\"]','k'),(6,'Avogadro constant as a relation between amount of substance and counting entities','Quantity[\"AvogadroConstant\"]','N_A'),(7,'luminous intensity of monochromatic radiation of frequency 540*10^12 Hz','Quantity[\"MonochromaticRadiation540THzLuminousEfficacy\"]','K_{cd}');
/*!40000 ALTER TABLE `physical_constant` ENABLE KEYS */;
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
