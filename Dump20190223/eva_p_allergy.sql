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
-- Table structure for table `p_allergy`
--

DROP TABLE IF EXISTS `p_allergy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `p_allergy` (
  `Allergy_ID` int(11) NOT NULL AUTO_INCREMENT,
  `P_ID` int(11) DEFAULT '0',
  `Substance` varchar(30) DEFAULT NULL,
  `Reaction` varchar(30) NOT NULL,
  `Category` varchar(30) DEFAULT NULL,
  `Stat` varchar(10) NOT NULL,
  `Severity` varchar(10) NOT NULL,
  `InformationSource` varchar(45) NOT NULL,
  `Onset` date DEFAULT NULL,
  `Comments` text,
  PRIMARY KEY (`Allergy_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_allergy`
--

LOCK TABLES `p_allergy` WRITE;
/*!40000 ALTER TABLE `p_allergy` DISABLE KEYS */;
INSERT INTO `p_allergy` VALUES (1,2,'SHRIMP','REDNESS OF SKIN','REDNESS OF SKIN','Inactive','Moderate','DR. FOLITA MACANAS','2010-09-26','NONE'),(2,6,'CHICKEN','BLOATED SKIN','BLOATED SKIN','Active','Moderate','DRA. SITALO CONCEPTION','2015-09-28','PATIENT\'S SKIN STARTS TO ITCH UPON INTAKE OF CHICKEN CAN BE DEADLY UP TO AN HOUR'),(3,2,'PEANUT','INABILITY TO BREATH NORMALLY','BLOATED SKIN','Active','Moderate','Dra. Cora Cumuyog','2016-09-11',NULL),(4,3,'PEANUT','INABILITY TO BREATH NORMALLY','hggjh','Inactive','Moderate','Dra. Cora Cumuyog','2019-02-22',NULL),(5,2,'jhgjgjhg','hghjg','fgdfg1','Inactive','Mild','jhjkhk','2019-02-22',NULL);
/*!40000 ALTER TABLE `p_allergy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23  9:25:24
