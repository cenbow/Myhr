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
  `accum_id` int(11) NOT NULL AUTO_INCREMENT,
  `accum_com` double DEFAULT NULL COMMENT '企业缴款额',
  `accum_no` varchar(255) DEFAULT NULL COMMENT '公积金帐号',
  `accum_per` double DEFAULT NULL COMMENT '个人缴款额',
  `alive_flag` bit(1) DEFAULT NULL COMMENT '有效标志',
  `base` double DEFAULT NULL COMMENT '缴款基数',
  `begin_date` datetime DEFAULT NULL COMMENT '开始日期',
  `end_date` datetime DEFAULT NULL COMMENT '结束日期',
  `rec_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `rec_create_user` varchar(30) DEFAULT NULL COMMENT '创建人',
  `rec_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `rec_update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `staff_id` varchar(255) DEFAULT NULL COMMENT '工号',
  PRIMARY KEY (`accum_id`)
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
-- Table structure for table `t_accum_his`
--

DROP TABLE IF EXISTS `t_accum_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_accum_his` (
  `accumhis_id` int(11) NOT NULL AUTO_INCREMENT,
  `accum_com` double DEFAULT NULL COMMENT '企业缴款额',
  `accum_no` varchar(255) DEFAULT NULL COMMENT '公积金帐号',
  `accum_per` double DEFAULT NULL COMMENT '个人缴款额',
  `alive_flag` bit(1) DEFAULT NULL COMMENT '有效标识',
  `base` double DEFAULT NULL,
  `begin_date` datetime DEFAULT NULL COMMENT '开始日期',
  `end_date` datetime DEFAULT NULL COMMENT '结束日期',
  `rec_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `rec_create_user` varchar(30) DEFAULT NULL COMMENT '创建人',
  `rec_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `rec_update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `staff_id` varchar(255) DEFAULT NULL COMMENT '工号',
  PRIMARY KEY (`accumhis_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_accum_his`
--

LOCK TABLES `t_accum_his` WRITE;
/*!40000 ALTER TABLE `t_accum_his` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_accum_his` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_candidate`
--

DROP TABLE IF EXISTS `t_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_candidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `alive_flag` bit(1) DEFAULT NULL COMMENT '有效标志',
  `app_job_no` int(11) DEFAULT NULL COMMENT '需求号',
  `birthPlace` varchar(255) DEFAULT NULL COMMENT '出生地',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `college` varchar(255) DEFAULT NULL COMMENT '毕业学校',
  `college_type` varchar(255) DEFAULT NULL COMMENT '学校类别',
  `degree` varchar(255) DEFAULT NULL COMMENT '学位',
  `degree_date` datetime DEFAULT NULL COMMENT '学位取得时间',
  `dept_code` varchar(255) DEFAULT NULL COMMENT '部门代码',
  `education` varchar(255) DEFAULT NULL COMMENT '学历',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `emp_way` int(11) DEFAULT NULL COMMENT '人员进入类别',
  `employ_status` varchar(255) DEFAULT NULL COMMENT '应聘状态',
  `former_workPlace` varchar(255) DEFAULT NULL COMMENT '原工作单位',
  `graduate_date` datetime DEFAULT NULL COMMENT '毕业时间',
  `guarantor` varchar(255) DEFAULT NULL COMMENT '担保人',
  `health` varchar(255) DEFAULT NULL COMMENT '健康状况',
  `hobby` varchar(255) DEFAULT NULL COMMENT '兴趣爱好',
  `id_card_no` varchar(255) DEFAULT NULL COMMENT '身份证',
  `language` varchar(255) DEFAULT NULL COMMENT '语言种类',
  `language_level` varchar(255) DEFAULT NULL COMMENT '语言水平',
  `major` varchar(255) DEFAULT NULL COMMENT '专业',
  `marriage` varchar(255) DEFAULT NULL COMMENT '婚姻标志',
  `mobile_tel` varchar(255) DEFAULT NULL COMMENT '手机',
  `nation` int(11) DEFAULT NULL COMMENT '民族',
  `nativ` varchar(255) DEFAULT NULL COMMENT '籍贯',
  `origin` varchar(255) DEFAULT NULL COMMENT '人员来源',
  `party` varchar(255) DEFAULT NULL COMMENT '政治面貌',
  `party_date` datetime DEFAULT NULL COMMENT '加入组织时间',
  `rec_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `rec_create_user` varchar(30) DEFAULT NULL COMMENT '创建人',
  `rec_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `rec_update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `remark1` varchar(255) DEFAULT NULL COMMENT '备注1',
  `remark2` varchar(255) DEFAULT NULL COMMENT '备注2',
  `remark3` varchar(255) DEFAULT NULL COMMENT '备注3',
  `remark4` varchar(255) DEFAULT NULL COMMENT '备注4',
  `remark5` varchar(255) DEFAULT NULL COMMENT '备注5',
  `remark6` varchar(255) DEFAULT NULL COMMENT '备注6',
  `remark7` varchar(255) DEFAULT NULL COMMENT '备注7',
  `remark8` varchar(255) DEFAULT NULL COMMENT '备注8',
  `remark9` varchar(255) DEFAULT NULL COMMENT '备注9',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `special_skill` varchar(255) DEFAULT NULL COMMENT '特长',
  `staff_id` varchar(255) DEFAULT NULL COMMENT '工号',
  `staff_name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `telephone` varchar(255) DEFAULT NULL COMMENT '电话',
  `title` varchar(255) DEFAULT NULL COMMENT '职称',
  `title_date` varchar(255) DEFAULT NULL COMMENT '评定时间',
  `zip_code` varchar(255) DEFAULT NULL COMMENT '邮编',
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
  `alive_flag` bit(1) DEFAULT NULL COMMENT '有效标志',
  `begin_date` datetime DEFAULT NULL COMMENT '起始时间',
  `com_money` double DEFAULT NULL COMMENT '补偿金',
  `contract_end_exp` varchar(255) DEFAULT NULL COMMENT '合同终止条件',
  `contract_exp` varchar(255) DEFAULT NULL COMMENT '合同说明',
  `contract_id` varchar(255) DEFAULT NULL COMMENT '合同编号',
  `contract_status` varchar(255) DEFAULT NULL COMMENT '合同状态',
  `contract_times` double DEFAULT NULL COMMENT '合同签定次数',
  `contract_type` varchar(255) DEFAULT NULL COMMENT '合同类型',
  `end_date` datetime DEFAULT NULL COMMENT '结束日期',
  `model_no` varchar(255) DEFAULT NULL COMMENT '样本号',
  `other_explain` varchar(255) DEFAULT NULL COMMENT '其它约定事项',
  `rec_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `rec_create_user` varchar(30) DEFAULT NULL COMMENT '创建人',
  `rec_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `rec_update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `staff_id` varchar(255) DEFAULT NULL COMMENT '工号',
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
-- Table structure for table `t_contract_model`
--

DROP TABLE IF EXISTS `t_contract_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_contract_model` (
  `contractmodel_id` int(11) NOT NULL AUTO_INCREMENT,
  `alive_flag` bit(1) DEFAULT NULL COMMENT '有效标志',
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `model_no` varchar(255) DEFAULT NULL COMMENT '样本号',
  `rec_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `rec_create_user` varchar(30) DEFAULT NULL COMMENT '创建人',
  `rec_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `rec_update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`contractmodel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_contract_model`
--

LOCK TABLES `t_contract_model` WRITE;
/*!40000 ALTER TABLE `t_contract_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_contract_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_department`
--

DROP TABLE IF EXISTS `t_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alive_flag` varchar(255) DEFAULT NULL COMMENT '有效标志',
  `dept_code` varchar(255) DEFAULT NULL COMMENT '部门代码',
  `dept_name` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `flag` varchar(255) DEFAULT NULL COMMENT '标志',
  `flag1` varchar(255) DEFAULT NULL COMMENT '标志1',
  `flag2` varchar(255) DEFAULT NULL COMMENT '标志2',
  `flag3` varchar(255) DEFAULT NULL COMMENT '标志3',
  `level` varchar(255) DEFAULT NULL COMMENT '层次',
  `parent_dept_code` varchar(255) DEFAULT NULL COMMENT '上级部门',
  `rec_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `rec_create_user` varchar(30) DEFAULT NULL COMMENT '创建人',
  `rec_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `rec_update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `remark1` varchar(255) DEFAULT NULL COMMENT '备注1',
  `remark2` varchar(255) DEFAULT NULL COMMENT '备注2',
  `remark3` varchar(255) DEFAULT NULL COMMENT '备注3',
  `remark4` varchar(255) DEFAULT NULL COMMENT '备注4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COMMENT='部门表';
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
  `fixedstaff_id` int(11) NOT NULL AUTO_INCREMENT,
  `alive_flag` bit(1) DEFAULT NULL COMMENT '有效标识',
  `department_code` varchar(255) DEFAULT NULL COMMENT '部门代码',
  `fixed_number` int(11) DEFAULT NULL COMMENT '定员人数',
  `fixed_type` varchar(255) DEFAULT NULL COMMENT '定员类别',
  `post_code` varchar(255) DEFAULT NULL COMMENT '岗位代码',
  `rec_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `rec_create_user` varchar(30) DEFAULT NULL COMMENT '创建人',
  `rec_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `rec_update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`fixedstaff_id`)
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
  `insure_id` int(11) NOT NULL AUTO_INCREMENT,
  `alive_flag` bit(1) DEFAULT NULL COMMENT '有效标识',
  `base` double DEFAULT NULL COMMENT '缴款基数',
  `base_i` double DEFAULT NULL COMMENT '失业金基数',
  `base_m` double DEFAULT NULL COMMENT '医疗金基数',
  `base_o` double DEFAULT NULL COMMENT '养老金基数',
  `begin_date` datetime DEFAULT NULL COMMENT '起始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束日期',
  `insure_b` double DEFAULT NULL COMMENT '生育保险',
  `insure_h` double DEFAULT NULL COMMENT '工商保险',
  `insure_i` double DEFAULT NULL COMMENT '失业金',
  `insure_i_com` double DEFAULT NULL COMMENT '失业金(企业)',
  `insure_i_per` double DEFAULT NULL COMMENT '失业金(个人)',
  `insure_m` double DEFAULT NULL COMMENT '医疗金',
  `insure_m_com` double DEFAULT NULL COMMENT '医疗金(企业)',
  `insure_m_per` double DEFAULT NULL COMMENT '医疗金(个人)',
  `insure_no` varchar(255) DEFAULT NULL COMMENT '社保帐号',
  `insure_o` double DEFAULT NULL COMMENT '养老金',
  `insure_o_com` double DEFAULT NULL COMMENT '养老金(企业)',
  `insure_o_per` double DEFAULT NULL COMMENT '养老金(个人)',
  `rec_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `rec_create_user` varchar(30) DEFAULT NULL COMMENT '创建人',
  `rec_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `rec_update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `staff_id` varchar(255) DEFAULT NULL COMMENT '工号',
  PRIMARY KEY (`insure_id`)
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
  `insurehis_id` int(11) NOT NULL AUTO_INCREMENT,
  `alive_flag` bit(1) DEFAULT NULL COMMENT '有效标志',
  `base` double DEFAULT NULL COMMENT '缴款基数',
  `base_i` double DEFAULT NULL COMMENT '失业金基数',
  `base_m` double DEFAULT NULL COMMENT '医疗金基数',
  `base_o` double DEFAULT NULL COMMENT '养老金基数',
  `begin_date` datetime DEFAULT NULL COMMENT '起始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束日期',
  `insure_b` double DEFAULT NULL COMMENT '生育保险',
  `insure_h` double DEFAULT NULL COMMENT '工商保险',
  `insure_i` double DEFAULT NULL COMMENT '失业金',
  `insure_i_com` double DEFAULT NULL COMMENT '失业金(企业)',
  `insure_i_per` double DEFAULT NULL COMMENT '失业金(个人)',
  `insure_m` double DEFAULT NULL COMMENT '医疗金',
  `insure_m_com` double DEFAULT NULL COMMENT '医疗金(企业)',
  `insure_m_per` double DEFAULT NULL COMMENT '失业金(个人)',
  `insure_no` varchar(255) DEFAULT NULL COMMENT '社保帐号',
  `insure_o` double DEFAULT NULL COMMENT '养老金',
  `insure_o_com` double DEFAULT NULL COMMENT '养老金(企业)',
  `insure_o_per` double DEFAULT NULL COMMENT '养老金(个人)',
  `rec_create_time` datetime DEFAULT NULL,
  `rec_create_user` varchar(30) DEFAULT NULL,
  `rec_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `rec_update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `staff_id` varchar(255) DEFAULT NULL COMMENT '工号',
  PRIMARY KEY (`insurehis_id`)
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
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `alive_flag` bit(1) DEFAULT NULL COMMENT '有效标志',
  `com_fee` double DEFAULT NULL COMMENT '企业补偿额',
  `dept_code` varchar(255) DEFAULT NULL COMMENT '部门代码',
  `leave_apply_date` datetime DEFAULT NULL COMMENT '离职申请时间',
  `leave_date` datetime DEFAULT NULL COMMENT '离职时间',
  `leave_status` varchar(255) DEFAULT NULL COMMENT '离职状态',
  `leave_type` varchar(255) DEFAULT NULL COMMENT '离职类型',
  `on_off_type` varchar(255) DEFAULT NULL COMMENT '离职前工资停发标志',
  `per_fee` double DEFAULT NULL COMMENT '个人补偿额',
  `position_code` varchar(255) DEFAULT NULL COMMENT '岗位代码',
  `rec_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `rec_create_user` varchar(30) DEFAULT NULL COMMENT '创建人',
  `rec_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `rec_update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  `record_date` datetime DEFAULT NULL COMMENT '记录月份',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `staff_id` varchar(255) DEFAULT NULL COMMENT '工号',
  PRIMARY KEY (`leave_id`)
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
  `marriage_in_human` tinyint(1) DEFAULT NULL COMMENT '婚姻状况:1已婚0未婚',
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
  `status` tinyint(2) DEFAULT NULL COMMENT '员工状态：1在职',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='个人信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_personal_info`
--

LOCK TABLES `t_personal_info` WRITE;
/*!40000 ALTER TABLE `t_personal_info` DISABLE KEYS */;
INSERT INTO `t_personal_info` VALUES (1,'1','angie','tete',1,'2016-11-17','2016-11-17',0,1,1,1,'1','1','1','1','1','1',1,'1','1','1','2016-11-17','2016-11-17','2016-11-17',1),(2,'1','angie.D','dede',1,'2016-11-17','2016-11-17',0,1,1,1,'1','1','1','1','1','1',1,'1','1','1','2016-11-17','2016-11-17','2016-11-17',1);
/*!40000 ALTER TABLE `t_personal_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_post`
--

DROP TABLE IF EXISTS `t_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `alive_flag` bit(1) DEFAULT NULL COMMENT '有效标识',
  `major` varchar(255) DEFAULT NULL COMMENT '专业',
  `post_code` varchar(255) DEFAULT NULL COMMENT '岗位代码',
  `post_layer` varchar(255) DEFAULT NULL COMMENT '岗位层级',
  `post_multi` varchar(255) DEFAULT NULL COMMENT '复合岗位',
  `post_name` varchar(255) DEFAULT NULL COMMENT '岗位名称',
  `post_number` float DEFAULT NULL COMMENT '岗位系数',
  `post_number_low` float DEFAULT NULL COMMENT '岗位系数下限',
  `post_number_upper` float DEFAULT NULL COMMENT '岗位系数上限',
  `rec_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `rec_create_user` varchar(30) DEFAULT NULL COMMENT '创建人',
  `rec_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `rec_update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `work_type` varchar(255) DEFAULT NULL COMMENT '工种',
  PRIMARY KEY (`post_id`)
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
-- Table structure for table `t_post_sort`
--

DROP TABLE IF EXISTS `t_post_sort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_post_sort` (
  `post_sort_id` int(11) NOT NULL AUTO_INCREMENT,
  `alive_flag` bit(1) DEFAULT NULL COMMENT '有效标识',
  `level` varchar(255) DEFAULT NULL COMMENT '层次',
  `post_sort_code` varchar(255) DEFAULT NULL COMMENT '岗位分类代码',
  `post_sort_name` varchar(255) DEFAULT NULL COMMENT '岗位分类名称',
  `rec_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `rec_create_user` varchar(30) DEFAULT NULL COMMENT '创建人',
  `rec_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `rec_update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`post_sort_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_post_sort`
--

LOCK TABLES `t_post_sort` WRITE;
/*!40000 ALTER TABLE `t_post_sort` DISABLE KEYS */;
INSERT INTO `t_post_sort` VALUES (1,'','1','1','1','2016-04-01 10:34:10','1','2016-04-01 10:34:13','1'),(2,'','2','2','2','2016-04-01 10:34:23','2','2016-04-01 10:34:27','2');
/*!40000 ALTER TABLE `t_post_sort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_serve_staff`
--

DROP TABLE IF EXISTS `t_serve_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_serve_staff` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL COMMENT '员工id',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门id',
  `fixed_type` varchar(255) DEFAULT NULL COMMENT '定员类别',
  `position_id` int(11) DEFAULT NULL COMMENT '岗位id',
  `rec_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `rec_create_user` varchar(30) DEFAULT NULL COMMENT '创建人',
  `rec_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `rec_update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(2) DEFAULT NULL COMMENT '在职状态',
  `employee_type` tinyint(1) DEFAULT NULL COMMENT '员工类型',
  `staff_id` varchar(20) DEFAULT NULL COMMENT '工号',
  `alive_flag` bit(1) DEFAULT NULL COMMENT '有效标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='职位表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_serve_staff`
--

LOCK TABLES `t_serve_staff` WRITE;
/*!40000 ALTER TABLE `t_serve_staff` DISABLE KEYS */;
INSERT INTO `t_serve_staff` VALUES (00000000001,1,1,'1',1,'2016-12-01 11:40:51','1','2016-12-01 11:40:53','1','1',1,1,'1',''),(00000000002,2,1,'1',1,'2016-12-01 11:40:51','1','2016-12-01 11:40:53','1','1',1,1,'2','');
/*!40000 ALTER TABLE `t_serve_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_servestaffhis`
--

DROP TABLE IF EXISTS `t_servestaffhis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_servestaffhis` (
  `servestaffhis_id` int(11) NOT NULL AUTO_INCREMENT,
  `alive_flag` bit(1) DEFAULT NULL COMMENT '有效标志',
  `dept_code` varchar(255) DEFAULT NULL COMMENT '部门代码',
  `fixed_type` varchar(255) DEFAULT NULL COMMENT '定员类别',
  `position_code` varchar(255) DEFAULT NULL COMMENT '岗位代码',
  `rec_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `rec_create_user` varchar(30) DEFAULT NULL COMMENT '创建人',
  `rec_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `rec_update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `staff_id` varchar(255) DEFAULT NULL COMMENT '工号',
  PRIMARY KEY (`servestaffhis_id`)
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
  `party_date` datetime DEFAULT NULL COMMENT '加入组织时间',
  `accume_flag` bit(1) DEFAULT NULL COMMENT '公积金缴存标记',
  `address` varchar(255) DEFAULT NULL COMMENT '邮编',
  `age` float DEFAULT NULL COMMENT '年龄',
  `alive_flag` bit(1) DEFAULT NULL COMMENT '有效标志',
  `app_job_number` varchar(255) DEFAULT NULL COMMENT '需求号',
  `begin_work_date` datetime DEFAULT NULL COMMENT '参加工作时间',
  `birthPlace` varchar(255) DEFAULT NULL COMMENT '出生地',
  `birthday` varchar(255) DEFAULT NULL COMMENT '出生年月',
  `birthday_luna` datetime DEFAULT NULL COMMENT '出生年月(农历)',
  `blood` varchar(255) DEFAULT NULL COMMENT '血型',
  `college` varchar(255) DEFAULT NULL COMMENT '毕业学校',
  `college_type` varchar(255) DEFAULT NULL COMMENT '学校类别',
  `country` varchar(255) DEFAULT NULL COMMENT '国籍',
  `curr_college` varchar(255) DEFAULT NULL COMMENT '当前毕业学校',
  `curr_degree` varchar(255) DEFAULT NULL COMMENT '当前学位',
  `curr_degree_date` datetime DEFAULT NULL COMMENT '当前学位取得日期',
  `curr_education` varchar(255) DEFAULT NULL COMMENT '当前学历',
  `curr_graduate_date` datetime DEFAULT NULL COMMENT '当前毕业时间',
  `curr_major` varchar(255) DEFAULT NULL COMMENT '当前专业',
  `degree` varchar(255) DEFAULT NULL COMMENT '学位',
  `degree_date` varchar(255) DEFAULT NULL COMMENT '学位取得时间',
  `dept_code` varchar(255) DEFAULT NULL COMMENT '部门代码',
  `education` varchar(255) DEFAULT NULL COMMENT '学历',
  `email` varchar(255) DEFAULT NULL COMMENT '电子邮件',
  `emp_way` varchar(255) DEFAULT NULL COMMENT '人员进入类别',
  `entrance_date` datetime DEFAULT NULL COMMENT '入学时间',
  `flag1` varchar(255) DEFAULT NULL COMMENT '标志1',
  `flag2` varchar(255) DEFAULT NULL COMMENT '标志2',
  `flag3` varchar(255) DEFAULT NULL COMMENT '标志3',
  `graduate_date` datetime DEFAULT NULL COMMENT '毕业时间',
  `grant_country` varchar(255) DEFAULT NULL COMMENT '授予国家',
  `grant_dept` varchar(255) DEFAULT NULL COMMENT '授予单位',
  `guarant` varchar(255) DEFAULT NULL COMMENT '担保人',
  `health` varchar(255) DEFAULT NULL COMMENT '健康状况',
  `hobby` varchar(255) DEFAULT NULL COMMENT '兴趣爱好',
  `idCard_number` varchar(255) DEFAULT NULL COMMENT '身份证',
  `insure_type` varchar(255) DEFAULT NULL COMMENT '参保类型',
  `insurei_flag` bit(1) DEFAULT NULL COMMENT '失业金缴存标记',
  `insurem_flag` bit(1) DEFAULT NULL COMMENT '医疗保险缴存标记',
  `insurep_flag` bit(1) DEFAULT NULL COMMENT '养老金缴存标记',
  `key_flag` bit(1) DEFAULT NULL COMMENT '重点关注标记',
  `language` varchar(255) DEFAULT NULL COMMENT '语言种类',
  `language_level` varchar(255) DEFAULT NULL COMMENT '语言水平',
  `major` varchar(255) DEFAULT NULL COMMENT '专业',
  `marriage` varchar(255) DEFAULT NULL COMMENT '婚姻标志',
  `mobile_tel` varchar(255) DEFAULT NULL COMMENT '手机',
  `nation` varchar(255) DEFAULT NULL COMMENT '民族',
  `nativ` varchar(255) DEFAULT NULL COMMENT '籍贯',
  `origin` varchar(255) DEFAULT NULL COMMENT '人员来源',
  `party` varchar(255) DEFAULT NULL COMMENT '政治面貌',
  `position_code` varchar(255) DEFAULT NULL COMMENT 'positionCode',
  `post_multi` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `rec_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `rec_create_user` varchar(30) DEFAULT NULL COMMENT '创建人',
  `rec_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `rec_update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `remark1` varchar(255) DEFAULT NULL COMMENT '备注1',
  `remark2` varchar(255) DEFAULT NULL COMMENT '备注2',
  `remark3` varchar(255) DEFAULT NULL COMMENT '备注3',
  `remark4` varchar(255) DEFAULT NULL COMMENT '备注4',
  `remark5` varchar(255) DEFAULT NULL COMMENT '备注5',
  `remark6` varchar(255) DEFAULT NULL COMMENT '备注6',
  `remark7` varchar(255) DEFAULT NULL COMMENT '备注7',
  `remark8` varchar(255) DEFAULT NULL COMMENT '备注8',
  `remark9` varchar(255) DEFAULT NULL COMMENT '备注9',
  `service_date` datetime DEFAULT NULL COMMENT '工龄起算时间',
  `service_year` varchar(255) DEFAULT NULL COMMENT '工龄',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `skill_date` varchar(255) DEFAULT NULL COMMENT '技能等级取得时间',
  `skill_level` varchar(255) DEFAULT NULL COMMENT '技能等级',
  `social_card_id` varchar(255) DEFAULT NULL COMMENT '社保卡号',
  `special_date` datetime DEFAULT NULL COMMENT '专业资格取得时间',
  `special_skill` varchar(255) DEFAULT NULL COMMENT '特长',
  `special_title` varchar(255) DEFAULT NULL COMMENT '专业资格',
  `staff_id` varchar(255) DEFAULT NULL COMMENT '工号',
  `staff_id_old` varchar(255) DEFAULT NULL COMMENT '原工号',
  `staff_name` varchar(255) DEFAULT NULL COMMENT '姓名 ',
  `state` varchar(255) DEFAULT NULL COMMENT '在职状态',
  `tel_short` varchar(255) DEFAULT NULL COMMENT '手机短号',
  `telephone` varchar(255) DEFAULT NULL COMMENT '电话',
  `title` varchar(255) DEFAULT NULL COMMENT '职称',
  `title_date` varchar(255) DEFAULT NULL COMMENT '评定时间',
  `urgent_address1` varchar(255) DEFAULT NULL COMMENT '紧急联系地址1',
  `urgent_address2` varchar(255) DEFAULT NULL COMMENT '紧急联系地址2',
  `urgent_address3` varchar(255) DEFAULT NULL COMMENT '紧急联系地址3',
  `urgent_name1` varchar(255) DEFAULT NULL COMMENT '紧急联系人1',
  `urgent_name2` varchar(255) DEFAULT NULL COMMENT '紧急联系人2',
  `urgent_name3` varchar(255) DEFAULT NULL,
  `urgent_relate1` varchar(255) DEFAULT NULL COMMENT '与员工关系1',
  `urgent_relate2` varchar(255) DEFAULT NULL COMMENT '与员工关系2',
  `urgent_relate3` varchar(255) DEFAULT NULL COMMENT '与员工关系3',
  `urgent_tel1` varchar(255) DEFAULT NULL COMMENT '紧急联系电话1',
  `urgent_tel2` varchar(255) DEFAULT NULL COMMENT '紧急联系电话2',
  `urgent_tel3` varchar(255) DEFAULT NULL COMMENT '紧急联系电话3',
  `work_in_date` datetime DEFAULT NULL COMMENT '进企业时间',
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
  `transferorder_id` int(11) NOT NULL AUTO_INCREMENT,
  `alive_flag` bit(1) DEFAULT NULL COMMENT '有效标志',
  `duty_date` datetime DEFAULT NULL COMMENT '任职时间',
  `in_date` datetime DEFAULT NULL COMMENT '调入时间',
  `in_dep_code` varchar(255) DEFAULT NULL COMMENT '调入部门代码',
  `in_position_code` varchar(255) DEFAULT NULL COMMENT '调入岗位代码',
  `mov_date` datetime DEFAULT NULL COMMENT '调令单日期',
  `mov_status` varchar(255) DEFAULT NULL COMMENT '调动状态',
  `out_date` datetime DEFAULT NULL COMMENT '调出时间',
  `out_dep_code` varchar(255) DEFAULT NULL COMMENT '调出部门代码',
  `out_position_code` varchar(255) DEFAULT NULL COMMENT '调出岗位代码',
  `rec_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `rec_create_user` varchar(30) DEFAULT NULL COMMENT '创建人',
  `rec_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `rec_update_user` varchar(30) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `staff_id` varchar(255) DEFAULT NULL COMMENT '工号',
  PRIMARY KEY (`transferorder_id`)
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

-- Dump completed on 2016-12-01 17:30:28
