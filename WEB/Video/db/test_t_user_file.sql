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
-- Table structure for table `t_user_file`
--

DROP TABLE IF EXISTS `t_user_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_file` (
  `uf_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) DEFAULT NULL,
  `usr_id` int(11) DEFAULT NULL COMMENT '用户类型(6：管理员，2：注册用户，1：未注册用户，用户设备ID)；\n当用户类型为 6 时，usr_id 存放的是管理员的账号(ad_account)\n当用户类型为 2 时，use_id 存放的是用户的账号(usr_account)\n当用户类型为 1 时，usr_id 存放的是是设备的ID(dev_id)；',
  `usr_type` int(11) DEFAULT NULL COMMENT '用户类型(3：管理员，2：注册用户，1：未注册用户，用户设备ID)   => 不等同于用户信息表(t_user)中的 usr_type',
  `dir_hash` int(11) DEFAULT NULL COMMENT '用户存放文件的目录',
  `name_hash` int(11) DEFAULT NULL COMMENT '视频文件名称',
  `up_time` bigint(20) DEFAULT NULL COMMENT '文件上传时间',
  PRIMARY KEY (`uf_id`),
  UNIQUE KEY `file_id` (`file_id`,`usr_id`,`usr_type`,`name_hash`),
  UNIQUE KEY `file_id_2` (`file_id`,`usr_id`,`usr_type`,`dir_hash`,`name_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='用户上传的视频文件信息表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-15 21:28:23
