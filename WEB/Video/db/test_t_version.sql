-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.49

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
-- Table structure for table `t_version`
--

DROP TABLE IF EXISTS `t_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_version` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_code` int(11) DEFAULT NULL COMMENT '版本号',
  `v_name` varchar(45) DEFAULT NULL COMMENT '版本号名称',
  `v_time` varchar(45) DEFAULT NULL COMMENT '版本发布时间',
  `file_smy` varchar(45) DEFAULT NULL COMMENT '更新内容（概述）',
  `file_len` bigint(20) DEFAULT NULL COMMENT '版本大小(字节)',
  `file_url` varchar(128) DEFAULT NULL COMMENT '下载地址',
  `file_path` varchar(128) DEFAULT NULL,
  `file_name` varchar(45) DEFAULT NULL COMMENT '版本文件APK名称',
  `file_type` int(11) DEFAULT NULL COMMENT '文件类型（1：版本，2：插件）',
  `file_md5` varchar(45) DEFAULT NULL,
  `md_time` bigint(20) DEFAULT NULL COMMENT '记录更新时间',
  PRIMARY KEY (`_id`),
  UNIQUE KEY `un_cf` (`v_code`,`file_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='版本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-15 21:28:46
