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
-- Table structure for table `add_blood`
--

DROP TABLE IF EXISTS `add_blood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_blood` (
  `Blood_id` int(11) NOT NULL AUTO_INCREMENT,
  `Blood_Group` varchar(6) DEFAULT NULL,
  `Blood_Image` varchar(100) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Collection_Date` date DEFAULT NULL,
  `Expiry_Date` date DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Blood_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_blood`
--

LOCK TABLES `add_blood` WRITE;
/*!40000 ALTER TABLE `add_blood` DISABLE KEYS */;
INSERT INTO `add_blood` VALUES (1,'O+','img/O.jpg',350,1200,'2026-02-11','2026-02-18','Available'),(2,'A+','img/A.jpg',250,1000,'2026-02-12','2026-02-16','Available'),(3,'B+','img/B.jpg',350,1000,'2026-02-11','2026-02-18','Available'),(4,'A-','img/A1.jpg',350,1500,'2026-02-20','2026-02-26','Available'),(5,'B-','img/B1.jpg',250,1000,'2026-02-22','2026-02-28','Available'),(6,'AB+','img/AB.jpg',250,1200,'2026-02-22','2026-02-28','Not Available'),(7,'AB-','img/AB1.jpg',250,1000,'2026-02-16','2026-02-26','Available'),(8,'O-','img/O1.jpg',350,1500,'2026-02-19','2026-03-01','Available');
/*!40000 ALTER TABLE `add_blood` ENABLE KEYS */;
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
