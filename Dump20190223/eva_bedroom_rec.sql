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
-- Table structure for table `bedroom_rec`
--

DROP TABLE IF EXISTS `bedroom_rec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bedroom_rec` (
  `bedID` int(11) NOT NULL AUTO_INCREMENT,
  `BedClientID` int(11) NOT NULL DEFAULT '0',
  `wing` varchar(7) NOT NULL,
  `roomNo` int(11) NOT NULL,
  `bedType` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`bedID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bedroom_rec`
--

LOCK TABLES `bedroom_rec` WRITE;
/*!40000 ALTER TABLE `bedroom_rec` DISABLE KEYS */;
INSERT INTO `bedroom_rec` VALUES (2,2,'west',1,'public'),(3,0,'west',1,'public'),(4,0,'west',1,'public'),(5,0,'west',1,'public'),(6,0,'west',1,'public'),(7,0,'west',2,'public'),(8,0,'west',2,'public'),(9,0,'west',2,'public'),(10,0,'west',2,'public'),(11,0,'west',2,'public'),(12,0,'west',2,'public'),(13,0,'west',3,'public'),(14,0,'west',3,'public'),(15,0,'west',3,'public'),(16,0,'west',3,'public'),(17,0,'west',3,'public'),(18,0,'east',1,'private'),(19,0,'east',2,'public'),(20,0,'east',3,'public'),(21,0,'east',4,'public'),(22,0,'east',5,'public'),(23,0,'east',6,'public'),(24,0,'east',7,'public'),(25,0,'east',8,'public'),(26,0,'east',9,'public'),(27,0,'east',10,'public');
/*!40000 ALTER TABLE `bedroom_rec` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23  9:25:09
