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
-- Table structure for table `t_video_base`
--

DROP TABLE IF EXISTS `t_video_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_video_base` (
  `v_nid` int(11) NOT NULL AUTO_INCREMENT,
  `ad_id` int(11) DEFAULT NULL COMMENT '管理员ID',
  `file_id` int(11) DEFAULT NULL COMMENT '对应的视频文件ID',
  `v_title` varchar(45) DEFAULT NULL COMMENT '视频标题',
  `v_detail` text COMMENT '视频内容详情',
  `v_smy` varchar(45) DEFAULT NULL COMMENT '视频内容概述',
  `v_class` varchar(45) DEFAULT NULL COMMENT '视频分类(电视剧、电影、动漫、综艺、短片、体育、音乐、游戏、教程、纪录片(戏剧、评书、相声、小品))',
  `v_type` varchar(20) DEFAULT NULL COMMENT '记录、战争、历史、传记、体育、\n科幻、魔幻、奇幻、文艺、音乐、歌舞、动漫、\n西部、武侠、古装、动作、爱情、剧情、喜剧、家庭、伦理、\n恐怖、惊悚、冒险、犯罪、悬疑\n其它（如健康、饮食、时装、打扮、搞笑、运动、交友等）',
  `v_area` varchar(12) DEFAULT NULL COMMENT '地区',
  `v_year` int(11) DEFAULT NULL COMMENT '视频发行的年代',
  `v_era` varchar(45) DEFAULT NULL COMMENT '故事发生的年代（上古、夏、商、西周、春秋、秦、汉、三国、晋、南北朝、隋、唐、五代十国、宋、元、明、清、民国）仅国内电影区分',
  `v_lang` varchar(20) DEFAULT NULL COMMENT '语言',
  `v_word` varchar(8) DEFAULT NULL COMMENT '字幕',
  `v_star` varchar(96) DEFAULT NULL COMMENT '主演',
  `v_dire` varchar(45) DEFAULT NULL COMMENT '导演',
  `v_writer` varchar(96) DEFAULT NULL COMMENT '编剧',
  `v_epi` varchar(20) DEFAULT NULL COMMENT '视频集数(值如：更新至第1部13集)',
  `ig_src` varchar(128) DEFAULT NULL COMMENT '图片网络路径(宽>高)  横 (原图)',
  `ig_port` varchar(128) DEFAULT NULL COMMENT '图片网络路径(宽<高)  竖 (缩略图)',
  `ig_land` varchar(128) DEFAULT NULL COMMENT '图片网络路径(宽>高)  横 (缩略图)',
  `md_time` bigint(20) DEFAULT NULL COMMENT '最后修改时间',
  `from_url` varchar(128) DEFAULT NULL COMMENT '信息来源',
  PRIMARY KEY (`v_nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='视频基本信息表（电影）';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-15 21:28:29
