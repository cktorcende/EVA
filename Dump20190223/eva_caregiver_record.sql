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
-- Table structure for table `caregiver_record`
--

DROP TABLE IF EXISTS `caregiver_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `caregiver_record` (
  `Caregiver_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LastName` varchar(30) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `MiddleName` varchar(30) DEFAULT NULL,
  `DateBirth` date NOT NULL,
  `PlaceOfBirth` varchar(45) NOT NULL,
  `Age` int(11) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Country` varchar(30) NOT NULL,
  `Phone` mediumint(13) unsigned zerofill DEFAULT NULL,
  `Mobile` varchar(13) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `City` varchar(20) NOT NULL,
  `PinCode` mediumint(10) NOT NULL,
  `Picture` blob,
  `Designation` varchar(30) NOT NULL,
  `JoiningDate` date NOT NULL,
  `Specialization` varchar(45) DEFAULT NULL,
  `RegistrationNo` varchar(20) NOT NULL,
  `RegistrationCode` varchar(20) NOT NULL,
  `RegistrationDate` date NOT NULL,
  `HospitalAffiliation` varchar(60) DEFAULT NULL,
  `ECaregiverID` int(11) DEFAULT '0',
  PRIMARY KEY (`Caregiver_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caregiver_record`
--

LOCK TABLES `caregiver_record` WRITE;
/*!40000 ALTER TABLE `caregiver_record` DISABLE KEYS */;
INSERT INTO `caregiver_record` VALUES (1,'Tenorio','Mejaria','Jinian','1952-09-09','Maria Jose Hopital',82,'Maria Cawayan St. Pasay Road  ',NULL,'Philippines',0000009302202,'+639153447446','majose@gmail.com','Pasay',1090,NULL,'Radiology Department','2002-09-09','Radiology','329020232','34EHW902','1992-02-19',NULL,0);
/*!40000 ALTER TABLE `caregiver_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23  9:25:04
