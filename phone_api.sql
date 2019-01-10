-- MySQL dump 10.15  Distrib 10.0.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: phone_api
-- ------------------------------------------------------
-- Server version	10.0.34-MariaDB-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `readed` int(11) DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (5,'chat',1,0,'2018-10-26 10:53:39',0),(6,'chat',1,0,'2018-10-26 10:53:39',0),(7,'chat',1,0,'2018-10-26 10:53:40',0),(8,'chat',1,0,'2018-10-26 10:53:40',0),(9,'русские буквы',1,0,'2018-11-08 04:04:05',0),(10,'chat',1,0,'2018-11-08 07:11:54',0),(11,'chat',1,0,'2018-11-08 07:11:54',0),(12,'chat',1,0,'2018-11-08 07:11:54',0),(13,'chat',1,0,'2018-11-08 07:11:54',0),(14,'chat',1,0,'2018-11-08 07:11:54',0),(15,'chat',1,0,'2018-11-08 07:13:02',0),(16,'chat',1,0,'2018-11-08 07:13:08',0),(17,'chat',1,0,'2018-11-08 07:15:45',0),(18,'chat',1,0,'2018-11-08 07:16:20',0),(19,'chat',5,0,'2018-11-08 07:16:39',0),(20,'Привет\n',5,0,'2018-11-08 07:18:27',0),(21,'Как дела? \n',5,0,'2018-11-08 07:20:11',0),(22,'Лол\n',5,0,'2018-11-08 07:22:38',0),(23,'Привет\n',5,0,'2018-11-08 07:36:35',1),(24,'Как дела? \n',5,0,'2018-11-08 07:55:38',1),(25,'русские буквы',6,0,'2018-11-11 21:48:11',0),(26,'русские буквы',6,0,'2018-11-11 21:48:31',0),(27,'русские буквы',6,0,'2018-11-11 21:48:32',0),(28,'русские буквы',6,0,'2018-11-11 21:48:32',0),(29,'русские буквы',6,0,'2018-11-11 21:48:32',0),(30,'русские буквы',6,0,'2018-11-11 21:48:32',0),(31,'русские буквы',6,0,'2018-11-11 21:48:33',0),(32,'русские буквы',6,0,'2018-11-11 21:48:33',0),(33,'русские буквы',6,0,'2018-11-11 21:48:33',0),(34,'русские буквы',6,0,'2018-11-11 21:48:34',0),(35,'русские буквы',6,0,'2018-11-11 21:48:34',0),(36,'русские буквы',6,0,'2018-11-11 21:48:34',0),(37,'русские буквы',6,0,'2018-11-11 21:48:35',0),(38,'русские буквы',6,0,'2018-11-11 21:48:37',0),(39,'русские буквы',6,0,'2018-11-11 21:48:37',0),(40,'русские буквы',6,0,'2018-11-11 21:48:37',0),(41,'русские буквы',6,0,'2018-11-11 21:48:38',0),(42,'русские буквы',6,0,'2018-11-11 21:48:38',0),(43,'русские буквы',6,0,'2018-11-11 21:48:38',0),(44,'русские буквы',6,0,'2018-11-11 21:48:39',0),(45,'русские буквы',6,0,'2018-11-11 21:48:39',0),(46,'русские буквы',6,0,'2018-11-11 21:48:39',0),(47,'русские буквы',6,0,'2018-11-11 21:48:40',0),(48,'русские буквы',6,0,'2018-11-11 21:48:40',0),(49,'Кто это тут про русские буквы затирает? \n',6,0,'2018-11-11 21:52:25',1),(50,'Прикольно\n',6,0,'2018-11-11 22:12:01',1),(51,'Чо к чему? \n',6,0,'2018-11-11 22:12:39',1);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `second_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `tmp_code` int(200) DEFAULT NULL,
  `b_date` date NOT NULL,
  `active` int(2) NOT NULL DEFAULT '1',
  `id_phone` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (6,'Попытаев','Владимир','Николаевич','showjackajacksona@gmail.com','89068513783','9ab491fd27c91d99c54a649da14203d3',4842,'1998-06-16',1,1),(7,'Попытаев','Владимир','Николаевич','pingvin166@yandex.ru','89068513784','fcea920f7412b5da7be0cf42b8c93759',NULL,'1998-06-16',1,1),(8,'Лебедев','Илья','Николаевич','lebedev@gmail.com','89962295853','fcea920f7412b5da7be0cf42b8c93759',NULL,'1998-02-08',1,1);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(100) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `query` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails`
--

DROP TABLE IF EXISTS `mails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(150) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails`
--

LOCK TABLES `mails` WRITE;
/*!40000 ALTER TABLE `mails` DISABLE KEYS */;
INSERT INTO `mails` VALUES (1,'Владимир, привет.','2019-01-10 17:03:54'),(2,'Владимир, Привет','2019-01-10 17:14:41'),(3,'Владимир, ывавыа','2019-01-10 17:16:08'),(4,'Владимир, привет','2019-01-10 17:18:11'),(5,'Владимир, аапр','2019-01-10 17:18:25'),(6,'Владимир, фыв','2019-01-10 17:18:54'),(7,'Владимир, ячс','2019-01-10 17:20:30'),(8,'Владимир, пролд','2019-01-10 17:21:28'),(9,'Владимир, sdfghjkjhgf','2019-01-10 17:22:13'),(10,'Владимир, dfghjk','2019-01-10 17:22:45'),(11,'Владимир, Привет. Ты Крутой.','2019-01-10 17:23:32'),(12,'Владимир, dfghjk','2019-01-10 17:26:40'),(13,'Владимир, cvbnm','2019-01-10 17:27:20'),(14,'Владимир, k','2019-01-10 17:27:47'),(15,'Владимир, Как ты? ','2019-01-10 20:52:44');
/*!40000 ALTER TABLE `mails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_tree`
--

DROP TABLE IF EXISTS `my_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `left_key` int(11) NOT NULL DEFAULT '0',
  `right_key` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `name` varchar(150) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `ip_adress` varchar(100) DEFAULT NULL,
  `type` int(2) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `left_key` (`left_key`,`right_key`,`level`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_tree`
--

LOCK TABLES `my_tree` WRITE;
/*!40000 ALTER TABLE `my_tree` DISABLE KEYS */;
INSERT INTO `my_tree` VALUES (1,1,36,1,'Россия',NULL,NULL,0,0),(2,2,21,2,'Уральский ФО','/uploads/photo_2018-06-06_15-04-45.jpg','',0,0),(3,22,29,2,'Центральный ФО','/uploads/photo_2018-06-06_15-04-00.jpg','',0,0),(4,30,35,2,'Северо-Западный ФО',NULL,NULL,0,0),(5,3,12,3,'Челябинская область',NULL,NULL,0,0),(6,23,24,3,'Московская область',NULL,NULL,0,0),(7,25,26,3,'Воронежская область',NULL,NULL,0,0),(8,27,28,3,'Белгородская область',NULL,NULL,0,0),(9,31,34,3,'Архангельская область',NULL,NULL,0,0),(19,8,9,4,'Магнитогорск','/uploads/google_translate_copyrighted-512.png','192.168.0.130:3009',2,2),(24,13,16,3,'Свердловская область','/uploads/logo.png','',0,0),(26,17,20,3,'Новый элемент',NULL,NULL,0,0),(27,18,19,4,'Новый элемент',NULL,NULL,0,0),(30,32,33,4,'Новый элемент','/uploads/photo_2018-06-06_15-04-45.jpg','',0,0),(32,14,15,4,'Новый элемент',NULL,NULL,0,0);
/*!40000 ALTER TABLE `my_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT 'Новая новость',
  `photo` varchar(200) NOT NULL DEFAULT 'no_photo.jpg',
  `body` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (3,'Так странно.','/uploads/homework.png','<abz>От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? От куда же этот контент? </abz><img src=\"/uploads/polyomino.png\">');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(200) NOT NULL,
  `product` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `os` varchar(100) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES (1,'1234','redmi note 4x','xiaomi','android','192.168.0.134',1);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'/uploads/title_img.jpg'),(2,'/uploads/title_img2.jpg');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('-aytWTO_4yMkjh5HcCwFjXZZj--zk6wO',1547233131,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('-rc8AAJCXHyC99wKBLcM52a-a6S2pLXM',1547233121,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('-rjqhlOg1TPjqGYOPc61vnhvhVqGtZ_q',1547233385,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('0EAAmEtAlHLUIjMEehsXEX1vI6mI18LP',1547233335,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('0Ik1ktRB2Cmh_Xt9IdHla_r0mKJjHOwl',1547233290,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('0ZR4ddgKxib1PHO2tmiwiqjkfR7eb4zc',1547233406,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('0kg7aDNxKmVkMb1MPL3R0JwPYaV_Z8Km',1547233173,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('0tTTDijk0Cj8eKVnaeSx2BRb6DdT5DYy',1547233215,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('1422O_27hTcIfIO35mvJEasieGy-W8CU',1547233275,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('1R-JW-V6Jt5QpWGRtJgvojcXsE4_ENXv',1547233380,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('1aouORp1PLLoERdqebrLzb0fcr5ZTJ91',1547233370,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('25DaEJCtCrwyZiCBynyABwed1_F8rsn0',1547233136,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('2BwgxoIlIRkVMOob9YRIGI3P5LEceeu8',1547233058,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('2LF4KfSVYnLEHIGV8D6wZeB8CcSdYZpS',1547233177,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('2VUO8QG4Xy8-hgjj1cVBypuWncEsglka',1547233111,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('2Z-Cic6XD9VcwAmJKedMl5TLfPf6Mexg',1547233208,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('2a1nRhULdqcO7vTSdqw2A6AauoOZygYu',1547233360,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('2yYWg1neoIyAAR3VJ7K5rg9JD8_xhuUd',1547233335,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('4KMU7y5nAbxeQ8GxwW8BtIO7ZSrq138W',1547233230,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('4Y10e-AndsxiBVSgcgOxY3bmKTpuVTp5',1547233285,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('4iwN8wA58IqqHfe_rpsX7SEgNVO1syHu',1547233096,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('4s2fzRnqzDeIguHr20SuZQ1iuNtkw1cU',1547233290,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('5F1Mo2HXLGQ1-AVSxUNDsWxyQdo91pwf',1547233411,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('7Lvky2LBkVqupD51Z_KvNybhvkDklmkn',1547233280,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('7jOljxq2PMeY9Hc5GKHNomT2VV3a5ugn',1547233390,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('7rr_sADD8uNBXl1dzJDY71wE8pmCTn-J',1547233154,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('7vlLkylbtU4buhAg3BsqlgeyZm0n0x7l',1547220521,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('85UwN55BS0sSuImTuuztpk7CaR5ThNjp',1547233330,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('87imWObOQKgTz4phTBp1srDctVQQmg3R',1547233126,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('8YhKjiG3G8VOLvfO_XuHPMp8M6pD83E9',1547233208,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('98Be8q16zbkbxnbtbOdC2JQQlO2M4t5g',1547233220,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('9MByxWsIpltEMl0oK8nCusWgRlnVfIvz',1547233370,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('9YT5KC-HyyrYE-LAhUMV7M5FJdSo_wWL',1547233350,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('B9t6krTe6gYjiu8doUud04RsFWcqlph4',1547233305,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('DAkUH5SMEh7jN6QFhDH7tFai2Ah4QwxS',1547233086,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('DZAciH63AJdl_qQK7f9MmGU7D83O8VY8',1547233215,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('E9Feu9a_vjYXlO4BSScdyQp1wctJQU6b',1547233385,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('EKIzH90wqqZ3jV7TyVSaONa3hv-gVTRR',1547233260,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('EL9p_2yduF793AuQ_mpHmcSTFsW2tXwl',1547233116,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('EwSiypqDGVBq4xsUB7gsD8b70ozDl5lU',1547233365,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('FBN6VsginV7FBCv_FtKV_JeeXURRj1lL',1547233058,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('FXMswpVd1aWVkR1yhiqWLym9vjBxX5C6',1547233250,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('FqgSytPJ2GrqoWZT5GR5ivsyapSBEzVY',1547233152,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('FtFy7WyTdHpdf90ENcU37ZirNdcsOIac',1547233189,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('G6AWa9o_dRywdQ4VpDSFX7kve-Km9wOO',1547233158,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('H6AZDhCiaAaJrHRnUcQviQARPMLl7PXx',1547233360,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('HVVz4Ra2bjvDiHD62oAksAE4dy9FLUTy',1547242936,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('HspyXu4-4Wa9M3G8Tx8B9kbpquGKG1xh',1547233355,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('J5BC_SfnDiamD6LPvXqfNBUpPf3kUg1G',1547233065,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('JZNnrTkSACmfuWaLHIS5vYxHE1okG65t',1547233177,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('JaxzdMitA85f9-SmW8Ho1NLAAONx59dm',1547233152,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('K_K7pw3uo-TTNhUJFixppk-nsVz3D4Zn',1547233060,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('KhisK0jEaBY6udooVfV-QfX2SH5fBxsl',1547233163,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('KxRs3Qi9mRBPgLcNrXrzLuPBi-3zo-tI',1547233375,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('L18CbCGyP6yKk2FkXCLAsXMR1xEjI9Ge',1547233210,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('L3HYHeC7fcD6Ohcru1F0FiiQN4YGsjLm',1547233305,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('LP3fAJZ0ktdY8OL0VS5yiOd29bX5ZFBr',1547233189,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('LR484qFC1fPVW2xKiI40Y_kJBm2kFM4r',1547233225,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('LT2HKss07Mt0gTs3wi_kU9q6VRPkoBK3',1547233111,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('MM6nSqgQbbofT9e09JV-oPUoW6IKHYIz',1547233220,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('N73KGTbEePhhnLeZxXjE-1RCnHvz5kZT',1547233158,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('NK7VY8ZcDNmET-ahyg0jcTLTvB6ETpcU',1547233396,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('OxEBdxd9i-GwDT_Gw5FWEptRKJnj1W9x',1547233320,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('PKqGwZlih5Xnrl6WSJoH4-DaevFlgjIm',1547233235,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('PV0kzdWKrCsEXE1J9i0P3M-dcW2Anjyd',1547233184,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('PenkynlIeH258UU4Av1gyHkuY556eoIv',1547233345,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('PgSpNUDPwiWc1tC16w_IPz6PlJwdYA9j',1547233163,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('Q02Dq-M9gkEZFWYPY45DE89ZLeqCpeEd',1547233406,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('Q4Y2pZWe4Mf0_ngpKN_rirv4HSa1a_cv',1547233179,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('QC-LZa3LSplp6IM8chXU5R1kTk4egrjm',1547233235,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('QUcOZV0wh0T2USwVWeaZLMjl8z_6wl60',1547233081,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('QVUzsAgZAN8rQjshrF8geCOWVIWEtLF5',1547233300,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('Sm1pW5h9eY97B1_Lzv6Jfh4UCO99K7S-',1547233325,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('StkcM05hkfT_-cuv_q_ofEiYUHf9HchD',1547233240,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('TiyPw50KxIu6ZtHZt7QpRcmHJu9_1y3v',1547233365,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('TrnxgDv1TdzFoesva9rsddeii5MNUFUw',1547233101,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('U2RcU_3G1XOlriOMpK9ccuIxfv96wRLo',1547233350,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('UWbze12vCIM-WYcK2SORbDQzUE9OgRR9',1547233240,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('Uf2zXRNesjk79fBOG4KGocS7i_bib9uW',1547233141,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('UqzA2T47qrTKany2nhnvy7N8JIR99n_A',1547233401,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('VZbS6ztfH0jx17ZewMAtnbXZOn1XHoD1',1547233270,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('Vhz1vr8labpXE15AQs8k8nuXNPQrYeuG',1547233091,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('VnvClkBFAPHjOM3uCGc4f3JLkOfrTkee',1547233411,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('Wpe9ggpD2RQxYHKPuokqLhJ4LEvvlXGr',1547233211,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('Y-W8GLl7C2T7AS3vIQwhL4boMIkbUQSE',1547233280,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('YEeyEg-ZCcBl8MWmAa9JdL9ujdI8y5Aa',1547233058,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('Zq1-CcHt_MgwAaByFEE42aX8Ty09aF4Q',1547233211,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('ZrpTY7J06IjaK7vEVxk-y3neWclWScEU',1547233325,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('ZyeoCIhQ-IlFvP8WBRet3xin7Bf0ju6H',1547233116,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('_JMwoNOVgNgp84b-ZOU3e7b_J3IuBtTP',1547233380,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('_O_WGHOeAr4-AMwYPxC0Uvv9h5Wo4-aU',1547233315,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('_tBX-Rxw7d3OXEqzOCWQCjF-P-5CbHsx',1547233265,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('a6p8RObmh0YiXefX7Cm0yJbA17U6boZh',1547233173,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('bAH7gGgnAla9MtqR5Q44RRkOOWQWLBpq',1547233168,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('bL_iMsBusUgz2KHe1sKZ3ClhGzaVtege',1547233225,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('bsgErrk8QtHEvGz_8MT3VERBWZlqP-BF',1547233250,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('c69_GD5heGgz4pK6nx1Gi6Xt65bXB3ED',1547233131,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('ceTXwap2dTOu5lkCz_x15B9fx5z7YR3u',1547233310,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('d93JMG2V5VzJ_yH6otV9yV7WyAbXFNSI',1547233058,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('d9Sof-mg433GsNaW0QcaRO7mwvR0ALId',1547233245,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('dUzvWwnSdZvyyKUrB5gbYB8n_Vc0VoCK',1547233401,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('dv0LW7GkFzUJj9SwgMgoL_d90du32SZF',1547233071,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('eARhNCVbVoxQa_mTNQsmOil29761kvMA',1547233310,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('emoeU4jBsBrI7MPIfbZu7Xjdr7i0mK8_',1547233168,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('erUJJhsiWR_2fR43JoOBxcLaZs0UjqhD',1547233210,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('f1Afy2L1t75TgPAYpGbR7hPsEIBZP7Y0',1547233255,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('fXA3J1pjjig5qNkP2gs8vFeYBLlYxFhe',1547233060,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('fc_PDEbMTh1eTGQk2Lc8qTwiXWT2vXPn',1547233320,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('ftrnjraTsjJkpok2_n6vC7kNHZpEWrhp',1547233086,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('g5PNSE-70dcKQHsB3AX76lDDNbTPWq46',1547233300,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('gJubiH-fm0ATCAgkEq5R32Mo6yMsg8EI',1547233106,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('gdatpAwcFJJen7BlBXj6vqDdM_8_oqp_',1547233152,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('hYg5e0oOp49tRytUUzGzwqnTAPYP5K0e',1547233121,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('hyP-txGhrpMKKUHYO1Bo6YHUgrgfrlDX',1547233076,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('iE73FX8Q_uEajw_P0t6PebiQytTt2eXi',1547233390,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('iohzs2X55DJOZnpauE9nADh0l0XPKScS',1547233295,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('j6pWJUlVjWk6PRSseZxDyh6_FP7hZx4S',1547233255,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('jt_zWAfgk8YGro6yfZiNFFkp40DCtQTo',1547245314,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"auth\":false,\"phone\":0}'),('kHoMRxZI2-GPZYpgoy5xkx2ONad52TAc',1547233136,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('k_Rl4ImMdG-wTmEC3xqWlq-3kEmMHhpK',1547233154,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('l5zIB3BYwki8eyIiTk2-NJ7R-kM8ageE',1547233184,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('lVlXy7f6nuGvPB4gVurSUjOqR9mJVW0u',1547233265,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('lwftddY_AVKNaQQKTKtVSP04MOfivzDd',1547233260,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('mN3hOKH9MfIZZkoxZPqMRmnogjBSKNQc',1547233355,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('mNuv-WCi6mqqr0WaBrzWncFslr0a96pV',1547233106,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('mPRdtbLsLwLqnnu_snOxXVF3EPt_ueyZ',1547233340,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('n-z6F5P6Jp6sIzGUx31V9S94RpRGAhaY',1547233076,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('nxgotrvPSTQpEVchiMkqSqIV05bk6MDS',1547233285,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('pg-JTuGIXKCooSrsrFvJ6Ywa1hpW0m1i',1547233395,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('qBmDDnd_HN-Cs3K2Xac5x8If1O07OxDs',1547233340,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('qTSM643FrpYVtFxu9aUj2wRcwqXO2WLY',1547233071,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('qWh2sqN0nTvx2hwFe07DDWKsEpQYE6Sg',1547233096,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('qbPEjT_ssF4qyKTv3a4WRYzc0waxDN0Q',1547233081,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('qnt3lSw5rt6Rd_QDlJSuLnOLcUge9cOG',1547233091,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('rcRO6SV6CwNWJyVuDs_0d9JdWWTd28eB',1547233245,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('t6blHhKRtcgFl9ug1rdVrcc_OhK1oE-J',1547233066,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('tR9GVU4KXdrq_4jKlGwkDCE90TVZrBw7',1547233295,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('uTqERqZWsxjECiu-NB0TR8GDUxbEZ_yU',1547233315,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('usjZkMVZ7vGRHJPLZQ8ut-o6cP8IBYzS',1547233275,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('v6g0StxBAocbvmWZTNC1D6ElcBhsOH-Z',1547233141,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('vTiOLYAa9Cq15q0rZ_-7UlcLIPY_DvAb',1547233345,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('vd88S7v5Ia5fk1seSv_8SnKJhKEdgqZf',1547233152,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('vqjGptCysdj10dFBWvMLfRlT5a8wo2Rx',1547233126,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('wMZf9gnwe33bPYkuMeEEUmDo_1rQz5ck',1547233230,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('wWGYQYzr0AABqBEtas_eVE5nzmdFazog',1547233101,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('wk48tEXZbmXbDVHDcH5Jtu6WJo4R3dD3',1547233270,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('wpAk9Zs5F5vkOjs_ZG2K5iYvFDirOfoW',1547233146,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('xUqIZmzZKX7vmRFUi0g_XzjTU_2pNXDA',1547233146,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('xZ_iVnAxrN7RiGkkB3IdG_c7uU3bG4eA',1547233179,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('y0vBLfOEh0F1EzueKOWoKad-TFA-FURT',1547233174,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('ynN2g0pHdADL1izjG0aJvfZyr6ojyOWZ',1547233375,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('z4SqKCL2UTwtnvIPutvcw_07_2zTdvk1',1547233330,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('zyXLryY8_-QMihp6XmTw1nvmkVs1FZmz',1547233174,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `second_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `tmp_code` int(200) DEFAULT NULL,
  `b_date` date NOT NULL,
  `active` int(2) NOT NULL DEFAULT '1',
  `id_phone` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'asd','asd','asd','asd@asd.ry','123','1231234',6067,'2018-04-14',0,0),(5,'йцу','фыв','ячс','asd@asd.ry','123456789','c20ad4d76fe97759aa27a0c99bff6710',2684,'2018-04-01',0,0),(7,'Иванов','Иван','Иванович','pingvin166@yandex.ru','89068513780','e10adc3949ba59abbe56e057f20f883e',NULL,'1998-06-16',1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-11  3:25:57
