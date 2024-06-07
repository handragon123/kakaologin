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
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `rs_idx` int NOT NULL AUTO_INCREMENT,
  `rs_name` varchar(45) NOT NULL,
  `rs_addr` varchar(45) NOT NULL,
  `rs_num` varchar(45) NOT NULL,
  `rs_hour` varchar(45) NOT NULL,
  `rs_menu` varchar(45) DEFAULT NULL,
  `rs_price` varchar(45) DEFAULT NULL,
  `rs_type` varchar(45) DEFAULT NULL,
  `rs_rating` varchar(45) DEFAULT NULL,
  `rs_comment` varchar(45) DEFAULT NULL,
  `rs_views` int DEFAULT NULL,
  `rs_like` int DEFAULT NULL,
  `rs_reviews` int DEFAULT NULL,
  `rs_rank` int DEFAULT NULL,
  `rs_upd` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rs_regd` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rs_img` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`rs_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'청킹마마','서울 종로구 우정국로2길 29 2~3층','0507-1392-0663','11:00-23:00','청킹 양지 우육면','12,000','중식','5','가격대는 있지만 모든 메뉴가 맛있는 곳',NULL,NULL,NULL,NULL,'2024-05-29 02:59:21','2024-05-12 18:55:18','https://ldb-phinf.pstatic.net/20231226_290/1703576241237FQIuE_JPEG/231226_%C3%BB%C5%B7%B8%B6%B8%B6_%C8%CC%B1%C5%C0%CC%B9%CC%C1%F6_copy.jpg'),(2,'반쿤콴 비케이케이','서울 종로구 종로10길 20 3층','0507-1447-1688','11:00 - 22:00','새우팟타이','14,800','세계음식','4','종각 안의 작은 태국!',NULL,NULL,NULL,NULL,'2024-05-29 02:59:11','2024-05-16 17:48:23','https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20220530_129%2F16538959599885TrSI_PNG%2F1.png'),(3,'종각밥상','서울 종로구 종로9길 11 1층','0507-1357-1070','11:00 - 22:00','한우육회비빔밥','10,000','한식','4','육회가 잔뜩 올라간 비빔밥 맛집',NULL,NULL,NULL,NULL,'2024-05-29 02:59:08','2024-05-16 22:53:49','https://search.pstatic.net/common/?src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMzAzMDdfMjI4%2FMDAxNjc4MTkwOTQyNDEx.pCgaP0RzyvtQGDTsZakT9XSLQt3FYQdIs_IUWGwbOtgg.jBlmoCdFuB_3z8Jc5YHysJNlUVFgqJ-nmM_Yd17zjUog.JPEG%2F20230307_125412.jpg'),(4,'황소고집','서울 종로구 청계천로 75-2','02-722-5747','10:30-21:00','고추장불고기백반','8,000','한식','5','숯불에 구워서 나오는 고추장 불고기 백반',NULL,NULL,NULL,NULL,'2024-05-29 02:59:06','2024-05-29 02:37:01','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDAxMDRfMTAz%2FMDAxNzA0MzM1NDcwMDEw.fcaOBoBk_-GXcIXq0dQNxsiuYt7X4t3rjfRqbjKNR9wg.48pjHkY2cBajgROvi46br7s0Hz68oKvmuwAbdU-ltHIg.JPEG.104204303%2FIMG_5136.jpg'),(5,'늘솜김밥','서울 종로구 삼일대로17길 50 1층','02-734-9088','07:30-13:40','숯불제육김밥','4,500','한식','5','인생 최고의 김밥... 1시 이후에는 조기마감 가능성이 높아요',NULL,NULL,NULL,NULL,'2024-05-29 02:59:02','2024-05-29 02:39:30','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA4MTlfMjQ4%2FMDAxNjkyNDU2ODc2MzE1.tW-_d0YF4qbo-Ww5C-scO3C93qRD2hNDZnmuhrsoAgUg.nC7aDBDkBRSnlH6-HI-kXA-ek43znRH90i_-voRSupgg.JPEG.nathalie91%2F1692456689562.jpg'),(6,'종로돈부리','서울 종로구 삼일대로 385','02-722-2384','11:00-21:30','가츠동','9,500','일식','4','깔끔하게 나오는 돈부리 맛집. 1층은 자리가 협소해요',NULL,NULL,NULL,NULL,'2024-05-29 02:59:00','2024-05-29 02:40:45','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDA1MjVfMTU2%2FMDAxNzE2NTk2NDY2MjE2.WA9pT01aOufptgK9AHnqiN9ongvIN5bdTBEG9MDW32cg.uCa580s9suD7yFmIDy6jCDN1i_Kn4JUgcMD-PLpiAecg.JPEG%2FIMG_0789.jpg'),(7,'플러스99','서울 종로구 삼일대로19길 6 서울 종로구 관철동6-4 3층','0507-1367-6693','11:00-22:30','차돌 생쌀국수','11,000','세계음식','4','생쌀국수라 면발이 맛있고 양이 푸짐해요',NULL,NULL,NULL,NULL,'2024-05-29 02:58:58','2024-05-29 02:42:42','https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240501_233%2F1714528917140xCQNP_JPEG%2FIMG_2060.jpeg'),(8,'광희칼국수','서울 종로구 삼일대로15길 13 2층','-','10:30-15:00','고기폭탄 칼국수','10,000','한식','4','국물이 진하고 직화고기가 잔뜩 올라간 칼국수',NULL,NULL,NULL,NULL,'2024-05-29 02:58:55','2024-05-29 02:44:56','https://search.pstatic.net/common/?src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyNDA1MDNfNzMg%2FMDAxNzE0NzM0MzQyNTg4.GyU-KL3RF3hj26SX3GN_0zEQo_M4ZBXKzJs9qz9x4eIg.OFJogHvAquV3XoDmE9gUaAlLuWFOBiYFI2tgJosuhCwg.JPEG%2F20240503_121717.jpg'),(9,'오로지라멘 종각본점','서울 종로구 삼일대로15길 8 1층','02-722-7123','11:00-21:00','돈코츠라멘','9,500','일식','3','학원 근처에서 길 건너지 않고 먹을 수 있는 유일한 라멘',NULL,NULL,NULL,NULL,'2024-05-29 02:58:52','2024-05-29 02:47:29','https://search.pstatic.net/common/?src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyNDAyMDdfMjY3%2FMDAxNzA3MzAwMDYzMTMy.dU4Cgca3WJwh6A6m4ziWo7e3zANh-a7zdUz_3VPp104g.FnC4I271ZP9bu_Q7i2wzNzqfVYdmk3vvUVen2Av_Clcg.JPEG%2F20240207_181724.jpg'),(10,'불백당','서울 종로구 우정국로2길 34 1층 불백당','0507-1422-0130','11:00-20:00','고추장불백','5,500','한식','4','혼밥하기 좋은 가성비 덮밥. 웨이팅할 때가 많아요 ',NULL,NULL,NULL,NULL,'2024-05-29 02:58:50','2024-05-29 02:49:27','https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20210203_66%2F1612281669023cUD90_JPEG%2F8-n3HfclXJnm46lPKWXK9UdP.jpeg.jpg'),(11,'쏘핫마라탕&마라샹궈','서울 종로구 삼일대로17길 47-1 지하 1층','0507-1452-0033','11:00-01:00','마라탕','7,000~','중식','4','종각 마라탕집 중 제일 무난하게 맛있어요. 꿔바로우 맛집',NULL,NULL,NULL,NULL,'2024-05-29 06:11:40','2024-05-29 02:52:09','https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20190921_127%2F15690395318467aYI6_JPEG%2FAydx46cvCwIVXX5MagxX17at.jpeg.jpg'),(12,'인생설렁탕 종각역점','서울 종로구 종로12길 15 1층','02-723-3038','11:00-22:00','인생설렁탕','8,500','한식','3','인생까진 아니고 그냥 설렁탕',NULL,NULL,NULL,NULL,'2024-05-29 02:58:40','2024-05-29 02:58:33','https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20221115_109%2F1668474503306PNhex_JPEG%2F1_%25C0%25CE%25BB%25FD%25BC%25B3%25B7%25B7%25C5%25C1.jpg');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-29 17:59:28
