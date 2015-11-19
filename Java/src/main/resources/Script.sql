-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Age` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'25','2015-11-19 12:16:22',0,'Петя'),(2,'18','2015-11-19 12:38:44',1,'Вася'),(3,'10','2015-11-19 12:39:01',0,'Ivan'),(4,'13','2015-11-19 12:39:12',0,'Андрей'),(5,'20','2015-11-19 12:39:29',0,'Ирина'),(6,'18','2015-11-19 12:39:45',0,'Марина'),(7,'18','2015-11-19 12:55:38',1,'Nikolay'),(8,'24','2015-11-19 12:55:54',0,'Анна'),(9,'27','2015-11-19 12:56:05',0,'Максим'),(10,'46','2015-11-19 12:56:27',1,'Павел Петрович'),(11,'80','2015-11-19 12:56:46',0,'Мистер Х'),(12,'26','2015-11-19 12:57:04',0,'Бешеная Белка'),(13,'13','2015-11-19 12:57:14',0,'Алеша'),(14,'18','2015-11-19 12:57:33',1,'Марина'),(15,'14','2015-11-19 12:58:19',0,'Джон Галт'),(16,'2','2015-11-19 13:09:16',0,'Капустный червь'),(17,'44','2015-11-19 13:09:47',1,'Вин Дизель'),(18,'1','2015-11-19 13:10:10',0,'Тест'),(19,'2','2015-11-19 13:10:20',1,'Тест'),(20,'3','2015-11-19 13:10:29',0,'Test'),(21,'4','2015-11-19 13:10:35',0,'Test'),(22,'24','2015-11-19 13:10:54',1,'Алина'),(23,'1','2015-11-19 13:11:16',0,'Колобок'),(24,'4','2015-11-19 13:11:25',0,'Лиса'),(25,'5','2015-11-19 13:11:45',0,'Тест'),(26,'6','2015-11-19 13:11:57',1,'Тест'),(27,'23','2015-11-19 13:12:15',0,'Мальвина'),(28,'18','2015-11-19 13:12:28',1,'Ксюша'),(29,'40','2015-11-19 13:12:37',0,'Михаил'),(30,'1','2015-11-19 13:12:47',0,'Котлета'),(31,'56','2015-11-19 13:13:28',1,'Александр Друзь'),(32,'50','2015-11-19 13:13:41',0,'Онотоле'),(33,'34','2015-11-19 13:13:57',1,'Жилетка Онотоле'),(34,'100','2015-11-19 13:14:13',1,'Вековой дуб'),(35,'27','2015-11-19 13:14:45',1,'Лионель Месси'),(36,'32','2015-11-19 13:15:05',0,'Гречка'),(37,'16','2015-11-19 13:15:27',1,'Супермен');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-19 13:06:50
