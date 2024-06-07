-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mpjt
-- ------------------------------------------------------
-- Server version	8.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `free_board`
--

DROP TABLE IF EXISTS `free_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `free_board` (
  `fr_idx` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) NOT NULL,
  `fr_title` varchar(45) NOT NULL,
  `fr_cont` varchar(45) NOT NULL,
  `fr_visitnum` int NOT NULL DEFAULT '0',
  `fr_like` int NOT NULL DEFAULT '0',
  `fr_upd` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fr_regd` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fr_ofile` varchar(45) DEFAULT NULL,
  `fr_sfile` varchar(45) DEFAULT NULL,
  UNIQUE KEY `fr_idx_UNIQUE` (`fr_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `free_board`
--

LOCK TABLES `free_board` WRITE;
/*!40000 ALTER TABLE `free_board` DISABLE KEYS */;
INSERT INTO `free_board` VALUES (1,'hong1','종각에 텐동집도 있었네요','맛은 그럭저럭입니다.\r\n근데 가게는 1층인데 화장실이 8층에 있어요',10,2,'2024-05-29 08:23:59','2024-05-29 03:12:46','KakaoTalk_20240529_120345194_09.jpg','20240529_121246471.jpg'),(2,'hong3','집에 가고싶다...........','제곧내',2,0,'2024-05-29 05:52:38','2024-05-29 05:10:05',NULL,NULL),(3,'hong4','닭한마리가 땡기는 오후^^','학원 근처 닭한마리집 추천해주세요~',8,0,'2024-05-29 05:48:35','2024-05-29 05:25:33',NULL,NULL),(4,'hong15','다들 점심 뭐 드시나요?','전 오늘 육회비빔밥입니다',4,1,'2024-05-29 05:49:31','2024-05-29 05:40:40','KakaoTalk_20240529_120345194_07.jpg','20240529_144040356.jpg'),(5,'hong10','양평 찐맛집 추천합니다ㄷㄷㄷ','태국음식점 몽키가든 대존맛',38,2,'2024-05-29 06:24:47','2024-05-29 05:42:02','KakaoTalk_20240529_120345194_06.jpg','20240529_14422750.jpg'),(6,'hong2','점메추 받아요','어제는 초밥 먹었는데 오늘 뭐먹죠...',5,0,'2024-05-29 06:26:11','2024-05-29 05:44:46','KakaoTalk_20240529_120345194_01.jpg','20240529_144445997.jpg');
/*!40000 ALTER TABLE `free_board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-29 17:59:27
