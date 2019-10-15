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
-- Temporary view structure for view `v_user_file_dnv`
--

DROP TABLE IF EXISTS `v_user_file_dnv`;
/*!50001 DROP VIEW IF EXISTS `v_user_file_dnv`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_user_file_dnv` AS SELECT 
 1 AS `uf_id`,
 1 AS `file_id`,
 1 AS `usr_id`,
 1 AS `usr_type`,
 1 AS `dir_hash`,
 1 AS `name_hash`,
 1 AS `up_time`,
 1 AS `file_len`,
 1 AS `v_dur`,
 1 AS `file_dir`,
 1 AS `file_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tv_video_base_file`
--

DROP TABLE IF EXISTS `tv_video_base_file`;
/*!50001 DROP VIEW IF EXISTS `tv_video_base_file`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tv_video_base_file` AS SELECT 
 1 AS `v_nid`,
 1 AS `wd_code`,
 1 AS `ve_title`,
 1 AS `v_title`,
 1 AS `v_detail`,
 1 AS `v_epi`,
 1 AS `v_smy`,
 1 AS `v_class`,
 1 AS `v_type`,
 1 AS `v_url`,
 1 AS `ig_land`,
 1 AS `ig_port`,
 1 AS `ig_url`,
 1 AS `v_area`,
 1 AS `v_year`,
 1 AS `v_lang`,
 1 AS `v_word`,
 1 AS `v_show`,
 1 AS `v_score`,
 1 AS `v_writer`,
 1 AS `v_dire`,
 1 AS `v_star`,
 1 AS `md_time`,
 1 AS `vc_title`,
 1 AS `v_ratio`,
 1 AS `v_dur`,
 1 AS `file_path`,
 1 AS `file_md5`,
 1 AS `file_len`,
 1 AS `server_ip`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_user_file_dnv`
--

/*!50001 DROP VIEW IF EXISTS `v_user_file_dnv`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_user_file_dnv` AS select `u`.`uf_id` AS `uf_id`,`u`.`file_id` AS `file_id`,`u`.`usr_id` AS `usr_id`,`u`.`usr_type` AS `usr_type`,`u`.`dir_hash` AS `dir_hash`,`u`.`name_hash` AS `name_hash`,`u`.`up_time` AS `up_time`,`v`.`file_len` AS `file_len`,`v`.`v_dur` AS `v_dur`,`d`.`file_dir` AS `file_dir`,`n`.`file_name` AS `file_name` from (((`t_user_file` `u` left join `t_video_file` `v` on((`u`.`file_id` = `v`.`file_id`))) left join `t_user_file_dir` `d` on((`u`.`dir_hash` = `d`.`dir_hash`))) left join `t_user_file_name` `n` on((`u`.`name_hash` = `n`.`name_hash`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tv_video_base_file`
--

/*!50001 DROP VIEW IF EXISTS `tv_video_base_file`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tv_video_base_file` AS select `u`.`v_nid` AS `v_nid`,`u`.`wd_code` AS `wd_code`,`u`.`ve_title` AS `ve_title`,`u`.`v_title` AS `v_title`,`u`.`v_detail` AS `v_detail`,`u`.`v_epi` AS `v_epi`,`u`.`v_smy` AS `v_smy`,`u`.`v_class` AS `v_class`,`u`.`v_type` AS `v_type`,`u`.`v_url` AS `v_url`,`u`.`ig_land` AS `ig_land`,`u`.`ig_port` AS `ig_port`,`u`.`ig_url` AS `ig_url`,`u`.`v_area` AS `v_area`,`u`.`v_year` AS `v_year`,`u`.`v_lang` AS `v_lang`,`u`.`v_word` AS `v_word`,`u`.`v_show` AS `v_show`,`u`.`v_score` AS `v_score`,`u`.`v_writer` AS `v_writer`,`u`.`v_dire` AS `v_dire`,`u`.`v_star` AS `v_star`,`u`.`md_time` AS `md_time`,`u`.`vc_title` AS `vc_title`,`v`.`v_ratio` AS `v_ratio`,`v`.`v_dur` AS `v_dur`,`v`.`file_path` AS `file_path`,`v`.`file_md5` AS `file_md5`,`v`.`file_len` AS `file_len`,`v`.`server_ip` AS `server_ip` from (`_992_6vhao_st_video_base` `u` left join `t_video_file` `v` on((`u`.`v_nid` = `v`.`file_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-15 21:28:50
