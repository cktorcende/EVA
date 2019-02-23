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
-- Table structure for table `nurse_record`
--

DROP TABLE IF EXISTS `nurse_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nurse_record` (
  `Nurse_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LastName` varchar(30) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `MiddleName` varchar(30) DEFAULT NULL,
  `DateBirth` date NOT NULL,
  `PlaceOfBirth` varchar(45) NOT NULL,
  `Age` int(11) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `City` varchar(20) NOT NULL,
  `PinCode` mediumint(10) NOT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Country` varchar(30) NOT NULL,
  `Phone` mediumint(13) unsigned zerofill DEFAULT NULL,
  `Mobile` varchar(13) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Designation` varchar(30) NOT NULL,
  `JoiningDate` date NOT NULL,
  `Qualification` blob,
  `Specialization` varchar(45) NOT NULL,
  `RegistrationNo` varchar(20) NOT NULL,
  `RegistrationCode` varchar(20) DEFAULT NULL,
  `RegistrationDate` date NOT NULL,
  `HospitalAffiliation` varchar(60) DEFAULT NULL,
  `ENurseID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Nurse_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse_record`
--

LOCK TABLES `nurse_record` WRITE;
/*!40000 ALTER TABLE `nurse_record` DISABLE KEYS */;
INSERT INTO `nurse_record` VALUES (1,'Mirales','Merci','Ken','1980-02-04','',38,'144 Ignacio ','Valenzuela',2932,'N/A','Philippines',0000009320222,'329392','merci.m@gmail.com','Department of Neurology','2010-09-02',_binary '?','doslcw','902102190','dnoccdsbcs67','2000-09-09','none',NULL),(2,'webcldb','dlenlcn','lblrnell','1980-02-04','',32,'cdncnlenl','dndv;n;s',2321,'dbdb','ddblbl',0000000038028,'dbks3829','cndncldn','ncdlncld','1980-02-04',NULL,'xdvcskvk','dbdkbckd','bxskcbks','1980-02-04','cdsn',NULL);
/*!40000 ALTER TABLE `nurse_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23  9:25:07
