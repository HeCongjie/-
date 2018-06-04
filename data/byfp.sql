-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: localhost    Database: byfp
-- ------------------------------------------------------
-- Server version	5.5.60

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
-- Table structure for table `ck1q_place`
--

DROP TABLE IF EXISTS `ck1q_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck1q_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck1q_place`
--

LOCK TABLES `ck1q_place` WRITE;
/*!40000 ALTER TABLE `ck1q_place` DISABLE KEYS */;
INSERT INTO `ck1q_place` VALUES (1,'七市',0,1,0),(2,'八市',0,1,0),(3,'九市',0,1,0),(4,'六市',0,1,0);
/*!40000 ALTER TABLE `ck1q_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck1q_student`
--

DROP TABLE IF EXISTS `ck1q_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck1q_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck1q_student`
--

LOCK TABLES `ck1q_student` WRITE;
/*!40000 ALTER TABLE `ck1q_student` DISABLE KEYS */;
INSERT INTO `ck1q_student` VALUES (1,2017423037,'三十七号',0,NULL),(2,2017423038,'三十八号',0,NULL),(3,2017423039,'三十九号',0,NULL),(4,2017423040,'四十号',0,NULL);
/*!40000 ALTER TABLE `ck1q_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck1s_place`
--

DROP TABLE IF EXISTS `ck1s_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck1s_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck1s_place`
--

LOCK TABLES `ck1s_place` WRITE;
/*!40000 ALTER TABLE `ck1s_place` DISABLE KEYS */;
INSERT INTO `ck1s_place` VALUES (1,'六市',0,1,0),(2,'七市',0,1,0),(3,'八市',0,1,0),(4,'五市',0,1,0);
/*!40000 ALTER TABLE `ck1s_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck1s_student`
--

DROP TABLE IF EXISTS `ck1s_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck1s_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck1s_student`
--

LOCK TABLES `ck1s_student` WRITE;
/*!40000 ALTER TABLE `ck1s_student` DISABLE KEYS */;
INSERT INTO `ck1s_student` VALUES (1,2017423033,'三十三号',0,NULL),(2,2017423034,'三十四号',0,NULL),(3,2017423035,'三十五号',0,NULL),(4,2017423036,'三十六号',0,NULL);
/*!40000 ALTER TABLE `ck1s_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck2q_place`
--

DROP TABLE IF EXISTS `ck2q_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck2q_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck2q_place`
--

LOCK TABLES `ck2q_place` WRITE;
/*!40000 ALTER TABLE `ck2q_place` DISABLE KEYS */;
INSERT INTO `ck2q_place` VALUES (1,'十市',0,1,0),(2,'一市',0,1,0),(3,'二市',0,1,0),(4,'四市',0,5,0);
/*!40000 ALTER TABLE `ck2q_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck2q_student`
--

DROP TABLE IF EXISTS `ck2q_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck2q_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck2q_student`
--

LOCK TABLES `ck2q_student` WRITE;
/*!40000 ALTER TABLE `ck2q_student` DISABLE KEYS */;
INSERT INTO `ck2q_student` VALUES (1,2017423046,'四十六号',0,NULL),(2,2017423047,'四十七号',0,NULL),(3,2017423048,'四十八号',0,NULL),(4,2017423049,'四十九号',0,NULL),(5,2017423050,'五十号',0,NULL),(6,2017423051,'五十一号',0,NULL),(7,2017423052,'五十二号',0,NULL),(8,2017423053,'五十三号',0,NULL);
/*!40000 ALTER TABLE `ck2q_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck2s_place`
--

DROP TABLE IF EXISTS `ck2s_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck2s_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck2s_place`
--

LOCK TABLES `ck2s_place` WRITE;
/*!40000 ALTER TABLE `ck2s_place` DISABLE KEYS */;
INSERT INTO `ck2s_place` VALUES (1,'九市',0,1,0),(2,'十市',0,1,0),(3,'一市',0,1,0),(4,'三市',0,2,0);
/*!40000 ALTER TABLE `ck2s_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck2s_student`
--

DROP TABLE IF EXISTS `ck2s_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck2s_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck2s_student`
--

LOCK TABLES `ck2s_student` WRITE;
/*!40000 ALTER TABLE `ck2s_student` DISABLE KEYS */;
INSERT INTO `ck2s_student` VALUES (1,2017423041,'四十一号',0,NULL),(2,2017423042,'四十二号',0,NULL),(3,2017423043,'四十三号',0,NULL),(4,2017423044,'四十四号',0,NULL),(5,2017423045,'四十五号',0,NULL);
/*!40000 ALTER TABLE `ck2s_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck3q_place`
--

DROP TABLE IF EXISTS `ck3q_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck3q_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck3q_place`
--

LOCK TABLES `ck3q_place` WRITE;
/*!40000 ALTER TABLE `ck3q_place` DISABLE KEYS */;
INSERT INTO `ck3q_place` VALUES (1,'三市',0,1,0),(2,'四市',0,1,0);
/*!40000 ALTER TABLE `ck3q_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck3q_student`
--

DROP TABLE IF EXISTS `ck3q_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck3q_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck3q_student`
--

LOCK TABLES `ck3q_student` WRITE;
/*!40000 ALTER TABLE `ck3q_student` DISABLE KEYS */;
INSERT INTO `ck3q_student` VALUES (1,2017423060,'六十号',0,NULL),(2,2017423061,'六十一号',0,NULL);
/*!40000 ALTER TABLE `ck3q_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck3s_place`
--

DROP TABLE IF EXISTS `ck3s_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck3s_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck3s_place`
--

LOCK TABLES `ck3s_place` WRITE;
/*!40000 ALTER TABLE `ck3s_place` DISABLE KEYS */;
INSERT INTO `ck3s_place` VALUES (1,'二市',0,1,0),(2,'三市',0,1,0),(3,'四市',0,1,0),(4,'一市',0,3,0);
/*!40000 ALTER TABLE `ck3s_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck3s_student`
--

DROP TABLE IF EXISTS `ck3s_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck3s_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck3s_student`
--

LOCK TABLES `ck3s_student` WRITE;
/*!40000 ALTER TABLE `ck3s_student` DISABLE KEYS */;
INSERT INTO `ck3s_student` VALUES (1,2017423054,'五十四号',0,NULL),(2,2017423055,'五十五号',0,NULL),(3,2017423056,'五十六号',0,NULL),(4,2017423057,'五十七号',0,NULL),(5,2017423058,'五十八号',0,NULL),(6,2017423059,'五十九号',0,NULL);
/*!40000 ALTER TABLE `ck3s_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck4s_place`
--

DROP TABLE IF EXISTS `ck4s_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck4s_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck4s_place`
--

LOCK TABLES `ck4s_place` WRITE;
/*!40000 ALTER TABLE `ck4s_place` DISABLE KEYS */;
INSERT INTO `ck4s_place` VALUES (1,'五市',0,1,0),(2,'六市',0,1,0),(3,'七市',0,1,0),(4,'三市',0,1,0);
/*!40000 ALTER TABLE `ck4s_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck4s_student`
--

DROP TABLE IF EXISTS `ck4s_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck4s_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck4s_student`
--

LOCK TABLES `ck4s_student` WRITE;
/*!40000 ALTER TABLE `ck4s_student` DISABLE KEYS */;
INSERT INTO `ck4s_student` VALUES (1,2017423062,'六十二号',0,NULL),(2,2017423063,'六十三号',0,NULL),(3,2017423064,'六十四号',0,NULL),(4,2017423065,'六十五号',0,NULL);
/*!40000 ALTER TABLE `ck4s_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck5q_place`
--

DROP TABLE IF EXISTS `ck5q_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck5q_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck5q_place`
--

LOCK TABLES `ck5q_place` WRITE;
/*!40000 ALTER TABLE `ck5q_place` DISABLE KEYS */;
INSERT INTO `ck5q_place` VALUES (1,'五市',0,1,0),(2,'六市',0,1,0);
/*!40000 ALTER TABLE `ck5q_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck5q_student`
--

DROP TABLE IF EXISTS `ck5q_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck5q_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck5q_student`
--

LOCK TABLES `ck5q_student` WRITE;
/*!40000 ALTER TABLE `ck5q_student` DISABLE KEYS */;
INSERT INTO `ck5q_student` VALUES (1,2017423071,'七十一号',0,NULL),(2,2017423072,'七十二号',0,NULL);
/*!40000 ALTER TABLE `ck5q_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck5s_place`
--

DROP TABLE IF EXISTS `ck5s_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck5s_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck5s_place`
--

LOCK TABLES `ck5s_place` WRITE;
/*!40000 ALTER TABLE `ck5s_place` DISABLE KEYS */;
INSERT INTO `ck5s_place` VALUES (1,'八市',0,1,0),(2,'九市',0,1,0),(3,'十市',0,1,0),(4,'三市',0,2,0);
/*!40000 ALTER TABLE `ck5s_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck5s_student`
--

DROP TABLE IF EXISTS `ck5s_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck5s_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck5s_student`
--

LOCK TABLES `ck5s_student` WRITE;
/*!40000 ALTER TABLE `ck5s_student` DISABLE KEYS */;
INSERT INTO `ck5s_student` VALUES (1,2017423066,'六十七号',0,NULL),(2,2017423067,'六十七号',0,NULL),(3,2017423068,'六十八号',0,NULL),(4,2017423069,'六十九号',0,NULL),(5,2017423070,'七十号',0,NULL);
/*!40000 ALTER TABLE `ck5s_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck6q_place`
--

DROP TABLE IF EXISTS `ck6q_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck6q_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck6q_place`
--

LOCK TABLES `ck6q_place` WRITE;
/*!40000 ALTER TABLE `ck6q_place` DISABLE KEYS */;
INSERT INTO `ck6q_place` VALUES (1,'七市',0,1,0),(2,'八市',0,1,0),(3,'九市',0,1,0);
/*!40000 ALTER TABLE `ck6q_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck6q_student`
--

DROP TABLE IF EXISTS `ck6q_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck6q_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck6q_student`
--

LOCK TABLES `ck6q_student` WRITE;
/*!40000 ALTER TABLE `ck6q_student` DISABLE KEYS */;
INSERT INTO `ck6q_student` VALUES (1,2017423082,'八十二号',0,NULL),(2,2017423083,'八十三号',0,NULL),(3,2017423084,'八十四号',0,NULL);
/*!40000 ALTER TABLE `ck6q_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck6s_place`
--

DROP TABLE IF EXISTS `ck6s_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck6s_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck6s_place`
--

LOCK TABLES `ck6s_place` WRITE;
/*!40000 ALTER TABLE `ck6s_place` DISABLE KEYS */;
INSERT INTO `ck6s_place` VALUES (1,'一市',0,1,0),(2,'二市',0,1,0),(3,'三市',0,1,0),(4,'七市',0,6,0);
/*!40000 ALTER TABLE `ck6s_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck6s_student`
--

DROP TABLE IF EXISTS `ck6s_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck6s_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck6s_student`
--

LOCK TABLES `ck6s_student` WRITE;
/*!40000 ALTER TABLE `ck6s_student` DISABLE KEYS */;
INSERT INTO `ck6s_student` VALUES (1,2017423073,'七十三号',0,NULL),(2,2017423074,'七十四号',0,NULL),(3,2017423075,'七十五号',0,NULL),(4,2017423076,'七十六号',0,NULL),(5,2017423077,'七十七号',0,NULL),(6,2017423078,'七十八号',0,NULL),(7,2017423079,'七十九号',0,NULL),(8,2017423080,'八十号',0,NULL),(9,2017423081,'八十一号',0,NULL);
/*!40000 ALTER TABLE `ck6s_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck7q_place`
--

DROP TABLE IF EXISTS `ck7q_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck7q_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck7q_place`
--

LOCK TABLES `ck7q_place` WRITE;
/*!40000 ALTER TABLE `ck7q_place` DISABLE KEYS */;
INSERT INTO `ck7q_place` VALUES (1,'一市',0,1,0),(2,'二市',0,1,0);
/*!40000 ALTER TABLE `ck7q_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck7q_student`
--

DROP TABLE IF EXISTS `ck7q_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck7q_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck7q_student`
--

LOCK TABLES `ck7q_student` WRITE;
/*!40000 ALTER TABLE `ck7q_student` DISABLE KEYS */;
INSERT INTO `ck7q_student` VALUES (1,2017423089,'八十九号',0,NULL),(2,2017423090,'九十号',0,NULL);
/*!40000 ALTER TABLE `ck7q_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck7s_place`
--

DROP TABLE IF EXISTS `ck7s_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck7s_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck7s_place`
--

LOCK TABLES `ck7s_place` WRITE;
/*!40000 ALTER TABLE `ck7s_place` DISABLE KEYS */;
INSERT INTO `ck7s_place` VALUES (1,'四市',0,1,0),(2,'五市',0,1,0),(3,'六市',0,1,0),(4,'二市',0,1,0);
/*!40000 ALTER TABLE `ck7s_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck7s_student`
--

DROP TABLE IF EXISTS `ck7s_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck7s_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck7s_student`
--

LOCK TABLES `ck7s_student` WRITE;
/*!40000 ALTER TABLE `ck7s_student` DISABLE KEYS */;
INSERT INTO `ck7s_student` VALUES (1,2017423085,'八十五号',0,NULL),(2,2017423086,'八十六号',0,NULL),(3,2017423087,'八十七号',0,NULL),(4,2017423088,'八十八号',0,NULL);
/*!40000 ALTER TABLE `ck7s_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs1q_place`
--

DROP TABLE IF EXISTS `fs1q_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs1q_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs1q_place`
--

LOCK TABLES `fs1q_place` WRITE;
/*!40000 ALTER TABLE `fs1q_place` DISABLE KEYS */;
INSERT INTO `fs1q_place` VALUES (1,'十四市',0,1,0),(2,'十五市',0,1,0),(3,'十六市',0,1,0),(4,'十七市',0,1,0);
/*!40000 ALTER TABLE `fs1q_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs1q_student`
--

DROP TABLE IF EXISTS `fs1q_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs1q_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs1q_student`
--

LOCK TABLES `fs1q_student` WRITE;
/*!40000 ALTER TABLE `fs1q_student` DISABLE KEYS */;
INSERT INTO `fs1q_student` VALUES (1,2017423004,'四号',0,NULL),(2,2017423005,'五号',0,NULL),(3,2017423006,'六号',0,NULL),(4,2017423007,'七号',0,NULL);
/*!40000 ALTER TABLE `fs1q_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs1s_place`
--

DROP TABLE IF EXISTS `fs1s_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs1s_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs1s_place`
--

LOCK TABLES `fs1s_place` WRITE;
/*!40000 ALTER TABLE `fs1s_place` DISABLE KEYS */;
INSERT INTO `fs1s_place` VALUES (1,'一市',0,1,0),(2,'二市',0,1,0),(3,'三市',0,1,0);
/*!40000 ALTER TABLE `fs1s_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs1s_student`
--

DROP TABLE IF EXISTS `fs1s_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs1s_student` (
  `spm` int(3) NOT NULL,
  `sno` char(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs1s_student`
--

LOCK TABLES `fs1s_student` WRITE;
/*!40000 ALTER TABLE `fs1s_student` DISABLE KEYS */;
INSERT INTO `fs1s_student` VALUES (1,'2017423001','一号',0,NULL),(2,'2017423002','二号',0,NULL),(3,'2017423003','三号',0,NULL);
/*!40000 ALTER TABLE `fs1s_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs2q_place`
--

DROP TABLE IF EXISTS `fs2q_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs2q_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs2q_place`
--

LOCK TABLES `fs2q_place` WRITE;
/*!40000 ALTER TABLE `fs2q_place` DISABLE KEYS */;
INSERT INTO `fs2q_place` VALUES (1,'十八市',0,1,0),(2,'一市',0,1,0),(3,'二市',0,1,0),(4,'三市',0,1,0),(5,'四市',0,4,0);
/*!40000 ALTER TABLE `fs2q_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs2q_student`
--

DROP TABLE IF EXISTS `fs2q_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs2q_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs2q_student`
--

LOCK TABLES `fs2q_student` WRITE;
/*!40000 ALTER TABLE `fs2q_student` DISABLE KEYS */;
INSERT INTO `fs2q_student` VALUES (1,2017423011,'十一号',0,NULL),(2,2017423012,'十二号',0,NULL),(3,2017423013,'十三号',0,NULL),(4,2017423014,'十四号',0,NULL),(5,2017423015,'十五号',0,NULL),(6,2017423016,'十六号',0,NULL),(7,2017423017,'十七号',0,NULL),(8,2017423018,'十八号',0,NULL);
/*!40000 ALTER TABLE `fs2q_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs2s_place`
--

DROP TABLE IF EXISTS `fs2s_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs2s_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs2s_place`
--

LOCK TABLES `fs2s_place` WRITE;
/*!40000 ALTER TABLE `fs2s_place` DISABLE KEYS */;
INSERT INTO `fs2s_place` VALUES (1,'四市',0,1,0),(2,'五市',0,1,0),(3,'六市',0,1,0);
/*!40000 ALTER TABLE `fs2s_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs2s_student`
--

DROP TABLE IF EXISTS `fs2s_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs2s_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs2s_student`
--

LOCK TABLES `fs2s_student` WRITE;
/*!40000 ALTER TABLE `fs2s_student` DISABLE KEYS */;
INSERT INTO `fs2s_student` VALUES (1,2017423008,'八号',0,NULL),(2,2017423009,'九号',0,NULL),(3,2017423010,'十号',0,NULL);
/*!40000 ALTER TABLE `fs2s_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs3q_place`
--

DROP TABLE IF EXISTS `fs3q_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs3q_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs3q_place`
--

LOCK TABLES `fs3q_place` WRITE;
/*!40000 ALTER TABLE `fs3q_place` DISABLE KEYS */;
INSERT INTO `fs3q_place` VALUES (1,'四市',0,NULL,NULL),(2,'五市',0,NULL,NULL),(3,'二市',0,NULL,NULL),(4,'二市',0,NULL,NULL),(5,'二市',0,NULL,NULL);
/*!40000 ALTER TABLE `fs3q_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs3q_student`
--

DROP TABLE IF EXISTS `fs3q_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs3q_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs3q_student`
--

LOCK TABLES `fs3q_student` WRITE;
/*!40000 ALTER TABLE `fs3q_student` DISABLE KEYS */;
INSERT INTO `fs3q_student` VALUES (1,2017423020,'二十号',0,NULL),(2,2017423021,'二十一号',0,NULL),(3,2017423022,'二十二号',0,NULL),(4,2017423023,'二十三号',0,NULL),(5,2017423024,'二十四号',0,NULL);
/*!40000 ALTER TABLE `fs3q_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs3s_place`
--

DROP TABLE IF EXISTS `fs3s_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs3s_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs3s_place`
--

LOCK TABLES `fs3s_place` WRITE;
/*!40000 ALTER TABLE `fs3s_place` DISABLE KEYS */;
INSERT INTO `fs3s_place` VALUES (1,'七市',0,1,0);
/*!40000 ALTER TABLE `fs3s_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs3s_student`
--

DROP TABLE IF EXISTS `fs3s_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs3s_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs3s_student`
--

LOCK TABLES `fs3s_student` WRITE;
/*!40000 ALTER TABLE `fs3s_student` DISABLE KEYS */;
INSERT INTO `fs3s_student` VALUES (1,2017423019,'十九号',0,NULL);
/*!40000 ALTER TABLE `fs3s_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs5s_place`
--

DROP TABLE IF EXISTS `fs5s_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs5s_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs5s_place`
--

LOCK TABLES `fs5s_place` WRITE;
/*!40000 ALTER TABLE `fs5s_place` DISABLE KEYS */;
INSERT INTO `fs5s_place` VALUES (1,'八市',0,1,0);
/*!40000 ALTER TABLE `fs5s_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs5s_student`
--

DROP TABLE IF EXISTS `fs5s_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs5s_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs5s_student`
--

LOCK TABLES `fs5s_student` WRITE;
/*!40000 ALTER TABLE `fs5s_student` DISABLE KEYS */;
INSERT INTO `fs5s_student` VALUES (1,2017423025,'二十五号',0,NULL);
/*!40000 ALTER TABLE `fs5s_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs6s_place`
--

DROP TABLE IF EXISTS `fs6s_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs6s_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs6s_place`
--

LOCK TABLES `fs6s_place` WRITE;
/*!40000 ALTER TABLE `fs6s_place` DISABLE KEYS */;
INSERT INTO `fs6s_place` VALUES (1,'九市',0,1,0),(2,'十市',0,1,0),(3,'十一市',0,1,0),(4,'一市',0,2,0);
/*!40000 ALTER TABLE `fs6s_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs6s_student`
--

DROP TABLE IF EXISTS `fs6s_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs6s_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs6s_student`
--

LOCK TABLES `fs6s_student` WRITE;
/*!40000 ALTER TABLE `fs6s_student` DISABLE KEYS */;
INSERT INTO `fs6s_student` VALUES (1,2017423026,'二十六号',0,NULL),(2,2017423027,'二十七号',0,NULL),(3,2017423028,'二十八号',0,NULL),(4,2017423029,'二十九号',0,NULL),(5,2017423030,'三十号',0,NULL);
/*!40000 ALTER TABLE `fs6s_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs7s_place`
--

DROP TABLE IF EXISTS `fs7s_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs7s_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs7s_place`
--

LOCK TABLES `fs7s_place` WRITE;
/*!40000 ALTER TABLE `fs7s_place` DISABLE KEYS */;
INSERT INTO `fs7s_place` VALUES (1,'十二市',0,1,0),(2,'十三市',0,1,0);
/*!40000 ALTER TABLE `fs7s_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs7s_student`
--

DROP TABLE IF EXISTS `fs7s_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs7s_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs7s_student`
--

LOCK TABLES `fs7s_student` WRITE;
/*!40000 ALTER TABLE `fs7s_student` DISABLE KEYS */;
INSERT INTO `fs7s_student` VALUES (1,2017423031,'三十一号',0,NULL),(2,2017423032,'三十二号',0,NULL);
/*!40000 ALTER TABLE `fs7s_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs_zy`
--

DROP TABLE IF EXISTS `rs_zy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rs_zy` (
  `zy` varchar(20) DEFAULT NULL,
  `rs` int(3) DEFAULT NULL,
  `now` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs_zy`
--

LOCK TABLES `rs_zy` WRITE;
/*!40000 ALTER TABLE `rs_zy` DISABLE KEYS */;
INSERT INTO `rs_zy` VALUES ('fs1s',3,1),('fs1q',4,1),('fs2s',3,1),('fs2q',8,1),('fs3s',1,1),('fs3q',5,1),('fs5s',1,1),('fs6s',5,1),('fs7s',2,1),('ck1s',4,1),('ck1q',4,1),('ck2s',5,1),('ck2q',8,1),('ck3s',6,1),('ck3q',2,1),('ck4s',4,1),('ck5s',5,1),('ck5q',2,1),('ck6s',9,1),('ck6q',3,1),('ck7s',4,1),('ck7q',2,1),('txs',26,1),('txq',70,1),('txn',10,1);
/*!40000 ALTER TABLE `rs_zy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txn_place`
--

DROP TABLE IF EXISTS `txn_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txn_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txn_place`
--

LOCK TABLES `txn_place` WRITE;
/*!40000 ALTER TABLE `txn_place` DISABLE KEYS */;
INSERT INTO `txn_place` VALUES (1,'十四市',0,1,0),(2,'十五市',0,1,0),(3,'十六市',0,1,0),(4,'二市',0,4,0),(5,'三市',0,3,0);
/*!40000 ALTER TABLE `txn_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txn_student`
--

DROP TABLE IF EXISTS `txn_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txn_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txn_student`
--

LOCK TABLES `txn_student` WRITE;
/*!40000 ALTER TABLE `txn_student` DISABLE KEYS */;
INSERT INTO `txn_student` VALUES (1,2017423187,'一百八十七号',0,NULL),(2,2017423188,'一百八十八号',0,NULL),(3,2017423189,'一百八十九号',0,NULL),(4,2017423190,'一百九十号',0,NULL),(5,2017423191,'一百九十一号',0,NULL),(6,2017423192,'一百九十二号',0,NULL),(7,2017423193,'一百九十三号',0,NULL),(8,2017423194,'一百九十四号',0,NULL),(9,2017423195,'一百九十五号',0,NULL),(10,2017423196,'一百九十六号',0,NULL);
/*!40000 ALTER TABLE `txn_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txq_place`
--

DROP TABLE IF EXISTS `txq_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txq_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txq_place`
--

LOCK TABLES `txq_place` WRITE;
/*!40000 ALTER TABLE `txq_place` DISABLE KEYS */;
INSERT INTO `txq_place` VALUES (1,'四市',0,1,0),(2,'五市',0,1,0),(3,'六市',0,1,0),(4,'七市',0,10,0),(5,'八市',0,32,0),(6,'九市',0,15,0);
/*!40000 ALTER TABLE `txq_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txq_student`
--

DROP TABLE IF EXISTS `txq_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txq_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txq_student`
--

LOCK TABLES `txq_student` WRITE;
/*!40000 ALTER TABLE `txq_student` DISABLE KEYS */;
INSERT INTO `txq_student` VALUES (1,2017423117,'一百一十七号',0,NULL),(2,2017423118,'一百一十八号',0,NULL),(3,2017423119,'一百一十九号',0,NULL),(4,2017423120,'一百二十号',0,NULL),(5,2017423121,'一百二十一号',0,NULL),(6,2017423122,'一百二十二号',0,NULL),(7,2017423123,'一百二十三号',0,NULL),(8,2017423124,'一百二十四号',0,NULL),(9,2017423125,'一百二十五号',0,NULL),(10,2017423126,'一百二十六号',0,NULL),(11,2017423127,'一百二十七号',0,NULL),(12,2017423128,'一百二十八号',0,NULL),(13,2017423129,'一百二十九号',0,NULL),(14,2017423130,'一百三十号',0,NULL),(15,2017423131,'一百三十一号',0,NULL),(16,2017423132,'一百三十二号',0,NULL),(17,2017423133,'一百三十三号',0,NULL),(18,2017423134,'一百三十四号',0,NULL),(19,2017423135,'一百三十五号',0,NULL),(20,2017423136,'一百三十六号',0,NULL),(21,2017423137,'一百三十七号',0,NULL),(22,2017423138,'一百三十八号',0,NULL),(23,2017423139,'一百三十九号',0,NULL),(24,2017423140,'一百四十号',0,NULL),(25,2017423141,'一百四十一号',0,NULL),(26,2017423142,'一百四十二号',0,NULL),(27,2017423143,'一百四十三号',0,NULL),(28,2017423144,'一百四十四号',0,NULL),(29,2017423145,'一百四十五号',0,NULL),(30,2017423146,'一百四十六号',0,NULL),(31,2017423147,'一百四十七号',0,NULL),(32,2017423148,'一百四十八号',0,NULL),(33,2017423149,'一百四十九号',0,NULL),(34,2017423150,'一百五十号',0,NULL),(35,2017423151,'一百五十一号',0,NULL),(36,2017423152,'一百五十二号',0,NULL),(37,2017423153,'一百五十三号',0,NULL),(38,2017423154,'一百五十四号',0,NULL),(39,2017423155,'一百五十五号',0,NULL),(40,2017423156,'一百五十六号',0,NULL),(41,2017423157,'一百五十七号',0,NULL),(42,2017423158,'一百五十八号',0,NULL),(43,2017423159,'一百五十九号',0,NULL),(44,2017423160,'一百六十号',0,NULL),(45,2017423161,'一百六十一号',0,NULL),(46,2017423162,'一百六十二号',0,NULL),(47,2017423163,'一百六十三号',0,NULL),(48,2017423164,'一百六十四号',0,NULL),(49,2017423165,'一百六十五号',0,NULL),(50,2017423166,'一百六十六号',0,NULL),(51,2017423167,'一百六十七号',0,NULL),(52,2017423168,'一百六十八号',0,NULL),(53,2017423169,'一百六十九号',0,NULL),(54,2017423170,'一百七十号',0,NULL),(55,2017423171,'一百七十一号',0,NULL),(56,2017423172,'一百七十二号',0,NULL),(57,2017423173,'一百七十三号',0,NULL),(58,2017423174,'一百七十四号',0,NULL),(59,2017423175,'一百七十五号',0,NULL),(60,2017423176,'一百七十六号',0,NULL),(61,2017423177,'一百七十七号',0,NULL),(62,2017423178,'一百七十八号',0,NULL),(63,2017423179,'一百七十九号',0,NULL),(64,2017423180,'一百八号',0,NULL),(65,2017423181,'一百八十一号',0,NULL),(66,2017423182,'一百八十二号',0,NULL),(67,2017423183,'一百八十三号',0,NULL),(68,2017423184,'一百八十四号',0,NULL),(69,2017423185,'一百八十五号',0,NULL),(70,2017423186,'一百八十六号',0,NULL);
/*!40000 ALTER TABLE `txq_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txs_place`
--

DROP TABLE IF EXISTS `txs_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txs_place` (
  `pno` int(3) NOT NULL,
  `pname` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `pstate` int(1) DEFAULT NULL,
  `pkx` int(3) DEFAULT NULL,
  `pyx` int(3) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txs_place`
--

LOCK TABLES `txs_place` WRITE;
/*!40000 ALTER TABLE `txs_place` DISABLE KEYS */;
INSERT INTO `txs_place` VALUES (1,'一市',0,1,0),(2,'二市',0,1,0),(3,'三市',0,1,0),(4,'四市',0,10,0),(5,'五市',0,13,0);
/*!40000 ALTER TABLE `txs_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txs_student`
--

DROP TABLE IF EXISTS `txs_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `txs_student` (
  `spm` int(3) NOT NULL,
  `sno` int(3) DEFAULT NULL,
  `sname` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `sstate` int(1) DEFAULT NULL,
  `splace` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`spm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txs_student`
--

LOCK TABLES `txs_student` WRITE;
/*!40000 ALTER TABLE `txs_student` DISABLE KEYS */;
INSERT INTO `txs_student` VALUES (1,2017423091,'九十一号',0,NULL),(2,2017423092,'九十二号',0,NULL),(3,2017423093,'九十三号',0,NULL),(4,2017423094,'九十四号',0,NULL),(5,2017423095,'九十五号',0,NULL),(6,2017423096,'九十六号',0,NULL),(7,2017423097,'九十七号',0,NULL),(8,2017423098,'九十八号',0,NULL),(9,2017423099,'九十九号',0,NULL),(10,2017423100,'一百号',0,NULL),(11,2017423101,'一百零一号',0,NULL),(12,2017423102,'一百零二号',0,NULL),(13,2017423103,'一百零三号',0,NULL),(14,2017423104,'一百零四号',0,NULL),(15,2017423105,'一百零五号',0,NULL),(16,2017423106,'一百零六号',0,NULL),(17,2017423107,'一百零七号',0,NULL),(18,2017423108,'一百零八号',0,NULL),(19,2017423109,'一百零九号',0,NULL),(20,2017423110,'一百一十号',0,NULL),(21,2017423111,'一百一十一号',0,NULL),(22,2017423112,'一百一十二号',0,NULL),(23,2017423113,'一百一十三号',0,NULL),(24,2017423114,'一百一十四号',0,NULL),(25,2017423115,'一百一十五号',0,NULL),(26,2017423116,'一百一十六号',0,NULL);
/*!40000 ALTER TABLE `txs_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xh_zy`
--

DROP TABLE IF EXISTS `xh_zy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xh_zy` (
  `xh` char(10) DEFAULT NULL,
  `zy` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xh_zy`
--

LOCK TABLES `xh_zy` WRITE;
/*!40000 ALTER TABLE `xh_zy` DISABLE KEYS */;
INSERT INTO `xh_zy` VALUES ('2017423001','fs1s'),('2017423002','fs1s'),('2017423003','fs1s'),('2017423004','fs1q'),('2017423005','fs1q'),('2017423006','fs1q'),('2017423007','fs1q'),('2017423008','fs2s'),('2017423009','fs2s'),('2017423010','fs2s'),('2017423011','fs2q'),('2017423012','fs2q'),('2017423013','fs2q'),('2017423014','fs2q'),('2017423015','fs2q'),('2017423016','fs2q'),('2017423017','fs2q'),('2017423018','fs2q'),('2017423019','fs3s'),('2017423029','fs3q'),('2017423021','fs3q'),('2017423022','fs3q'),('2017423023','fs3q'),('2017423024','fs3q'),('2017423025','fs5s'),('2017423026','fs6s'),('2017423027','fs6s'),('2017423028','fs6s'),('2017423029','fs6s'),('2017423030','fs6s'),('2017423031','fs7s'),('2017423032','fs7s'),('2017423033','ck1s'),('2017423034','ck1s'),('2017423035','ck1s'),('2017423036','ck1s'),('2017423037','ck1q'),('2017423038','ck1q'),('2017423039','ck1q'),('2017423040','ck1q'),('2017423041','ck2s'),('2017423042','ck2s'),('2017423043','ck2s'),('2017423044','ck2s'),('2017423045','ck2s'),('2017423046','ck2q'),('2017423047','ck2q'),('2017423048','ck2q'),('2017423049','ck2q'),('2017423050','ck2q'),('2017423051','ck2q'),('2017423052','ck2q'),('2017423053','ck2q'),('2017423054','ck3s'),('2017423055','ck3s'),('2017423056','ck3s'),('2017423057','ck3s'),('2017423058','ck3s'),('2017423059','ck3s'),('2017423060','ck3q'),('2017423061','ck3q'),('2017423062','ck4s'),('2017423063','ck4s'),('2017423064','ck4s'),('2017423065','ck4s'),('2017423066','ck5s'),('2017423067','ck5s'),('2017423068','ck5s'),('2017423069','ck5s'),('2017423070','ck5s'),('2017423071','ck5q'),('2017423072','ck5q'),('2017423073','ck6s'),('2017423074','ck6s'),('2017423075','ck6s'),('2017423076','ck6s'),('2017423077','ck6s'),('2017423078','ck6s'),('2017423079','ck6s'),('2017423080','ck6s'),('2017423081','ck6s'),('2017423082','ck6q'),('2017423083','ck6q'),('2017423084','ck6q'),('2017423085','ck7s'),('2017423086','ck7s'),('2017423087','ck7s'),('2017423088','ck7s'),('2017423089','ck7q'),('2017423090','ck7q'),('2017423091','txs'),('2017423092','txs'),('2017423093','txs'),('2017423094','txs'),('2017423095','txs'),('2017423096','txs'),('2017423097','txs'),('2017423098','txs'),('2017423099','txs'),('2017423100','txs'),('2017423101','txs'),('2017423102','txs'),('2017423103','txs'),('2017423104','txs'),('2017423105','txs'),('2017423106','txs'),('2017423107','txs'),('2017423108','txs'),('2017423109','txs'),('2017423110','txs'),('2017423111','txs'),('2017423112','txs'),('2017423113','txs'),('2017423114','txs'),('2017423115','txs'),('2017423116','txs'),('2017423117','txq'),('2017423118','txq'),('2017423119','txq'),('2017423120','txq'),('2017423121','txq'),('2017423122','txq'),('2017423123','txq'),('2017423124','txq'),('2017423125','txq'),('2017423126','txq'),('2017423127','txq'),('2017423128','txq'),('2017423129','txq'),('2017423130','txq'),('2017423131','txq'),('2017423132','txq'),('2017423133','txq'),('2017423134','txq'),('2017423135','txq'),('2017423136','txq'),('2017423137','txq'),('2017423138','txq'),('2017423139','txq'),('2017423140','txq'),('2017423141','txq'),('2017423142','txq'),('2017423143','txq'),('2017423144','txq'),('2017423145','txq'),('2017423146','txq'),('2017423147','txq'),('2017423148','txq'),('2017423149','txq'),('2017423150','txq'),('2017423151','txq'),('2017423152','txq'),('2017423153','txq'),('2017423154','txq'),('2017423155','txq'),('2017423156','txq'),('2017423157','txq'),('2017423158','txq'),('2017423159','txq'),('2017423160','txq'),('2017423161','txq'),('2017423162','txq'),('2017423163','txq'),('2017423164','txq'),('2017423165','txq'),('2017423166','txq'),('2017423167','txq'),('2017423168','txq'),('2017423169','txq'),('2017423170','txq'),('2017423171','txq'),('2017423172','txq'),('2017423173','txq'),('2017423174','txq'),('2017423175','txq'),('2017423176','txq'),('2017423177','txq'),('2017423178','txq'),('2017423179','txq'),('2017423180','txq'),('2017423181','txq'),('2017423182','txq'),('2017423183','txq'),('2017423184','txq'),('2017423185','txq'),('2017423186','txq'),('2017423187','txn'),('2017423188','txn'),('2017423189','txn'),('2017423190','txn'),('2017423191','txn'),('2017423192','txn'),('2017423193','txn'),('2017423194','txn'),('2017423195','txn'),('2017423196','txn');
/*!40000 ALTER TABLE `xh_zy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zw_zy`
--

DROP TABLE IF EXISTS `zw_zy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zw_zy` (
  `zy` varchar(20) DEFAULT NULL,
  `zw` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zw_zy`
--

LOCK TABLES `zw_zy` WRITE;
/*!40000 ALTER TABLE `zw_zy` DISABLE KEYS */;
INSERT INTO `zw_zy` VALUES ('fs1s','第一类别第一专业第一类学生所在专业'),('fs1q','第一类别第一专业第二类学生所在专业'),('fs2s','第一类别第二专业第一类学生所在专业'),('fs2q','第一类别第二专业第二类学生所在专业'),('fs3s','第一类别第三专业第一类学生所在专业'),('fs3q','第一类别第三专业第二类学生所在专业'),('fs5s','第一类别第五专业第一类学生所在专业'),('fs6s','第一类别第六专业第一类学生所在专业'),('fs7s','第一类别第七专业第一类学生所在专业'),('ck1s','第二类别第一专业第一类学生所在专业'),('ck1q','第二类别第一专业第二类学生所在专业'),('ck2s','第二类别第二专业第一类学生所在专业'),('ck2q','第二类别第二专业第二类学生所在专业'),('ck3s','第二类别第三专业第一类学生所在专业'),('ck3q','第二类别第三专业第二类学生所在专业'),('ck4s','第二类别第四专业第一类学生所在专业'),('ck5s','第二类别第五专业第一类学生所在专业'),('ck5q','第二类别第五专业第二类学生所在专业'),('ck6s','第二类别第六专业第一类学生所在专业'),('ck6q','第二类别第六专业第二类学生所在专业'),('ck7s','第二类别第七专业第一类学生所在专业'),('ck7q','第二类别第七专业第二类学生所在专业'),('txs','第三类别第一类学生所在专业'),('txq','第三类别第二类学生所在专业'),('txn','第三类别第三类学生所在专业');
/*!40000 ALTER TABLE `zw_zy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-06 17:22:57
