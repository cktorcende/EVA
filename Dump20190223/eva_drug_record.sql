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
-- Table structure for table `drug_record`
--

DROP TABLE IF EXISTS `drug_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `drug_record` (
  `Drug_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DrugDescription` varchar(45) NOT NULL,
  `RecNo` int(10) unsigned zerofill NOT NULL,
  `ProductID` varchar(15) NOT NULL,
  `ControlClass` varchar(15) NOT NULL,
  `DrugType` varchar(30) NOT NULL,
  `GenericDrug` varchar(30) NOT NULL,
  `MedicaidNo` varchar(15) NOT NULL,
  `WarningCode` varchar(15) NOT NULL,
  `GenericAvailable` varchar(3) NOT NULL,
  `MedicareNo` varchar(15) NOT NULL,
  `SigCodes` varchar(15) NOT NULL,
  `SigCodes1` varchar(15) NOT NULL,
  `SigCodes2` varchar(15) NOT NULL,
  `CompoundDrug` varchar(45) NOT NULL,
  `ProductIDQualifier` varchar(15) NOT NULL,
  `DrugColor` varchar(15) NOT NULL,
  `ReferenceQualifier` varchar(20) NOT NULL,
  `NYDVSCode` varchar(15) NOT NULL,
  `PackageSize` int(10) unsigned zerofill NOT NULL,
  `QuickCode` int(11) NOT NULL,
  `CategoryofService` varchar(15) NOT NULL,
  `MedicaidPackageSize` int(11) NOT NULL,
  `Manufacturer` varchar(30) NOT NULL,
  `DrugInRobot` varchar(5) NOT NULL,
  `UnitOfMeasure` varchar(15) NOT NULL,
  `MaximumRefills` int(11) NOT NULL,
  `Drug340B` varchar(15) NOT NULL,
  `DrugAWP` varchar(15) NOT NULL,
  `Expiration` date NOT NULL,
  `ActiveDrug` varchar(45) NOT NULL,
  `DirectPrice` double NOT NULL,
  `LotExpDate` date NOT NULL,
  `LotNo` mediumint(11) unsigned zerofill NOT NULL,
  `TXR` varchar(15) NOT NULL,
  `FedMacPrice` double NOT NULL,
  `TXRExtention` varchar(15) NOT NULL,
  `AcquisitionCost` double NOT NULL,
  `SpecialtyDrug` varchar(45) NOT NULL,
  `LastPriceUpdate` date NOT NULL,
  `MinimumQtyOnHand` int(11) NOT NULL,
  `CurrentQtyOnHand` int(11) DEFAULT NULL,
  PRIMARY KEY (`Drug_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug_record`
--

LOCK TABLES `drug_record` WRITE;
/*!40000 ALTER TABLE `drug_record` DISABLE KEYS */;
INSERT INTO `drug_record` VALUES (1,'ENZEMA NUTINE',0000000001,'0219182','DRUG','NARCOTICS','ENZEMA NUTINE (GENERIC)','9019103','AWP-02-HIS90','YES','01938921','3802832','320832','380101','ENZEMA','328028230','BLUE','DA-3802830-OU8023','380EH-39S',0000000060,890,'NONE',60,'EURODRUG INTL.','YES','30',5000,'TRUE','029-UTF','2020-02-21','POTASSSIUM',60.9,'2020-02-21',00000000091,'AWP890',61.9,'-9090AW',60.9,'POTASSIUM','2019-01-21',1000,1000),(2,'SODIUM CHLORIDE(DEXTROSE)',0000000002,'0218142','DRUG','NARCOTICS','DEXTROSE','9019123','AWP-02-APS90','YES','01838423','3822822','322832','382101','CHLORINE','328028230','TRANSPARENT','AA-3890820-OP8129','380EW-31A',0000000012,230,'NONE',12,'EURODRUG INTL.','YES','12',3000,'TRUE','029-UTF','2021-12-21','CHLORINE',60.9,'2020-02-21',00000000091,'AWP890',61.9,'-9090AW',60.9,'POTASSIUM','2019-01-21',1000,2000);
/*!40000 ALTER TABLE `drug_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-23  9:25:03
