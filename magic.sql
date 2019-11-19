-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: magic
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `consumers`
--

DROP TABLE IF EXISTS `consumers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumers`
--

LOCK TABLES `consumers` WRITE;
/*!40000 ALTER TABLE `consumers` DISABLE KEYS */;
INSERT INTO `consumers` VALUES (1,'Patrick','$2y$10$Mv6GV27TLQoq0D3QOoUuuurtt6Ye1zhc2mkfutXse3zS2WJb8smLS',690,'2019-11-12 17:32:58','2019-11-14 00:38:06','Kn2uezL8UH'),(2,'Sponge Bob','$2y$10$cKFXtlWfVadi002/yLLFFO6.HOMCvoztZuHYS5VID7HDW7BlPCoQ6',2000,'2019-11-12 17:33:26','2019-11-12 17:33:26',NULL),(3,'Sandy','$2y$10$ipV.pZjXKtPml5.C7s9JbO0HdaVwRZQ8rmckrlpIck3OlTVbcG5m.',330,'2019-11-12 17:33:36','2019-11-13 01:15:24','eyb4ArbogD'),(4,'Octopus','$2y$10$nV3HLcVTqQNKnIytFwXQGei6UPcyGChY7XT5FScWxPAfP7Er.WYhm',2000,'2019-11-12 18:29:22','2019-11-12 18:31:02',NULL),(5,'Octopu','$2y$10$wgV529bQD6IPM6IdHzMiYOpUcUNcy6Ya99OD3R1ONxyUg/bG.Ynga',2000,'2019-11-12 22:07:30','2019-11-13 04:01:49',NULL),(6,'qqqqm','$2y$10$jwseZmkOAi/FHzKU3d7Re.8qWZ58tVikatAb.nWoZPb7acpgB5YKm',1900,'2019-11-13 01:20:12','2019-11-13 23:50:15','iOFjbyOvHY'),(7,'5566','$2y$10$B.6s1FdRID7Dro2j1iwMd.qHX6fmzbmcfqKi3DwpW.8.lHEEVwBB6',1700,'2019-11-13 04:02:03','2019-11-14 06:20:58','PuzteA1wPR'),(8,'threegggggg','$2y$10$btP4DYjFWQtv/FfVjFWCrOm11aS5UYUuG8fbKi2/SLaHCjlV8RhZa',2000,'2019-11-13 17:27:25','2019-11-13 17:27:25',NULL);
/*!40000 ALTER TABLE `consumers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumption_records`
--

DROP TABLE IF EXISTS `consumption_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumption_records` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `consumer_id` int(11) NOT NULL,
  `magic_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `magic_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `consumption_records_magic_id_consumer_id_unique` (`magic_id`,`consumer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumption_records`
--

LOCK TABLES `consumption_records` WRITE;
/*!40000 ALTER TABLE `consumption_records` DISABLE KEYS */;
INSERT INTO `consumption_records` VALUES (1,10,1,20,'Shield','1','2019-11-12 04:51:53','2019-11-12 04:51:53'),(2,3,1,20,'Shield','1','2019-11-12 17:50:03','2019-11-12 17:50:03'),(3,3,3,50,'Stalac','2','2019-11-12 18:27:47','2019-11-12 18:27:47'),(4,3,5,100,'Heal','3','2019-11-12 18:29:45','2019-11-12 18:29:45'),(5,3,4,60,'Fire Arrow','2','2019-11-12 19:06:07','2019-11-12 19:06:07'),(8,3,8,170,'Curse: Blind','3','2019-11-12 19:15:25','2019-11-12 19:15:25'),(9,3,6,120,'Blessed Armor','3','2019-11-12 19:40:31','2019-11-12 19:40:31'),(13,3,7,150,'Turn Undead','3','2019-11-13 00:52:53','2019-11-13 00:52:53'),(16,1,4,60,'Fire Arrow','2','2019-11-13 00:54:08','2019-11-13 00:54:08'),(17,1,3,50,'Stalac','2','2019-11-13 00:54:50','2019-11-13 00:54:50'),(18,3,10,1000,'Blizzard','8','2019-11-13 01:15:24','2019-11-13 01:15:24'),(19,6,1,100,'magic_holly_weapen','1','2019-11-13 23:50:15','2019-11-13 23:50:15'),(20,1,1,100,'magic_holly_weapen','1','2019-11-14 00:36:37','2019-11-14 00:36:37'),(21,1,2,200,'magic_flashing','1','2019-11-14 00:36:37','2019-11-14 00:36:37'),(25,1,5,400,'magic_touch','2','2019-11-14 00:38:06','2019-11-14 00:38:06'),(26,1,6,500,'magic_teleport','2','2019-11-14 00:38:06','2019-11-14 00:38:06'),(27,7,1,100,'magic_holly_weapen','1','2019-11-14 00:40:48','2019-11-14 00:40:48'),(28,7,2,200,'magic_flashing','1','2019-11-14 00:40:48','2019-11-14 00:40:48');
/*!40000 ALTER TABLE `consumption_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magics`
--

DROP TABLE IF EXISTS `magics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `magic_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magics`
--

LOCK TABLES `magics` WRITE;
/*!40000 ALTER TABLE `magics` DISABLE KEYS */;
INSERT INTO `magics` VALUES (1,'magic_holly_weapen','1',100,'2019-11-13 23:45:29','2019-11-13 23:45:29','W2Rq3owojHXREuuGIlkp0v3hl9F1TmLC4tLVT5Dk.jpeg'),(2,'magic_flashing','1',200,'2019-11-13 23:47:45','2019-11-14 00:00:56','pS7Zz3LTIrs5fmcDcbSNlqKV5TnLKUoIeMRjVM8j.jpeg'),(3,'magic_cure_posion','1',200,'2019-11-13 23:48:49','2019-11-13 23:48:49','h2LmFpLrLfAxGzW3HX8xkQ2E0hR5zX4VqiZKmMIn.jpeg'),(4,'magic_wind','2',400,'2019-11-13 23:50:31','2019-11-13 23:50:31','Sw93UGUtqC1TG9SRZRGzz1nKGzhm8rIUwSDH7vLo.jpeg'),(5,'magic_touch','2',400,'2019-11-13 23:51:36','2019-11-13 23:51:36','euWuAMK4IR8wXINDNZitsnujBMw0sEJ6j86VIYKe.jpeg'),(6,'magic_teleport','2',500,'2019-11-13 23:53:46','2019-11-13 23:53:46','o1KoaA4ry4GptoAhCncjyMEba0R2NI6U8uUbs3hE.jpeg'),(7,'magic_shield','3',600,'2019-11-13 23:56:42','2019-11-13 23:56:42','tihUPex78MwqCDIxvkuUI8fTbfHf2z3nCw892uJ5.jpeg'),(8,'magic_light','3',600,'2019-11-13 23:58:06','2019-11-13 23:58:06','ur46P5AmPmBgOPdqcbKI38aGtEURAbxaKyHG1ocS.jpeg'),(9,'magic_ice_dagger','3',800,'2019-11-13 23:59:08','2019-11-13 23:59:08','fyB5fzikVgmV3SR412DvksvJX4IuDNyuX0dBdmO1.jpeg');
/*!40000 ALTER TABLE `magics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (11,'2019_11_03_144755_create_consumers_table',1),(12,'2019_11_03_160242_create_consumption_records_table',1),(13,'2019_11_04_012238_create_magics_table',1),(14,'2019_11_04_012558_create_owners_table',1),(15,'2019_11_07_032521_add_paid_to_consumption_records',1),(24,'2019_11_12_053928_add_paid_to_magics',2),(25,'2019_11_12_082915_add_paid_to_consumers',2),(26,'2019_11_12_083101_add_paid_to_owners',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owners`
--

DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owners`
--

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
INSERT INTO `owners` VALUES (1,'Crab','$2y$10$K7oSH1hp4xCpP3nufawABO1DmwNtIr8K5Vk.qOAKUMTVOkmtgY6Yi','2019-11-12 02:22:25','2019-11-12 04:36:08','5LtodgAZzo'),(2,'Shark','$2y$10$JHreJ976S8haZQPNLcE7eu/uotnnU7t1e/1ELKuzbVKxdbtpavt/G','2019-11-12 02:22:32','2019-11-13 23:08:47','KmXmNZwV84');
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-15 20:22:12
