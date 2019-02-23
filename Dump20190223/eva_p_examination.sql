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
-- Table structure for table `p_examination`
--

DROP TABLE IF EXISTS `p_examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `p_examination` (
  `Examination_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Pa_ID` int(11) DEFAULT '0',
  `ExaminationType` varchar(30) NOT NULL,
  `ExaminationName` varchar(45) NOT NULL,
  `ExaminationDate` date NOT NULL,
  `ExaminationDetails` text,
  `ExaminerName` varchar(45) NOT NULL,
  `ExaminationPlace` varchar(45) NOT NULL,
  `ExaminationResult` varchar(45) NOT NULL,
  PRIMARY KEY (`Examination_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_examination`
--

LOCK TABLES `p_examination` WRITE;
/*!40000 ALTER TABLE `p_examination` DISABLE KEYS */;
INSERT INTO `p_examination` VALUES (3,0,'jewijgflrwjw','j;rj;jf;ew;','1990-09-29','eowihleqnlnl','','n',';nd;w'),(4,0,'Cadio','2D ECHO','2000-09-08','Patient Suffers from heart attack','','Lapislon Grove',''),(5,7,'jewkn','ndkcdn','2000-09-08','nglvfld','dnekwlnd','nlcncldl','');
/*!40000 ALTER TABLE `p_examination` ENABLE KEYS */;
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
