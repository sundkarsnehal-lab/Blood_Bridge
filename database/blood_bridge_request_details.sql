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
-- Table structure for table `request_details`
--

DROP TABLE IF EXISTS `request_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_details` (
  `Request_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Blood_Group` varchar(5) DEFAULT NULL,
  `units` int(11) DEFAULT NULL,
  `Blood_type` varchar(50) DEFAULT NULL,
  `Request_date` date DEFAULT NULL,
  `contact_no` bigint(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`Request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_details`
--

LOCK TABLES `request_details` WRITE;
/*!40000 ALTER TABLE `request_details` DISABLE KEYS */;
INSERT INTO `request_details` VALUES (1,'snehal shivaji sundkar','female',21,'O+',234,'RBC','2026-08-08',7219635692,'At post- Gadhinglaj',' Pending',NULL),(2,'Shubham Shivaji Sundkar','male',20,'O+',1,'WBC','2026-02-17',9604818958,'                   At post - Malatwadi. \r\nTal - Chandgad\r\n               ','Deliver',NULL),(3,'krunali krishna patil','female',21,'A+',3,'Plasma','2026-02-17',8799234578,'                   At post - Nagardale\r\n               ','Deliver',NULL),(4,'Sakshi vijay patil','female',21,'O+',4,'Platelates','2026-02-17',8767656152,'                   At post - Harali        ','Deliver',NULL),(5,'Sandhya parit','female',21,'AB+',4,'RBC','2026-02-17',9604818958,'                   At post - Malatwadi. \r\nTal - Chandgad\r\n               ','Approved',NULL),(6,'Aarati Mehta','female',25,'O+',2,'WBC','2026-02-18',8976546789,'                   at post - malatwadi\r\n               ','Approved',NULL),(7,'snehal shivaji sundkar','female',27,'A+',5,'Plasma','2026-03-02',7219635692,'                                At post - Malatwadi\r\n                            ','Pending',NULL),(8,'snehal shivaji sundkar','female',27,'A+',1,'Plasma','2026-03-02',7219635692,'                                At post - Malatwadi\r\n                            ','Pending',NULL),(9,'snehal shivaji sundkar','female',21,'O+',1,'Plasma','2026-03-03',7219635692,'                                At post - Malatwadi\r\n                            ','Pending',NULL),(10,'snehal shivaji sundkar','female',21,'O+',1,'Plasma','2026-03-05',7219635692,'                                At post - Malatwadi\r\n                            ','Pending',NULL),(11,'snehal shivaji sundkar','female',21,'O+',2,'Plasma','2026-03-05',7219635692,'                                At post - Malatwadi\r\n                            ','Pending',NULL),(12,'snehal shivaji sundkar','female',23,'A+',2,'Plasma','2026-03-05',7219635692,'                                At post - Malatwadi\r\n                            ','Pending',NULL),(13,'snehal shivaji sundkar','female',21,'B+',2,'Platelets','2026-03-05',7219635692,'                                At post - Malatwadi\r\n                            ','Pending',NULL),(14,'snehal shivaji sundkar','female',65,'AB-',3,'WBC','2026-03-05',7219635692,'                                At post - Malatwadi\r\n                            ','Pending',NULL),(15,'snehal shivaji sundkar','female',65,'AB-',3,'WBC','2026-03-05',7219635692,'                                At post - Malatwadi\r\n                            ','Pending',NULL),(16,'snehal shivaji sundkar','female',21,'A+',2,'Platelets','2026-03-05',7219635692,'                                At post - Malatwadi\r\n                            ','Pending',NULL),(17,'snehal shivaji sundkar','female',21,'O+',3,'Plasma','2026-03-17',7219635692,'                                At post - Malatwadi\r\n                            ','Pending',NULL),(18,'snehal shivaji sundkar','female',21,'O+',4,'Plasma','2026-03-18',7219635692,'                                At post - Malatwadi\r\n                            ','Pending',NULL),(19,'krunali krishna patil','female',22,'A+',2,'Platelets','2026-03-18',8799234578,'                                At post - Nagardale\r\n                            ','Pending',NULL);
/*!40000 ALTER TABLE `request_details` ENABLE KEYS */;
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
