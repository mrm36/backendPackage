-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: login
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `drugInfo`
--

DROP TABLE IF EXISTS `drugInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drugInfo` (
  `genericName` varchar(255) DEFAULT NULL,
  `productDesc` varchar(512) DEFAULT NULL,
  `recallReportDate` varchar(25) DEFAULT NULL,
  `recallData` varchar(512) DEFAULT NULL,
  `brandName` varchar(255) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `refLink` varchar(255) DEFAULT NULL,
  `drugId` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`drugId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugInfo`
--

LOCK TABLES `drugInfo` WRITE;
/*!40000 ALTER TABLE `drugInfo` DISABLE KEYS */;
INSERT INTO `drugInfo` VALUES ('AMLODIPINE BESYLATE AND ATORVASTATIN CALCIUM','Amlodipine besylate and Atorvastatin calcium tablets, 10mg/40mg, 90-count bottle, Rx Only Manufactured by Dr. Reddy\'s Laboratories Limited Bachupally, 500 090 India, NDC 43598-315-90    ','20150624','Subpotent drug','AMLODIPINE BESYLATE AND ATORVASTATIN CALCIUM','Terminated','https://druginfo.nlm.nih.gov/drugportal/name/AMLODIPINE',1),('MERCAPTOPURINE','Mercaptopurine Tablets, USP, 50 mg, packaged in a) 60-count tablets per bottle (NDC 49884-922-02) and b) 250-count tablets per bottle (NDC 49884-922-04), Rx only, Distributed by: Par Pharmaceutical Companies, Inc., Spring Valley, NY  10977.','20120829','Failed USP Dissolution Test Requirements: The recalled lots do not meet the specification for dissolution.','MERCAPTOPURINE','Terminated','https://druginfo.nlm.nih.gov/drugportal/name/MERCAPTOPURINE',2);
/*!40000 ALTER TABLE `drugInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login2`
--

DROP TABLE IF EXISTS `login2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login2` (
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `firstname` varchar(64) DEFAULT NULL,
  `lastname` varchar(64) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login2`
--

LOCK TABLES `login2` WRITE;
/*!40000 ALTER TABLE `login2` DISABLE KEYS */;
INSERT INTO `login2` VALUES ('mm','mm','mm','mm',1),('hh','hh','hh','hh',2),('jj','jj','jj','jj',3),('jo123','321123','jo','hafeez',4);
/*!40000 ALTER TABLE `login2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registered`
--

DROP TABLE IF EXISTS `registered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registered` (
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registered`
--

LOCK TABLES `registered` WRITE;
/*!40000 ALTER TABLE `registered` DISABLE KEYS */;
INSERT INTO `registered` VALUES ('bgb','2d12c269df9cb4557109c69324fa5cd1b2290752','tgt','llll','mnm@mnm.com',1),('ppp','ead1730c9473e89123699d066fdc9ad69cc7d734','lll','lll','ppp@lll.com',2),('fff','8ee097a2e29bdf8ada7f1e2ccae1d6efc857248f','lol','olo','yyy@yyy.com',3),('uzairhafeez','2d8c1a158f98cb421fff168549a8bb0746f66234','mo','hafeez','uzairhafeez@mit.com',4),('muh4','2d12c269df9cb4557109c69324fa5cd1b2290752','mo','hafeez','muh3@njit.edu',5),('mm','63e81cb0ef1695dac152e4d8e4075cf3f35b06da','monik','monik','mm',6),('mjm','2d12c269df9cb4557109c69324fa5cd1b2290752','lol','olo','mmm@mmm.com',7),('hg1','2d12c269df9cb4557109c69324fa5cd1b2290752','mh','hm','mh@mh.com',8),('mmm','2d12c269df9cb4557109c69324fa5cd1b2290752','ij','ji','mmm@mmm.com',9),('hnh','2d12c269df9cb4557109c69324fa5cd1b2290752','km','mk','hnh@mmm.com',10),('bbbg','2d12c269df9cb4557109c69324fa5cd1b2290752','mkj','mkj','mjj@mjf.com',11),('kjk4','2d12c269df9cb4557109c69324fa5cd1b2290752','jk','jn','mk@mk.com',12),('jmj','2d12c269df9cb4557109c69324fa5cd1b2290752','klk','kmk','mmk@kjjj.com',13),('hah','2d12c269df9cb4557109c69324fa5cd1b2290752','nj','nh','muh#jj',14),('mrm36','87cecca7930c300285188bcd123eca6618920750','Matt','Miller','mrm36@njit.edu',15),('lll','64808b167d2b376549952010743e65a13a9b4d7a','pp','ll','lll@lll.com',16),('nnn','fd093f45ce507b57796c5d2ba27f193a2e2ad2f3','lol','klk','mmm@mmm.com',17),('jnj','64808b167d2b376549952010743e65a13a9b4d7a','looo','ooooo','mm@mm.com',18),('jjj','7ce0359f12857f2a90c7de465f40a95f01cb5da9','mo','hafeez','yoyoyo@yoyo.com',19);
/*!40000 ALTER TABLE `registered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_id`
--

DROP TABLE IF EXISTS `session_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_id` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `ip_address` varchar(32) NOT NULL,
  `timestamp` date DEFAULT NULL,
  `valid` int(1) NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_id`
--

LOCK TABLES `session_id` WRITE;
/*!40000 ALTER TABLE `session_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `sessionId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `timestamp` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userDrugs`
--

DROP TABLE IF EXISTS `userDrugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userDrugs` (
  `username` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `drugId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userDrugs`
--

LOCK TABLES `userDrugs` WRITE;
/*!40000 ALTER TABLE `userDrugs` DISABLE KEYS */;
INSERT INTO `userDrugs` VALUES ('lll',16,1),('lll',16,1),('jnj',18,1),('jnj',18,2),('jjj',19,1);
/*!40000 ALTER TABLE `userDrugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `screenname` varchar(16) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'matt','mmiller','password',NULL),(2,'uzair','muh3','password','frontend');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-22 13:30:06
