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
-- Table structure for table `certification_details`
--

DROP TABLE IF EXISTS `certification_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certification_details` (
  `Certificate_id` int(11) NOT NULL AUTO_INCREMENT,
  `Donor_name` varchar(100) DEFAULT NULL,
  `Blood_Group` varchar(5) DEFAULT NULL,
  `Donation_Date` date DEFAULT NULL,
  `Blood_Type` varchar(100) DEFAULT NULL,
  `Issued_By` varchar(50) DEFAULT NULL,
  `Issue_Date` date DEFAULT NULL,
  `Verification_code` varchar(4) DEFAULT NULL,
  `Certification_Status` varchar(30) DEFAULT NULL,
  `Contact_no` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`Certificate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certification_details`
--

LOCK TABLES `certification_details` WRITE;
/*!40000 ALTER TABLE `certification_details` DISABLE KEYS */;
INSERT INTO `certification_details` VALUES (1,'snehal shivaji sundkar','O+','2026-01-30','RBC','lions blood bank','2026-02-03','9896','Succefully Generated',6789096743),(2,'Shubham Shivaji Sundkar','O+','2026-02-03','WBC','Red Drop Blood Bank','2026-02-09','2703','Successfully Generated',8976897654),(3,'sakshi Vijay Patil','A+','2026-02-26','Plasma','Red Blood Bank','2026-03-03','4567','Approved',9604819958),(4,'Malan Shivaji Sundkar','AB+','2026-02-28','Platelates','Sathe Blood Bank','2026-03-03','6789','Approved',6785949543),(5,'Sneha Shivaji Patil','B+','2026-02-04','RBC','lion\'s Blood Bank','2026-03-04','9043','Approved',8765456734);
/*!40000 ALTER TABLE `certification_details` ENABLE KEYS */;
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
