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
-- Table structure for table `blood_category`
--

DROP TABLE IF EXISTS `blood_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blood_category` (
  `Category_id` int(11) NOT NULL AUTO_INCREMENT,
  `Blood_Group` varchar(5) DEFAULT NULL,
  `Blood_Image` varchar(100) DEFAULT NULL,
  `Blood_Type` varchar(40) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_category`
--

LOCK TABLES `blood_category` WRITE;
/*!40000 ALTER TABLE `blood_category` DISABLE KEYS */;
INSERT INTO `blood_category` VALUES (1,'O+','Plasma.jpg','Plasma','It is Good','Available'),(2,'O+','Platelates.jpg','Platelets','It is Good','Available'),(3,'O+','WBC.jpg','WBC','It is Good','Available'),(4,'O+','RBC.jpg','RBC','It is Good','Available'),(5,'A+','Plasma.jpg','Plasma','It is Good','Available'),(6,'A+','Platelates.jpg','Platelets','It is Good','Available'),(7,'A+','WBC.jpg','WBC','It is Good','Available'),(8,'A+','RBC.jpg','RBC','It is Good','Available'),(9,'B+','Plasma.jpg','Plasma','It is Good','Available'),(10,'B+','Platelates.jpg','Platelets','It is Good','Available'),(11,'B+','RBC.jpg','RBC','It is Good','Available'),(12,'B+','WBC.jpg','WBC','It is Good','Available'),(13,'AB+','Plasma.jpg','Plasma','It is Good','Available'),(14,'AB+','Platelates.jpg','Platelets','It is Good','Available'),(15,'AB+','RBC.jpg','RBC','It is Good','Available'),(16,'AB+','WBC.jpg','WBC','It is Good','Available'),(17,'O-','WBC.jpg','WBC','It is Good','Available'),(18,'O-','RBC.jpg','RBC','It is Good','Available'),(19,'O-','Platelates.jpg','Platelets','It is Good','Available'),(20,'O-','Plasma.jpg','Platelets','It is Good','Available'),(21,'A-','Plasma.jpg','Plasma','It is Good','Available'),(22,'A-','Platelates.jpg','Platelets','It is Good','Available'),(23,'A-','RBC.jpg','RBC','It is Good','Available'),(24,'A-','WBC.jpg','RBC','It is Good','Available'),(25,'B-','WBC.jpg','WBC','It is Good','Available'),(26,'B-','RBC.jpg','RBC','It is Good','Available'),(27,'B-','Platelates.jpg','Platelets','It is Good','Available'),(28,'B-','Plasma.jpg','Plasma','It is Good','Available'),(29,'AB-','Plasma.jpg','Plasma','It is Good','Available'),(30,'AB-','Platelates.jpg','Platelets','It is Good','Available'),(31,'AB-','WBC.jpg','WBC','It is Good','Available'),(32,'AB-','RBC.jpg','RBC','It is Good','Available');
/*!40000 ALTER TABLE `blood_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-18 15:06:45
