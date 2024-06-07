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
-- Table structure for table `free_board_comment`
--

DROP TABLE IF EXISTS `free_board_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `free_board_comment` (
  `frc_idx` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) NOT NULL,
  `frc_cont` varchar(500) NOT NULL,
  `frc_like` int NOT NULL DEFAULT '0',
  `fr_idx` int NOT NULL,
  `frc_upd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `frc_regd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `frc_like_users` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`frc_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `free_board_comment`
--

LOCK TABLES `free_board_comment` WRITE;
/*!40000 ALTER TABLE `free_board_comment` DISABLE KEYS */;
INSERT INTO `free_board_comment` VALUES (11,'admin','와우~ 저도 가봐야겠어요!',0,1,'2024-05-29 04:01:44','2024-05-29 04:01:44',NULL),(14,'hong2','내일은 텐동 먹어야겠어요',0,1,'2024-05-29 05:46:20','2024-05-29 05:46:20',NULL),(15,'hong15','푸팟퐁커리 미쳤네...',1,5,'2024-05-29 06:24:46','2024-05-29 05:46:54',NULL),(16,'hong2','한식 드세요',1,6,'2024-05-29 06:26:00','2024-05-29 05:47:13',NULL),(18,'hong3','화장실이 8층이라고요??',0,1,'2024-05-29 05:48:00','2024-05-29 05:48:00',NULL),(19,'hong3','일산칼국수인가  거기밖에 없을걸여',0,3,'2024-05-29 05:48:58','2024-05-29 05:48:58',NULL);
/*!40000 ALTER TABLE `free_board_comment` ENABLE KEYS */;
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
