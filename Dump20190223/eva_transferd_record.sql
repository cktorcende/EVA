-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: eva
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `transferd_record`
--

DROP TABLE IF EXISTS `transferd_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transferd_record` (
  `D_TransferID` int(11) NOT NULL AUTO_INCREMENT,
  `D_NursingHomeID` int(11) NOT NULL,
  `DrugTID` int(11) NOT NULL,
  `DateofShipping` date NOT NULL,
  `ExpectedArrivalDate` date DEFAULT NULL,
  `QTYTransferred` int(11) NOT NULL,
  `ExpirationDate` date NOT NULL,
  `ProductKey` varchar(15) DEFAULT NULL,
  `PackageSize` varchar(15) NOT NULL,
  `UnitOfMeasure` varchar(20) NOT NULL,
  PRIMARY KEY (`D_TransferID`),
  KEY `NursingHomeID_idx` (`D_NursingHomeID`),
  KEY `DrugTID_idx` (`DrugTID`),
  CONSTRAINT `DrugTID` FOREIGN KEY (`DrugTID`) REFERENCES `drug_record` (`drug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferd_record`
--

LOCK TABLES `transferd_record` WRITE;
/*!40000 ALTER TABLE `transferd_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `transferd_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23  9:25:21
