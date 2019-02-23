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
-- Table structure for table `apppay`
--

DROP TABLE IF EXISTS `apppay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `apppay` (
  `Payment_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PatientId` int(11) DEFAULT NULL,
  `PaymentName` varchar(30) NOT NULL,
  `EntryDate` date NOT NULL,
  `AcctDate` date NOT NULL,
  `PaymentDate` date NOT NULL,
  `PaymentType` varchar(15) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `CollectedBy` varchar(20) NOT NULL,
  `PayerEntity` varchar(10) NOT NULL,
  `PayerName` varchar(45) NOT NULL,
  `PayerCode` varchar(15) DEFAULT NULL,
  `TotalAmount` double DEFAULT NULL,
  `AmountApplied` double DEFAULT NULL,
  `AmountUnapplied` double DEFAULT NULL,
  `TransferAmount` double DEFAULT NULL,
  `ReferenceNumber` varchar(15) DEFAULT NULL,
  `PSTSNo` varchar(15) DEFAULT NULL,
  `PaymentM` varchar(18) DEFAULT NULL,
  `Amount` double DEFAULT NULL,
  `LegalEntity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Payment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apppay`
--

LOCK TABLES `apppay` WRITE;
/*!40000 ALTER TABLE `apppay` DISABLE KEYS */;
INSERT INTO `apppay` VALUES (2,2,'PATIENT','2000-09-06','2000-09-06','2000-09-06','CO-INSURANCE','NEW','BILLING OFFICE','\"PATIENT\"','HIDORI WAKASHI','AWH-0291-AWH',2302,2903,2903,228,'20298','7897','Check',3290,NULL),(3,6,'PATIENT','2018-03-14','2018-03-17','2018-03-27','SELF PAY','NEW','BILLING OFFICE','GUARANTOR','SHINTE,  JIN','AWP-1209-WHTS',10000,5000,5000,0,'239028','3290-9282','Check',5000,NULL);
/*!40000 ALTER TABLE `apppay` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23  9:25:01
