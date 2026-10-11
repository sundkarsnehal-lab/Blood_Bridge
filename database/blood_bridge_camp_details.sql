-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: blood_bridge
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `camp_details`
--

DROP TABLE IF EXISTS `camp_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `camp_details` (
  `Camp_id` int(11) NOT NULL AUTO_INCREMENT,
  `Camp_name` varchar(30) DEFAULT NULL,
  `Organizer_name` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Start_time` varchar(20) DEFAULT NULL,
  `End_time` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Contact_no` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`Camp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camp_details`
--

LOCK TABLES `camp_details` WRITE;
/*!40000 ALTER TABLE `camp_details` DISABLE KEYS */;
INSERT INTO `camp_details` VALUES (1,'Lions blood Camp','Lions blood bank','Mumbai','2026-02-01','09:00','04:00','lionsbloodbank@gmail.com',8261011988),(2,'Save Life','City blood bank','Gadhinglaj','2026-02-04','10:00','06:00','savelife@gmail.com',8767656152),(3,'Red Drop Camp','Red Cross Society','Pune','2026-02-19','10:00','04:00','reddrop@gmail.com',9867543210),(4,'sathe blood drop','sathe blood bank','kowad','2026-02-27','9:00','5:00','satheblood@gmail.com',9078678987),(5,' Live Life long','Life blood Bank','Chandgad','2026-03-01','10:00','5:00','lifebloodbank@gmail.com',8767656152);
/*!40000 ALTER TABLE `camp_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-18 15:06:46
