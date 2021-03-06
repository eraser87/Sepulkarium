-- MySQL dump 10.13  Distrib 5.6.27, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: sepulkariumdb
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

DROP DATABASE IF EXISTS `sepulkariumdb`;

CREATE DATABASE `sepulkariumdb`;

GRANT ALL PRIVILEGES ON `sepulkariumdb`.* TO sepulator@'localhost' IDENTIFIED BY '';

USE `sepulkariumdb`;
--
-- Table structure for table `sepulka`
--

DROP TABLE IF EXISTS `sepulka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sepulka` (
  `sepulka_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `size` text,
  `colour` text,
  `sepulkarium_id` int(11) NOT NULL,
  PRIMARY KEY (`sepulka_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sepulka`
--

LOCK TABLES `sepulka` WRITE;
/*!40000 ALTER TABLE `sepulka` DISABLE KEYS */;
INSERT INTO `sepulka` VALUES (1,'Сепулька1','Маленькая','Зелёная',1),(2,'Сепулька2','Средняя','Красная',1),(3,'Сепулька3','Большая','Синяя',2);
/*!40000 ALTER TABLE `sepulka` ENABLE KEYS */;
ALTER TABLE `sepulka`
ADD CONSTRAINT `sepulka_ibfk_2` FOREIGN KEY (`sepulkarium_id`) REFERENCES `sepulkarium` (`sepulkarium_id`) ON DELETE CASCADE ON UPDATE CASCADE;
UNLOCK TABLES;

--
-- Table structure for table `sepulkarium`
--

DROP TABLE IF EXISTS `sepulkarium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sepulkarium` (
  `sepulkarium_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`sepulkarium_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sepulkarium`
--

LOCK TABLES `sepulkarium` WRITE;
/*!40000 ALTER TABLE `sepulkarium` DISABLE KEYS */;
INSERT INTO `sepulkarium` VALUES (1,'Сепулькарий №1'),(2,'Сепулькарий №2');
/*!40000 ALTER TABLE `sepulkarium` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-21 10:02:42
