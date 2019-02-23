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
-- Table structure for table `chef_record`
--

DROP TABLE IF EXISTS `chef_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chef_record` (
  `chef_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Lastname` varchar(30) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `MiddleName` varchar(30) DEFAULT NULL,
  `DateBirth` date NOT NULL,
  `PlaceOfBirth` varchar(45) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `PinCode` mediumint(10) unsigned zerofill DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Country` varchar(20) NOT NULL,
  `Phone` varchar(13) NOT NULL,
  `Mobile` varchar(13) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `IsNutritionist` tinyint(4) DEFAULT NULL,
  `Designation` varchar(20) NOT NULL,
  `JoiningDate` date NOT NULL,
  `Photo` blob,
  `Specialization` varchar(20) DEFAULT NULL,
  `RegistrationNo` varchar(20) DEFAULT NULL,
  `RegistrationCode` varchar(20) NOT NULL,
  `RegistrationDate` date NOT NULL,
  `HospitalAffiliation` varchar(60) DEFAULT NULL,
  `EChefID` int(11) DEFAULT NULL,
  PRIMARY KEY (`chef_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_record`
--

LOCK TABLES `chef_record` WRITE;
/*!40000 ALTER TABLE `chef_record` DISABLE KEYS */;
INSERT INTO `chef_record` VALUES (1,'Cheriles','Ma. Jicara','Hidori','1983-09-30','Relos Ritos Memorial Hospital',32,'Gravin 123, Majestic Place Robes ','San Juan',0000009201,NULL,'Philippines','3280227','+3203802','joseRito@gmail.com',1,'Cook','2003-09-30',NULL,'Buree','0292892','AWP23902','2001-10-30',NULL,NULL),(2,'doisfh','hewofh','hewoh','2003-09-28','hweohf',12,'doqhd','hdewo',0000004409,'fhwofh','efho','58490','feho@heow','feho@heow',NULL,'fhwos','2003-09-28',NULL,'hdewo','3920392','d90s','2003-09-28','',NULL);
/*!40000 ALTER TABLE `chef_record` ENABLE KEYS */;
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
