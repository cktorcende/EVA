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
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `insurance` (
  `insurance_id` int(11) NOT NULL AUTO_INCREMENT,
  `InsurancePlanCode` varchar(45) NOT NULL,
  `RecordNO` int(10) unsigned zerofill NOT NULL,
  `Name` varchar(45) NOT NULL,
  `HelpDeskNO` varchar(15) NOT NULL,
  `AddressLine1` varchar(60) NOT NULL,
  `AddressLine2` varchar(60) NOT NULL,
  `PlanBinNO` varchar(45) NOT NULL,
  `City` varchar(15) NOT NULL,
  `ProcessorControlNO` mediumint(13) DEFAULT NULL,
  `State` varchar(20) NOT NULL,
  `ZipNo` mediumint(13) NOT NULL,
  `SoftwareVendorID` varchar(15) DEFAULT NULL,
  `AlternatePhone` varchar(15) DEFAULT NULL,
  `Fax` varchar(15) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `PharmacyIdQualifier` varchar(15) DEFAULT NULL,
  `PharmacyID` mediumint(17) DEFAULT NULL,
  `CashPlan` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Remarks` varchar(45) DEFAULT NULL,
  `NCPDPVersion` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`insurance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (1,'EVAPH-0001',0008408403,'dhowosocwdnow','902-9293-9230','2302903920','doencoenoenf','39202dhn','cnwdc',203920,'dewiobcbs',3093029,'2832380','8303920=','dhewdpwe','shwbqo@dbwoa','swdowdo',812928,'300K','909','');
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23  9:25:17
