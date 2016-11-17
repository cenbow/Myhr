-- MySQL dump 10.13  Distrib 5.5.28, for Win64 (x86)
--
-- Host: localhost    Database: myhr
-- ------------------------------------------------------
-- Server version	5.5.28

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
-- Table structure for table `t_accum`
--

DROP TABLE IF EXISTS `t_accum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_accum` (
  `accumid` int(11) NOT NULL AUTO_INCREMENT,
  `accumCom` double DEFAULT NULL,
  `accumNo` varchar(255) DEFAULT NULL,
  `accumPer` double DEFAULT NULL,
  `aliveFlag` bit(1) DEFAULT NULL,
  `base` double DEFAULT NULL,
  `beginDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `recCreTm` datetime DEFAULT NULL,
  `recCreUsrId` varchar(30) DEFAULT NULL,
  `recUpdtTm` datetime DEFAULT NULL,
  `recUpdtUsrId` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `staffId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`accumid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_accum`
--

LOCK TABLES `t_accum` WRITE;
/*!40000 ALTER TABLE `t_accum` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_accum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_accumhis`
--

DROP TABLE IF EXISTS `t_accumhis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_accumhis` (
  `accumhisid` int(11) NOT NULL AUTO_INCREMENT,
  `accumCom` double DEFAULT NULL,
  `accumNo` varchar(255) DEFAULT NULL,
  `accumPer` double DEFAULT NULL,
  `aliveFlag` bit(1) DEFAULT NULL,
  `base` double DEFAULT NULL,
  `beginDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `recCreTm` datetime DEFAULT NULL,
  `recCreUsrId` varchar(30) DEFAULT NULL,
  `recUpdtTm` datetime DEFAULT NULL,
  `recUpdtUsrId` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `staffId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`accumhisid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_accumhis`
--

LOCK TABLES `t_accumhis` WRITE;
/*!40000 ALTER TABLE `t_accumhis` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_accumhis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_candidate`
--

DROP TABLE IF EXISTS `t_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_candidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `aliveFlag` bit(1) DEFAULT NULL,
  `appJobNo` int(11) DEFAULT NULL,
  `birthPlace` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `collegeType` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `degreeDate` datetime DEFAULT NULL,
  `deptCode` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `empWay` int(11) DEFAULT NULL,
  `employStatus` varchar(255) DEFAULT NULL,
  `formerWorkPlace` varchar(255) DEFAULT NULL,
  `graduateDate` datetime DEFAULT NULL,
  `guarantor` varchar(255) DEFAULT NULL,
  `health` varchar(255) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `idCardNo` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `languageLevel` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `marriage` varchar(255) DEFAULT NULL,
  `mobileTel` varchar(255) DEFAULT NULL,
  `nation` int(11) DEFAULT NULL,
  `nativ` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `party` varchar(255) DEFAULT NULL,
  `partyDate` datetime DEFAULT NULL,
  `recCreTm` datetime DEFAULT NULL,
  `recCreUsrId` varchar(30) DEFAULT NULL,
  `recUpdtTm` datetime DEFAULT NULL,
  `recUpdtUsrId` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `remark1` varchar(255) DEFAULT NULL,
  `remark2` varchar(255) DEFAULT NULL,
  `remark3` varchar(255) DEFAULT NULL,
  `remark4` varchar(255) DEFAULT NULL,
  `remark5` varchar(255) DEFAULT NULL,
  `remark6` varchar(255) DEFAULT NULL,
  `remark7` varchar(255) DEFAULT NULL,
  `remark8` varchar(255) DEFAULT NULL,
  `remark9` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `specialSkill` varchar(255) DEFAULT NULL,
  `staffId` varchar(255) DEFAULT NULL,
  `staffName` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `titleDate` varchar(255) DEFAULT NULL,
  `zipCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='应聘人员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_candidate`
--

LOCK TABLES `t_candidate` WRITE;
/*!40000 ALTER TABLE `t_candidate` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_contract`
--

DROP TABLE IF EXISTS `t_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_contract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aliveFlag` bit(1) DEFAULT NULL,
  `beginDate` datetime DEFAULT NULL,
  `comMoney` double DEFAULT NULL,
  `contractEndExp` varchar(255) DEFAULT NULL,
  `contractExp` varchar(255) DEFAULT NULL,
  `contractId` varchar(255) DEFAULT NULL,
  `contractStatus` varchar(255) DEFAULT NULL,
  `contractTimes` double DEFAULT NULL,
  `contractType` varchar(255) DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `modelNo` varchar(255) DEFAULT NULL,
  `otherExplain` varchar(255) DEFAULT NULL,
  `recCreTm` datetime DEFAULT NULL,
  `recCreUsrId` varchar(30) DEFAULT NULL,
  `recUpdtTm` datetime DEFAULT NULL,
  `recUpdtUsrId` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `staffId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_contract`
--

LOCK TABLES `t_contract` WRITE;
/*!40000 ALTER TABLE `t_contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_contractmodel`
--

DROP TABLE IF EXISTS `t_contractmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_contractmodel` (
  `contractmodelid` int(11) NOT NULL AUTO_INCREMENT,
  `aliveFlag` bit(1) DEFAULT NULL,
  `beginDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `modelNo` varchar(255) DEFAULT NULL,
  `recCreTm` datetime DEFAULT NULL,
  `recCreUsrId` varchar(30) DEFAULT NULL,
  `recUpdtTm` datetime DEFAULT NULL,
  `recUpdtUsrId` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contractmodelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_contractmodel`
--

LOCK TABLES `t_contractmodel` WRITE;
/*!40000 ALTER TABLE `t_contractmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_contractmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_department`
--

DROP TABLE IF EXISTS `t_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_department` (
  `departmentId` int(11) NOT NULL AUTO_INCREMENT,
  `aliveFlag` varchar(255) DEFAULT NULL,
  `deptCode` varchar(255) DEFAULT NULL,
  `deptName` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `flag1` varchar(255) DEFAULT NULL,
  `flag2` varchar(255) DEFAULT NULL,
  `flag3` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `parentDeptCode` varchar(255) DEFAULT NULL,
  `recCreTm` datetime DEFAULT NULL,
  `recCreUsrId` varchar(30) DEFAULT NULL,
  `recUpdtTm` datetime DEFAULT NULL,
  `recUpdtUsrId` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `remark1` varchar(255) DEFAULT NULL,
  `remark2` varchar(255) DEFAULT NULL,
  `remark3` varchar(255) DEFAULT NULL,
  `remark4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`departmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_department`
--

LOCK TABLES `t_department` WRITE;
/*!40000 ALTER TABLE `t_department` DISABLE KEYS */;
INSERT INTO `t_department` VALUES (1,'0','GJA09900','虚拟室','','','','','3','GJA00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(2,'0','GJA01000','经营班子成员','','','','','3','GJA00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(3,'0','GJB010E0','办公组','','','','','4','GJB01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(4,'0','GJB020C0','办公组','','','','','4','GJB02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(5,'0','GJB030C0','办公组','','','','','4','GJB03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(6,'0','GJB040C0','办公组','','','','','4','GJB04000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(7,'0','GJC010G0','办公组','','','','','4','GJC01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(8,'0','GJC020E0','办公组','','','','','4','GJC02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(9,'0','GJC030D0','办公组','','','','','4','GJC03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(10,'0','GJD010E0','办公组','','','','','4','GJD01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(11,'0','GJD020F0','办公组','','','','','4','GJD02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(12,'0','GJD030E0','办公组','','','','','4','GJD03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(13,'0','GJE010E0','办公组','','','','','4','GJE01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(14,'0','GJE020F0','办公组','','','','','4','GJE02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(15,'0','GJE030F0','办公组','','','','','4','GJE03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(16,'0','GJE040I0','办公组','','','','','4','GJE04000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(17,'0','GJF010C0','办公组','','','','','4','GJF01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(18,'0','GJF020E0','办公组','','','','','4','GJF02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(19,'0','GJF030D0','办公组','','','','','4','GJF03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(20,'0','GJE040J0','三电首席工程师','','','','','4','GJE04000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(21,'0','GJC020F0','冷轧板块','','','','','4','GJC02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(22,'0','GJA00001','纪委书记','','','','','3','GJA00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(23,'0','GJF010D0','效能监查','','','','','4','GJF01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(24,'0','GJF040K0','白班班长','','','','','4','GJE04000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(25,'0','GJE030E0','2#CGL','','','','','4','GJE03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(26,'0','GJB010B0','行政综合管理','','','','','4','GJB01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(27,'0','GJB010C0','党群','','','','','4','GJB01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(28,'0','GJB010D0','小车班','','','','','4','GJB01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(29,'0','GJB040A0','采购业务','','','','','4','GJB04000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(30,'0','GJB040B0','仓库管理','','','','','4','GJB04000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(31,'0','GJF020A0','财务综合管理','','','','','4','GJF02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(32,'0','GJF020B0','资金管理','','','','','4','GJF02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(33,'0','GJF020C0','财务管理','','','','','4','GJF02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(34,'0','GJF020D0','财务会计','','','','','4','GJF02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(35,'0','GJF030A0','生产经营','','','','','4','GJF03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(36,'0','GJF030B0','网络、硬件及办公系统','','','','','4','GJF03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(37,'0','GJF030C0','二级机系统区域','','','','','4','GJF03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(38,'0','GJC010A0','华南区域','','','','','4','GJC01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(39,'0','GJC010B0','长江区域','','','','','4','GJC01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(40,'0','GJC010C0','华北区域','','','','','4','GJC01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(41,'0','GJC010D0','丰田区域','','','','','4','GJC01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(42,'0','GJC010E0','日产区域','','','','','4','GJC01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(43,'0','GJC020A0','广佛地区','','','','','4','GJC02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(44,'0','GJC020B0','深圳珠海地区','','','','','4','GJC02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(45,'0','GJC020C0','出口业务','','','','','4','GJC02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(46,'0','GJC020D0','华东区','','','','','4','GJC02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(47,'0','GJC030A0','营管综合管理','','','','','4','GJC03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(48,'0','GJC030B0','原版管理','','','','','4','GJC03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(49,'0','GJC030C0','物流管理','','','','','4','GJC03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(50,'0','GJD010A0','商技综合管理','','','','','4','GJD01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(51,'0','GJD010B0','品质管理','','','','','4','GJD01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(52,'0','GJD010C0','工艺设计','','','','','4','GJD01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(53,'0','GJD010D0','原板设计','','','','','4','GJD01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(54,'0','GJD030A0','品技综合管理','','','','','4','GJD03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(55,'0','GJD030B0','高级试验','','','','','4','GJD03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(56,'0','GJD030C0','常规试验','','','','','4','GJD03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(57,'0','GJD030D0','技术组','','','','','4','GJD03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(58,'0','GJD020A0','技服综合管理','','','','','4','GJD02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(59,'0','GJD020B0','丰田系','','','','','4','GJD02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(60,'0','GJD020C0','华东、华南、本田系','','','','','4','GJD02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(61,'0','GJD020D0','华中、日产系','','','','','4','GJD02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(62,'0','GJD020E0','薄板业务','','','','','4','GJD02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(63,'0','GJE010A0','生管综合管理','','','','','4','GJE01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(64,'0','GJE010B0','生产计划管理','','','','','4','GJE01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(65,'0','GJE010C0','生产调度中心','','','','','4','GJE01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(66,'0','GJE010D0','生产物流区','','','','','4','GJE01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(67,'0','GJE040A0','综合组','','','','','4','GJE04000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(68,'0','GJE040B0','综合组','','','','','4','GJE04000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(69,'0','GJE040C0','机械作业区','','','','','4','GJE04000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(70,'0','GJE040D0','电气作业区','','','','','4','GJE04000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(71,'0','GJE040E0','机械作业区','','','','','4','GJE04000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(72,'0','GJE040F0','电气作业区','','','','','4','GJE04000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(73,'0','GJE040G0','仪表','','','','','4','GJE04000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(74,'0','GJE040H0','公辅','','','','','4','GJE04000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(75,'0','GJB010A0','文秘管理','','','','','4','GJB01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(76,'0','GJB030A0','安环综合管理','','','','','4','GJB03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(77,'0','GJB020A0','人资综合管理','','','','','4','GJB02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(78,'0','GJB020B0','人力资源管理','','','','','4','GJB02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(79,'0','GJB030B0','安环管理','','','','','4','GJB03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(80,'0','GJF010A0','企划综合管理','','','','','4','GJF01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(81,'0','GJF010B0','运营管理','','','','','4','GJF01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(82,'0','GJC010F0','本田区域','','','','','4','GJC01000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(83,'0','GJA00000','经营班子','','','','','2','GJ000000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(84,'0','GJB00000','综合管理部 ','','','','','2','GJ000000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(85,'0','GJC00000','营业部','','','','','2','GJ000000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(86,'0','GJD00000','品质管理部','','','','','2','GJ000000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(87,'0','GJE00000','制造部','','','','','2','GJ000000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(88,'0','GJZ00000','虚拟部门','','','','','2','GJ000000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(89,'0','GJB01000','行政室','','','','','3','GJB00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(90,'0','GJB02000','人力资源室','','','','','3','GJB00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(91,'0','GJB03000','安全环保室','','','','','3','GJB00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(92,'0','GJB04000','采购室','','','','','3','GJB00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(93,'0','GJB05000','办公室','','','','','3','GJB00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(94,'0','GJB09900','虚拟室','','','','','3','GJB00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(95,'0','GJC01000','汽车板室','','','','','3','GJC00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(96,'0','GJD01000','商品技术室','','','','','3','GJD00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(97,'0','GJD02000','技术服务室','','','','','3','GJD00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(98,'0','GJC02000','薄板室','','','','','3','GJC00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(99,'0','GJD03000','品质技术室','','','','','3','GJD00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(100,'0','GJC03000','营业管理室','','','','','3','GJC00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(101,'0','GJD04000','办公室','','','','','3','GJD00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(102,'0','GJD09900','虚拟室','','','','','3','GJD00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(103,'0','GJC04000','办公室','','','','','3','GJC00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(104,'0','GJC09900','虚拟室','','','','','3','GJC00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(105,'0','GJE01000','生产管理室','','','','','3','GJE00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(106,'0','GJE02000','冷轧工场','','','','','3','GJE00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(107,'0','GJE03000','镀锌工场','','','','','3','GJE00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(108,'0','GJE04000','设备室','','','','','3','GJE00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(109,'0','GJE05000','办公室','','','','','3','GJE00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(110,'0','GJE09900','虚拟室','','','','','3','GJE00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(111,'0','GJF00000','经营企划部','','','','','2','GJ000000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(112,'0','GJF01000','企划室','','','','','3','GJF00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(113,'0','GJF02000','财务管理室','','','','','3','GJF00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(114,'0','GJF03000','信息管理中心','','','','','3','GJF00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(115,'0','GJF04000','办公室','','','','','3','GJF00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(116,'0','GJF09900','虚拟室','','','','','3','GJF00000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(117,'0','GJE020A0','冷轧综合管理','','','','','4','GJE02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(118,'0','GJE020C0','磨辊间','','','','','4','GJE02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(119,'0','GJE020D0','连退','','','','','4','GJE02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(120,'0','GJE020B0','冷轧品质管理','','','','','4','GJE02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(121,'0','GJE020E0','酸轧','','','','','4','GJE02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(122,'0','GJE030A0','镀锌综合管理','','','','','4','GJE03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(123,'0','GJE030B0','镀锌技术管理','','','','','4','GJE03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(124,'0','GJE030C0','镀锌品质检查','','','','','4','GJE03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(125,'0','GJE030D0','1#CGL','','','','','4','GJE03000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(126,'0','GJ000000','广州JFE钢板有限公司','','','','','1','****','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','',''),(127,'0','GJB020D0','团委书记','','','','','4','GJB02000','0000-00-00 00:00:00','','0000-00-00 00:00:00','','','','','','');
/*!40000 ALTER TABLE `t_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_fixedstaff`
--

DROP TABLE IF EXISTS `t_fixedstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_fixedstaff` (
  `fixedstaffId` int(11) NOT NULL AUTO_INCREMENT,
  `aliveFlag` bit(1) DEFAULT NULL,
  `departmentCode` varchar(255) DEFAULT NULL,
  `fixedNumber` int(11) DEFAULT NULL,
  `fixedType` varchar(255) DEFAULT NULL,
  `postCode` varchar(255) DEFAULT NULL,
  `recCreTm` datetime DEFAULT NULL,
  `recCreUsrId` varchar(30) DEFAULT NULL,
  `recUpdtTm` datetime DEFAULT NULL,
  `recUpdtUsrId` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fixedstaffId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_fixedstaff`
--

LOCK TABLES `t_fixedstaff` WRITE;
/*!40000 ALTER TABLE `t_fixedstaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_fixedstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_insure`
--

DROP TABLE IF EXISTS `t_insure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_insure` (
  `insureid` int(11) NOT NULL AUTO_INCREMENT,
  `aliveFlag` bit(1) DEFAULT NULL,
  `base` double DEFAULT NULL,
  `baseI` double DEFAULT NULL,
  `baseM` double DEFAULT NULL,
  `baseO` double DEFAULT NULL,
  `beginDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `insureB` double DEFAULT NULL,
  `insureH` double DEFAULT NULL,
  `insureI` double DEFAULT NULL,
  `insureICom` double DEFAULT NULL,
  `insureIPer` double DEFAULT NULL,
  `insureM` double DEFAULT NULL,
  `insureMCom` double DEFAULT NULL,
  `insureMPer` double DEFAULT NULL,
  `insureNo` varchar(255) DEFAULT NULL,
  `insureO` double DEFAULT NULL,
  `insureOCom` double DEFAULT NULL,
  `insureOPer` double DEFAULT NULL,
  `recCreTm` datetime DEFAULT NULL,
  `recCreUsrId` varchar(30) DEFAULT NULL,
  `recUpdtTm` datetime DEFAULT NULL,
  `recUpdtUsrId` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `staffId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`insureid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_insure`
--

LOCK TABLES `t_insure` WRITE;
/*!40000 ALTER TABLE `t_insure` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_insure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_insurehis`
--

DROP TABLE IF EXISTS `t_insurehis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_insurehis` (
  `insurehisid` int(11) NOT NULL AUTO_INCREMENT,
  `aliveFlag` bit(1) DEFAULT NULL,
  `base` double DEFAULT NULL,
  `baseI` double DEFAULT NULL,
  `baseM` double DEFAULT NULL,
  `baseO` double DEFAULT NULL,
  `beginDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `insureB` double DEFAULT NULL,
  `insureH` double DEFAULT NULL,
  `insureI` double DEFAULT NULL,
  `insureICom` double DEFAULT NULL,
  `insureIPer` double DEFAULT NULL,
  `insureM` double DEFAULT NULL,
  `insureMCom` double DEFAULT NULL,
  `insureMPer` double DEFAULT NULL,
  `insureNo` varchar(255) DEFAULT NULL,
  `insureO` double DEFAULT NULL,
  `insureOCom` double DEFAULT NULL,
  `insureOPer` double DEFAULT NULL,
  `recCreTm` datetime DEFAULT NULL,
  `recCreUsrId` varchar(30) DEFAULT NULL,
  `recUpdtTm` datetime DEFAULT NULL,
  `recUpdtUsrId` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `staffId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`insurehisid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_insurehis`
--

LOCK TABLES `t_insurehis` WRITE;
/*!40000 ALTER TABLE `t_insurehis` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_insurehis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_leave`
--

DROP TABLE IF EXISTS `t_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_leave` (
  `leaveid` int(11) NOT NULL AUTO_INCREMENT,
  `aliveFlag` bit(1) DEFAULT NULL,
  `comFee` double DEFAULT NULL,
  `deptCode` varchar(255) DEFAULT NULL,
  `leaveApplyDate` datetime DEFAULT NULL,
  `leaveDate` datetime DEFAULT NULL,
  `leaveStatus` varchar(255) DEFAULT NULL,
  `leaveType` varchar(255) DEFAULT NULL,
  `onOffType` varchar(255) DEFAULT NULL,
  `perFee` double DEFAULT NULL,
  `positionCode` varchar(255) DEFAULT NULL,
  `recCreTm` datetime DEFAULT NULL,
  `recCreUsrId` varchar(30) DEFAULT NULL,
  `recUpdtTm` datetime DEFAULT NULL,
  `recUpdtUsrId` varchar(30) DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `staffId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`leaveid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_leave`
--

LOCK TABLES `t_leave` WRITE;
/*!40000 ALTER TABLE `t_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_personal_info`
--

DROP TABLE IF EXISTS `t_personal_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_personal_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empno` varchar(20) DEFAULT NULL COMMENT '工号',
  `name` varchar(30) DEFAULT NULL COMMENT '姓名',
  `nickname` varchar(30) DEFAULT NULL COMMENT '昵称',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `lunar_birthday` date DEFAULT NULL COMMENT '农历生日',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `degree` tinyint(1) DEFAULT NULL COMMENT '学历',
  `marriage_in_human` tinyint(1) DEFAULT NULL COMMENT '婚姻状况',
  `mobile` int(20) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(100) DEFAULT NULL COMMENT '现住址',
  `id_number` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `graduate_school` varchar(50) DEFAULT NULL COMMENT '毕业院校',
  `political_expierence` varchar(20) DEFAULT NULL COMMENT '政治面貌',
  `census_register_address` varchar(100) DEFAULT NULL COMMENT '户籍地址',
  `census_register_type` tinyint(1) DEFAULT NULL COMMENT '户籍类型',
  `tags` varchar(50) DEFAULT NULL COMMENT '标签',
  `qq_num` varchar(20) DEFAULT NULL COMMENT 'QQ号',
  `weichat_num` varchar(30) DEFAULT NULL COMMENT '微信号',
  `join_date` date DEFAULT NULL COMMENT '入职日期',
  `probation_end_date` date DEFAULT NULL COMMENT '转正日期',
  `start_work_date` date DEFAULT NULL COMMENT '参加工作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_personal_info`
--

LOCK TABLES `t_personal_info` WRITE;
/*!40000 ALTER TABLE `t_personal_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_personal_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_post`
--

DROP TABLE IF EXISTS `t_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_post` (
  `postId` int(11) NOT NULL AUTO_INCREMENT,
  `aliveFlag` bit(1) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `postCode` varchar(255) DEFAULT NULL,
  `postLayer` varchar(255) DEFAULT NULL,
  `postMulti` varchar(255) DEFAULT NULL,
  `postName` varchar(255) DEFAULT NULL,
  `postNumber` float DEFAULT NULL,
  `postNumberLow` float DEFAULT NULL,
  `postNumberUpper` float DEFAULT NULL,
  `recCreTm` datetime DEFAULT NULL,
  `recCreUsrId` varchar(30) DEFAULT NULL,
  `recUpdtTm` datetime DEFAULT NULL,
  `recUpdtUsrId` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `workType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`postId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_post`
--

LOCK TABLES `t_post` WRITE;
/*!40000 ALTER TABLE `t_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_postsort`
--

DROP TABLE IF EXISTS `t_postsort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_postsort` (
  `postsortId` int(11) NOT NULL AUTO_INCREMENT,
  `aliveFlag` bit(1) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `postsortCode` varchar(255) DEFAULT NULL,
  `postsortName` varchar(255) DEFAULT NULL,
  `recCreTm` datetime DEFAULT NULL,
  `recCreUsrId` varchar(30) DEFAULT NULL,
  `recUpdtTm` datetime DEFAULT NULL,
  `recUpdtUsrId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`postsortId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_postsort`
--

LOCK TABLES `t_postsort` WRITE;
/*!40000 ALTER TABLE `t_postsort` DISABLE KEYS */;
INSERT INTO `t_postsort` VALUES (1,'','1','1','1','2016-04-01 10:34:10','1','2016-04-01 10:34:13','1'),(2,'','2','2','2','2016-04-01 10:34:23','2','2016-04-01 10:34:27','2');
/*!40000 ALTER TABLE `t_postsort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_servestaff`
--

DROP TABLE IF EXISTS `t_servestaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_servestaff` (
  `servestaffid` int(11) NOT NULL AUTO_INCREMENT,
  `aliveFlag` bit(1) DEFAULT NULL,
  `deptCode` varchar(255) DEFAULT NULL,
  `fixedType` varchar(255) DEFAULT NULL,
  `positionCode` varchar(255) DEFAULT NULL,
  `recCreTm` datetime DEFAULT NULL,
  `recCreUsrId` varchar(30) DEFAULT NULL,
  `recUpdtTm` datetime DEFAULT NULL,
  `recUpdtUsrId` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `staffId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`servestaffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_servestaff`
--

LOCK TABLES `t_servestaff` WRITE;
/*!40000 ALTER TABLE `t_servestaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_servestaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_servestaffhis`
--

DROP TABLE IF EXISTS `t_servestaffhis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_servestaffhis` (
  `servestaffhisid` int(11) NOT NULL AUTO_INCREMENT,
  `aliveFlag` bit(1) DEFAULT NULL,
  `deptCode` varchar(255) DEFAULT NULL,
  `fixedType` varchar(255) DEFAULT NULL,
  `positionCode` varchar(255) DEFAULT NULL,
  `recCreTm` datetime DEFAULT NULL,
  `recCreUsrId` varchar(30) DEFAULT NULL,
  `recUpdtTm` datetime DEFAULT NULL,
  `recUpdtUsrId` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `staffId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`servestaffhisid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_servestaffhis`
--

LOCK TABLES `t_servestaffhis` WRITE;
/*!40000 ALTER TABLE `t_servestaffhis` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_servestaffhis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_staff`
--

DROP TABLE IF EXISTS `t_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partyDate` datetime DEFAULT NULL,
  `accumeFlag` bit(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` float DEFAULT NULL,
  `aliveFlag` bit(1) DEFAULT NULL,
  `appJobNo` varchar(255) DEFAULT NULL,
  `beginWorkDate` datetime DEFAULT NULL,
  `birthPlace` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `birthdayLuna` datetime DEFAULT NULL,
  `blood` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `collegeType` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `currCollege` varchar(255) DEFAULT NULL,
  `currDegree` varchar(255) DEFAULT NULL,
  `currDegreeDate` datetime DEFAULT NULL,
  `currEducation` varchar(255) DEFAULT NULL,
  `currGraduateDate` datetime DEFAULT NULL,
  `currMajor` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `degreeDate` varchar(255) DEFAULT NULL,
  `deptCode` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `empWay` varchar(255) DEFAULT NULL,
  `entranceDate` datetime DEFAULT NULL,
  `flag1` varchar(255) DEFAULT NULL,
  `flag2` varchar(255) DEFAULT NULL,
  `flag3` varchar(255) DEFAULT NULL,
  `graduateDate` datetime DEFAULT NULL,
  `grantCountry` varchar(255) DEFAULT NULL,
  `grantDept` varchar(255) DEFAULT NULL,
  `guarant` varchar(255) DEFAULT NULL,
  `health` varchar(255) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `idCardNo` varchar(255) DEFAULT NULL,
  `insureType` varchar(255) DEFAULT NULL,
  `insureiFlag` bit(1) DEFAULT NULL,
  `insuremFlag` bit(1) DEFAULT NULL,
  `insurepFlag` bit(1) DEFAULT NULL,
  `keyFlag` bit(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `languageLevel` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `marriage` varchar(255) DEFAULT NULL,
  `mobileTel` varchar(255) DEFAULT NULL,
  `nation` varchar(255) DEFAULT NULL,
  `nativ` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `party` varchar(255) DEFAULT NULL,
  `positionCode` varchar(255) DEFAULT NULL,
  `postMulti` varchar(255) DEFAULT NULL,
  `recCreTm` datetime DEFAULT NULL,
  `recCreUsrId` varchar(30) DEFAULT NULL,
  `recUpdtTm` datetime DEFAULT NULL,
  `recUpdtUsrId` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `remark1` varchar(255) DEFAULT NULL,
  `remark2` varchar(255) DEFAULT NULL,
  `remark3` varchar(255) DEFAULT NULL,
  `remark4` varchar(255) DEFAULT NULL,
  `remark5` varchar(255) DEFAULT NULL,
  `remark6` varchar(255) DEFAULT NULL,
  `remark7` varchar(255) DEFAULT NULL,
  `remark8` varchar(255) DEFAULT NULL,
  `remark9` varchar(255) DEFAULT NULL,
  `serviceDate` datetime DEFAULT NULL,
  `serviceYear` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `skillDate` varchar(255) DEFAULT NULL,
  `skillLevel` varchar(255) DEFAULT NULL,
  `socialCardId` varchar(255) DEFAULT NULL,
  `specialDate` datetime DEFAULT NULL,
  `specialSkill` varchar(255) DEFAULT NULL,
  `specialTitle` varchar(255) DEFAULT NULL,
  `staffId` varchar(255) DEFAULT NULL,
  `staffIdOld` varchar(255) DEFAULT NULL,
  `staffName` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `telShort` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `titleDate` varchar(255) DEFAULT NULL,
  `urgentAddress1` varchar(255) DEFAULT NULL,
  `urgentAddress2` varchar(255) DEFAULT NULL,
  `urgentAddress3` varchar(255) DEFAULT NULL,
  `urgentName1` varchar(255) DEFAULT NULL,
  `urgentName2` varchar(255) DEFAULT NULL,
  `urgentName3` varchar(255) DEFAULT NULL,
  `urgentRelate1` varchar(255) DEFAULT NULL,
  `urgentRelate2` varchar(255) DEFAULT NULL,
  `urgentRelate3` varchar(255) DEFAULT NULL,
  `urgentTel1` varchar(255) DEFAULT NULL,
  `urgentTel2` varchar(255) DEFAULT NULL,
  `urgentTel3` varchar(255) DEFAULT NULL,
  `workInDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_staff`
--

LOCK TABLES `t_staff` WRITE;
/*!40000 ALTER TABLE `t_staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_transferorder`
--

DROP TABLE IF EXISTS `t_transferorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_transferorder` (
  `transferorderid` int(11) NOT NULL AUTO_INCREMENT,
  `aliveFlag` bit(1) DEFAULT NULL,
  `dutyDate` datetime DEFAULT NULL,
  `inDate` datetime DEFAULT NULL,
  `inDepCode` varchar(255) DEFAULT NULL,
  `inPositionCode` varchar(255) DEFAULT NULL,
  `movDate` datetime DEFAULT NULL,
  `movStatus` varchar(255) DEFAULT NULL,
  `outDate` datetime DEFAULT NULL,
  `outDepCode` varchar(255) DEFAULT NULL,
  `outPositionCode` varchar(255) DEFAULT NULL,
  `recCreTm` datetime DEFAULT NULL,
  `recCreUsrId` varchar(30) DEFAULT NULL,
  `recUpdtTm` datetime DEFAULT NULL,
  `recUpdtUsrId` varchar(30) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `staffId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`transferorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_transferorder`
--

LOCK TABLES `t_transferorder` WRITE;
/*!40000 ALTER TABLE `t_transferorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_transferorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_work_info`
--

DROP TABLE IF EXISTS `t_work_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_work_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personal_id` int(11) DEFAULT NULL,
  `empno` varchar(20) DEFAULT NULL COMMENT '工号',
  `join_date` date DEFAULT NULL COMMENT '入职日期',
  `probation_end_date` date DEFAULT NULL COMMENT '转正日期',
  `start_work_date` date DEFAULT NULL COMMENT '参加工作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_work_info`
--

LOCK TABLES `t_work_info` WRITE;
/*!40000 ALTER TABLE `t_work_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_work_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-11 17:40:34
