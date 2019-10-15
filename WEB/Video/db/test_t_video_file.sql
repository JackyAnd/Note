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
-- Table structure for table `t_video_file`
--

DROP TABLE IF EXISTS `t_video_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_video_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_ratio` int(11) DEFAULT '2' COMMENT '视频分辨率(0：自动，1：流畅，2：标清，3：高清)，默认标清',
  `v_url` varchar(128) DEFAULT NULL COMMENT '视频播放地址',
  `v_dur` bigint(20) DEFAULT NULL COMMENT '视频时长信息(单位：毫秒)',
  `v_coat` int(11) DEFAULT NULL COMMENT '视频费用类型(0:免费，1:付费)',
  `file_path` varchar(128) DEFAULT NULL COMMENT '视频文件路径',
  `file_md5` varchar(32) DEFAULT NULL,
  `file_len` bigint(20) DEFAULT NULL COMMENT '视频文件大小',
  `md_time` bigint(20) DEFAULT NULL COMMENT '文件最后修改时间',
  `server_ip` varchar(24) DEFAULT NULL COMMENT '服务器的IP地址',
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `file_md5_UNIQUE` (`file_md5`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='视频文件基本信息表（电影）';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-15 21:28:28
