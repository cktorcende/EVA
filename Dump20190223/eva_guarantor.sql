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
-- Table structure for table `guarantor`
--

DROP TABLE IF EXISTS `guarantor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `guarantor` (
  `guarantorID` int(11) NOT NULL AUTO_INCREMENT,
  `GPatientID` int(11) DEFAULT NULL,
  `Relationship` varchar(15) NOT NULL,
  `GuarantorName` varchar(45) NOT NULL,
  `Last` varchar(30) NOT NULL,
  `First` varchar(30) NOT NULL,
  `Middle` varchar(30) DEFAULT NULL,
  `SSN` varchar(15) NOT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `EmpStatus` varchar(25) DEFAULT NULL,
  `EmpID` mediumint(11) unsigned zerofill NOT NULL,
  `Address` varchar(45) NOT NULL,
  `City` varchar(15) DEFAULT NULL,
  `State` varchar(15) DEFAULT NULL,
  `Zip` mediumint(13) unsigned zerofill NOT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `Phone` varchar(13) DEFAULT NULL,
  `Ext` varchar(15) NOT NULL,
  `CellphoneNo` varchar(15) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Fax` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`guarantorID`),
  KEY `GPatientID_idx` (`GPatientID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guarantor`
--

LOCK TABLES `guarantor` WRITE;
/*!40000 ALTER TABLE `guarantor` DISABLE KEYS */;
INSERT INTO `guarantor` VALUES (1,NULL,'Employee','LISETH','LISETH','LISETH','LISETH','90938023','Female','2015-01-31','NOT EMPLOYED',00000098489,'20 LETZHIN ST. ','SEOUL','',0000000010328,'KOREA','0204803430','948330320','2002302','lseth.fhir@gmail.com','');
/*!40000 ALTER TABLE `guarantor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23  9:25:23
