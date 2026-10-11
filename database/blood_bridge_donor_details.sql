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
-- Table structure for table `donor_details`
--

DROP TABLE IF EXISTS `donor_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donor_details` (
  `Donor_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Weight` varchar(20) DEFAULT NULL,
  `Gender` varchar(7) DEFAULT NULL,
  `Blood_Group` varchar(5) DEFAULT NULL,
  `Blood_Type` varchar(30) DEFAULT NULL,
  `Contact_no` bigint(10) DEFAULT NULL,
  `Donation_Date` date DEFAULT NULL,
  `Last_Donation_Date` date DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Medical_History` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Donor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor_details`
--

LOCK TABLES `donor_details` WRITE;
/*!40000 ALTER TABLE `donor_details` DISABLE KEYS */;
INSERT INTO `donor_details` VALUES (1,'snehal shivaji sundkar',21,'72','Female','O+','Plasma',7219635692,'2026-02-03','2026-01-03','At post - Malatwadi',250,'All is Good'),(2,'Shubham Shivaji Sundkar',20,'55','Male','O+','WBC',9604818958,'2026-02-11','2026-01-11','At post - Malatwadi',350,'All is fine'),(3,'samira sardar sutar',21,'60','Female','O+','Platelets',7219635692,'2026-02-26','2026-01-26','At post  Malatwadi',250,'All is good'),(4,'krunali krishna patil',21,'56','Female','A+','Plasma',6987546789,'2026-02-26','2026-01-26','At post - Nagardale.',250,'All is good'),(5,'Kadambari Pundlik Patil',22,'55','Female','O+','RBC',8010402081,'2026-02-16','2025-12-16','At post - Malatwadi',350,'All is Well'),(6,'Malan Shivaji Sundkar',35,'60','Female','B+','Plasma',8909652345,'2026-03-02','2026-02-02','At post - Kowad',250,'All is fine');
/*!40000 ALTER TABLE `donor_details` ENABLE KEYS */;
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
