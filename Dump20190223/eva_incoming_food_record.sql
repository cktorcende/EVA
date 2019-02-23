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
-- Table structure for table `incoming_food_record`
--

DROP TABLE IF EXISTS `incoming_food_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `incoming_food_record` (
  `FoodID` int(11) NOT NULL AUTO_INCREMENT,
  `FoodDescription` varchar(45) NOT NULL,
  `F_SupplierID` int(11) DEFAULT NULL,
  `VendorItem` int(11) NOT NULL,
  `ProductKey` mediumint(15) unsigned zerofill DEFAULT NULL,
  `InvoiceNumber` mediumint(15) unsigned zerofill DEFAULT NULL,
  `QTYonhand` int(11) NOT NULL,
  `PurchaseDate` date NOT NULL,
  `QTYPurchased` int(11) DEFAULT NULL,
  `AcqCost` double NOT NULL,
  `Remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`FoodID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incoming_food_record`
--

LOCK TABLES `incoming_food_record` WRITE;
/*!40000 ALTER TABLE `incoming_food_record` DISABLE KEYS */;
INSERT INTO `incoming_food_record` VALUES (1,'CARROTS',3,1,000000002329029,000000000139193,0,'2019-02-21',400,799.9,'NONE'),(2,'CARROTS',3,1,000000002329029,000000000139193,0,'2019-02-21',400,799.9,'NONE');
/*!40000 ALTER TABLE `incoming_food_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23  9:25:00
