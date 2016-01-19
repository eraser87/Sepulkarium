-- MySQL dump 10.13  Distrib 5.6.27, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: sepulkarium
-- ------------------------------------------------------
-- Server version	5.6.27-2

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


CREATE DATABASE IF NOT EXISTS sepulkarium;

GRANT ALL ON sepulkarium.* TO sepulator@localhost;

FLUSH PRIVILEGES;

USE 'sepulkarium';

--
-- Table structure for table `sepulkaria`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `sepulkaria` (
  `sepulkarium_id` int(11) NOT NULL,
  `name` text,
  PRIMARY KEY (`sepulkarium_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sepulkaria`
--

LOCK TABLES `sepulkaria` WRITE;
/*!40000 ALTER TABLE `sepulkaria` DISABLE KEYS */;
INSERT INTO `sepulkaria` VALUES (1,'1st sepulkarium'),(2,'2nd sepulkarium');
/*!40000 ALTER TABLE `sepulkaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sepulki`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `sepulki` (
  `sepulka_id` int(11) NOT NULL,
  `name` text,
  `size` text,
  `colour` text,
  `sepulkarium_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sepulka_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sepulki`
--

LOCK TABLES `sepulki` WRITE;
/*!40000 ALTER TABLE `sepulki` DISABLE KEYS */;
INSERT INTO `sepulki` VALUES (1,'sep1','small','green',1),(2,'sep2','medium','red',1),(3,'sep3','big','blue',2);
/*!40000 ALTER TABLE `sepulki` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-18 14:54:36
