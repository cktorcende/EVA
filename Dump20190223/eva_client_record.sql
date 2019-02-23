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
-- Table structure for table `client_record`
--

DROP TABLE IF EXISTS `client_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `client_record` (
  `Patient_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Client_ID` int(11) DEFAULT '0',
  `Date_Admitted` date NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `NickName` varchar(15) DEFAULT NULL,
  `FirstName` varchar(30) NOT NULL,
  `MiddleName` varchar(30) DEFAULT NULL,
  `Surname` varchar(30) NOT NULL,
  `BirthPlace` varchar(50) NOT NULL,
  `BirthDate` date NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Address` varchar(60) NOT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Province` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `LocationCode` int(11) unsigned zerofill DEFAULT '00000000000',
  `ResidenceCode` mediumint(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  `ReferredBy` int(5) NOT NULL DEFAULT '0',
  `PatientStatus` varchar(10) NOT NULL,
  `Remarks` varchar(45) DEFAULT NULL,
  `Language` varchar(20) DEFAULT NULL,
  `Marital` varchar(15) DEFAULT NULL,
  `PatientType` varchar(15) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Picture` blob,
  PRIMARY KEY (`Patient_ID`),
  UNIQUE KEY `LocationCode_UNIQUE` (`LocationCode`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_record`
--

LOCK TABLES `client_record` WRITE;
/*!40000 ALTER TABLE `client_record` DISABLE KEYS */;
INSERT INTO `client_record` VALUES (2,0,'2019-01-08','Female','Gie','Gilda','Daria','Hufana','Caloocan','2019-01-08',0,'P. Galauran St. West Grace Park 8th ave., 20-B','Caloocan','Metro Manila','Philippines',00000000020,00000001008,1008,'active','hhdioefboebofbobwoebwo','Philippines','SINGLE','Disabled','jayragaile@gmail.com',NULL),(3,1,'2018-01-12','Female','Jap','Japhet','Rugas','Jade','Manila City Hospital','2001-08-21',17,'11 C-3 ','Caloocan','Caloocan','Philippines',00000000045,00000001008,1,'active','jayra','FILIPINO','SINGLE','Bedridden','jayragaile@gmail.com',NULL),(4,0,'2018-09-18','Male','AL','Alexander tienne','Ru','Dian','Rougue Anne Central Hospital','1970-01-18',49,'408 negiri St. West Coastal Road ','Florida','Florida','USA',00000033106,00000033106,1,'Active','','','','','rianneLea@gmail.com',NULL),(6,0,'2019-01-17','Female','Rom','Cleiy ','Romula','ShinTe','Medicare Hospital','1965-09-02',53,'Rouge 1 east compound Bali St.','Bali','Bali','Indonesia',00000009123,00000009123,1,'active','','','','','Rion.key@gmail.com',NULL),(7,0,'2000-09-08','Female','Ange','Angelica','Aldover','Convocar','cbdsbvls','2000-09-08',18,'xskdbclbdflsblsbl','chdsohc','dclsnl','cldshls',00000093209,00000093092,1,'Active','jdciovsfdhvhszp','filipino','Single','Active','Angelica@gmail.com',NULL);
/*!40000 ALTER TABLE `client_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23  9:25:20
