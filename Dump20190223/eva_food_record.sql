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
-- Table structure for table `food_record`
--

DROP TABLE IF EXISTS `food_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `food_record` (
  `FoodID` int(11) NOT NULL AUTO_INCREMENT,
  `FoodDescription` varchar(45) NOT NULL,
  `CasePack` varchar(15) DEFAULT NULL,
  `VendorID` int(11) DEFAULT '0',
  `Brand` varchar(45) DEFAULT NULL,
  `CaseWeight` int(11) NOT NULL,
  `CaseSubBreak` varchar(30) DEFAULT NULL,
  `Barcode` varchar(20) DEFAULT NULL,
  `UnitOfMeasure` varchar(20) NOT NULL,
  `MaximumRefills` int(11) NOT NULL,
  `Expiration` date NOT NULL,
  `ActiveIngridient` varchar(45) NOT NULL,
  `DirectPrice` double DEFAULT NULL,
  `LotExpDate` date NOT NULL,
  `LotNo` varchar(15) DEFAULT NULL,
  `MinimumQtyOnHand` int(11) NOT NULL,
  `CurrentQtyOnHand` int(11) DEFAULT NULL,
  PRIMARY KEY (`FoodID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_record`
--

LOCK TABLES `food_record` WRITE;
/*!40000 ALTER TABLE `food_record` DISABLE KEYS */;
INSERT INTO `food_record` VALUES (3,'CARROTS','90',2,'DAILY FARMS',80,'230-FFV-001','8089000','90',90,'2019-04-02','VITAMIN A',20,'2019-04-02','8009',0,800);
/*!40000 ALTER TABLE `food_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23  9:25:08
