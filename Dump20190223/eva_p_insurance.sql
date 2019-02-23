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
-- Table structure for table `p_insurance`
--

DROP TABLE IF EXISTS `p_insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `p_insurance` (
  `insurance_id` int(11) NOT NULL AUTO_INCREMENT,
  `Subscriber_ID` int(11) NOT NULL,
  `Insuranceid` int(11) NOT NULL,
  `Plan` varchar(30) NOT NULL,
  `From` date NOT NULL,
  `To` date NOT NULL,
  `Coverage` varchar(30) NOT NULL,
  `SubscriberNo` int(11) NOT NULL,
  `Relationship` varchar(10) NOT NULL,
  `GroupNo` int(11) NOT NULL,
  `Copay` varchar(45) NOT NULL,
  `Deductible` varchar(45) NOT NULL,
  `CoInsurance` varchar(45) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(20) NOT NULL,
  `Zip` mediumint(10) unsigned zerofill NOT NULL,
  `Country` varchar(20) NOT NULL,
  PRIMARY KEY (`insurance_id`),
  KEY `Subscriber_ID_idx` (`Subscriber_ID`),
  CONSTRAINT `Insuranceid` FOREIGN KEY (`Subscriber_ID`) REFERENCES `subscriber_record` (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_insurance`
--

LOCK TABLES `p_insurance` WRITE;
/*!40000 ALTER TABLE `p_insurance` DISABLE KEYS */;
/*!40000 ALTER TABLE `p_insurance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23  9:25:15
