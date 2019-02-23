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
-- Table structure for table `nurse_fee`
--

DROP TABLE IF EXISTS `nurse_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nurse_fee` (
  `NFeeID` int(11) NOT NULL AUTO_INCREMENT,
  `NPatientID` int(11) NOT NULL,
  `BNurseID` int(11) NOT NULL,
  `ratePerHour` double DEFAULT NULL,
  `HoursRendered` int(11) DEFAULT NULL,
  `DateStarted` date NOT NULL,
  `DateEnded` date NOT NULL,
  `DueDate` date DEFAULT NULL,
  `CoveredByPlan` tinyint(4) NOT NULL,
  `Shift` varchar(10) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `AppPayID` int(11) DEFAULT NULL,
  PRIMARY KEY (`NFeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse_fee`
--

LOCK TABLES `nurse_fee` WRITE;
/*!40000 ALTER TABLE `nurse_fee` DISABLE KEYS */;
INSERT INTO `nurse_fee` VALUES (1,4,1,340,400,'2019-01-08','2019-02-08','2019-02-08',1,'Afternoon','paid',NULL),(2,3,1,300.9,267,'2018-01-08','2018-02-08','2018-02-08',1,'Afternoon','paid',NULL),(3,3,1,300.9,267,'2018-01-08','2018-02-08','2018-02-08',1,'Afternoon','paid',NULL),(4,3,1,300.9,267,'2018-01-08','2018-02-08','2018-02-08',1,'Afternoon','paid',NULL),(5,3,1,300.9,267,'2018-01-08','2018-02-08','2018-02-08',1,'Afternoon','paid',NULL),(6,7,2,300.8,260,'2019-01-09','2019-02-09','2019-02-09',0,'Afternoon','unpaid',NULL),(7,7,2,300.8,260,'2019-01-09','2019-02-09','2019-02-09',0,'Afternoon','unpaid',NULL),(8,2,1,350,200,'2019-01-18','2019-02-18','2019-02-18',1,'Afternoon','paid',NULL),(9,6,2,450,200,'2018-12-31','2019-01-31','2019-01-31',0,'Night','paid',NULL),(10,2,1,350,200,'2019-01-18','2019-02-18','2019-02-18',1,'Afternoon','paid',NULL);
/*!40000 ALTER TABLE `nurse_fee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23  9:24:56
