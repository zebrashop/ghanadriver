-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: ghanadriver
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8 NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'general','SA.html',0,'2018-10-21 08:15:14','2018-10-21 08:15:14',NULL),(2,'defensive-driving','SB.html',0,'2018-10-21 08:15:14','2018-10-21 08:15:14',NULL),(3,'emergency','SC.html',0,'2018-10-21 08:15:14','2018-10-21 08:15:14',NULL),(4,'lines-and-lanes','SD.html',0,'2018-10-21 08:15:14','2018-10-21 08:15:14',NULL),(5,'overtaking','SE.html',0,'2018-10-21 08:15:15','2018-10-21 08:15:15',NULL),(6,'road-junctions','SF.html',0,'2018-10-21 08:15:15','2018-10-21 08:15:15',NULL),(7,'roundabouts','SG.html',0,'2018-10-21 08:15:15','2018-10-21 08:15:15',NULL),(8,'reversing','SH.html',0,'2018-10-21 08:15:15','2018-10-21 08:15:15',NULL),(9,'lights','SI.html',0,'2018-10-21 08:15:15','2018-10-21 08:15:15',NULL),(10,'waiting-and-parking','SJ.html',0,'2018-10-21 08:15:15','2018-10-21 08:15:15',NULL),(11,'warning-signs','SW.html',0,'2018-10-21 08:15:15','2018-10-21 08:15:15',NULL),(12,'prohibitory-signs','SP.html',0,'2018-10-21 08:15:15','2018-10-21 08:15:15',NULL),(13,'mandatory-signs','SM.html',0,'2018-10-21 08:15:15','2018-10-21 08:15:15',NULL),(14,'informatory-signs','SX.html',0,'2018-10-21 08:15:16','2018-10-21 08:15:16',NULL),(15,'vertical-signalling','C1.html',0,'2018-10-21 08:15:16','2018-10-21 08:15:16',NULL),(16,'breakdowns-and-accidents','TB.html',0,'2018-10-21 06:15:14','2018-10-21 06:15:14',NULL),(17,'motorways','TM.html',0,'2018-10-21 06:15:14','2018-10-21 06:15:14',NULL),(18,'railway-level-crossings','TR.html',0,'2018-10-21 06:15:14','2018-10-21 06:15:14',NULL),(20,'contents','Version2015.html',0,'2018-10-21 08:15:16','2018-10-21 08:15:16',NULL);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_name_index` (`name`),
  KEY `categories_tag_index` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'general','interestfield'),(2,'defensive-driving','interestfield'),(3,'emergency','interestfield'),(4,'lines-and-lanes','interestfield'),(5,'overtaking','interestfield'),(6,'road-junctions','interestfield'),(7,'roundabouts','interestfield'),(8,'reversing','interestfield'),(9,'lights','interestfield'),(10,'waiting-and-parking','interestfield'),(11,'warning-signs','interestfield'),(12,'prohibitory-signs','interestfield'),(13,'mandatory-signs','interestfield'),(14,'informatory-signs','interestfield'),(15,'vertical-signalling','interestfield'),(20,'contents','interestfield');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorizations`
--

DROP TABLE IF EXISTS `categorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `categorizable_id` int(10) unsigned NOT NULL,
  `categorizable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categorizations_categorizable_id_categorizable_type_index` (`categorizable_id`,`categorizable_type`),
  KEY `categorizations_category_id_index` (`category_id`),
  KEY `categorizations_categorizable_id_index` (`categorizable_id`),
  KEY `categorizations_categorizable_type_index` (`categorizable_type`),
  CONSTRAINT `categorizations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=479 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorizations`
--

LOCK TABLES `categorizations` WRITE;
/*!40000 ALTER TABLE `categorizations` DISABLE KEYS */;
INSERT INTO `categorizations` VALUES (1,1,1,'App\\Models\\Article'),(2,2,2,'App\\Models\\Article'),(3,3,3,'App\\Models\\Article'),(4,4,4,'App\\Models\\Article'),(5,5,5,'App\\Models\\Article'),(6,6,6,'App\\Models\\Article'),(7,7,7,'App\\Models\\Article'),(8,8,8,'App\\Models\\Article'),(9,9,9,'App\\Models\\Article'),(10,10,10,'App\\Models\\Article'),(11,11,11,'App\\Models\\Article'),(12,12,12,'App\\Models\\Article'),(13,13,13,'App\\Models\\Article'),(14,14,14,'App\\Models\\Article'),(15,15,15,'App\\Models\\Article'),(16,20,20,'App\\Models\\Article'),(18,13,101,'App\\Models\\Question'),(19,10,102,'App\\Models\\Question'),(20,13,103,'App\\Models\\Question'),(21,10,104,'App\\Models\\Question'),(22,6,105,'App\\Models\\Question'),(23,6,106,'App\\Models\\Question'),(24,6,107,'App\\Models\\Question'),(25,6,108,'App\\Models\\Question'),(26,6,109,'App\\Models\\Question'),(27,8,110,'App\\Models\\Question'),(28,2,111,'App\\Models\\Question'),(29,2,112,'App\\Models\\Question'),(30,2,113,'App\\Models\\Question'),(31,1,114,'App\\Models\\Question'),(32,2,115,'App\\Models\\Question'),(33,8,116,'App\\Models\\Question'),(34,5,117,'App\\Models\\Question'),(35,3,118,'App\\Models\\Question'),(36,4,119,'App\\Models\\Question'),(37,13,120,'App\\Models\\Question'),(38,13,121,'App\\Models\\Question'),(39,10,201,'App\\Models\\Question'),(40,12,202,'App\\Models\\Question'),(41,2,203,'App\\Models\\Question'),(42,10,204,'App\\Models\\Question'),(43,6,205,'App\\Models\\Question'),(44,6,207,'App\\Models\\Question'),(45,6,208,'App\\Models\\Question'),(46,6,209,'App\\Models\\Question'),(47,1,210,'App\\Models\\Question'),(48,1,211,'App\\Models\\Question'),(49,2,212,'App\\Models\\Question'),(50,6,213,'App\\Models\\Question'),(51,1,214,'App\\Models\\Question'),(52,1,215,'App\\Models\\Question'),(53,12,216,'App\\Models\\Question'),(54,3,217,'App\\Models\\Question'),(55,2,218,'App\\Models\\Question'),(56,4,219,'App\\Models\\Question'),(57,2,220,'App\\Models\\Question'),(58,10,301,'App\\Models\\Question'),(59,12,302,'App\\Models\\Question'),(60,12,303,'App\\Models\\Question'),(61,13,304,'App\\Models\\Question'),(62,6,305,'App\\Models\\Question'),(63,6,306,'App\\Models\\Question'),(64,6,307,'App\\Models\\Question'),(65,6,308,'App\\Models\\Question'),(66,6,309,'App\\Models\\Question'),(67,2,310,'App\\Models\\Question'),(68,4,311,'App\\Models\\Question'),(69,10,312,'App\\Models\\Question'),(70,2,313,'App\\Models\\Question'),(71,3,314,'App\\Models\\Question'),(72,1,315,'App\\Models\\Question'),(73,2,316,'App\\Models\\Question'),(74,4,317,'App\\Models\\Question'),(75,2,318,'App\\Models\\Question'),(76,10,319,'App\\Models\\Question'),(77,8,320,'App\\Models\\Question'),(78,2,321,'App\\Models\\Question'),(79,10,401,'App\\Models\\Question'),(80,10,403,'App\\Models\\Question'),(81,10,404,'App\\Models\\Question'),(82,6,405,'App\\Models\\Question'),(83,6,406,'App\\Models\\Question'),(84,6,407,'App\\Models\\Question'),(85,6,409,'App\\Models\\Question'),(86,2,410,'App\\Models\\Question'),(87,2,411,'App\\Models\\Question'),(88,1,412,'App\\Models\\Question'),(89,5,413,'App\\Models\\Question'),(90,2,414,'App\\Models\\Question'),(91,13,417,'App\\Models\\Question'),(92,1,418,'App\\Models\\Question'),(93,8,419,'App\\Models\\Question'),(94,2,420,'App\\Models\\Question'),(95,1,421,'App\\Models\\Question'),(96,1,422,'App\\Models\\Question'),(97,1,423,'App\\Models\\Question'),(98,4,508,'App\\Models\\Question'),(99,3,3001,'App\\Models\\Question'),(100,3,3002,'App\\Models\\Question'),(101,8,3003,'App\\Models\\Question'),(102,2,3004,'App\\Models\\Question'),(103,6,3005,'App\\Models\\Question'),(104,10,3006,'App\\Models\\Question'),(105,10,3007,'App\\Models\\Question'),(106,10,3008,'App\\Models\\Question'),(107,13,3009,'App\\Models\\Question'),(108,5,3010,'App\\Models\\Question'),(109,8,3011,'App\\Models\\Question'),(110,2,3012,'App\\Models\\Question'),(111,2,3013,'App\\Models\\Question'),(112,6,3014,'App\\Models\\Question'),(113,2,3015,'App\\Models\\Question'),(114,6,3016,'App\\Models\\Question'),(115,6,3017,'App\\Models\\Question'),(116,6,3018,'App\\Models\\Question'),(117,6,3019,'App\\Models\\Question'),(118,2,3020,'App\\Models\\Question'),(119,5,3021,'App\\Models\\Question'),(120,5,3022,'App\\Models\\Question'),(121,2,3023,'App\\Models\\Question'),(122,1,3024,'App\\Models\\Question'),(123,12,3025,'App\\Models\\Question'),(124,6,3026,'App\\Models\\Question'),(125,3,3027,'App\\Models\\Question'),(126,5,3028,'App\\Models\\Question'),(127,5,3029,'App\\Models\\Question'),(128,8,3101,'App\\Models\\Question'),(129,2,3102,'App\\Models\\Question'),(130,2,3103,'App\\Models\\Question'),(131,2,3104,'App\\Models\\Question'),(132,8,3105,'App\\Models\\Question'),(133,3,3106,'App\\Models\\Question'),(134,8,3107,'App\\Models\\Question'),(135,3,3108,'App\\Models\\Question'),(136,5,3109,'App\\Models\\Question'),(137,4,3110,'App\\Models\\Question'),(138,1,3111,'App\\Models\\Question'),(139,2,3112,'App\\Models\\Question'),(140,2,3113,'App\\Models\\Question'),(141,5,3114,'App\\Models\\Question'),(142,5,3115,'App\\Models\\Question'),(143,3,3116,'App\\Models\\Question'),(144,2,3117,'App\\Models\\Question'),(145,1,3118,'App\\Models\\Question'),(146,1,3119,'App\\Models\\Question'),(147,3,3120,'App\\Models\\Question'),(148,2,3121,'App\\Models\\Question'),(149,5,3122,'App\\Models\\Question'),(150,1,3123,'App\\Models\\Question'),(151,10,3124,'App\\Models\\Question'),(152,10,3126,'App\\Models\\Question'),(153,2,3127,'App\\Models\\Question'),(154,1,3128,'App\\Models\\Question'),(155,1,3129,'App\\Models\\Question'),(156,5,3130,'App\\Models\\Question'),(157,1,3201,'App\\Models\\Question'),(158,2,3202,'App\\Models\\Question'),(159,2,3203,'App\\Models\\Question'),(160,3,3204,'App\\Models\\Question'),(161,1,3205,'App\\Models\\Question'),(162,2,3206,'App\\Models\\Question'),(163,2,3207,'App\\Models\\Question'),(164,2,3208,'App\\Models\\Question'),(165,8,3209,'App\\Models\\Question'),(166,1,3210,'App\\Models\\Question'),(167,6,3211,'App\\Models\\Question'),(168,2,3212,'App\\Models\\Question'),(169,6,3213,'App\\Models\\Question'),(170,4,3214,'App\\Models\\Question'),(171,4,3215,'App\\Models\\Question'),(172,4,3216,'App\\Models\\Question'),(173,10,3217,'App\\Models\\Question'),(174,6,3218,'App\\Models\\Question'),(175,4,3219,'App\\Models\\Question'),(176,2,3220,'App\\Models\\Question'),(177,2,3221,'App\\Models\\Question'),(178,4,3223,'App\\Models\\Question'),(179,4,3224,'App\\Models\\Question'),(180,3,3225,'App\\Models\\Question'),(181,2,3226,'App\\Models\\Question'),(182,3,3227,'App\\Models\\Question'),(183,10,3228,'App\\Models\\Question'),(184,1,3229,'App\\Models\\Question'),(185,3,3230,'App\\Models\\Question'),(186,8,3304,'App\\Models\\Question'),(187,8,3306,'App\\Models\\Question'),(188,5,3307,'App\\Models\\Question'),(189,8,3308,'App\\Models\\Question'),(190,8,3309,'App\\Models\\Question'),(191,5,3318,'App\\Models\\Question'),(192,3,3328,'App\\Models\\Question'),(193,4,3329,'App\\Models\\Question'),(194,4,3330,'App\\Models\\Question'),(195,4,3408,'App\\Models\\Question'),(196,8,3409,'App\\Models\\Question'),(197,8,3410,'App\\Models\\Question'),(198,4,3420,'App\\Models\\Question'),(199,8,3421,'App\\Models\\Question'),(200,5,3423,'App\\Models\\Question'),(201,12,3425,'App\\Models\\Question'),(202,3,3426,'App\\Models\\Question'),(203,2,3429,'App\\Models\\Question'),(204,12,3801,'App\\Models\\Question'),(205,8,3802,'App\\Models\\Question'),(206,4,3803,'App\\Models\\Question'),(207,4,3804,'App\\Models\\Question'),(208,4,3805,'App\\Models\\Question'),(209,12,3806,'App\\Models\\Question'),(210,8,3807,'App\\Models\\Question'),(211,3,3808,'App\\Models\\Question'),(212,12,3809,'App\\Models\\Question'),(213,3,3810,'App\\Models\\Question'),(214,12,3811,'App\\Models\\Question'),(215,3,3812,'App\\Models\\Question'),(216,5,3813,'App\\Models\\Question'),(217,5,3814,'App\\Models\\Question'),(218,5,3815,'App\\Models\\Question'),(219,13,3816,'App\\Models\\Question'),(220,13,3817,'App\\Models\\Question'),(221,13,4001,'App\\Models\\Question'),(222,13,4002,'App\\Models\\Question'),(223,13,4028,'App\\Models\\Question'),(224,13,4038,'App\\Models\\Question'),(225,13,4071,'App\\Models\\Question'),(226,12,4087,'App\\Models\\Question'),(227,12,4088,'App\\Models\\Question'),(228,12,4123,'App\\Models\\Question'),(229,13,4140,'App\\Models\\Question'),(230,10,4179,'App\\Models\\Question'),(231,5,4258,'App\\Models\\Question'),(232,12,4259,'App\\Models\\Question'),(233,13,5025,'App\\Models\\Question'),(234,12,5032,'App\\Models\\Question'),(235,13,5072,'App\\Models\\Question'),(236,12,5123,'App\\Models\\Question'),(237,13,5140,'App\\Models\\Question'),(238,10,5181,'App\\Models\\Question'),(239,13,5256,'App\\Models\\Question'),(240,12,5257,'App\\Models\\Question'),(241,12,6001,'App\\Models\\Question'),(242,12,6059,'App\\Models\\Question'),(243,1,7031,'App\\Models\\Question'),(244,4,7032,'App\\Models\\Question'),(245,10,7033,'App\\Models\\Question'),(246,4,7034,'App\\Models\\Question'),(247,4,7035,'App\\Models\\Question'),(248,3,7036,'App\\Models\\Question'),(249,3,7037,'App\\Models\\Question'),(250,13,7038,'App\\Models\\Question'),(251,1,7039,'App\\Models\\Question'),(252,1,7040,'App\\Models\\Question'),(253,5,7041,'App\\Models\\Question'),(254,10,7042,'App\\Models\\Question'),(255,13,7043,'App\\Models\\Question'),(256,10,7044,'App\\Models\\Question'),(257,10,7045,'App\\Models\\Question'),(258,10,7046,'App\\Models\\Question'),(259,10,7047,'App\\Models\\Question'),(260,3,7048,'App\\Models\\Question'),(261,4,7049,'App\\Models\\Question'),(262,8,7050,'App\\Models\\Question'),(263,3,7051,'App\\Models\\Question'),(264,5,7052,'App\\Models\\Question'),(265,8,7053,'App\\Models\\Question'),(266,8,7054,'App\\Models\\Question'),(267,12,7055,'App\\Models\\Question'),(268,8,7056,'App\\Models\\Question'),(269,13,7057,'App\\Models\\Question'),(270,12,7058,'App\\Models\\Question'),(271,13,7059,'App\\Models\\Question'),(272,12,7060,'App\\Models\\Question'),(273,1,7071,'App\\Models\\Question'),(274,1,7072,'App\\Models\\Question'),(275,1,7073,'App\\Models\\Question'),(276,1,7074,'App\\Models\\Question'),(277,1,7075,'App\\Models\\Question'),(278,3,8901,'App\\Models\\Question'),(279,3,8902,'App\\Models\\Question'),(280,3,8903,'App\\Models\\Question'),(281,3,8904,'App\\Models\\Question'),(282,4,9301,'App\\Models\\Question'),(283,4,9302,'App\\Models\\Question'),(284,4,9303,'App\\Models\\Question'),(285,4,9304,'App\\Models\\Question'),(286,5,9305,'App\\Models\\Question'),(287,5,9306,'App\\Models\\Question'),(288,5,9307,'App\\Models\\Question'),(289,5,9308,'App\\Models\\Question'),(290,8,9309,'App\\Models\\Question'),(291,8,9310,'App\\Models\\Question'),(292,8,9311,'App\\Models\\Question'),(293,8,9312,'App\\Models\\Question'),(294,13,9313,'App\\Models\\Question'),(295,13,9314,'App\\Models\\Question'),(296,13,9315,'App\\Models\\Question'),(297,13,9316,'App\\Models\\Question'),(298,12,9317,'App\\Models\\Question'),(299,12,9318,'App\\Models\\Question'),(300,12,9319,'App\\Models\\Question'),(301,1,9401,'App\\Models\\Question'),(302,1,9402,'App\\Models\\Question'),(303,1,9403,'App\\Models\\Question'),(304,1,9404,'App\\Models\\Question'),(305,1,9405,'App\\Models\\Question'),(306,10,9406,'App\\Models\\Question'),(307,10,9407,'App\\Models\\Question'),(308,10,9408,'App\\Models\\Question'),(309,10,9409,'App\\Models\\Question'),(310,10,9410,'App\\Models\\Question'),(311,12,9411,'App\\Models\\Question'),(312,3,9412,'App\\Models\\Question'),(313,3,9501,'App\\Models\\Question'),(314,4,9502,'App\\Models\\Question'),(315,4,9503,'App\\Models\\Question'),(316,5,9504,'App\\Models\\Question'),(317,5,9505,'App\\Models\\Question'),(318,8,9506,'App\\Models\\Question'),(319,8,9507,'App\\Models\\Question'),(320,13,9508,'App\\Models\\Question'),(321,13,9509,'App\\Models\\Question'),(322,12,9510,'App\\Models\\Question'),(323,12,9511,'App\\Models\\Question'),(324,6,9512,'App\\Models\\Question'),(467,1,9601,'App\\Models\\Question'),(468,1,9602,'App\\Models\\Question'),(469,1,9603,'App\\Models\\Question'),(470,1,9604,'App\\Models\\Question'),(471,1,9605,'App\\Models\\Question'),(472,1,9606,'App\\Models\\Question'),(473,2,9607,'App\\Models\\Question'),(474,2,9608,'App\\Models\\Question'),(475,2,9609,'App\\Models\\Question'),(476,2,9610,'App\\Models\\Question'),(477,2,9611,'App\\Models\\Question'),(478,2,9612,'App\\Models\\Question');
/*!40000 ALTER TABLE `categorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dvla_applications`
--

DROP TABLE IF EXISTS `dvla_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dvla_applications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dvla_center` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_option` enum('CASH','MTN_MOMO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dvla_applications_user_id_foreign` (`user_id`),
  CONSTRAINT `dvla_applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dvla_applications`
--

LOCK TABLES `dvla_applications` WRITE;
/*!40000 ALTER TABLE `dvla_applications` DISABLE KEYS */;
INSERT INTO `dvla_applications` VALUES (1,1,'German Schmitt DDS','B','Koforidua','Standard','MTN_MOMO','I like\"!\' \'You might just as well. The twelve jurors were writing down \'stupid things!\' on their hands and feet at the Cat\'s head began fading away the time. Alice had got burnt, and eaten up by a.','2020-05-03 07:52:05','2020-05-03 07:52:05'),(2,1,'asd','B','Aburi','Premium','MTN_MOMO',NULL,'2020-05-03 07:53:15','2020-05-03 07:53:15'),(3,1,'New Driving License','B','Takoradi','Prestige','MTN_MOMO',NULL,'2020-05-03 11:03:32','2020-05-03 11:03:32');
/*!40000 ALTER TABLE `dvla_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (15,'2014_04_22_083616_create_roles_table',1),(16,'2014_10_12_000000_create_users_table',1),(17,'2014_10_12_100000_create_password_resets_table',1),(18,'2018_03_20_000001_create_mtn_momo_tokens_table',1),(19,'2019_08_19_000000_create_failed_jobs_table',1),(20,'2020_04_22_083929_create_dvla_applications_table',1),(21,'2020_04_22_083945_create_payments_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtn_momo_tokens`
--

DROP TABLE IF EXISTS `mtn_momo_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtn_momo_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `access_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refresh_token` text COLLATE utf8mb4_unicode_ci,
  `token_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Bearer',
  `product` enum('collection','disbursement','remittance') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtn_momo_tokens`
--

LOCK TABLES `mtn_momo_tokens` WRITE;
/*!40000 ALTER TABLE `mtn_momo_tokens` DISABLE KEYS */;
INSERT INTO `mtn_momo_tokens` VALUES (1,'eyJ0eXAiOiJKV1QiLCJhbGciOiJSMjU2In0.eyJjbGllbnRJZCI6IjYwOTQwYTRjLTk3YjUtNGM2Ni04ZmUzLTY3MGVlMTFmMzQ2MSIsImV4cGlyZXMiOiIyMDIwLTA1LTAzVDEwOjUzOjE1Ljk5NCIsInNlc3Npb25JZCI6IjhhYzE5YmQxLTExNWYtNDk3MC1iMWYwLTM3NzNjNmJhNGNkMyJ9.XNB1toAaT96cXHGC1QpxKs64O5gYn4Z6WZzlbU7hEC9qPPioL8x8KspeQwPQAnS3MtRVOKvbJVb5uZPmiVVhgt-zyCYgjTu2AEgIJa2i7COzIEjD6mquPPEDY0lzzqDRkk5wLy2gcnMM_kVCH1OKoB5k_JwPwEKEAbqDVISR20J-qe0_YhbZ0MPD9UUu9qwbTVTBsfXZhKHm_LQ1w1JYfavXOhpepJIYu6cgiWni8rH_Qu9EhnxuDkNMSBsX-pND27-23cdWHLnKrwlsNO-RgfWrQiQU_0NTiapwD72OtPAMMrmQbp_T95Ww0Cn56MMmLIr4zhPZ75zVyANkU2hr3w',NULL,'Bearer','collection','2020-05-03 07:53:16','2020-05-03 07:53:16','2020-05-03 08:53:16',NULL),(2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJSMjU2In0.eyJjbGllbnRJZCI6IjYwOTQwYTRjLTk3YjUtNGM2Ni04ZmUzLTY3MGVlMTFmMzQ2MSIsImV4cGlyZXMiOiIyMDIwLTA1LTAzVDE0OjAzOjMzLjMyNiIsInNlc3Npb25JZCI6ImM2YzczZTg3LTU1NjItNDNmNi1iYmE2LWZkYTg2NDUxYzBlMiJ9.N2-lzippponguNvVUnBn6DWei0YLn0U4J6flbRYj23GkRDJDrpx-aQ6up8FmG4wvXaT0tLqRVs5RuJm-2bdTLXoitQIHqglbRBHLkn-QrcpYQ12dbkPhUQIyoyXM8_n2bBA8UxwW_iJxIYdUHyITdzMAoSfPVmXVbdqyEQE6ZyKfJuVFAnq2BecIujLbA3YPkECxRWBt227lMjoHCn_kIiFw6orhYzgRzjsLg7bd_7QHTERvyBn4jCG6l1XlZdSgz9Vs0omtG_-DP63eHhgdil3FUGJkMUp4S1nf9BtDYRbZE8CRhqUVTVxSu18bXoYVLVR2k6LMwaiT3zOvUXLlCA',NULL,'Bearer','collection','2020-05-03 11:03:33','2020-05-03 11:03:33','2020-05-03 12:03:33',NULL);
/*!40000 ALTER TABLE `mtn_momo_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dvla_application_id` bigint(20) unsigned NOT NULL,
  `momo_transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `financial_transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PENDING','FAILED','SUCCESSFUL') COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'EUR',
  `payer_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payee_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_dvla_application_id_foreign` (`dvla_application_id`),
  CONSTRAINT `payments_dvla_application_id_foreign` FOREIGN KEY (`dvla_application_id`) REFERENCES `dvla_applications` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,2,'dc8ecb09-150b-45a2-a2f8-e4c9b79d503d','907482498','SUCCESSFUL',NULL,100.00,'EUR','Payment requested from client ','Payment for DVLA registration','2020-05-03 07:53:15','2020-05-03 07:53:16'),(2,3,'4fc0284a-34af-4347-88f1-3184b5959c0d','2032027711','SUCCESSFUL',NULL,10.00,'EUR','Payment requested from client ','Payment for DVLA registration','2020-05-03 11:03:32','2020-05-03 11:03:33'),(3,3,'916ac951-d909-4716-af88-a231f2de66dd','1278287494','SUCCESSFUL',NULL,10.00,'EUR','Payment requested from client ','Payment for DVLA registration','2020-05-03 11:05:12','2020-05-03 11:05:13'),(4,3,'5248f262-6459-4e87-99c5-1edc7da09b83','532763256','SUCCESSFUL',NULL,10.00,'EUR','Payment requested from client ','Payment for DVLA registration','2020-05-03 11:06:56','2020-05-03 11:06:56');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_advertisement`
--

DROP TABLE IF EXISTS `quagga_advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_advertisement` (
  `uuid_` varchar(75) DEFAULT NULL,
  `advId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `advTitle` varchar(75) DEFAULT NULL,
  `advPrice` varchar(75) DEFAULT NULL,
  `advPhone` varchar(75) DEFAULT NULL,
  `advEmail` varchar(75) DEFAULT NULL,
  `advValidFrom` datetime DEFAULT NULL,
  `advValidTo` datetime DEFAULT NULL,
  `advPhotoFileEntryId` bigint(20) DEFAULT NULL,
  `advPhotoName` varchar(75) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`advId`),
  UNIQUE KEY `IX_3A420F66` (`uuid_`,`groupId`),
  KEY `IX_A4AE7438` (`companyId`),
  KEY `IX_5136A8BA` (`groupId`),
  KEY `IX_86B4D619` (`groupId`,`advValidFrom`,`advValidTo`),
  KEY `IX_8784A6F4` (`groupId`,`userId`),
  KEY `IX_B1BF1FD3` (`groupId`,`userId`,`advValidFrom`,`advValidTo`),
  KEY `IX_E50D622A` (`userId`),
  KEY `IX_D97321C4` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_advertisement`
--

LOCK TABLES `quagga_advertisement` WRITE;
/*!40000 ALTER TABLE `quagga_advertisement` DISABLE KEYS */;
INSERT INTO `quagga_advertisement` VALUES ('e7dc6e35-1903-43cf-a717-f25ae8d3b9a2',201,10168,'Sports car model X year 2000','10,000 GHÂ¢','0549999999','info@ghanadriver.com','2013-08-07 00:00:00','2013-08-07 00:00:00',102620,'upload_00000060.jpg',10131,10156),('c5f3f183-2aa2-42c4-b65d-10e658a7a910',801,10168,'Sports car model X year 2000','10,000 GHÂ¢','0549999999','info@ghanadriver.com','2013-08-07 00:00:00','2013-08-07 00:00:00',102620,'upload_00000060.jpg',10131,10156),('c8967b6e-0a81-4849-b25e-0658b5d26e6d',901,10168,'Sports car model X year 2000','10,000 GHÂ¢','0549999999','info@ghanadriver.com','2013-08-07 00:00:00','2013-08-07 00:00:00',102620,'upload_00000060.jpg',10131,10156),('3117ce3f-585f-428a-97ee-6b48bcd2a281',1001,10168,'Sports car model X year 2000','10,000 GHÂ¢','0549999999','info@ghanadriver.com','2013-08-07 00:00:00','2013-08-07 00:00:00',102620,'upload_00000060.jpg',10131,10156),('32ec75bb-cd8c-4c17-9af4-f0373e893c86',1101,10168,'Sports car model X year 2000','10,000 GHÂ¢','0549999999','info@ghanadriver.com','2013-08-07 00:00:00','2013-08-07 00:00:00',102620,'upload_00000060.jpg',10131,10156);
/*!40000 ALTER TABLE `quagga_advertisement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_alternative`
--

DROP TABLE IF EXISTS `quagga_alternative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_alternative` (
  `que_id` int(11) NOT NULL DEFAULT '0',
  `alt_id` int(11) NOT NULL DEFAULT '0',
  `med_id` int(11) NOT NULL DEFAULT '0',
  `med_type` char(1) NOT NULL DEFAULT '',
  `alt_correct` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`que_id`,`alt_id`),
  UNIQUE KEY `alternative_pk` (`que_id`,`alt_id`),
  KEY `relation_950_fk` (`med_id`,`med_type`),
  KEY `ref_68_fk` (`que_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_alternative`
--

LOCK TABLES `quagga_alternative` WRITE;
/*!40000 ALTER TABLE `quagga_alternative` DISABLE KEYS */;
INSERT INTO `quagga_alternative` VALUES (101,1,2,'B',0),(101,2,3,'B',1),(101,3,4,'B',0),(102,1,8,'T',0),(102,2,9,'T',0),(102,3,10,'T',1),(103,1,14,'T',1),(103,2,15,'T',0),(104,1,19,'T',0),(104,2,20,'T',1),(105,1,24,'T',0),(105,2,25,'T',0),(105,3,26,'T',1),(106,1,30,'T',1),(106,2,31,'T',0),(106,3,32,'T',0),(107,1,36,'T',1),(107,2,37,'T',0),(108,1,41,'T',0),(108,2,42,'T',0),(108,3,43,'T',1),(109,1,47,'T',0),(109,2,48,'T',1),(109,3,49,'T',0),(110,1,52,'T',1),(110,2,53,'T',0),(111,1,56,'T',0),(111,2,57,'T',1),(112,1,60,'T',0),(112,2,61,'T',1),(113,1,64,'T',1),(113,2,65,'T',0),(113,3,66,'T',0),(114,1,69,'T',0),(114,2,70,'T',1),(115,1,73,'T',0),(115,2,74,'T',1),(115,3,75,'T',0),(116,1,79,'T',0),(116,2,80,'T',1),(117,1,83,'T',0),(117,2,84,'T',0),(117,3,85,'T',1),(118,1,88,'T',1),(118,2,89,'T',0),(118,3,90,'T',0),(119,1,94,'T',0),(119,2,95,'T',1),(119,3,96,'T',0),(120,1,100,'T',1),(120,2,101,'T',0),(120,3,102,'T',0),(121,1,106,'T',0),(121,2,107,'T',0),(121,3,108,'T',1),(201,1,112,'T',1),(201,2,113,'T',0),(202,1,117,'T',0),(202,2,118,'T',0),(202,3,119,'T',1),(203,1,123,'T',1),(203,2,124,'T',0),(204,1,128,'T',0),(204,2,129,'T',0),(204,3,130,'T',1),(205,1,134,'T',1),(205,2,135,'T',0),(207,1,138,'T',0),(207,2,139,'T',1),(208,1,143,'T',1),(208,2,144,'T',0),(208,3,145,'T',0),(209,1,149,'T',0),(209,2,150,'T',1),(209,3,151,'T',0),(210,1,154,'T',1),(210,2,155,'T',0),(211,1,158,'T',0),(211,2,159,'T',0),(211,3,160,'T',1),(212,1,163,'T',1),(212,2,164,'T',0),(212,3,165,'T',0),(213,1,168,'T',0),(213,2,169,'T',1),(214,1,172,'T',1),(214,2,173,'T',0),(215,1,176,'T',0),(215,2,177,'T',1),(216,1,181,'T',0),(216,2,182,'T',1),(217,1,185,'T',1),(217,2,186,'T',0),(218,1,189,'T',1),(218,2,190,'T',0),(219,1,194,'T',0),(219,2,195,'T',1),(220,1,198,'T',0),(220,2,199,'T',1),(220,3,200,'T',0),(301,1,204,'T',0),(301,2,205,'T',1),(302,1,209,'T',0),(302,2,210,'T',0),(302,3,211,'T',1),(303,1,215,'T',1),(303,2,216,'T',0),(303,3,217,'T',0),(304,1,221,'T',0),(304,2,222,'T',1),(304,3,223,'T',0),(305,1,227,'T',1),(305,2,228,'T',0),(305,3,229,'T',0),(305,4,230,'T',0),(306,1,234,'T',0),(306,2,235,'T',1),(307,1,239,'T',0),(307,2,240,'T',1),(307,3,241,'T',0),(308,1,245,'T',0),(308,2,246,'T',1),(309,1,250,'T',0),(309,2,251,'T',1),(310,1,254,'T',0),(310,2,255,'T',0),(310,3,256,'T',0),(310,4,257,'T',1),(311,1,260,'T',0),(311,2,261,'T',1),(312,1,264,'T',1),(312,2,265,'T',0),(313,1,268,'T',0),(313,2,269,'T',0),(313,3,270,'T',1),(314,1,273,'T',1),(314,2,274,'T',0),(315,1,277,'T',0),(315,2,278,'T',1),(315,3,279,'T',0),(316,1,282,'T',0),(316,2,283,'T',1),(317,1,287,'T',1),(317,2,288,'T',0),(318,1,291,'T',1),(318,2,292,'T',0),(319,1,296,'T',1),(319,2,297,'T',0),(320,1,300,'T',0),(320,2,301,'T',1),(321,1,304,'T',0),(321,2,305,'T',1),(401,1,309,'T',1),(401,2,310,'T',0),(403,1,314,'T',0),(403,2,315,'T',0),(403,3,316,'T',1),(404,1,320,'T',1),(404,2,321,'T',0),(405,1,325,'T',0),(405,2,326,'T',1),(406,1,330,'T',0),(406,2,331,'T',1),(406,3,332,'T',0),(407,1,336,'T',1),(407,2,337,'T',0),(409,1,341,'T',0),(409,2,342,'T',0),(409,3,343,'T',1),(410,1,346,'T',0),(410,2,347,'T',1),(411,1,350,'T',1),(411,2,351,'T',0),(412,1,354,'T',0),(412,2,355,'T',1),(412,3,356,'T',0),(412,4,357,'T',0),(413,1,360,'T',0),(413,2,361,'T',0),(413,3,362,'T',0),(413,4,363,'T',1),(414,1,366,'T',1),(414,2,367,'T',0),(414,3,368,'T',0),(417,1,372,'T',0),(417,2,373,'T',1),(417,3,374,'T',0),(418,1,377,'T',0),(418,2,378,'T',0),(418,3,379,'T',1),(419,1,383,'T',1),(419,2,384,'T',0),(419,3,385,'T',0),(420,1,388,'T',0),(420,2,389,'T',0),(420,3,390,'T',1),(421,1,393,'T',1),(421,2,394,'T',0),(421,3,395,'T',0),(422,1,398,'T',0),(422,2,399,'T',1),(422,3,400,'T',0),(423,1,403,'T',0),(423,2,404,'T',0),(423,3,405,'T',1),(508,1,409,'T',1),(508,2,410,'T',0),(3001,1,414,'T',0),(3001,2,415,'T',0),(3001,3,416,'T',1),(3001,4,417,'T',0),(3002,1,421,'T',0),(3002,2,422,'T',0),(3002,3,423,'T',1),(3002,4,424,'T',0),(3003,1,428,'T',0),(3003,2,429,'T',1),(3004,1,433,'T',0),(3004,2,434,'T',0),(3004,3,435,'T',0),(3004,4,436,'T',1),(3005,1,440,'T',1),(3005,2,441,'T',0),(3006,1,445,'T',0),(3006,2,446,'T',1),(3007,1,450,'T',0),(3007,2,451,'T',1),(3008,1,455,'T',0),(3008,2,456,'T',0),(3008,3,457,'T',0),(3008,4,458,'T',1),(3009,1,462,'T',0),(3009,2,463,'T',0),(3009,3,464,'T',1),(3009,4,465,'T',0),(3010,1,469,'T',0),(3010,2,470,'T',1),(3010,3,471,'T',0),(3010,4,472,'T',0),(3011,1,476,'T',0),(3011,2,477,'T',1),(3012,1,481,'T',1),(3012,2,482,'T',0),(3012,3,483,'T',0),(3012,4,484,'T',0),(3013,1,488,'T',0),(3013,2,489,'T',1),(3013,3,490,'T',0),(3014,1,494,'T',1),(3014,2,495,'T',0),(3014,3,496,'T',0),(3014,4,497,'T',0),(3015,1,501,'T',1),(3015,2,502,'T',0),(3015,3,503,'T',0),(3016,1,507,'T',1),(3016,2,508,'T',0),(3017,1,512,'T',0),(3017,2,513,'T',0),(3017,3,514,'T',0),(3017,4,515,'T',1),(3018,1,519,'T',1),(3018,2,520,'T',0),(3019,1,524,'T',1),(3019,2,525,'T',0),(3019,3,526,'T',0),(3019,4,527,'T',0),(3020,1,531,'T',0),(3020,2,532,'T',0),(3020,3,533,'T',1),(3020,4,534,'T',0),(3021,1,538,'T',0),(3021,2,539,'T',0),(3021,3,540,'T',1),(3022,1,544,'T',0),(3022,2,545,'T',1),(3022,3,546,'T',0),(3023,1,550,'T',0),(3023,2,551,'T',1),(3023,3,552,'T',0),(3023,4,553,'T',0),(3024,1,556,'T',0),(3024,2,557,'T',0),(3024,3,558,'T',0),(3024,4,559,'T',1),(3025,1,563,'T',0),(3025,2,564,'T',1),(3025,3,565,'T',0),(3025,4,566,'T',0),(3026,1,570,'T',0),(3026,2,571,'T',1),(3026,3,572,'T',0),(3027,1,576,'T',0),(3027,2,577,'T',0),(3027,3,578,'T',1),(3027,4,579,'T',0),(3028,1,583,'T',1),(3028,2,584,'T',0),(3028,3,585,'T',0),(3028,4,586,'T',0),(3029,1,590,'T',0),(3029,2,591,'T',1),(3029,3,592,'T',0),(3029,4,593,'T',0),(3101,1,596,'T',0),(3101,2,597,'T',1),(3101,3,598,'T',0),(3101,4,599,'T',0),(3102,1,602,'T',1),(3102,2,603,'T',0),(3102,3,604,'T',0),(3102,4,605,'T',0),(3103,1,608,'T',0),(3103,2,609,'T',0),(3103,3,610,'T',1),(3103,4,611,'T',0),(3104,1,614,'T',0),(3104,2,615,'T',0),(3104,3,616,'T',1),(3104,4,617,'T',0),(3105,1,620,'T',0),(3105,2,621,'T',0),(3105,3,622,'T',1),(3105,4,623,'T',0),(3106,1,626,'T',0),(3106,2,627,'T',1),(3106,3,628,'T',0),(3106,4,629,'T',0),(3107,1,632,'T',0),(3107,2,633,'T',1),(3107,3,634,'T',0),(3107,4,635,'T',0),(3108,1,638,'T',0),(3108,2,639,'T',1),(3108,3,640,'T',0),(3108,4,641,'T',0),(3109,1,645,'T',0),(3109,2,646,'T',0),(3109,3,647,'T',1),(3109,4,648,'T',0),(3110,1,651,'T',1),(3110,2,652,'T',0),(3110,3,653,'T',0),(3110,4,654,'T',0),(3111,1,657,'T',0),(3111,2,658,'T',0),(3111,3,659,'T',1),(3111,4,660,'T',0),(3112,1,663,'T',1),(3112,2,664,'T',0),(3112,3,665,'T',0),(3112,4,666,'T',0),(3113,1,670,'T',0),(3113,2,671,'T',0),(3113,3,672,'T',0),(3113,4,673,'T',1),(3114,1,676,'T',0),(3114,2,677,'T',0),(3114,3,678,'T',0),(3114,4,679,'T',1),(3115,1,682,'T',0),(3115,2,683,'T',0),(3115,3,684,'T',1),(3115,4,685,'T',0),(3116,1,688,'T',1),(3116,2,689,'T',0),(3116,3,690,'T',0),(3116,4,691,'T',0),(3117,1,694,'T',0),(3117,2,695,'T',0),(3117,3,696,'T',0),(3117,4,697,'T',1),(3118,1,701,'T',1),(3118,2,702,'T',0),(3118,3,703,'T',0),(3118,4,704,'T',0),(3119,1,707,'T',0),(3119,2,708,'T',1),(3119,3,709,'T',0),(3119,4,710,'T',0),(3120,1,713,'T',1),(3120,2,714,'T',0),(3120,3,715,'T',0),(3120,4,716,'T',0),(3121,1,719,'T',0),(3121,2,720,'T',1),(3121,3,721,'T',0),(3121,4,722,'T',0),(3122,1,725,'T',1),(3122,2,726,'T',0),(3122,3,727,'T',0),(3122,4,728,'T',0),(3123,1,732,'T',0),(3123,2,733,'T',0),(3123,3,734,'T',1),(3123,4,735,'T',0),(3124,1,738,'T',0),(3124,2,739,'T',0),(3124,3,740,'T',1),(3124,4,741,'T',0),(3126,1,745,'T',0),(3126,2,746,'T',0),(3126,3,747,'T',1),(3126,4,748,'T',0),(3127,1,751,'T',0),(3127,2,752,'T',0),(3127,3,753,'T',0),(3127,4,754,'T',1),(3128,1,757,'T',0),(3128,2,758,'T',0),(3128,3,759,'T',0),(3128,4,760,'T',1),(3129,1,764,'T',0),(3129,2,765,'T',0),(3129,3,766,'T',0),(3129,4,767,'T',1),(3130,1,770,'T',0),(3130,2,771,'T',0),(3130,3,772,'T',0),(3130,4,773,'T',1),(3201,1,776,'T',0),(3201,2,777,'T',1),(3201,3,778,'T',0),(3201,4,779,'T',0),(3202,1,783,'T',1),(3202,2,784,'T',0),(3202,3,785,'T',0),(3202,4,786,'T',0),(3203,1,789,'T',0),(3203,2,790,'T',0),(3203,3,791,'T',1),(3203,4,792,'T',0),(3204,1,795,'T',0),(3204,2,796,'T',1),(3204,3,797,'T',0),(3204,4,798,'T',0),(3205,1,801,'T',0),(3205,2,802,'T',0),(3205,3,803,'T',1),(3205,4,804,'T',0),(3206,1,807,'T',0),(3206,2,808,'T',0),(3206,3,809,'T',0),(3206,4,810,'T',1),(3207,1,813,'T',1),(3207,2,814,'T',0),(3207,3,815,'T',0),(3207,4,816,'T',0),(3208,1,819,'T',0),(3208,2,820,'T',0),(3208,3,821,'T',0),(3208,4,822,'T',1),(3209,1,825,'T',0),(3209,2,826,'T',0),(3209,3,827,'T',1),(3209,4,828,'T',0),(3210,1,831,'T',0),(3210,2,832,'T',1),(3210,3,833,'T',0),(3210,4,834,'T',0),(3211,1,837,'T',0),(3211,2,838,'T',0),(3211,3,839,'T',1),(3211,4,840,'T',0),(3212,1,843,'T',1),(3212,2,844,'T',0),(3212,3,845,'T',0),(3212,4,846,'T',0),(3213,1,849,'T',0),(3213,2,850,'T',0),(3213,3,851,'T',0),(3213,4,852,'T',1),(3214,1,855,'T',0),(3214,2,856,'T',0),(3214,3,857,'T',1),(3214,4,858,'T',0),(3215,1,861,'T',0),(3215,2,862,'T',0),(3215,3,863,'T',0),(3215,4,864,'T',1),(3216,1,867,'T',0),(3216,2,868,'T',1),(3216,3,869,'T',0),(3216,4,870,'T',0),(3217,1,873,'T',0),(3217,2,874,'T',0),(3217,3,875,'T',0),(3217,4,876,'T',1),(3218,1,879,'T',0),(3218,2,880,'T',0),(3218,3,881,'T',1),(3218,4,882,'T',0),(3219,1,885,'T',0),(3219,2,886,'T',1),(3219,3,887,'T',0),(3219,4,888,'T',0),(3220,1,891,'T',1),(3220,2,892,'T',0),(3220,3,893,'T',0),(3220,4,894,'T',0),(3221,1,898,'T',0),(3221,2,899,'T',0),(3221,3,900,'T',0),(3221,4,901,'T',1),(3223,1,904,'T',0),(3223,2,905,'T',0),(3223,3,906,'T',1),(3223,4,907,'T',0),(3224,1,910,'T',0),(3224,2,911,'T',0),(3224,3,912,'T',0),(3224,4,913,'T',1),(3225,1,916,'T',0),(3225,2,917,'T',0),(3225,3,918,'T',0),(3225,4,919,'T',1),(3226,1,922,'T',0),(3226,2,923,'T',1),(3226,3,924,'T',0),(3226,4,925,'T',0),(3227,1,928,'T',0),(3227,2,929,'T',0),(3227,3,930,'T',1),(3227,4,931,'T',0),(3228,1,934,'T',0),(3228,2,935,'T',0),(3228,3,936,'T',0),(3228,4,937,'T',1),(3229,1,940,'T',0),(3229,2,941,'T',0),(3229,3,942,'T',1),(3229,4,943,'T',0),(3230,1,946,'T',0),(3230,2,947,'T',0),(3230,3,948,'T',1),(3230,4,949,'T',0),(3304,1,952,'T',0),(3304,2,953,'T',0),(3304,3,954,'T',1),(3304,4,955,'T',0),(3306,1,958,'T',0),(3306,2,959,'T',0),(3306,3,960,'T',0),(3306,4,961,'T',1),(3307,1,964,'T',0),(3307,2,965,'T',1),(3307,3,966,'T',0),(3307,4,967,'T',0),(3308,1,970,'T',0),(3308,2,971,'T',1),(3308,3,972,'T',0),(3308,4,973,'T',0),(3309,1,976,'T',1),(3309,2,977,'T',0),(3309,3,978,'T',0),(3309,4,979,'T',0),(3318,1,982,'T',0),(3318,2,983,'T',1),(3318,3,984,'T',0),(3318,4,985,'T',0),(3328,1,988,'T',0),(3328,2,989,'T',0),(3328,3,990,'T',1),(3328,4,991,'T',0),(3329,1,994,'T',0),(3329,2,995,'T',1),(3329,3,996,'T',0),(3329,4,997,'T',0),(3330,1,1000,'T',0),(3330,2,1001,'T',0),(3330,3,1002,'T',1),(3330,4,1003,'T',0),(3408,1,1006,'T',0),(3408,2,1007,'T',0),(3408,3,1008,'T',1),(3408,4,1009,'T',0),(3409,1,1012,'T',0),(3409,2,1013,'T',1),(3409,3,1014,'T',0),(3409,4,1015,'T',0),(3410,1,1018,'T',0),(3410,2,1019,'T',1),(3410,3,1020,'T',0),(3410,4,1021,'T',0),(3420,1,1025,'T',0),(3420,2,1026,'T',0),(3420,3,1027,'T',1),(3420,4,1028,'T',0),(3421,1,1032,'T',0),(3421,2,1033,'T',1),(3421,3,1034,'T',0),(3421,4,1035,'T',0),(3423,1,1038,'T',1),(3423,2,1039,'T',0),(3423,3,1040,'T',0),(3423,4,1041,'T',0),(3425,1,1044,'T',0),(3425,2,1045,'T',0),(3425,3,1046,'T',1),(3425,4,1047,'T',0),(3426,1,1051,'T',0),(3426,2,1052,'T',0),(3426,3,1053,'T',0),(3426,4,1054,'T',1),(3429,1,1058,'T',0),(3429,2,1059,'T',1),(3429,3,1060,'T',0),(3429,4,1061,'T',0),(3801,1,1064,'T',0),(3801,2,1065,'T',0),(3801,3,1066,'T',0),(3801,4,1067,'T',1),(3802,1,1070,'T',0),(3802,2,1071,'T',0),(3802,3,1072,'T',1),(3802,4,1073,'T',0),(3803,1,1076,'T',0),(3803,2,1077,'T',0),(3803,3,1078,'T',0),(3803,4,1079,'T',1),(3804,1,1082,'T',0),(3804,2,1083,'T',1),(3804,3,1084,'T',0),(3804,4,1085,'T',0),(3805,1,1088,'T',0),(3805,2,1089,'T',1),(3805,3,1090,'T',0),(3805,4,1091,'T',0),(3806,1,1094,'T',1),(3806,2,1095,'T',0),(3806,3,1096,'T',0),(3806,4,1097,'T',0),(3807,1,1100,'T',0),(3807,2,1101,'T',0),(3807,3,1102,'T',1),(3807,4,1103,'T',0),(3808,1,1106,'T',0),(3808,2,1107,'T',0),(3808,3,1108,'T',0),(3808,4,1109,'T',1),(3809,1,1112,'T',1),(3809,2,1113,'T',0),(3809,3,1114,'T',0),(3809,4,1115,'T',0),(3810,1,1118,'T',0),(3810,2,1119,'T',0),(3810,3,1120,'T',0),(3810,4,1121,'T',1),(3811,1,1124,'T',1),(3811,2,1125,'T',0),(3811,3,1126,'T',0),(3811,4,1127,'T',0),(3812,1,1130,'T',0),(3812,2,1131,'T',1),(3812,3,1132,'T',0),(3812,4,1133,'T',0),(3813,1,1136,'T',0),(3813,2,1137,'T',0),(3813,3,1138,'T',0),(3813,4,1139,'T',1),(3814,1,1142,'T',0),(3814,2,1143,'T',1),(3814,3,1144,'T',0),(3814,4,1145,'T',0),(3815,1,1148,'T',0),(3815,2,1149,'T',1),(3815,3,1150,'T',0),(3815,4,1151,'T',0),(3816,1,1154,'T',0),(3816,2,1155,'T',0),(3816,3,1156,'T',1),(3816,4,1157,'T',0),(3817,1,1160,'T',0),(3817,2,1161,'T',0),(3817,3,1162,'T',0),(3817,4,1163,'T',1),(4001,1,1167,'T',0),(4001,2,1168,'T',0),(4001,3,1169,'T',1),(4001,4,1170,'T',0),(4002,1,1174,'T',0),(4002,2,1175,'T',0),(4002,3,1176,'T',0),(4002,4,1177,'T',1),(4028,1,1181,'T',0),(4028,2,1182,'T',1),(4028,3,1183,'T',0),(4028,4,1184,'T',0),(4038,1,1188,'T',1),(4038,2,1189,'T',0),(4038,3,1190,'T',0),(4038,4,1191,'T',0),(4071,1,1195,'T',0),(4071,2,1196,'T',0),(4071,3,1197,'T',0),(4071,4,1198,'T',1),(4087,1,1202,'T',0),(4087,2,1203,'T',1),(4087,3,1204,'T',0),(4087,4,1205,'T',0),(4088,1,1209,'T',0),(4088,2,1210,'T',0),(4088,3,1211,'T',1),(4088,4,1212,'T',0),(4123,1,1216,'T',0),(4123,2,1217,'T',0),(4123,3,1218,'T',1),(4123,4,1219,'T',0),(4140,1,1223,'T',0),(4140,2,1224,'T',0),(4140,3,1225,'T',0),(4140,4,1226,'T',1),(4179,1,1230,'T',0),(4179,2,1231,'T',0),(4179,3,1232,'T',0),(4179,4,1233,'T',1),(4258,1,1237,'T',0),(4258,2,1238,'T',0),(4258,3,1239,'T',1),(4258,4,1240,'T',0),(4259,1,1244,'T',1),(4259,2,1245,'T',0),(4259,3,1246,'T',0),(4259,4,1247,'T',0),(5025,1,1250,'B',0),(5025,2,1251,'B',0),(5025,3,1252,'B',1),(5025,4,1253,'B',0),(5032,1,1256,'B',0),(5032,2,1257,'B',0),(5032,3,1258,'B',1),(5032,4,1259,'B',0),(5072,1,1262,'B',1),(5072,2,1263,'B',0),(5072,3,1264,'B',0),(5072,4,1265,'B',0),(5123,1,1268,'B',0),(5123,2,1269,'B',1),(5123,3,1270,'B',0),(5123,4,1271,'B',0),(5140,1,1274,'B',0),(5140,2,1275,'B',0),(5140,3,1276,'B',1),(5140,4,1277,'B',0),(5181,1,1280,'B',0),(5181,2,1281,'B',0),(5181,3,1282,'B',1),(5181,4,1283,'B',0),(5256,1,1286,'B',0),(5256,2,1287,'B',1),(5256,3,1288,'B',0),(5256,4,1289,'B',0),(5257,1,1292,'B',0),(5257,2,1293,'B',1),(5257,3,1294,'B',0),(6001,1,1298,'T',0),(6001,2,1299,'T',1),(6059,1,1303,'T',0),(6059,2,1304,'T',1),(7031,1,1307,'T',0),(7031,2,1308,'T',0),(7031,3,1309,'T',0),(7031,4,1310,'T',1),(7032,1,1313,'T',0),(7032,2,1314,'T',0),(7032,3,1315,'T',0),(7032,4,1316,'T',1),(7033,1,1319,'T',0),(7033,2,1320,'T',1),(7033,3,1321,'T',0),(7033,4,1322,'T',0),(7034,1,1325,'T',0),(7034,2,1326,'T',0),(7034,3,1327,'T',1),(7034,4,1328,'T',0),(7035,1,1331,'T',0),(7035,2,1332,'T',0),(7035,3,1333,'T',1),(7035,4,1334,'T',0),(7036,1,1337,'T',0),(7036,2,1338,'T',1),(7036,3,1339,'T',0),(7036,4,1340,'T',0),(7037,1,1343,'T',0),(7037,2,1344,'T',0),(7037,3,1345,'T',0),(7037,4,1346,'T',1),(7038,1,1349,'T',1),(7038,2,1350,'T',0),(7038,3,1351,'T',0),(7038,4,1352,'T',0),(7039,1,1355,'T',0),(7039,2,1356,'T',0),(7039,3,1357,'T',1),(7039,4,1358,'T',0),(7040,1,1361,'T',0),(7040,2,1362,'T',0),(7040,3,1363,'T',1),(7040,4,1364,'T',0),(7041,1,1367,'T',1),(7041,2,1368,'T',0),(7041,3,1369,'T',0),(7041,4,1370,'T',0),(7042,1,1373,'T',0),(7042,2,1374,'T',1),(7042,3,1375,'T',0),(7042,4,1376,'T',0),(7043,1,1379,'T',0),(7043,2,1380,'T',0),(7043,3,1381,'T',0),(7043,4,1382,'T',1),(7044,1,1385,'T',0),(7044,2,1386,'T',0),(7044,3,1387,'T',1),(7044,4,1388,'T',0),(7045,1,1391,'T',0),(7045,2,1392,'T',1),(7045,3,1393,'T',0),(7045,4,1394,'T',0),(7046,1,1397,'T',0),(7046,2,1398,'T',0),(7046,3,1399,'T',0),(7046,4,1400,'T',1),(7047,1,1403,'T',0),(7047,2,1404,'T',1),(7047,3,1405,'T',0),(7047,4,1406,'T',0),(7048,1,1409,'T',0),(7048,2,1410,'T',0),(7048,3,1411,'T',1),(7048,4,1412,'T',0),(7049,1,1415,'T',0),(7049,2,1416,'T',0),(7049,3,1417,'T',0),(7049,4,1418,'T',1),(7050,1,1421,'T',0),(7050,2,1422,'T',0),(7050,3,1423,'T',1),(7050,4,1424,'T',0),(7051,1,1427,'T',0),(7051,2,1428,'T',0),(7051,3,1429,'T',1),(7051,4,1430,'T',0),(7052,1,1433,'T',0),(7052,2,1434,'T',0),(7052,3,1435,'T',0),(7052,4,1436,'T',1),(7053,1,1439,'T',0),(7053,2,1440,'T',1),(7053,3,1441,'T',0),(7053,4,1442,'T',0),(7054,1,1445,'T',0),(7054,2,1446,'T',0),(7054,3,1447,'T',1),(7054,4,1448,'T',0),(7055,1,1451,'T',0),(7055,2,1452,'T',0),(7055,3,1453,'T',0),(7055,4,1454,'T',1),(7056,1,1457,'T',0),(7056,2,1458,'T',0),(7056,3,1459,'T',1),(7056,4,1460,'T',0),(7057,1,1463,'T',0),(7057,2,1464,'T',1),(7057,3,1465,'T',0),(7057,4,1466,'T',0),(7058,1,1469,'T',1),(7058,2,1470,'T',0),(7058,3,1471,'T',0),(7058,4,1472,'T',0),(7059,1,1475,'T',0),(7059,2,1476,'T',0),(7059,3,1477,'T',0),(7059,4,1478,'T',1),(7060,1,1481,'T',0),(7060,2,1482,'T',0),(7060,3,1483,'T',0),(7060,4,1484,'T',1),(7071,1,1487,'T',0),(7071,2,1488,'T',1),(7071,3,1489,'T',0),(7072,1,1492,'T',0),(7072,2,1493,'T',0),(7072,3,1494,'T',1),(7073,1,1497,'T',0),(7073,2,1498,'T',1),(7073,3,1499,'T',0),(7074,1,1502,'T',1),(7074,2,1503,'T',0),(7074,3,1504,'T',0),(7075,1,1507,'T',0),(7075,2,1508,'T',0),(7075,3,1509,'T',1),(8901,1,1512,'T',1),(8901,2,1513,'T',0),(8901,3,1514,'T',0),(8901,4,1515,'T',0),(8902,1,1518,'T',1),(8902,2,1519,'T',0),(8902,3,1520,'T',0),(8902,4,1521,'T',0),(8903,1,1524,'T',0),(8903,2,1525,'T',0),(8903,3,1526,'T',1),(8903,4,1527,'T',0),(8904,1,1530,'T',0),(8904,2,1531,'T',1),(8904,3,1532,'T',0),(8904,4,1533,'T',0),(9301,1,1536,'T',0),(9301,2,1537,'T',0),(9301,3,1538,'T',0),(9301,4,1539,'T',1),(9302,1,1542,'T',0),(9302,2,1543,'T',1),(9302,3,1544,'T',0),(9302,4,1545,'T',0),(9303,1,1548,'T',0),(9303,2,1549,'T',0),(9303,3,1550,'T',0),(9303,4,1551,'T',1),(9304,1,1554,'T',0),(9304,2,1555,'T',1),(9304,3,1556,'T',0),(9304,4,1557,'T',0),(9305,1,1560,'T',1),(9305,2,1561,'T',0),(9305,3,1562,'T',0),(9305,4,1563,'T',0),(9306,1,1566,'T',0),(9306,2,1567,'T',0),(9306,3,1568,'T',1),(9306,4,1569,'T',0),(9307,1,1572,'T',1),(9307,2,1573,'T',0),(9307,3,1574,'T',0),(9307,4,1575,'T',0),(9308,1,1578,'T',0),(9308,2,1579,'T',0),(9308,3,1580,'T',1),(9308,4,1581,'T',0),(9309,1,1584,'T',1),(9309,2,1585,'T',0),(9309,3,1586,'T',0),(9309,4,1587,'T',0),(9310,1,1590,'T',0),(9310,2,1591,'T',0),(9310,3,1592,'T',1),(9310,4,1593,'T',0),(9311,1,1596,'T',1),(9311,2,1597,'T',0),(9311,3,1598,'T',0),(9311,4,1599,'T',0),(9312,1,1602,'T',0),(9312,2,1603,'T',0),(9312,3,1604,'T',0),(9312,4,1605,'T',1),(9313,1,1608,'T',0),(9313,2,1609,'T',0),(9313,3,1610,'T',1),(9313,4,1611,'T',0),(9314,1,1614,'T',0),(9314,2,1615,'T',1),(9314,3,1616,'T',0),(9314,4,1617,'T',0),(9315,1,1620,'T',1),(9315,2,1621,'T',0),(9315,3,1622,'T',0),(9315,4,1623,'T',0),(9316,1,1626,'T',0),(9316,2,1627,'T',1),(9316,3,1628,'T',0),(9316,4,1629,'T',0),(9317,1,1632,'T',1),(9317,2,1633,'T',0),(9317,3,1634,'T',0),(9317,4,1635,'T',0),(9318,1,1638,'T',0),(9318,2,1639,'T',1),(9318,3,1640,'T',0),(9318,4,1641,'T',0),(9319,1,1644,'T',0),(9319,2,1645,'T',0),(9319,3,1646,'T',1),(9319,4,1647,'T',0),(9401,1,1650,'T',0),(9401,2,1651,'T',1),(9401,3,1652,'T',0),(9401,4,1653,'T',0),(9402,1,1656,'T',1),(9402,2,1657,'T',0),(9402,3,1658,'T',0),(9402,4,1659,'T',0),(9403,1,1662,'T',0),(9403,2,1663,'T',1),(9403,3,1664,'T',0),(9403,4,1665,'T',0),(9404,1,1668,'T',0),(9404,2,1669,'T',0),(9404,3,1670,'T',0),(9404,4,1671,'T',1),(9405,1,1674,'T',0),(9405,2,1675,'T',0),(9405,3,1676,'T',1),(9405,4,1677,'T',0),(9406,1,1680,'T',0),(9406,2,1681,'T',1),(9406,3,1682,'T',0),(9406,4,1683,'T',0),(9407,1,1686,'T',1),(9407,2,1687,'T',0),(9407,3,1688,'T',0),(9407,4,1689,'T',0),(9408,1,1692,'T',0),(9408,2,1693,'T',0),(9408,3,1694,'T',0),(9408,4,1695,'T',1),(9409,1,1698,'T',1),(9409,2,1699,'T',0),(9409,3,1700,'T',0),(9409,4,1701,'T',0),(9410,1,1704,'T',0),(9410,2,1705,'T',1),(9410,3,1706,'T',0),(9410,4,1707,'T',0),(9411,1,1710,'T',0),(9411,2,1711,'T',0),(9411,3,1712,'T',0),(9411,4,1713,'T',1),(9412,1,1716,'T',0),(9412,2,1717,'T',1),(9412,3,1718,'T',0),(9412,4,1719,'T',0),(9501,1,1722,'T',0),(9501,2,1723,'T',0),(9501,3,1724,'T',0),(9501,4,1725,'T',1),(9502,1,1728,'T',0),(9502,2,1729,'T',0),(9502,3,1730,'T',1),(9502,4,1731,'T',0),(9503,1,1734,'T',0),(9503,2,1735,'T',1),(9503,3,1736,'T',0),(9503,4,1737,'T',0),(9504,1,1740,'T',0),(9504,2,1741,'T',0),(9504,3,1742,'T',1),(9504,4,1743,'T',0),(9505,1,1746,'T',0),(9505,2,1747,'T',0),(9505,3,1748,'T',0),(9505,4,1749,'T',1),(9506,1,1752,'T',1),(9506,2,1753,'T',0),(9506,3,1754,'T',0),(9506,4,1755,'T',0),(9507,1,1758,'T',0),(9507,2,1759,'T',1),(9507,3,1760,'T',0),(9507,4,1761,'T',0),(9508,1,1764,'T',1),(9508,2,1765,'T',0),(9508,3,1766,'T',0),(9508,4,1767,'T',0),(9509,1,1770,'T',0),(9509,2,1771,'T',0),(9509,3,1772,'T',0),(9509,4,1773,'T',1),(9510,1,1776,'T',0),(9510,2,1777,'T',0),(9510,3,1778,'T',1),(9510,4,1779,'T',0),(9511,1,1782,'T',0),(9511,2,1783,'T',0),(9511,3,1784,'T',1),(9511,4,1785,'T',0),(9512,1,1788,'T',1),(9512,2,1789,'T',0),(9512,3,1790,'T',0),(9512,4,1791,'T',0),(9601,1,1795,'T',0),(9601,2,1796,'T',0),(9601,3,1797,'T',1),(9601,4,1798,'T',0),(9602,1,1802,'T',0),(9602,2,1803,'T',1),(9602,3,1804,'T',0),(9603,1,1808,'T',1),(9603,2,1809,'T',0),(9603,3,1810,'T',0),(9604,1,1814,'T',1),(9604,2,1815,'T',0),(9605,1,1819,'T',0),(9605,2,1820,'T',1),(9606,1,1824,'T',0),(9606,2,1825,'T',1),(9606,3,1826,'T',0),(9606,4,1827,'T',0),(9607,1,1831,'T',1),(9607,2,1832,'T',0),(9607,3,1833,'T',0),(9607,4,1834,'T',0),(9608,1,1838,'T',0),(9608,2,1839,'T',0),(9608,3,1840,'T',1),(9609,1,1844,'T',0),(9609,2,1845,'T',1),(9609,3,1846,'T',0),(9610,1,1850,'T',0),(9610,2,1851,'T',0),(9610,3,1852,'T',1),(9610,4,1853,'T',0),(9611,1,1857,'T',0),(9611,2,1858,'T',0),(9611,3,1859,'T',1),(9612,1,1863,'T',0),(9612,2,1864,'T',1),(9612,3,1865,'T',0);
/*!40000 ALTER TABLE `quagga_alternative` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_answer`
--

DROP TABLE IF EXISTS `quagga_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_answer` (
  `ans_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prs_id` varchar(40) DEFAULT NULL,
  `tst_id` int(11) NOT NULL DEFAULT '0',
  `exa_date_taken` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tqu_id` int(11) NOT NULL DEFAULT '0',
  `que_id` int(11) NOT NULL DEFAULT '0',
  `alt_id` int(11) NOT NULL DEFAULT '0',
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`ans_id`),
  UNIQUE KEY `answer_pk` (`prs_id`,`tst_id`,`exa_date_taken`,`tqu_id`),
  KEY `relation_297_fk` (`tst_id`,`tqu_id`),
  KEY `relation_298_fk` (`que_id`,`alt_id`),
  KEY `relation_725_fk` (`prs_id`,`tst_id`,`exa_date_taken`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_answer`
--

LOCK TABLES `quagga_answer` WRITE;
/*!40000 ALTER TABLE `quagga_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_configuration`
--

DROP TABLE IF EXISTS `quagga_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_configuration` (
  `cfg_id` int(11) NOT NULL AUTO_INCREMENT,
  `prs_id` varchar(40) DEFAULT NULL,
  `cfg_name` varchar(30) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`cfg_id`),
  UNIQUE KEY `configuration_pk` (`cfg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_configuration`
--

LOCK TABLES `quagga_configuration` WRITE;
/*!40000 ALTER TABLE `quagga_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_datatype`
--

DROP TABLE IF EXISTS `quagga_datatype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_datatype` (
  `id_datatype` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`id_datatype`),
  UNIQUE KEY `datatype_pk` (`id_datatype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_datatype`
--

LOCK TABLES `quagga_datatype` WRITE;
/*!40000 ALTER TABLE `quagga_datatype` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_datatype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_doc_meta`
--

DROP TABLE IF EXISTS `quagga_doc_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_doc_meta` (
  `doc_id` int(11) NOT NULL DEFAULT '0',
  `id_metavalue` bigint(20) NOT NULL DEFAULT '0',
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`doc_id`,`id_metavalue`),
  UNIQUE KEY `doc_meta_pk` (`doc_id`,`id_metavalue`),
  KEY `fk_doc_meta_metavalue_fk` (`id_metavalue`),
  KEY `relation_2028_fk` (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_doc_meta`
--

LOCK TABLES `quagga_doc_meta` WRITE;
/*!40000 ALTER TABLE `quagga_doc_meta` DISABLE KEYS */;
INSERT INTO `quagga_doc_meta` VALUES (101,157,'2020-05-22 09:54:39'),(101,170,'2020-05-22 09:54:39'),(102,157,'2020-05-22 09:54:39'),(102,167,'2020-05-22 09:54:39'),(103,157,'2020-05-22 09:54:39'),(103,170,'2020-05-22 09:54:39'),(104,157,'2020-05-22 09:54:39'),(104,167,'2020-05-22 09:54:39'),(105,157,'2020-05-22 09:54:39'),(105,163,'2020-05-22 09:54:39'),(106,157,'2020-05-22 09:54:39'),(106,163,'2020-05-22 09:54:39'),(107,157,'2020-05-22 09:54:40'),(107,163,'2020-05-22 09:54:40'),(108,157,'2020-05-22 09:54:40'),(108,163,'2020-05-22 09:54:40'),(109,157,'2020-05-22 09:54:40'),(109,163,'2020-05-22 09:54:40'),(110,157,'2020-05-22 09:54:40'),(110,165,'2020-05-22 09:54:40'),(111,157,'2020-05-22 09:54:40'),(111,159,'2020-05-22 09:54:40'),(112,157,'2020-05-22 09:54:40'),(112,159,'2020-05-22 09:54:40'),(113,157,'2020-05-22 09:54:41'),(113,159,'2020-05-22 09:54:41'),(114,157,'2020-05-22 09:54:41'),(114,158,'2020-05-22 09:54:41'),(115,157,'2020-05-22 09:54:41'),(115,159,'2020-05-22 09:54:41'),(116,157,'2020-05-22 09:54:41'),(116,165,'2020-05-22 09:54:41'),(117,157,'2020-05-22 09:54:41'),(117,162,'2020-05-22 09:54:41'),(118,157,'2020-05-22 09:54:41'),(118,160,'2020-05-22 09:54:41'),(119,157,'2020-05-22 09:54:41'),(119,161,'2020-05-22 09:54:41'),(120,157,'2020-05-22 09:54:42'),(120,170,'2020-05-22 09:54:42'),(121,157,'2020-05-22 09:54:42'),(121,170,'2020-05-22 09:54:42'),(201,157,'2020-05-22 09:54:42'),(201,167,'2020-05-22 09:54:42'),(202,157,'2020-05-22 09:54:42'),(202,169,'2020-05-22 09:54:42'),(203,157,'2020-05-22 09:54:42'),(203,159,'2020-05-22 09:54:42'),(204,157,'2020-05-22 09:54:42'),(204,167,'2020-05-22 09:54:42'),(205,157,'2020-05-22 09:54:43'),(205,163,'2020-05-22 09:54:43'),(207,157,'2020-05-22 09:54:43'),(207,163,'2020-05-22 09:54:43'),(208,157,'2020-05-22 09:54:43'),(208,163,'2020-05-22 09:54:43'),(209,157,'2020-05-22 09:54:43'),(209,163,'2020-05-22 09:54:43'),(210,157,'2020-05-22 09:54:43'),(210,158,'2020-05-22 09:54:43'),(211,157,'2020-05-22 09:54:43'),(211,158,'2020-05-22 09:54:43'),(212,157,'2020-05-22 09:54:43'),(212,159,'2020-05-22 09:54:44'),(213,157,'2020-05-22 09:54:44'),(213,163,'2020-05-22 09:54:44'),(214,157,'2020-05-22 09:54:44'),(214,158,'2020-05-22 09:54:44'),(215,157,'2020-05-22 09:54:44'),(215,158,'2020-05-22 09:54:44'),(216,157,'2020-05-22 09:54:44'),(216,169,'2020-05-22 09:54:44'),(217,157,'2020-05-22 09:54:44'),(217,160,'2020-05-22 09:54:44'),(218,157,'2020-05-22 09:54:44'),(218,159,'2020-05-22 09:54:44'),(219,157,'2020-05-22 09:54:44'),(219,161,'2020-05-22 09:54:44'),(220,157,'2020-05-22 09:54:45'),(220,159,'2020-05-22 09:54:45'),(301,157,'2020-05-22 09:54:45'),(301,167,'2020-05-22 09:54:45'),(302,157,'2020-05-22 09:54:45'),(302,169,'2020-05-22 09:54:45'),(303,157,'2020-05-22 09:54:45'),(303,169,'2020-05-22 09:54:45'),(304,157,'2020-05-22 09:54:45'),(304,170,'2020-05-22 09:54:45'),(305,157,'2020-05-22 09:54:45'),(305,163,'2020-05-22 09:54:45'),(306,157,'2020-05-22 09:54:46'),(306,163,'2020-05-22 09:54:46'),(307,157,'2020-05-22 09:54:46'),(307,163,'2020-05-22 09:54:46'),(308,157,'2020-05-22 09:54:46'),(308,163,'2020-05-22 09:54:46'),(309,157,'2020-05-22 09:54:46'),(309,163,'2020-05-22 09:54:46'),(310,157,'2020-05-22 09:54:46'),(310,159,'2020-05-22 09:54:46'),(311,157,'2020-05-22 09:54:46'),(311,161,'2020-05-22 09:54:46'),(312,157,'2020-05-22 09:54:47'),(312,167,'2020-05-22 09:54:47'),(313,157,'2020-05-22 09:54:47'),(313,159,'2020-05-22 09:54:47'),(314,157,'2020-05-22 09:54:47'),(314,160,'2020-05-22 09:54:47'),(315,157,'2020-05-22 09:54:47'),(315,158,'2020-05-22 09:54:47'),(316,157,'2020-05-22 09:54:47'),(316,159,'2020-05-22 09:54:47'),(317,157,'2020-05-22 09:54:47'),(317,161,'2020-05-22 09:54:47'),(318,157,'2020-05-22 09:54:47'),(318,159,'2020-05-22 09:54:47'),(319,157,'2020-05-22 09:54:47'),(319,167,'2020-05-22 09:54:47'),(320,157,'2020-05-22 09:54:48'),(320,165,'2020-05-22 09:54:48'),(321,157,'2020-05-22 09:54:48'),(321,159,'2020-05-22 09:54:48'),(401,157,'2020-05-22 09:54:48'),(401,167,'2020-05-22 09:54:48'),(403,157,'2020-05-22 09:54:48'),(403,167,'2020-05-22 09:54:48'),(404,157,'2020-05-22 09:54:48'),(404,167,'2020-05-22 09:54:48'),(405,157,'2020-05-22 09:54:48'),(405,163,'2020-05-22 09:54:48'),(406,157,'2020-05-22 09:54:48'),(406,163,'2020-05-22 09:54:49'),(407,157,'2020-05-22 09:54:49'),(407,163,'2020-05-22 09:54:49'),(409,157,'2020-05-22 09:54:49'),(409,163,'2020-05-22 09:54:49'),(410,157,'2020-05-22 09:54:49'),(410,159,'2020-05-22 09:54:49'),(411,157,'2020-05-22 09:54:49'),(411,159,'2020-05-22 09:54:49'),(412,157,'2020-05-22 09:54:49'),(412,158,'2020-05-22 09:54:49'),(413,157,'2020-05-22 09:54:49'),(413,162,'2020-05-22 09:54:49'),(414,157,'2020-05-22 09:54:50'),(414,159,'2020-05-22 09:54:50'),(417,157,'2020-05-22 09:54:50'),(417,170,'2020-05-22 09:54:50'),(418,157,'2020-05-22 09:54:50'),(418,158,'2020-05-22 09:54:50'),(419,157,'2020-05-22 09:54:50'),(419,165,'2020-05-22 09:54:50'),(420,157,'2020-05-22 09:54:50'),(420,159,'2020-05-22 09:54:50'),(421,157,'2020-05-22 09:54:50'),(421,158,'2020-05-22 09:54:50'),(422,157,'2020-05-22 09:54:51'),(422,158,'2020-05-22 09:54:51'),(423,157,'2020-05-22 09:54:51'),(423,158,'2020-05-22 09:54:51'),(508,157,'2020-05-22 09:54:51'),(508,161,'2020-05-22 09:54:51'),(3001,157,'2020-05-22 09:54:51'),(3001,160,'2020-05-22 09:54:51'),(3002,157,'2020-05-22 09:54:51'),(3002,160,'2020-05-22 09:54:51'),(3003,157,'2020-05-22 09:54:51'),(3003,165,'2020-05-22 09:54:51'),(3004,157,'2020-05-22 09:54:52'),(3004,159,'2020-05-22 09:54:52'),(3005,157,'2020-05-22 09:54:52'),(3005,163,'2020-05-22 09:54:52'),(3006,157,'2020-05-22 09:54:52'),(3006,167,'2020-05-22 09:54:52'),(3007,157,'2020-05-22 09:54:52'),(3007,167,'2020-05-22 09:54:52'),(3008,157,'2020-05-22 09:54:52'),(3008,167,'2020-05-22 09:54:52'),(3009,157,'2020-05-22 09:54:52'),(3009,170,'2020-05-22 09:54:52'),(3010,157,'2020-05-22 09:54:53'),(3010,162,'2020-05-22 09:54:53'),(3011,157,'2020-05-22 09:54:53'),(3011,165,'2020-05-22 09:54:53'),(3012,157,'2020-05-22 09:54:53'),(3012,159,'2020-05-22 09:54:53'),(3013,157,'2020-05-22 09:54:53'),(3013,159,'2020-05-22 09:54:53'),(3014,157,'2020-05-22 09:54:53'),(3014,163,'2020-05-22 09:54:53'),(3015,157,'2020-05-22 09:54:54'),(3015,159,'2020-05-22 09:54:54'),(3016,157,'2020-05-22 09:54:54'),(3016,163,'2020-05-22 09:54:54'),(3017,157,'2020-05-22 09:54:54'),(3017,163,'2020-05-22 09:54:54'),(3018,157,'2020-05-22 09:54:54'),(3018,163,'2020-05-22 09:54:54'),(3019,157,'2020-05-22 09:54:54'),(3019,163,'2020-05-22 09:54:54'),(3020,157,'2020-05-22 09:54:54'),(3020,159,'2020-05-22 09:54:54'),(3021,157,'2020-05-22 09:54:55'),(3021,162,'2020-05-22 09:54:55'),(3022,157,'2020-05-22 09:54:55'),(3022,162,'2020-05-22 09:54:55'),(3023,157,'2020-05-22 09:54:55'),(3023,159,'2020-05-22 09:54:55'),(3024,157,'2020-05-22 09:54:55'),(3024,158,'2020-05-22 09:54:55'),(3025,157,'2020-05-22 09:54:55'),(3025,169,'2020-05-22 09:54:55'),(3026,157,'2020-05-22 09:54:55'),(3026,163,'2020-05-22 09:54:55'),(3027,157,'2020-05-22 09:54:56'),(3027,160,'2020-05-22 09:54:56'),(3028,157,'2020-05-22 09:54:56'),(3028,162,'2020-05-22 09:54:56'),(3029,157,'2020-05-22 09:54:56'),(3029,162,'2020-05-22 09:54:56'),(3101,157,'2020-05-22 09:54:56'),(3101,165,'2020-05-22 09:54:56'),(3102,157,'2020-05-22 09:54:56'),(3102,159,'2020-05-22 09:54:56'),(3103,157,'2020-05-22 09:54:57'),(3103,159,'2020-05-22 09:54:57'),(3104,157,'2020-05-22 09:54:57'),(3104,159,'2020-05-22 09:54:57'),(3105,157,'2020-05-22 09:54:57'),(3105,165,'2020-05-22 09:54:57'),(3106,157,'2020-05-22 09:54:57'),(3106,160,'2020-05-22 09:54:57'),(3107,157,'2020-05-22 09:54:57'),(3107,165,'2020-05-22 09:54:57'),(3108,157,'2020-05-22 09:54:57'),(3108,160,'2020-05-22 09:54:57'),(3109,157,'2020-05-22 09:54:58'),(3109,162,'2020-05-22 09:54:58'),(3110,157,'2020-05-22 09:54:58'),(3110,161,'2020-05-22 09:54:58'),(3111,157,'2020-05-22 09:54:58'),(3111,158,'2020-05-22 09:54:58'),(3112,157,'2020-05-22 09:54:58'),(3112,159,'2020-05-22 09:54:58'),(3113,157,'2020-05-22 09:54:58'),(3113,159,'2020-05-22 09:54:58'),(3114,157,'2020-05-22 09:54:59'),(3114,162,'2020-05-22 09:54:59'),(3115,157,'2020-05-22 09:54:59'),(3115,162,'2020-05-22 09:54:59'),(3116,157,'2020-05-22 09:54:59'),(3116,160,'2020-05-22 09:54:59'),(3117,157,'2020-05-22 09:54:59'),(3117,159,'2020-05-22 09:54:59'),(3118,157,'2020-05-22 09:54:59'),(3118,158,'2020-05-22 09:54:59'),(3119,157,'2020-05-22 09:54:59'),(3119,158,'2020-05-22 09:54:59'),(3120,157,'2020-05-22 09:55:00'),(3120,160,'2020-05-22 09:55:00'),(3121,157,'2020-05-22 09:55:00'),(3121,159,'2020-05-22 09:55:00'),(3122,157,'2020-05-22 09:55:00'),(3122,162,'2020-05-22 09:55:00'),(3123,157,'2020-05-22 09:55:00'),(3123,158,'2020-05-22 09:55:00'),(3124,157,'2020-05-22 09:55:00'),(3124,167,'2020-05-22 09:55:00'),(3126,157,'2020-05-22 09:55:01'),(3126,167,'2020-05-22 09:55:01'),(3127,157,'2020-05-22 09:55:01'),(3127,159,'2020-05-22 09:55:01'),(3128,157,'2020-05-22 09:55:01'),(3128,158,'2020-05-22 09:55:01'),(3129,157,'2020-05-22 09:55:01'),(3129,158,'2020-05-22 09:55:01'),(3130,157,'2020-05-22 09:55:01'),(3130,162,'2020-05-22 09:55:01'),(3201,157,'2020-05-22 09:55:01'),(3201,158,'2020-05-22 09:55:01'),(3202,157,'2020-05-22 09:55:02'),(3202,159,'2020-05-22 09:55:02'),(3203,157,'2020-05-22 09:55:02'),(3203,159,'2020-05-22 09:55:02'),(3204,157,'2020-05-22 09:55:02'),(3204,160,'2020-05-22 09:55:02'),(3205,157,'2020-05-22 09:55:02'),(3205,158,'2020-05-22 09:55:02'),(3206,157,'2020-05-22 09:55:02'),(3206,159,'2020-05-22 09:55:02'),(3207,157,'2020-05-22 09:55:03'),(3207,159,'2020-05-22 09:55:03'),(3208,157,'2020-05-22 09:55:03'),(3208,159,'2020-05-22 09:55:03'),(3209,157,'2020-05-22 09:55:03'),(3209,165,'2020-05-22 09:55:03'),(3210,157,'2020-05-22 09:55:03'),(3210,158,'2020-05-22 09:55:03'),(3211,157,'2020-05-22 09:55:03'),(3211,163,'2020-05-22 09:55:03'),(3212,157,'2020-05-22 09:55:03'),(3212,159,'2020-05-22 09:55:03'),(3213,157,'2020-05-22 09:55:04'),(3213,163,'2020-05-22 09:55:04'),(3214,157,'2020-05-22 09:55:04'),(3214,161,'2020-05-22 09:55:04'),(3215,157,'2020-05-22 09:55:04'),(3215,161,'2020-05-22 09:55:04'),(3216,157,'2020-05-22 09:55:04'),(3216,161,'2020-05-22 09:55:04'),(3217,157,'2020-05-22 09:55:04'),(3217,167,'2020-05-22 09:55:04'),(3218,157,'2020-05-22 09:55:04'),(3218,163,'2020-05-22 09:55:05'),(3219,157,'2020-05-22 09:55:05'),(3219,161,'2020-05-22 09:55:05'),(3220,157,'2020-05-22 09:55:05'),(3220,159,'2020-05-22 09:55:05'),(3221,157,'2020-05-22 09:55:05'),(3221,159,'2020-05-22 09:55:05'),(3223,157,'2020-05-22 09:55:05'),(3223,161,'2020-05-22 09:55:05'),(3224,157,'2020-05-22 09:55:05'),(3224,161,'2020-05-22 09:55:05'),(3225,157,'2020-05-22 09:55:06'),(3225,160,'2020-05-22 09:55:06'),(3226,157,'2020-05-22 09:55:06'),(3226,159,'2020-05-22 09:55:06'),(3227,157,'2020-05-22 09:55:06'),(3227,160,'2020-05-22 09:55:06'),(3228,157,'2020-05-22 09:55:06'),(3228,167,'2020-05-22 09:55:06'),(3229,157,'2020-05-22 09:55:06'),(3229,158,'2020-05-22 09:55:06'),(3230,157,'2020-05-22 09:55:06'),(3230,160,'2020-05-22 09:55:06'),(3304,157,'2020-05-22 09:55:07'),(3304,165,'2020-05-22 09:55:07'),(3306,157,'2020-05-22 09:55:07'),(3306,165,'2020-05-22 09:55:07'),(3307,157,'2020-05-22 09:55:07'),(3307,162,'2020-05-22 09:55:07'),(3308,157,'2020-05-22 09:55:07'),(3308,165,'2020-05-22 09:55:07'),(3309,157,'2020-05-22 09:55:07'),(3309,165,'2020-05-22 09:55:07'),(3318,157,'2020-05-22 09:55:08'),(3318,162,'2020-05-22 09:55:08'),(3328,157,'2020-05-22 09:55:08'),(3328,160,'2020-05-22 09:55:08'),(3329,157,'2020-05-22 09:55:08'),(3329,161,'2020-05-22 09:55:08'),(3330,157,'2020-05-22 09:55:08'),(3330,161,'2020-05-22 09:55:08'),(3408,157,'2020-05-22 09:55:08'),(3408,161,'2020-05-22 09:55:08'),(3409,157,'2020-05-22 09:55:08'),(3409,165,'2020-05-22 09:55:08'),(3410,157,'2020-05-22 09:55:09'),(3410,165,'2020-05-22 09:55:09'),(3420,157,'2020-05-22 09:55:09'),(3420,161,'2020-05-22 09:55:09'),(3421,157,'2020-05-22 09:55:09'),(3421,165,'2020-05-22 09:55:09'),(3423,157,'2020-05-22 09:55:09'),(3423,162,'2020-05-22 09:55:09'),(3425,157,'2020-05-22 09:55:09'),(3425,169,'2020-05-22 09:55:09'),(3426,157,'2020-05-22 09:55:10'),(3426,160,'2020-05-22 09:55:10'),(3429,157,'2020-05-22 09:55:10'),(3429,159,'2020-05-22 09:55:10'),(3801,157,'2020-05-22 09:55:10'),(3801,169,'2020-05-22 09:55:10'),(3802,157,'2020-05-22 09:55:10'),(3802,165,'2020-05-22 09:55:10'),(3803,157,'2020-05-22 09:55:10'),(3803,161,'2020-05-22 09:55:10'),(3804,157,'2020-05-22 09:55:10'),(3804,161,'2020-05-22 09:55:10'),(3805,157,'2020-05-22 09:55:11'),(3805,161,'2020-05-22 09:55:11'),(3806,157,'2020-05-22 09:55:11'),(3806,169,'2020-05-22 09:55:11'),(3807,157,'2020-05-22 09:55:11'),(3807,165,'2020-05-22 09:55:11'),(3808,157,'2020-05-22 09:55:11'),(3808,160,'2020-05-22 09:55:11'),(3809,157,'2020-05-22 09:55:11'),(3809,169,'2020-05-22 09:55:11'),(3810,157,'2020-05-22 09:55:11'),(3810,160,'2020-05-22 09:55:11'),(3811,157,'2020-05-22 09:55:12'),(3811,169,'2020-05-22 09:55:12'),(3812,157,'2020-05-22 09:55:12'),(3812,160,'2020-05-22 09:55:12'),(3813,157,'2020-05-22 09:55:12'),(3813,162,'2020-05-22 09:55:12'),(3814,157,'2020-05-22 09:55:12'),(3814,162,'2020-05-22 09:55:12'),(3815,157,'2020-05-22 09:55:12'),(3815,162,'2020-05-22 09:55:12'),(3816,157,'2020-05-22 09:55:13'),(3816,170,'2020-05-22 09:55:13'),(3817,157,'2020-05-22 09:55:13'),(3817,170,'2020-05-22 09:55:13'),(4001,157,'2020-05-22 09:55:13'),(4001,170,'2020-05-22 09:55:13'),(4002,157,'2020-05-22 09:55:13'),(4002,170,'2020-05-22 09:55:13'),(4028,157,'2020-05-22 09:55:13'),(4028,170,'2020-05-22 09:55:13'),(4038,157,'2020-05-22 09:55:14'),(4038,170,'2020-05-22 09:55:14'),(4071,157,'2020-05-22 09:55:14'),(4071,170,'2020-05-22 09:55:14'),(4087,157,'2020-05-22 09:55:14'),(4087,169,'2020-05-22 09:55:14'),(4088,157,'2020-05-22 09:55:14'),(4088,169,'2020-05-22 09:55:14'),(4123,157,'2020-05-22 09:55:14'),(4123,169,'2020-05-22 09:55:14'),(4140,157,'2020-05-22 09:55:15'),(4140,170,'2020-05-22 09:55:15'),(4179,157,'2020-05-22 09:55:15'),(4179,167,'2020-05-22 09:55:15'),(4258,157,'2020-05-22 09:55:15'),(4258,162,'2020-05-22 09:55:15'),(4259,157,'2020-05-22 09:55:15'),(4259,169,'2020-05-22 09:55:15'),(5025,157,'2020-05-22 09:55:15'),(5025,170,'2020-05-22 09:55:15'),(5032,157,'2020-05-22 09:55:15'),(5032,169,'2020-05-22 09:55:15'),(5072,157,'2020-05-22 09:55:16'),(5072,170,'2020-05-22 09:55:16'),(5123,157,'2020-05-22 09:55:16'),(5123,169,'2020-05-22 09:55:16'),(5140,157,'2020-05-22 09:55:16'),(5140,170,'2020-05-22 09:55:16'),(5181,157,'2020-05-22 09:55:16'),(5181,167,'2020-05-22 09:55:16'),(5256,157,'2020-05-22 09:55:16'),(5256,170,'2020-05-22 09:55:16'),(5257,157,'2020-05-22 09:55:17'),(5257,169,'2020-05-22 09:55:17'),(6001,157,'2020-05-22 09:55:17'),(6001,169,'2020-05-22 09:55:17'),(6059,157,'2020-05-22 09:55:17'),(6059,169,'2020-05-22 09:55:17'),(7031,157,'2020-05-22 09:55:17'),(7031,158,'2020-05-22 09:55:17'),(7032,157,'2020-05-22 09:55:17'),(7032,161,'2020-05-22 09:55:17'),(7033,157,'2020-05-22 09:55:17'),(7033,167,'2020-05-22 09:55:17'),(7034,157,'2020-05-22 09:55:18'),(7034,161,'2020-05-22 09:55:18'),(7035,157,'2020-05-22 09:55:18'),(7035,161,'2020-05-22 09:55:18'),(7036,157,'2020-05-22 09:55:18'),(7036,160,'2020-05-22 09:55:18'),(7037,157,'2020-05-22 09:55:18'),(7037,160,'2020-05-22 09:55:18'),(7038,157,'2020-05-22 09:55:18'),(7038,170,'2020-05-22 09:55:18'),(7039,157,'2020-05-22 09:55:18'),(7039,158,'2020-05-22 09:55:18'),(7040,157,'2020-05-22 09:55:19'),(7040,158,'2020-05-22 09:55:19'),(7041,157,'2020-05-22 09:55:19'),(7041,162,'2020-05-22 09:55:19'),(7042,157,'2020-05-22 09:55:19'),(7042,167,'2020-05-22 09:55:19'),(7043,157,'2020-05-22 09:55:19'),(7043,170,'2020-05-22 09:55:19'),(7044,157,'2020-05-22 09:55:19'),(7044,167,'2020-05-22 09:55:19'),(7045,157,'2020-05-22 09:55:19'),(7045,167,'2020-05-22 09:55:19'),(7046,157,'2020-05-22 09:55:20'),(7046,167,'2020-05-22 09:55:20'),(7047,157,'2020-05-22 09:55:20'),(7047,167,'2020-05-22 09:55:20'),(7048,157,'2020-05-22 09:55:20'),(7048,160,'2020-05-22 09:55:20'),(7049,157,'2020-05-22 09:55:20'),(7049,161,'2020-05-22 09:55:20'),(7050,157,'2020-05-22 09:55:20'),(7050,165,'2020-05-22 09:55:20'),(7051,157,'2020-05-22 09:55:21'),(7051,160,'2020-05-22 09:55:21'),(7052,157,'2020-05-22 09:55:21'),(7052,162,'2020-05-22 09:55:21'),(7053,157,'2020-05-22 09:55:21'),(7053,165,'2020-05-22 09:55:21'),(7054,157,'2020-05-22 09:55:21'),(7054,165,'2020-05-22 09:55:21'),(7055,157,'2020-05-22 09:55:21'),(7055,169,'2020-05-22 09:55:21'),(7056,157,'2020-05-22 09:55:21'),(7056,165,'2020-05-22 09:55:21'),(7057,157,'2020-05-22 09:55:22'),(7057,170,'2020-05-22 09:55:22'),(7058,157,'2020-05-22 09:55:22'),(7058,169,'2020-05-22 09:55:22'),(7059,157,'2020-05-22 09:55:22'),(7059,170,'2020-05-22 09:55:22'),(7060,157,'2020-05-22 09:55:22'),(7060,169,'2020-05-22 09:55:22'),(7071,157,'2020-05-22 09:55:22'),(7071,158,'2020-05-22 09:55:22'),(7072,157,'2020-05-22 09:55:23'),(7072,158,'2020-05-22 09:55:23'),(7073,157,'2020-05-22 09:55:23'),(7073,158,'2020-05-22 09:55:23'),(7074,157,'2020-05-22 09:55:23'),(7074,158,'2020-05-22 09:55:23'),(7075,157,'2020-05-22 09:55:23'),(7075,158,'2020-05-22 09:55:23'),(8901,157,'2020-05-22 09:55:23'),(8901,160,'2020-05-22 09:55:23'),(8902,157,'2020-05-22 09:55:23'),(8902,160,'2020-05-22 09:55:23'),(8903,157,'2020-05-22 09:55:23'),(8903,160,'2020-05-22 09:55:23'),(8904,157,'2020-05-22 09:55:24'),(8904,160,'2020-05-22 09:55:24'),(9000,172,'2015-06-21 14:07:37'),(9010,158,'2015-06-21 14:07:37'),(9010,172,'2015-06-21 14:07:37'),(9020,159,'2015-06-21 14:07:37'),(9020,172,'2015-06-21 14:07:37'),(9030,160,'2015-06-21 14:07:37'),(9030,172,'2015-06-21 14:07:37'),(9040,161,'2015-06-21 14:07:37'),(9040,172,'2015-06-21 14:07:37'),(9050,162,'2015-06-21 14:07:37'),(9050,172,'2015-06-21 14:07:37'),(9060,163,'2015-06-21 14:07:37'),(9060,172,'2015-06-21 14:07:37'),(9070,164,'2015-06-21 14:07:38'),(9070,172,'2015-06-21 14:07:38'),(9080,165,'2015-06-21 14:07:38'),(9080,172,'2015-06-21 14:07:38'),(9090,166,'2015-06-21 14:07:38'),(9090,172,'2015-06-21 14:07:38'),(9100,167,'2015-06-21 14:07:38'),(9100,172,'2015-06-21 14:07:38'),(9110,168,'2015-06-21 14:07:38'),(9110,172,'2015-06-21 14:07:38'),(9120,169,'2015-06-21 14:07:38'),(9120,172,'2015-06-21 14:07:38'),(9130,170,'2015-06-21 14:07:38'),(9130,172,'2015-06-21 14:07:38'),(9140,171,'2015-06-21 14:07:39'),(9140,172,'2015-06-21 14:07:38'),(9301,157,'2020-05-22 09:55:24'),(9301,161,'2020-05-22 09:55:24'),(9302,157,'2020-05-22 09:55:24'),(9302,161,'2020-05-22 09:55:24'),(9303,157,'2020-05-22 09:55:24'),(9303,161,'2020-05-22 09:55:24'),(9304,157,'2020-05-22 09:55:24'),(9304,161,'2020-05-22 09:55:24'),(9305,157,'2020-05-22 09:55:24'),(9305,162,'2020-05-22 09:55:25'),(9306,157,'2020-05-22 09:55:25'),(9306,162,'2020-05-22 09:55:25'),(9307,157,'2020-05-22 09:55:25'),(9307,162,'2020-05-22 09:55:25'),(9308,157,'2020-05-22 09:55:25'),(9308,162,'2020-05-22 09:55:25'),(9309,157,'2020-05-22 09:55:25'),(9309,165,'2020-05-22 09:55:25'),(9310,157,'2020-05-22 09:55:25'),(9310,165,'2020-05-22 09:55:25'),(9311,157,'2020-05-22 09:55:26'),(9311,165,'2020-05-22 09:55:26'),(9312,157,'2020-05-22 09:55:26'),(9312,165,'2020-05-22 09:55:26'),(9313,157,'2020-05-22 09:55:26'),(9313,170,'2020-05-22 09:55:26'),(9314,157,'2020-05-22 09:55:26'),(9314,170,'2020-05-22 09:55:26'),(9315,157,'2020-05-22 09:55:26'),(9315,170,'2020-05-22 09:55:26'),(9316,157,'2020-05-22 09:55:26'),(9316,170,'2020-05-22 09:55:26'),(9317,157,'2020-05-22 09:55:27'),(9317,169,'2020-05-22 09:55:27'),(9318,157,'2020-05-22 09:55:27'),(9318,169,'2020-05-22 09:55:27'),(9319,157,'2020-05-22 09:55:27'),(9319,169,'2020-05-22 09:55:27'),(9401,157,'2020-05-22 09:55:27'),(9401,158,'2020-05-22 09:55:27'),(9402,157,'2020-05-22 09:55:27'),(9402,158,'2020-05-22 09:55:27'),(9403,157,'2020-05-22 09:55:27'),(9403,158,'2020-05-22 09:55:27'),(9404,157,'2020-05-22 09:55:28'),(9404,158,'2020-05-22 09:55:28'),(9405,157,'2020-05-22 09:55:28'),(9405,158,'2020-05-22 09:55:28'),(9406,157,'2020-05-22 09:55:28'),(9406,167,'2020-05-22 09:55:28'),(9407,157,'2020-05-22 09:55:28'),(9407,167,'2020-05-22 09:55:28'),(9408,157,'2020-05-22 09:55:28'),(9408,167,'2020-05-22 09:55:28'),(9409,157,'2020-05-22 09:55:28'),(9409,167,'2020-05-22 09:55:29'),(9410,157,'2020-05-22 09:55:29'),(9410,167,'2020-05-22 09:55:29'),(9411,157,'2020-05-22 09:55:29'),(9411,169,'2020-05-22 09:55:29'),(9412,157,'2020-05-22 09:55:29'),(9412,160,'2020-05-22 09:55:29'),(9501,157,'2020-05-22 09:55:29'),(9501,160,'2020-05-22 09:55:29'),(9502,157,'2020-05-22 09:55:29'),(9502,161,'2020-05-22 09:55:29'),(9503,157,'2020-05-22 09:55:30'),(9503,161,'2020-05-22 09:55:30'),(9504,157,'2020-05-22 09:55:30'),(9504,162,'2020-05-22 09:55:30'),(9505,157,'2020-05-22 09:55:30'),(9505,162,'2020-05-22 09:55:30'),(9506,157,'2020-05-22 09:55:30'),(9506,165,'2020-05-22 09:55:30'),(9507,157,'2020-05-22 09:55:30'),(9507,165,'2020-05-22 09:55:30'),(9508,157,'2020-05-22 09:55:30'),(9508,170,'2020-05-22 09:55:30'),(9509,157,'2020-05-22 09:55:31'),(9509,170,'2020-05-22 09:55:31'),(9510,157,'2020-05-22 09:55:31'),(9510,169,'2020-05-22 09:55:31'),(9511,157,'2020-05-22 09:55:31'),(9511,169,'2020-05-22 09:55:31'),(9512,157,'2020-05-22 09:55:31'),(9512,163,'2020-05-22 09:55:31'),(9601,157,'2020-05-22 09:55:31'),(9601,158,'2020-05-22 09:55:31'),(9602,157,'2020-05-22 09:55:32'),(9602,158,'2020-05-22 09:55:32'),(9603,157,'2020-05-22 09:55:32'),(9603,158,'2020-05-22 09:55:32'),(9604,157,'2020-05-22 09:55:32'),(9604,158,'2020-05-22 09:55:32'),(9605,157,'2020-05-22 09:55:32'),(9605,158,'2020-05-22 09:55:32'),(9606,157,'2020-05-22 09:55:32'),(9606,158,'2020-05-22 09:55:32'),(9607,157,'2020-05-22 09:55:32'),(9607,159,'2020-05-22 09:55:32'),(9608,157,'2020-05-22 09:55:33'),(9608,159,'2020-05-22 09:55:33'),(9609,157,'2020-05-22 09:55:33'),(9609,159,'2020-05-22 09:55:33'),(9610,157,'2020-05-22 09:55:33'),(9610,159,'2020-05-22 09:55:33'),(9611,157,'2020-05-22 09:55:33'),(9611,159,'2020-05-22 09:55:33'),(9612,157,'2020-05-22 09:55:33'),(9612,159,'2020-05-22 09:55:33'),(10001,172,'2015-06-21 14:09:22'),(10002,172,'2015-06-21 14:09:43'),(10011,172,'2015-06-21 14:09:22'),(10011,181,'2015-06-21 14:09:22'),(10012,172,'2015-06-21 14:09:43'),(10012,181,'2015-06-21 14:09:43');
/*!40000 ALTER TABLE `quagga_doc_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_document`
--

DROP TABLE IF EXISTS `quagga_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_document` (
  `doc_id` int(11) NOT NULL DEFAULT '0',
  `doc_type` char(1) DEFAULT NULL,
  `doc_name` varchar(30) DEFAULT NULL,
  `doc_description` varchar(255) DEFAULT NULL,
  `doc_uri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`doc_id`),
  UNIQUE KEY `document_pk` (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_document`
--

LOCK TABLES `quagga_document` WRITE;
/*!40000 ALTER TABLE `quagga_document` DISABLE KEYS */;
INSERT INTO `quagga_document` VALUES (101,'Q',NULL,NULL,'xsl/question.xsl'),(102,'Q',NULL,NULL,'xsl/question.xsl'),(103,'Q',NULL,NULL,'xsl/question.xsl'),(104,'Q',NULL,NULL,'xsl/question.xsl'),(105,'Q',NULL,NULL,'xsl/question.xsl'),(106,'Q',NULL,NULL,'xsl/question.xsl'),(107,'Q',NULL,NULL,'xsl/question.xsl'),(108,'Q',NULL,NULL,'xsl/question.xsl'),(109,'Q',NULL,NULL,'xsl/question.xsl'),(110,'Q',NULL,NULL,'xsl/question.xsl'),(111,'Q',NULL,NULL,'xsl/question.xsl'),(112,'Q',NULL,NULL,'xsl/question.xsl'),(113,'Q',NULL,NULL,'xsl/question.xsl'),(114,'Q',NULL,NULL,'xsl/question.xsl'),(115,'Q',NULL,NULL,'xsl/question.xsl'),(116,'Q',NULL,NULL,'xsl/question.xsl'),(117,'Q',NULL,NULL,'xsl/question.xsl'),(118,'Q',NULL,NULL,'xsl/question.xsl'),(119,'Q',NULL,NULL,'xsl/question.xsl'),(120,'Q',NULL,NULL,'xsl/question.xsl'),(121,'Q',NULL,NULL,'xsl/question.xsl'),(201,'Q',NULL,NULL,'xsl/question.xsl'),(202,'Q',NULL,NULL,'xsl/question.xsl'),(203,'Q',NULL,NULL,'xsl/question.xsl'),(204,'Q',NULL,NULL,'xsl/question.xsl'),(205,'Q',NULL,NULL,'xsl/question.xsl'),(207,'Q',NULL,NULL,'xsl/question.xsl'),(208,'Q',NULL,NULL,'xsl/question.xsl'),(209,'Q',NULL,NULL,'xsl/question.xsl'),(210,'Q',NULL,NULL,'xsl/question.xsl'),(211,'Q',NULL,NULL,'xsl/question.xsl'),(212,'Q',NULL,NULL,'xsl/question.xsl'),(213,'Q',NULL,NULL,'xsl/question.xsl'),(214,'Q',NULL,NULL,'xsl/question.xsl'),(215,'Q',NULL,NULL,'xsl/question.xsl'),(216,'Q',NULL,NULL,'xsl/question.xsl'),(217,'Q',NULL,NULL,'xsl/question.xsl'),(218,'Q',NULL,NULL,'xsl/question.xsl'),(219,'Q',NULL,NULL,'xsl/question.xsl'),(220,'Q',NULL,NULL,'xsl/question.xsl'),(301,'Q',NULL,NULL,'xsl/question.xsl'),(302,'Q',NULL,NULL,'xsl/question.xsl'),(303,'Q',NULL,NULL,'xsl/question.xsl'),(304,'Q',NULL,NULL,'xsl/question.xsl'),(305,'Q',NULL,NULL,'xsl/question.xsl'),(306,'Q',NULL,NULL,'xsl/question.xsl'),(307,'Q',NULL,NULL,'xsl/question.xsl'),(308,'Q',NULL,NULL,'xsl/question.xsl'),(309,'Q',NULL,NULL,'xsl/question.xsl'),(310,'Q',NULL,NULL,'xsl/question.xsl'),(311,'Q',NULL,NULL,'xsl/question.xsl'),(312,'Q',NULL,NULL,'xsl/question.xsl'),(313,'Q',NULL,NULL,'xsl/question.xsl'),(314,'Q',NULL,NULL,'xsl/question.xsl'),(315,'Q',NULL,NULL,'xsl/question.xsl'),(316,'Q',NULL,NULL,'xsl/question.xsl'),(317,'Q',NULL,NULL,'xsl/question.xsl'),(318,'Q',NULL,NULL,'xsl/question.xsl'),(319,'Q',NULL,NULL,'xsl/question.xsl'),(320,'Q',NULL,NULL,'xsl/question.xsl'),(321,'Q',NULL,NULL,'xsl/question.xsl'),(401,'Q',NULL,NULL,'xsl/question.xsl'),(403,'Q',NULL,NULL,'xsl/question.xsl'),(404,'Q',NULL,NULL,'xsl/question.xsl'),(405,'Q',NULL,NULL,'xsl/question.xsl'),(406,'Q',NULL,NULL,'xsl/question.xsl'),(407,'Q',NULL,NULL,'xsl/question.xsl'),(409,'Q',NULL,NULL,'xsl/question.xsl'),(410,'Q',NULL,NULL,'xsl/question.xsl'),(411,'Q',NULL,NULL,'xsl/question.xsl'),(412,'Q',NULL,NULL,'xsl/question.xsl'),(413,'Q',NULL,NULL,'xsl/question.xsl'),(414,'Q',NULL,NULL,'xsl/question.xsl'),(417,'Q',NULL,NULL,'xsl/question.xsl'),(418,'Q',NULL,NULL,'xsl/question.xsl'),(419,'Q',NULL,NULL,'xsl/question.xsl'),(420,'Q',NULL,NULL,'xsl/question.xsl'),(421,'Q',NULL,NULL,'xsl/question.xsl'),(422,'Q',NULL,NULL,'xsl/question.xsl'),(423,'Q',NULL,NULL,'xsl/question.xsl'),(508,'Q',NULL,NULL,'xsl/question.xsl'),(3001,'Q',NULL,NULL,'xsl/question.xsl'),(3002,'Q',NULL,NULL,'xsl/question.xsl'),(3003,'Q',NULL,NULL,'xsl/question.xsl'),(3004,'Q',NULL,NULL,'xsl/question.xsl'),(3005,'Q',NULL,NULL,'xsl/question.xsl'),(3006,'Q',NULL,NULL,'xsl/question.xsl'),(3007,'Q',NULL,NULL,'xsl/question.xsl'),(3008,'Q',NULL,NULL,'xsl/question.xsl'),(3009,'Q',NULL,NULL,'xsl/question.xsl'),(3010,'Q',NULL,NULL,'xsl/question.xsl'),(3011,'Q',NULL,NULL,'xsl/question.xsl'),(3012,'Q',NULL,NULL,'xsl/question.xsl'),(3013,'Q',NULL,NULL,'xsl/question.xsl'),(3014,'Q',NULL,NULL,'xsl/question.xsl'),(3015,'Q',NULL,NULL,'xsl/question.xsl'),(3016,'Q',NULL,NULL,'xsl/question.xsl'),(3017,'Q',NULL,NULL,'xsl/question.xsl'),(3018,'Q',NULL,NULL,'xsl/question.xsl'),(3019,'Q',NULL,NULL,'xsl/question.xsl'),(3020,'Q',NULL,NULL,'xsl/question.xsl'),(3021,'Q',NULL,NULL,'xsl/question.xsl'),(3022,'Q',NULL,NULL,'xsl/question.xsl'),(3023,'Q',NULL,NULL,'xsl/question.xsl'),(3024,'Q',NULL,NULL,'xsl/question.xsl'),(3025,'Q',NULL,NULL,'xsl/question.xsl'),(3026,'Q',NULL,NULL,'xsl/question.xsl'),(3027,'Q',NULL,NULL,'xsl/question.xsl'),(3028,'Q',NULL,NULL,'xsl/question.xsl'),(3029,'Q',NULL,NULL,'xsl/question.xsl'),(3101,'Q',NULL,NULL,'xsl/question.xsl'),(3102,'Q',NULL,NULL,'xsl/question.xsl'),(3103,'Q',NULL,NULL,'xsl/question.xsl'),(3104,'Q',NULL,NULL,'xsl/question.xsl'),(3105,'Q',NULL,NULL,'xsl/question.xsl'),(3106,'Q',NULL,NULL,'xsl/question.xsl'),(3107,'Q',NULL,NULL,'xsl/question.xsl'),(3108,'Q',NULL,NULL,'xsl/question.xsl'),(3109,'Q',NULL,NULL,'xsl/question.xsl'),(3110,'Q',NULL,NULL,'xsl/question.xsl'),(3111,'Q',NULL,NULL,'xsl/question.xsl'),(3112,'Q',NULL,NULL,'xsl/question.xsl'),(3113,'Q',NULL,NULL,'xsl/question.xsl'),(3114,'Q',NULL,NULL,'xsl/question.xsl'),(3115,'Q',NULL,NULL,'xsl/question.xsl'),(3116,'Q',NULL,NULL,'xsl/question.xsl'),(3117,'Q',NULL,NULL,'xsl/question.xsl'),(3118,'Q',NULL,NULL,'xsl/question.xsl'),(3119,'Q',NULL,NULL,'xsl/question.xsl'),(3120,'Q',NULL,NULL,'xsl/question.xsl'),(3121,'Q',NULL,NULL,'xsl/question.xsl'),(3122,'Q',NULL,NULL,'xsl/question.xsl'),(3123,'Q',NULL,NULL,'xsl/question.xsl'),(3124,'Q',NULL,NULL,'xsl/question.xsl'),(3126,'Q',NULL,NULL,'xsl/question.xsl'),(3127,'Q',NULL,NULL,'xsl/question.xsl'),(3128,'Q',NULL,NULL,'xsl/question.xsl'),(3129,'Q',NULL,NULL,'xsl/question.xsl'),(3130,'Q',NULL,NULL,'xsl/question.xsl'),(3201,'Q',NULL,NULL,'xsl/question.xsl'),(3202,'Q',NULL,NULL,'xsl/question.xsl'),(3203,'Q',NULL,NULL,'xsl/question.xsl'),(3204,'Q',NULL,NULL,'xsl/question.xsl'),(3205,'Q',NULL,NULL,'xsl/question.xsl'),(3206,'Q',NULL,NULL,'xsl/question.xsl'),(3207,'Q',NULL,NULL,'xsl/question.xsl'),(3208,'Q',NULL,NULL,'xsl/question.xsl'),(3209,'Q',NULL,NULL,'xsl/question.xsl'),(3210,'Q',NULL,NULL,'xsl/question.xsl'),(3211,'Q',NULL,NULL,'xsl/question.xsl'),(3212,'Q',NULL,NULL,'xsl/question.xsl'),(3213,'Q',NULL,NULL,'xsl/question.xsl'),(3214,'Q',NULL,NULL,'xsl/question.xsl'),(3215,'Q',NULL,NULL,'xsl/question.xsl'),(3216,'Q',NULL,NULL,'xsl/question.xsl'),(3217,'Q',NULL,NULL,'xsl/question.xsl'),(3218,'Q',NULL,NULL,'xsl/question.xsl'),(3219,'Q',NULL,NULL,'xsl/question.xsl'),(3220,'Q',NULL,NULL,'xsl/question.xsl'),(3221,'Q',NULL,NULL,'xsl/question.xsl'),(3223,'Q',NULL,NULL,'xsl/question.xsl'),(3224,'Q',NULL,NULL,'xsl/question.xsl'),(3225,'Q',NULL,NULL,'xsl/question.xsl'),(3226,'Q',NULL,NULL,'xsl/question.xsl'),(3227,'Q',NULL,NULL,'xsl/question.xsl'),(3228,'Q',NULL,NULL,'xsl/question.xsl'),(3229,'Q',NULL,NULL,'xsl/question.xsl'),(3230,'Q',NULL,NULL,'xsl/question.xsl'),(3304,'Q',NULL,NULL,'xsl/question.xsl'),(3306,'Q',NULL,NULL,'xsl/question.xsl'),(3307,'Q',NULL,NULL,'xsl/question.xsl'),(3308,'Q',NULL,NULL,'xsl/question.xsl'),(3309,'Q',NULL,NULL,'xsl/question.xsl'),(3318,'Q',NULL,NULL,'xsl/question.xsl'),(3328,'Q',NULL,NULL,'xsl/question.xsl'),(3329,'Q',NULL,NULL,'xsl/question.xsl'),(3330,'Q',NULL,NULL,'xsl/question.xsl'),(3408,'Q',NULL,NULL,'xsl/question.xsl'),(3409,'Q',NULL,NULL,'xsl/question.xsl'),(3410,'Q',NULL,NULL,'xsl/question.xsl'),(3420,'Q',NULL,NULL,'xsl/question.xsl'),(3421,'Q',NULL,NULL,'xsl/question.xsl'),(3423,'Q',NULL,NULL,'xsl/question.xsl'),(3425,'Q',NULL,NULL,'xsl/question.xsl'),(3426,'Q',NULL,NULL,'xsl/question.xsl'),(3429,'Q',NULL,NULL,'xsl/question.xsl'),(3801,'Q',NULL,NULL,'xsl/question.xsl'),(3802,'Q',NULL,NULL,'xsl/question.xsl'),(3803,'Q',NULL,NULL,'xsl/question.xsl'),(3804,'Q',NULL,NULL,'xsl/question.xsl'),(3805,'Q',NULL,NULL,'xsl/question.xsl'),(3806,'Q',NULL,NULL,'xsl/question.xsl'),(3807,'Q',NULL,NULL,'xsl/question.xsl'),(3808,'Q',NULL,NULL,'xsl/question.xsl'),(3809,'Q',NULL,NULL,'xsl/question.xsl'),(3810,'Q',NULL,NULL,'xsl/question.xsl'),(3811,'Q',NULL,NULL,'xsl/question.xsl'),(3812,'Q',NULL,NULL,'xsl/question.xsl'),(3813,'Q',NULL,NULL,'xsl/question.xsl'),(3814,'Q',NULL,NULL,'xsl/question.xsl'),(3815,'Q',NULL,NULL,'xsl/question.xsl'),(3816,'Q',NULL,NULL,'xsl/question.xsl'),(3817,'Q',NULL,NULL,'xsl/question.xsl'),(4001,'Q',NULL,NULL,'xsl/question.xsl'),(4002,'Q',NULL,NULL,'xsl/question.xsl'),(4028,'Q',NULL,NULL,'xsl/question.xsl'),(4038,'Q',NULL,NULL,'xsl/question.xsl'),(4071,'Q',NULL,NULL,'xsl/question.xsl'),(4087,'Q',NULL,NULL,'xsl/question.xsl'),(4088,'Q',NULL,NULL,'xsl/question.xsl'),(4123,'Q',NULL,NULL,'xsl/question.xsl'),(4140,'Q',NULL,NULL,'xsl/question.xsl'),(4179,'Q',NULL,NULL,'xsl/question.xsl'),(4258,'Q',NULL,NULL,'xsl/question.xsl'),(4259,'Q',NULL,NULL,'xsl/question.xsl'),(5025,'Q',NULL,NULL,'xsl/question.xsl'),(5032,'Q',NULL,NULL,'xsl/question.xsl'),(5072,'Q',NULL,NULL,'xsl/question.xsl'),(5123,'Q',NULL,NULL,'xsl/question.xsl'),(5140,'Q',NULL,NULL,'xsl/question.xsl'),(5181,'Q',NULL,NULL,'xsl/question.xsl'),(5256,'Q',NULL,NULL,'xsl/question.xsl'),(5257,'Q',NULL,NULL,'xsl/question.xsl'),(6001,'Q',NULL,NULL,'xsl/question.xsl'),(6059,'Q',NULL,NULL,'xsl/question.xsl'),(7031,'Q',NULL,NULL,'xsl/question.xsl'),(7032,'Q',NULL,NULL,'xsl/question.xsl'),(7033,'Q',NULL,NULL,'xsl/question.xsl'),(7034,'Q',NULL,NULL,'xsl/question.xsl'),(7035,'Q',NULL,NULL,'xsl/question.xsl'),(7036,'Q',NULL,NULL,'xsl/question.xsl'),(7037,'Q',NULL,NULL,'xsl/question.xsl'),(7038,'Q',NULL,NULL,'xsl/question.xsl'),(7039,'Q',NULL,NULL,'xsl/question.xsl'),(7040,'Q',NULL,NULL,'xsl/question.xsl'),(7041,'Q',NULL,NULL,'xsl/question.xsl'),(7042,'Q',NULL,NULL,'xsl/question.xsl'),(7043,'Q',NULL,NULL,'xsl/question.xsl'),(7044,'Q',NULL,NULL,'xsl/question.xsl'),(7045,'Q',NULL,NULL,'xsl/question.xsl'),(7046,'Q',NULL,NULL,'xsl/question.xsl'),(7047,'Q',NULL,NULL,'xsl/question.xsl'),(7048,'Q',NULL,NULL,'xsl/question.xsl'),(7049,'Q',NULL,NULL,'xsl/question.xsl'),(7050,'Q',NULL,NULL,'xsl/question.xsl'),(7051,'Q',NULL,NULL,'xsl/question.xsl'),(7052,'Q',NULL,NULL,'xsl/question.xsl'),(7053,'Q',NULL,NULL,'xsl/question.xsl'),(7054,'Q',NULL,NULL,'xsl/question.xsl'),(7055,'Q',NULL,NULL,'xsl/question.xsl'),(7056,'Q',NULL,NULL,'xsl/question.xsl'),(7057,'Q',NULL,NULL,'xsl/question.xsl'),(7058,'Q',NULL,NULL,'xsl/question.xsl'),(7059,'Q',NULL,NULL,'xsl/question.xsl'),(7060,'Q',NULL,NULL,'xsl/question.xsl'),(7071,'Q',NULL,NULL,'xsl/question.xsl'),(7072,'Q',NULL,NULL,'xsl/question.xsl'),(7073,'Q',NULL,NULL,'xsl/question.xsl'),(7074,'Q',NULL,NULL,'xsl/question.xsl'),(7075,'Q',NULL,NULL,'xsl/question.xsl'),(8901,'Q',NULL,NULL,'xsl/question.xsl'),(8902,'Q',NULL,NULL,'xsl/question.xsl'),(8903,'Q',NULL,NULL,'xsl/question.xsl'),(8904,'Q',NULL,NULL,'xsl/question.xsl'),(9000,'P','Contents','Contents','Version2011.html'),(9010,'P','General','General','SA.html'),(9020,'P','Defensive driving','Defensive driving','SB.html'),(9030,'P','Emergency','Emergency','SC.html'),(9040,'P','Lines and lanes','Lines and lanes','SD.html'),(9050,'P','Overtaking','Overtaking','SE.html'),(9060,'P','Road Junctions','Road Junctions','SF.html'),(9070,'P','Roundabouts','Roundabouts','SG.html'),(9080,'P','Reversing','Reversing','SH.html'),(9090,'P','Lights','Lights','SI.html'),(9100,'P','Waiting and parking','Waiting and parking','SJ.html'),(9110,'P','Warning signs','Warning signs','SW.html'),(9120,'P','Prohibitory signs','Prohibitory signs','SP.html'),(9130,'P','Mandatory signs','Mandatory signs','SM.html'),(9140,'P','Informatory signs','Informatory signs','SX.html'),(9301,'Q',NULL,NULL,'xsl/question.xsl'),(9302,'Q',NULL,NULL,'xsl/question.xsl'),(9303,'Q',NULL,NULL,'xsl/question.xsl'),(9304,'Q',NULL,NULL,'xsl/question.xsl'),(9305,'Q',NULL,NULL,'xsl/question.xsl'),(9306,'Q',NULL,NULL,'xsl/question.xsl'),(9307,'Q',NULL,NULL,'xsl/question.xsl'),(9308,'Q',NULL,NULL,'xsl/question.xsl'),(9309,'Q',NULL,NULL,'xsl/question.xsl'),(9310,'Q',NULL,NULL,'xsl/question.xsl'),(9311,'Q',NULL,NULL,'xsl/question.xsl'),(9312,'Q',NULL,NULL,'xsl/question.xsl'),(9313,'Q',NULL,NULL,'xsl/question.xsl'),(9314,'Q',NULL,NULL,'xsl/question.xsl'),(9315,'Q',NULL,NULL,'xsl/question.xsl'),(9316,'Q',NULL,NULL,'xsl/question.xsl'),(9317,'Q',NULL,NULL,'xsl/question.xsl'),(9318,'Q',NULL,NULL,'xsl/question.xsl'),(9319,'Q',NULL,NULL,'xsl/question.xsl'),(9401,'Q',NULL,NULL,'xsl/question.xsl'),(9402,'Q',NULL,NULL,'xsl/question.xsl'),(9403,'Q',NULL,NULL,'xsl/question.xsl'),(9404,'Q',NULL,NULL,'xsl/question.xsl'),(9405,'Q',NULL,NULL,'xsl/question.xsl'),(9406,'Q',NULL,NULL,'xsl/question.xsl'),(9407,'Q',NULL,NULL,'xsl/question.xsl'),(9408,'Q',NULL,NULL,'xsl/question.xsl'),(9409,'Q',NULL,NULL,'xsl/question.xsl'),(9410,'Q',NULL,NULL,'xsl/question.xsl'),(9411,'Q',NULL,NULL,'xsl/question.xsl'),(9412,'Q',NULL,NULL,'xsl/question.xsl'),(9501,'Q',NULL,NULL,'xsl/question.xsl'),(9502,'Q',NULL,NULL,'xsl/question.xsl'),(9503,'Q',NULL,NULL,'xsl/question.xsl'),(9504,'Q',NULL,NULL,'xsl/question.xsl'),(9505,'Q',NULL,NULL,'xsl/question.xsl'),(9506,'Q',NULL,NULL,'xsl/question.xsl'),(9507,'Q',NULL,NULL,'xsl/question.xsl'),(9508,'Q',NULL,NULL,'xsl/question.xsl'),(9509,'Q',NULL,NULL,'xsl/question.xsl'),(9510,'Q',NULL,NULL,'xsl/question.xsl'),(9511,'Q',NULL,NULL,'xsl/question.xsl'),(9512,'Q',NULL,NULL,'xsl/question.xsl'),(9601,'Q',NULL,NULL,'xsl/question.xsl'),(9602,'Q',NULL,NULL,'xsl/question.xsl'),(9603,'Q',NULL,NULL,'xsl/question.xsl'),(9604,'Q',NULL,NULL,'xsl/question.xsl'),(9605,'Q',NULL,NULL,'xsl/question.xsl'),(9606,'Q',NULL,NULL,'xsl/question.xsl'),(9607,'Q',NULL,NULL,'xsl/question.xsl'),(9608,'Q',NULL,NULL,'xsl/question.xsl'),(9609,'Q',NULL,NULL,'xsl/question.xsl'),(9610,'Q',NULL,NULL,'xsl/question.xsl'),(9611,'Q',NULL,NULL,'xsl/question.xsl'),(9612,'Q',NULL,NULL,'xsl/question.xsl'),(10001,'P','Contenu','Contenu','Version2015.html'),(10002,'P','Contents','Contents','Version2015.html'),(10011,'P','Signalisation verticale','Signalisation verticale','C1.html'),(10012,'P','Vertical signalling','Vertical signalling','C1.html');
/*!40000 ALTER TABLE `quagga_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_drivingschool`
--

DROP TABLE IF EXISTS `quagga_drivingschool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_drivingschool` (
  `dvs_id` int(11) NOT NULL,
  `dvs_name` varchar(75) DEFAULT NULL,
  `dvs_latitude` double DEFAULT NULL,
  `dvs_longitude` double DEFAULT NULL,
  `dvs_description` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`dvs_id`),
  KEY `IX_472A7F83` (`dvs_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_drivingschool`
--

LOCK TABLES `quagga_drivingschool` WRITE;
/*!40000 ALTER TABLE `quagga_drivingschool` DISABLE KEYS */;
INSERT INTO `quagga_drivingschool` VALUES (1,'toptech',52.29,4.99,'Toptech Transport and Logistics');
/*!40000 ALTER TABLE `quagga_drivingschool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_evaluation`
--

DROP TABLE IF EXISTS `quagga_evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_evaluation` (
  `tgr_id` int(11) NOT NULL DEFAULT '0',
  `tst_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tgr_id`,`tst_id`),
  UNIQUE KEY `RELATION_3064_PK` (`tgr_id`,`tst_id`),
  KEY `RELATION_3064_FK2` (`tgr_id`),
  KEY `RELATION_3064_FK` (`tst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_evaluation`
--

LOCK TABLES `quagga_evaluation` WRITE;
/*!40000 ALTER TABLE `quagga_evaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_examination`
--

DROP TABLE IF EXISTS `quagga_examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_examination` (
  `exa_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prs_id` varchar(40) DEFAULT NULL,
  `tst_id` int(11) NOT NULL DEFAULT '0',
  `exa_date_taken` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pro_id` int(11) DEFAULT NULL,
  `exa_count_tqu_correct` int(11) DEFAULT NULL,
  `exa_mode` int(11) NOT NULL DEFAULT '0',
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`exa_id`),
  UNIQUE KEY `examination_pk` (`prs_id`,`tst_id`,`exa_date_taken`),
  KEY `relation_1260_fk` (`prs_id`),
  KEY `relation_405_fk` (`tst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141645 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_examination`
--

LOCK TABLES `quagga_examination` WRITE;
/*!40000 ALTER TABLE `quagga_examination` DISABLE KEYS */;
INSERT INTO `quagga_examination` VALUES (141639,'SzD52VFb6Udn3nu41WfFEHEzAjI5uUnY7e52sToY',103,'2020-05-22 08:42:21',9310,1,1,NULL),(141640,'SzD52VFb6Udn3nu41WfFEHEzAjI5uUnY7e52sToY',103,'2020-05-22 08:42:39',9310,0,1,NULL),(141641,'SzD52VFb6Udn3nu41WfFEHEzAjI5uUnY7e52sToY',103,'2020-05-22 08:42:56',9310,0,1,NULL),(141642,'SzD52VFb6Udn3nu41WfFEHEzAjI5uUnY7e52sToY',103,'2020-05-22 08:45:23',9310,0,1,NULL),(141643,'SzD52VFb6Udn3nu41WfFEHEzAjI5uUnY7e52sToY',103,'2020-05-22 08:45:39',9310,0,1,NULL),(141644,'SzD52VFb6Udn3nu41WfFEHEzAjI5uUnY7e52sToY',103,'2020-05-22 08:46:39',9310,1,1,NULL);
/*!40000 ALTER TABLE `quagga_examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_expl_part`
--

DROP TABLE IF EXISTS `quagga_expl_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_expl_part` (
  `que_id` int(11) NOT NULL DEFAULT '0',
  `med_id` int(11) NOT NULL DEFAULT '0',
  `med_type` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`que_id`),
  UNIQUE KEY `expl_part_pk` (`que_id`),
  KEY `relation_724_fk` (`med_id`,`med_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_expl_part`
--

LOCK TABLES `quagga_expl_part` WRITE;
/*!40000 ALTER TABLE `quagga_expl_part` DISABLE KEYS */;
INSERT INTO `quagga_expl_part` VALUES (101,5,'T'),(102,11,'T'),(103,16,'T'),(104,21,'T'),(105,27,'T'),(106,33,'T'),(107,38,'T'),(108,44,'T'),(109,50,'T'),(110,54,'T'),(111,58,'T'),(112,62,'T'),(113,67,'T'),(114,71,'T'),(115,76,'T'),(116,81,'T'),(117,86,'T'),(118,91,'T'),(119,97,'T'),(120,103,'T'),(121,109,'T'),(201,114,'T'),(202,120,'T'),(203,125,'T'),(204,131,'T'),(205,136,'T'),(207,140,'T'),(208,146,'T'),(209,152,'T'),(210,156,'T'),(211,161,'T'),(212,166,'T'),(213,170,'T'),(214,174,'T'),(215,178,'T'),(216,183,'T'),(217,187,'T'),(218,191,'T'),(219,196,'T'),(220,201,'T'),(301,206,'T'),(302,212,'T'),(303,218,'T'),(304,224,'T'),(305,231,'T'),(306,236,'T'),(307,242,'T'),(308,247,'T'),(309,252,'T'),(310,258,'T'),(311,262,'T'),(312,266,'T'),(313,271,'T'),(314,275,'T'),(315,280,'T'),(316,284,'T'),(317,289,'T'),(318,293,'T'),(319,298,'T'),(320,302,'T'),(321,306,'T'),(401,311,'T'),(403,317,'T'),(404,322,'T'),(405,327,'T'),(406,333,'T'),(407,338,'T'),(409,344,'T'),(410,348,'T'),(411,352,'T'),(412,358,'T'),(413,364,'T'),(414,369,'T'),(417,375,'T'),(418,380,'T'),(419,386,'T'),(420,391,'T'),(421,396,'T'),(422,401,'T'),(423,406,'T'),(508,411,'T'),(3001,418,'T'),(3002,425,'T'),(3003,430,'T'),(3004,437,'T'),(3005,442,'T'),(3006,447,'T'),(3007,452,'T'),(3008,459,'T'),(3009,466,'T'),(3010,473,'T'),(3011,478,'T'),(3012,485,'T'),(3013,491,'T'),(3014,498,'T'),(3015,504,'T'),(3016,509,'T'),(3017,516,'T'),(3018,521,'T'),(3019,528,'T'),(3020,535,'T'),(3021,541,'T'),(3022,547,'T'),(3023,554,'T'),(3024,560,'T'),(3025,567,'T'),(3026,573,'T'),(3027,580,'T'),(3028,587,'T'),(3029,594,'T'),(3101,600,'T'),(3102,606,'T'),(3103,612,'T'),(3104,618,'T'),(3105,624,'T'),(3106,630,'T'),(3107,636,'T'),(3108,642,'T'),(3109,649,'T'),(3110,655,'T'),(3111,661,'T'),(3112,667,'T'),(3113,674,'T'),(3114,680,'T'),(3115,686,'T'),(3116,692,'T'),(3117,698,'T'),(3118,705,'T'),(3119,711,'T'),(3120,717,'T'),(3121,723,'T'),(3122,729,'T'),(3123,736,'T'),(3124,742,'T'),(3126,749,'T'),(3127,755,'T'),(3128,761,'T'),(3129,768,'T'),(3130,774,'T'),(3201,780,'T'),(3202,787,'T'),(3203,793,'T'),(3204,799,'T'),(3205,805,'T'),(3206,811,'T'),(3207,817,'T'),(3208,823,'T'),(3209,829,'T'),(3210,835,'T'),(3211,841,'T'),(3212,847,'T'),(3213,853,'T'),(3214,859,'T'),(3215,865,'T'),(3216,871,'T'),(3217,877,'T'),(3218,883,'T'),(3219,889,'T'),(3220,895,'T'),(3221,902,'T'),(3223,908,'T'),(3224,914,'T'),(3225,920,'T'),(3226,926,'T'),(3227,932,'T'),(3228,938,'T'),(3229,944,'T'),(3230,950,'T'),(3304,956,'T'),(3306,962,'T'),(3307,968,'T'),(3308,974,'T'),(3309,980,'T'),(3318,986,'T'),(3328,992,'T'),(3329,998,'T'),(3330,1004,'T'),(3408,1010,'T'),(3409,1016,'T'),(3410,1022,'T'),(3420,1029,'T'),(3421,1036,'T'),(3423,1042,'T'),(3425,1048,'T'),(3426,1055,'T'),(3429,1062,'T'),(3801,1068,'T'),(3802,1074,'T'),(3803,1080,'T'),(3804,1086,'T'),(3805,1092,'T'),(3806,1098,'T'),(3807,1104,'T'),(3808,1110,'T'),(3809,1116,'T'),(3810,1122,'T'),(3811,1128,'T'),(3812,1134,'T'),(3813,1140,'T'),(3814,1146,'T'),(3815,1152,'T'),(3816,1158,'T'),(3817,1164,'T'),(4001,1171,'T'),(4002,1178,'T'),(4028,1185,'T'),(4038,1192,'T'),(4071,1199,'T'),(4087,1206,'T'),(4088,1213,'T'),(4123,1220,'T'),(4140,1227,'T'),(4179,1234,'T'),(4258,1241,'T'),(4259,1248,'T'),(5025,1254,'T'),(5032,1260,'T'),(5072,1266,'T'),(5123,1272,'T'),(5140,1278,'T'),(5181,1284,'T'),(5256,1290,'T'),(5257,1295,'T'),(6001,1300,'T'),(6059,1305,'T'),(7031,1311,'T'),(7032,1317,'T'),(7033,1323,'T'),(7034,1329,'T'),(7035,1335,'T'),(7036,1341,'T'),(7037,1347,'T'),(7038,1353,'T'),(7039,1359,'T'),(7040,1365,'T'),(7041,1371,'T'),(7042,1377,'T'),(7043,1383,'T'),(7044,1389,'T'),(7045,1395,'T'),(7046,1401,'T'),(7047,1407,'T'),(7048,1413,'T'),(7049,1419,'T'),(7050,1425,'T'),(7051,1431,'T'),(7052,1437,'T'),(7053,1443,'T'),(7054,1449,'T'),(7055,1455,'T'),(7056,1461,'T'),(7057,1467,'T'),(7058,1473,'T'),(7059,1479,'T'),(7060,1485,'T'),(7071,1490,'T'),(7072,1495,'T'),(7073,1500,'T'),(7074,1505,'T'),(7075,1510,'T'),(8901,1516,'T'),(8902,1522,'T'),(8903,1528,'T'),(8904,1534,'T'),(9301,1540,'T'),(9302,1546,'T'),(9303,1552,'T'),(9304,1558,'T'),(9305,1564,'T'),(9306,1570,'T'),(9307,1576,'T'),(9308,1582,'T'),(9309,1588,'T'),(9310,1594,'T'),(9311,1600,'T'),(9312,1606,'T'),(9313,1612,'T'),(9314,1618,'T'),(9315,1624,'T'),(9316,1630,'T'),(9317,1636,'T'),(9318,1642,'T'),(9319,1648,'T'),(9401,1654,'T'),(9402,1660,'T'),(9403,1666,'T'),(9404,1672,'T'),(9405,1678,'T'),(9406,1684,'T'),(9407,1690,'T'),(9408,1696,'T'),(9409,1702,'T'),(9410,1708,'T'),(9411,1714,'T'),(9412,1720,'T'),(9501,1726,'T'),(9502,1732,'T'),(9503,1738,'T'),(9504,1744,'T'),(9505,1750,'T'),(9506,1756,'T'),(9507,1762,'T'),(9508,1768,'T'),(9509,1774,'T'),(9510,1780,'T'),(9511,1786,'T'),(9512,1792,'T'),(9601,1799,'T'),(9602,1805,'T'),(9603,1811,'T'),(9604,1816,'T'),(9605,1821,'T'),(9606,1828,'T'),(9607,1835,'T'),(9608,1841,'T'),(9609,1847,'T'),(9610,1854,'T'),(9611,1860,'T'),(9612,1866,'T');
/*!40000 ALTER TABLE `quagga_expl_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_graphic`
--

DROP TABLE IF EXISTS `quagga_graphic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_graphic` (
  `med_id` int(11) NOT NULL DEFAULT '0',
  `med_type` char(1) NOT NULL DEFAULT '',
  `grf_code` varchar(100) DEFAULT NULL,
  `grf_filename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`med_id`,`med_type`),
  UNIQUE KEY `graphic_pk` (`med_id`,`med_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_graphic`
--

LOCK TABLES `quagga_graphic` WRITE;
/*!40000 ALTER TABLE `quagga_graphic` DISABLE KEYS */;
INSERT INTO `quagga_graphic` VALUES (2,'B','TURN_RIGHT.jpg','TURN_RIGHT.jpg'),(3,'B','TURN_RIGHT_AT_JUNCTION.jpg','TURN_RIGHT_AT_JUNCTION.jpg'),(4,'B','KEEP_RIGHT.jpg','KEEP_RIGHT.jpg'),(7,'B','dr0102.jpg','dr0102.jpg'),(13,'B','dr0103.jpg','dr0103.jpg'),(18,'B','dr0104.jpg','dr0104.jpg'),(23,'B','dr0105.jpg','dr0105.jpg'),(29,'B','dr0106.jpg','dr0106.jpg'),(35,'B','dr0107.jpg','dr0107.jpg'),(40,'B','dr0108.jpg','dr0108.jpg'),(46,'B','dr0109.jpg','dr0109.jpg'),(78,'B','dr0116.jpg','dr0116.jpg'),(93,'B','dr0119.jpg','dr0119.jpg'),(99,'B','dr0120.jpg','dr0120.jpg'),(105,'B','dr0120.jpg','dr0120.jpg'),(111,'B','dr0201.jpg','dr0201.jpg'),(116,'B','dr0202.jpg','dr0202.jpg'),(122,'B','dr0203.jpg','dr0203.jpg'),(127,'B','dr0204.jpg','dr0204.jpg'),(133,'B','dr0205.jpg','dr0205.jpg'),(142,'B','dr0208.jpg','dr0208.jpg'),(148,'B','dr0209.jpg','dr0209.jpg'),(180,'B','dr0216.jpg','dr0216.jpg'),(193,'B','dr0219.jpg','dr0219.jpg'),(203,'B','dr0301.jpg','dr0301.jpg'),(208,'B','dr0302.jpg','dr0302.jpg'),(214,'B','dr0303.jpg','dr0303.jpg'),(220,'B','dr0304.jpg','dr0304.jpg'),(226,'B','dr0305.jpg','dr0305.jpg'),(233,'B','dr0306.jpg','dr0306.jpg'),(238,'B','dr0307.jpg','dr0307.jpg'),(244,'B','dr0308.jpg','dr0308.jpg'),(249,'B','dr0309.jpg','dr0309.jpg'),(286,'B','dr0317.jpg','dr0317.jpg'),(295,'B','dr0319.jpg','dr0319.jpg'),(308,'B','dr0401.jpg','dr0401.jpg'),(313,'B','dr0403.jpg','dr0403.jpg'),(319,'B','dr0404.jpg','dr0404.jpg'),(324,'B','dr0405.jpg','dr0405.jpg'),(329,'B','dr0406.jpg','dr0406.jpg'),(335,'B','dr0407.jpg','dr0407.jpg'),(340,'B','dr0409.jpg','dr0409.jpg'),(371,'B','dr0417.jpg','dr0417.jpg'),(382,'B','dr0419.jpg','dr0419.jpg'),(408,'B','dr0508.jpg','dr0508.jpg'),(413,'B','fo3001.jpg','fo3001.jpg'),(420,'B','fo3002.jpg','fo3002.jpg'),(427,'B','fo3003.jpg','fo3003.jpg'),(432,'B','fo3004.jpg','fo3004.jpg'),(439,'B','fo3005.jpg','fo3005.jpg'),(444,'B','fo3006.jpg','fo3006.jpg'),(449,'B','fo3006.jpg','fo3006.jpg'),(454,'B','fo3008.jpg','fo3008.jpg'),(461,'B','fo3009.jpg','fo3009.jpg'),(468,'B','fo3010.jpg','fo3010.jpg'),(475,'B','fo3003.jpg','fo3003.jpg'),(480,'B','fo3012.jpg','fo3012.jpg'),(487,'B','fo3012.jpg','fo3012.jpg'),(493,'B','fo3014.jpg','fo3014.jpg'),(500,'B','fo3015.jpg','fo3015.jpg'),(506,'B','fo3016.jpg','fo3016.jpg'),(511,'B','fo3017.jpg','fo3017.jpg'),(518,'B','fo3017.jpg','fo3017.jpg'),(523,'B','fo3017.jpg','fo3017.jpg'),(530,'B','fo3020.jpg','fo3020.jpg'),(537,'B','fo3021.jpg','fo3021.jpg'),(543,'B','fo3021.jpg','fo3021.jpg'),(549,'B','fo3023.jpg','fo3023.jpg'),(562,'B','NO_SOUNDING_HORN.jpg','NO_SOUNDING_HORN.jpg'),(569,'B','fo3026.jpg','fo3026.jpg'),(575,'B','fo3027.jpg','fo3027.jpg'),(582,'B','fo3028.jpg','fo3028.jpg'),(589,'B','fo3029.jpg','fo3029.jpg'),(644,'B','fo3109.jpg','fo3109.jpg'),(669,'B','fo3113.jpg','fo3113.jpg'),(700,'B','fo3118.jpg','fo3118.jpg'),(731,'B','fo3123.jpg','fo3123.jpg'),(744,'B','fo3126.jpg','fo3126.jpg'),(763,'B','fo3129.jpg','fo3129.jpg'),(782,'B','fo3202.jpg','fo3202.jpg'),(897,'B','fo3221.jpg','fo3221.jpg'),(1024,'B','fo3118.jpg','fo3118.jpg'),(1031,'B','fo3421.jpg','fo3421.jpg'),(1050,'B','fo3129.jpg','fo3129.jpg'),(1057,'B','fo3429.jpg','fo3429.jpg'),(1166,'B','MAXIMUM_SPEED_50_KMH.jpg','MAXIMUM_SPEED_50_KMH.jpg'),(1173,'B','MAXIMUM_SPEED_50_KMH.jpg','MAXIMUM_SPEED_50_KMH.jpg'),(1180,'B','STOP.jpg','STOP.jpg'),(1187,'B','PRIORITY_TO_VEHICLE_FROM_OPPOSITE_DIRECTION.jpg','PRIORITY_TO_VEHICLE_FROM_OPPOSITE_DIRECTION.jpg'),(1194,'B','COMPULSARY_ROUNDABOUT.jpg','COMPULSARY_ROUNDABOUT.jpg'),(1201,'B','NO_STOPPING.jpg','NO_STOPPING.jpg'),(1208,'B','NO_STOPPING.jpg','NO_STOPPING.jpg'),(1215,'B','NO_OVERTAKING.jpg','NO_OVERTAKING.jpg'),(1222,'B','MOTORWAY.jpg','MOTORWAY.jpg'),(1229,'B','RIGHT_BEND.jpg','RIGHT_BEND.jpg'),(1236,'B','NO_THROUGH_ROAD_ON_RIGHT.jpg','NO_THROUGH_ROAD_ON_RIGHT.jpg'),(1243,'B','LEVEL_CROSSING_90_M_AHEAD.jpg','LEVEL_CROSSING_90_M_AHEAD.jpg'),(1250,'B','PASS_EITHER_SIDE.jpg','PASS_EITHER_SIDE.jpg'),(1251,'B','RIGHT_BEND.jpg','RIGHT_BEND.jpg'),(1252,'B','GIVE_WAY.jpg','GIVE_WAY.jpg'),(1253,'B','TURN_LEFT_AT_JUNCTION.jpg','TURN_LEFT_AT_JUNCTION.jpg'),(1256,'B','NO_ENTRY_FOR_MOTORCYCLES.jpg','NO_ENTRY_FOR_MOTORCYCLES.jpg'),(1257,'B','KEEP_RIGHT.jpg','KEEP_RIGHT.jpg'),(1258,'B','NO_ENTRY.jpg','NO_ENTRY.jpg'),(1259,'B','STOP.jpg','STOP.jpg'),(1262,'B','COMPULSARY_ROUNDABOUT.jpg','COMPULSARY_ROUNDABOUT.jpg'),(1263,'B','LEFT_BEND.jpg','LEFT_BEND.jpg'),(1264,'B','RIGHT_BEND.jpg','RIGHT_BEND.jpg'),(1265,'B','NO_STOPPING.jpg','NO_STOPPING.jpg'),(1268,'B','NO_OVERTAKING_BY_GOODS_VEHICLES.jpg','NO_OVERTAKING_BY_GOODS_VEHICLES.jpg'),(1269,'B','NO_OVERTAKING.jpg','NO_OVERTAKING.jpg'),(1270,'B','NO_U-TURN.jpg','NO_U-TURN.jpg'),(1271,'B','NO_ENTRY_FOR_VEHICLES_HIGHER_THAN_3.5_METER.jpg','NO_ENTRY_FOR_VEHICLES_HIGHER_THAN_3.5_METER.jpg'),(1274,'B','NO_OVERTAKING_BY_GOODS_VEHICLES.jpg','NO_OVERTAKING_BY_GOODS_VEHICLES.jpg'),(1275,'B','NO_OVERTAKING.jpg','NO_OVERTAKING.jpg'),(1276,'B','MOTORWAY.jpg','MOTORWAY.jpg'),(1277,'B','NO_STOPPING.jpg','NO_STOPPING.jpg'),(1280,'B','SHARP_REVERSE_CURVE_TO_LEFT.jpg','SHARP_REVERSE_CURVE_TO_LEFT.jpg'),(1281,'B','LEFT_BEND.jpg','LEFT_BEND.jpg'),(1282,'B','SHARP_REVERSE_CURVE_TO_RIGHT.jpg','SHARP_REVERSE_CURVE_TO_RIGHT.jpg'),(1283,'B','RIGHT_BEND.jpg','RIGHT_BEND.jpg'),(1286,'B','NO_THROUGH_ROAD_ON_RIGHT.jpg','NO_THROUGH_ROAD_ON_RIGHT.jpg'),(1287,'B','NO_THROUGH_ROAD.jpg','NO_THROUGH_ROAD.jpg'),(1288,'B','NO_ENTRY.jpg','NO_ENTRY.jpg'),(1289,'B','NO_ENTRY_FOR_GOODS_VEHICLES.jpg','NO_ENTRY_FOR_GOODS_VEHICLES.jpg'),(1292,'B','LEVEL_CROSSING_30_M_AHEAD.jpg','LEVEL_CROSSING_30_M_AHEAD.jpg'),(1293,'B','LEVEL_CROSSING_60_M_AHEAD.jpg','LEVEL_CROSSING_60_M_AHEAD.jpg'),(1294,'B','LEVEL_CROSSING_90_M_AHEAD.jpg','LEVEL_CROSSING_90_M_AHEAD.jpg'),(1297,'B','NO_ENTRY.jpg','NO_ENTRY.jpg'),(1302,'B','NO_STOPPING.jpg','NO_STOPPING.jpg'),(1794,'B','accgro02.jpg','accgro02.jpg'),(1801,'B','accmog04.jpg','accmog04.jpg'),(1807,'B','accmog01.jpg','accmog01.jpg'),(1813,'B','accgro01.jpg','accgro01.jpg'),(1818,'B','accmog03.jpg','accmog03.jpg'),(1823,'B','accgnp01.jpg','accgnp01.jpg'),(1830,'B','accyen01.jpg','accyen01.jpg'),(1837,'B','accneg01.jpg','accneg01.jpg'),(1843,'B','accunk02.jpg','accunk02.jpg'),(1849,'B','accunk03.jpg','accunk03.jpg'),(1856,'B','accmog02.jpg','accmog02.jpg'),(1862,'B','accunk01.jpg','accunk01.jpg');
/*!40000 ALTER TABLE `quagga_graphic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_last`
--

DROP TABLE IF EXISTS `quagga_last`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_last` (
  `prim_key` int(11) NOT NULL DEFAULT '0',
  `last_generated_person` int(11) DEFAULT NULL,
  `last_generated_log_entry` int(11) DEFAULT NULL,
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`prim_key`),
  UNIQUE KEY `last_pk` (`prim_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_last`
--

LOCK TABLES `quagga_last` WRITE;
/*!40000 ALTER TABLE `quagga_last` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_last` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_last_ad`
--

DROP TABLE IF EXISTS `quagga_last_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_last_ad` (
  `prim_key` int(11) NOT NULL DEFAULT '0',
  `last_generated_ad` int(11) DEFAULT NULL,
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`prim_key`),
  UNIQUE KEY `last_ad_pk` (`prim_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_last_ad`
--

LOCK TABLES `quagga_last_ad` WRITE;
/*!40000 ALTER TABLE `quagga_last_ad` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_last_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_lesson`
--

DROP TABLE IF EXISTS `quagga_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_lesson` (
  `les_id` int(11) NOT NULL DEFAULT '0',
  `tst_id` int(11) DEFAULT NULL,
  `les_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`les_id`),
  UNIQUE KEY `lesson_pk` (`les_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_lesson`
--

LOCK TABLES `quagga_lesson` WRITE;
/*!40000 ALTER TABLE `quagga_lesson` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_lesson_element`
--

DROP TABLE IF EXISTS `quagga_lesson_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_lesson_element` (
  `les_id` int(11) NOT NULL DEFAULT '0',
  `lee_id` int(11) NOT NULL DEFAULT '0',
  `doc_id` int(11) NOT NULL DEFAULT '0',
  `tqu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`les_id`,`lee_id`),
  UNIQUE KEY `lesson_element_pk` (`les_id`,`lee_id`),
  KEY `relation_392_fk` (`doc_id`),
  KEY `relation_2704_fk` (`les_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_lesson_element`
--

LOCK TABLES `quagga_lesson_element` WRITE;
/*!40000 ALTER TABLE `quagga_lesson_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_lesson_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_log_entry`
--

DROP TABLE IF EXISTS `quagga_log_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_log_entry` (
  `id_log_entry` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_log_level` int(11) NOT NULL DEFAULT '0',
  `log_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_person` int(11) DEFAULT NULL,
  `session_id` varchar(20) DEFAULT NULL,
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`id_log_entry`),
  UNIQUE KEY `log_entry_pk` (`id_log_entry`),
  KEY `relation_1080_fk` (`id_log_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_log_entry`
--

LOCK TABLES `quagga_log_entry` WRITE;
/*!40000 ALTER TABLE `quagga_log_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_log_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_log_level`
--

DROP TABLE IF EXISTS `quagga_log_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_log_level` (
  `id_log_level` int(11) NOT NULL DEFAULT '0',
  `description` varchar(20) NOT NULL DEFAULT '',
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`id_log_level`),
  UNIQUE KEY `log_level_pk` (`id_log_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_log_level`
--

LOCK TABLES `quagga_log_level` WRITE;
/*!40000 ALTER TABLE `quagga_log_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_log_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_log_message`
--

DROP TABLE IF EXISTS `quagga_log_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_log_message` (
  `id_log_entry` bigint(20) NOT NULL AUTO_INCREMENT,
  `sequence_number` int(11) NOT NULL DEFAULT '0',
  `log_time` datetime DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`id_log_entry`,`sequence_number`),
  UNIQUE KEY `log_message_pk` (`id_log_entry`,`sequence_number`),
  KEY `relation_1084_fk` (`id_log_entry`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_log_message`
--

LOCK TABLES `quagga_log_message` WRITE;
/*!40000 ALTER TABLE `quagga_log_message` DISABLE KEYS */;
INSERT INTO `quagga_log_message` VALUES (1,0,'2012-10-08 19:09:55','0:0 zb.use.exam.Examinator.getExamQuestion failed: Einde test reeds bereikt','2012-10-08 19:09:55');
/*!40000 ALTER TABLE `quagga_log_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_medium`
--

DROP TABLE IF EXISTS `quagga_medium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_medium` (
  `med_id` int(11) NOT NULL DEFAULT '0',
  `med_type` char(1) NOT NULL DEFAULT '',
  `med_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`med_id`,`med_type`),
  UNIQUE KEY `medium_pk` (`med_id`,`med_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_medium`
--

LOCK TABLES `quagga_medium` WRITE;
/*!40000 ALTER TABLE `quagga_medium` DISABLE KEYS */;
INSERT INTO `quagga_medium` VALUES (1,'T',NULL),(2,'B',NULL),(3,'B',NULL),(4,'B',NULL),(5,'T',NULL),(6,'T',NULL),(7,'B',NULL),(8,'T',NULL),(9,'T',NULL),(10,'T',NULL),(11,'T',NULL),(12,'T',NULL),(13,'B',NULL),(14,'T',NULL),(15,'T',NULL),(16,'T',NULL),(17,'T',NULL),(18,'B',NULL),(19,'T',NULL),(20,'T',NULL),(21,'T',NULL),(22,'T',NULL),(23,'B',NULL),(24,'T',NULL),(25,'T',NULL),(26,'T',NULL),(27,'T',NULL),(28,'T',NULL),(29,'B',NULL),(30,'T',NULL),(31,'T',NULL),(32,'T',NULL),(33,'T',NULL),(34,'T',NULL),(35,'B',NULL),(36,'T',NULL),(37,'T',NULL),(38,'T',NULL),(39,'T',NULL),(40,'B',NULL),(41,'T',NULL),(42,'T',NULL),(43,'T',NULL),(44,'T',NULL),(45,'T',NULL),(46,'B',NULL),(47,'T',NULL),(48,'T',NULL),(49,'T',NULL),(50,'T',NULL),(51,'T',NULL),(52,'T',NULL),(53,'T',NULL),(54,'T',NULL),(55,'T',NULL),(56,'T',NULL),(57,'T',NULL),(58,'T',NULL),(59,'T',NULL),(60,'T',NULL),(61,'T',NULL),(62,'T',NULL),(63,'T',NULL),(64,'T',NULL),(65,'T',NULL),(66,'T',NULL),(67,'T',NULL),(68,'T',NULL),(69,'T',NULL),(70,'T',NULL),(71,'T',NULL),(72,'T',NULL),(73,'T',NULL),(74,'T',NULL),(75,'T',NULL),(76,'T',NULL),(77,'T',NULL),(78,'B',NULL),(79,'T',NULL),(80,'T',NULL),(81,'T',NULL),(82,'T',NULL),(83,'T',NULL),(84,'T',NULL),(85,'T',NULL),(86,'T',NULL),(87,'T',NULL),(88,'T',NULL),(89,'T',NULL),(90,'T',NULL),(91,'T',NULL),(92,'T',NULL),(93,'B',NULL),(94,'T',NULL),(95,'T',NULL),(96,'T',NULL),(97,'T',NULL),(98,'T',NULL),(99,'B',NULL),(100,'T',NULL),(101,'T',NULL),(102,'T',NULL),(103,'T',NULL),(104,'T',NULL),(105,'B',NULL),(106,'T',NULL),(107,'T',NULL),(108,'T',NULL),(109,'T',NULL),(110,'T',NULL),(111,'B',NULL),(112,'T',NULL),(113,'T',NULL),(114,'T',NULL),(115,'T',NULL),(116,'B',NULL),(117,'T',NULL),(118,'T',NULL),(119,'T',NULL),(120,'T',NULL),(121,'T',NULL),(122,'B',NULL),(123,'T',NULL),(124,'T',NULL),(125,'T',NULL),(126,'T',NULL),(127,'B',NULL),(128,'T',NULL),(129,'T',NULL),(130,'T',NULL),(131,'T',NULL),(132,'T',NULL),(133,'B',NULL),(134,'T',NULL),(135,'T',NULL),(136,'T',NULL),(137,'T',NULL),(138,'T',NULL),(139,'T',NULL),(140,'T',NULL),(141,'T',NULL),(142,'B',NULL),(143,'T',NULL),(144,'T',NULL),(145,'T',NULL),(146,'T',NULL),(147,'T',NULL),(148,'B',NULL),(149,'T',NULL),(150,'T',NULL),(151,'T',NULL),(152,'T',NULL),(153,'T',NULL),(154,'T',NULL),(155,'T',NULL),(156,'T',NULL),(157,'T',NULL),(158,'T',NULL),(159,'T',NULL),(160,'T',NULL),(161,'T',NULL),(162,'T',NULL),(163,'T',NULL),(164,'T',NULL),(165,'T',NULL),(166,'T',NULL),(167,'T',NULL),(168,'T',NULL),(169,'T',NULL),(170,'T',NULL),(171,'T',NULL),(172,'T',NULL),(173,'T',NULL),(174,'T',NULL),(175,'T',NULL),(176,'T',NULL),(177,'T',NULL),(178,'T',NULL),(179,'T',NULL),(180,'B',NULL),(181,'T',NULL),(182,'T',NULL),(183,'T',NULL),(184,'T',NULL),(185,'T',NULL),(186,'T',NULL),(187,'T',NULL),(188,'T',NULL),(189,'T',NULL),(190,'T',NULL),(191,'T',NULL),(192,'T',NULL),(193,'B',NULL),(194,'T',NULL),(195,'T',NULL),(196,'T',NULL),(197,'T',NULL),(198,'T',NULL),(199,'T',NULL),(200,'T',NULL),(201,'T',NULL),(202,'T',NULL),(203,'B',NULL),(204,'T',NULL),(205,'T',NULL),(206,'T',NULL),(207,'T',NULL),(208,'B',NULL),(209,'T',NULL),(210,'T',NULL),(211,'T',NULL),(212,'T',NULL),(213,'T',NULL),(214,'B',NULL),(215,'T',NULL),(216,'T',NULL),(217,'T',NULL),(218,'T',NULL),(219,'T',NULL),(220,'B',NULL),(221,'T',NULL),(222,'T',NULL),(223,'T',NULL),(224,'T',NULL),(225,'T',NULL),(226,'B',NULL),(227,'T',NULL),(228,'T',NULL),(229,'T',NULL),(230,'T',NULL),(231,'T',NULL),(232,'T',NULL),(233,'B',NULL),(234,'T',NULL),(235,'T',NULL),(236,'T',NULL),(237,'T',NULL),(238,'B',NULL),(239,'T',NULL),(240,'T',NULL),(241,'T',NULL),(242,'T',NULL),(243,'T',NULL),(244,'B',NULL),(245,'T',NULL),(246,'T',NULL),(247,'T',NULL),(248,'T',NULL),(249,'B',NULL),(250,'T',NULL),(251,'T',NULL),(252,'T',NULL),(253,'T',NULL),(254,'T',NULL),(255,'T',NULL),(256,'T',NULL),(257,'T',NULL),(258,'T',NULL),(259,'T',NULL),(260,'T',NULL),(261,'T',NULL),(262,'T',NULL),(263,'T',NULL),(264,'T',NULL),(265,'T',NULL),(266,'T',NULL),(267,'T',NULL),(268,'T',NULL),(269,'T',NULL),(270,'T',NULL),(271,'T',NULL),(272,'T',NULL),(273,'T',NULL),(274,'T',NULL),(275,'T',NULL),(276,'T',NULL),(277,'T',NULL),(278,'T',NULL),(279,'T',NULL),(280,'T',NULL),(281,'T',NULL),(282,'T',NULL),(283,'T',NULL),(284,'T',NULL),(285,'T',NULL),(286,'B',NULL),(287,'T',NULL),(288,'T',NULL),(289,'T',NULL),(290,'T',NULL),(291,'T',NULL),(292,'T',NULL),(293,'T',NULL),(294,'T',NULL),(295,'B',NULL),(296,'T',NULL),(297,'T',NULL),(298,'T',NULL),(299,'T',NULL),(300,'T',NULL),(301,'T',NULL),(302,'T',NULL),(303,'T',NULL),(304,'T',NULL),(305,'T',NULL),(306,'T',NULL),(307,'T',NULL),(308,'B',NULL),(309,'T',NULL),(310,'T',NULL),(311,'T',NULL),(312,'T',NULL),(313,'B',NULL),(314,'T',NULL),(315,'T',NULL),(316,'T',NULL),(317,'T',NULL),(318,'T',NULL),(319,'B',NULL),(320,'T',NULL),(321,'T',NULL),(322,'T',NULL),(323,'T',NULL),(324,'B',NULL),(325,'T',NULL),(326,'T',NULL),(327,'T',NULL),(328,'T',NULL),(329,'B',NULL),(330,'T',NULL),(331,'T',NULL),(332,'T',NULL),(333,'T',NULL),(334,'T',NULL),(335,'B',NULL),(336,'T',NULL),(337,'T',NULL),(338,'T',NULL),(339,'T',NULL),(340,'B',NULL),(341,'T',NULL),(342,'T',NULL),(343,'T',NULL),(344,'T',NULL),(345,'T',NULL),(346,'T',NULL),(347,'T',NULL),(348,'T',NULL),(349,'T',NULL),(350,'T',NULL),(351,'T',NULL),(352,'T',NULL),(353,'T',NULL),(354,'T',NULL),(355,'T',NULL),(356,'T',NULL),(357,'T',NULL),(358,'T',NULL),(359,'T',NULL),(360,'T',NULL),(361,'T',NULL),(362,'T',NULL),(363,'T',NULL),(364,'T',NULL),(365,'T',NULL),(366,'T',NULL),(367,'T',NULL),(368,'T',NULL),(369,'T',NULL),(370,'T',NULL),(371,'B',NULL),(372,'T',NULL),(373,'T',NULL),(374,'T',NULL),(375,'T',NULL),(376,'T',NULL),(377,'T',NULL),(378,'T',NULL),(379,'T',NULL),(380,'T',NULL),(381,'T',NULL),(382,'B',NULL),(383,'T',NULL),(384,'T',NULL),(385,'T',NULL),(386,'T',NULL),(387,'T',NULL),(388,'T',NULL),(389,'T',NULL),(390,'T',NULL),(391,'T',NULL),(392,'T',NULL),(393,'T',NULL),(394,'T',NULL),(395,'T',NULL),(396,'T',NULL),(397,'T',NULL),(398,'T',NULL),(399,'T',NULL),(400,'T',NULL),(401,'T',NULL),(402,'T',NULL),(403,'T',NULL),(404,'T',NULL),(405,'T',NULL),(406,'T',NULL),(407,'T',NULL),(408,'B',NULL),(409,'T',NULL),(410,'T',NULL),(411,'T',NULL),(412,'T',NULL),(413,'B',NULL),(414,'T',NULL),(415,'T',NULL),(416,'T',NULL),(417,'T',NULL),(418,'T',NULL),(419,'T',NULL),(420,'B',NULL),(421,'T',NULL),(422,'T',NULL),(423,'T',NULL),(424,'T',NULL),(425,'T',NULL),(426,'T',NULL),(427,'B',NULL),(428,'T',NULL),(429,'T',NULL),(430,'T',NULL),(431,'T',NULL),(432,'B',NULL),(433,'T',NULL),(434,'T',NULL),(435,'T',NULL),(436,'T',NULL),(437,'T',NULL),(438,'T',NULL),(439,'B',NULL),(440,'T',NULL),(441,'T',NULL),(442,'T',NULL),(443,'T',NULL),(444,'B',NULL),(445,'T',NULL),(446,'T',NULL),(447,'T',NULL),(448,'T',NULL),(449,'B',NULL),(450,'T',NULL),(451,'T',NULL),(452,'T',NULL),(453,'T',NULL),(454,'B',NULL),(455,'T',NULL),(456,'T',NULL),(457,'T',NULL),(458,'T',NULL),(459,'T',NULL),(460,'T',NULL),(461,'B',NULL),(462,'T',NULL),(463,'T',NULL),(464,'T',NULL),(465,'T',NULL),(466,'T',NULL),(467,'T',NULL),(468,'B',NULL),(469,'T',NULL),(470,'T',NULL),(471,'T',NULL),(472,'T',NULL),(473,'T',NULL),(474,'T',NULL),(475,'B',NULL),(476,'T',NULL),(477,'T',NULL),(478,'T',NULL),(479,'T',NULL),(480,'B',NULL),(481,'T',NULL),(482,'T',NULL),(483,'T',NULL),(484,'T',NULL),(485,'T',NULL),(486,'T',NULL),(487,'B',NULL),(488,'T',NULL),(489,'T',NULL),(490,'T',NULL),(491,'T',NULL),(492,'T',NULL),(493,'B',NULL),(494,'T',NULL),(495,'T',NULL),(496,'T',NULL),(497,'T',NULL),(498,'T',NULL),(499,'T',NULL),(500,'B',NULL),(501,'T',NULL),(502,'T',NULL),(503,'T',NULL),(504,'T',NULL),(505,'T',NULL),(506,'B',NULL),(507,'T',NULL),(508,'T',NULL),(509,'T',NULL),(510,'T',NULL),(511,'B',NULL),(512,'T',NULL),(513,'T',NULL),(514,'T',NULL),(515,'T',NULL),(516,'T',NULL),(517,'T',NULL),(518,'B',NULL),(519,'T',NULL),(520,'T',NULL),(521,'T',NULL),(522,'T',NULL),(523,'B',NULL),(524,'T',NULL),(525,'T',NULL),(526,'T',NULL),(527,'T',NULL),(528,'T',NULL),(529,'T',NULL),(530,'B',NULL),(531,'T',NULL),(532,'T',NULL),(533,'T',NULL),(534,'T',NULL),(535,'T',NULL),(536,'T',NULL),(537,'B',NULL),(538,'T',NULL),(539,'T',NULL),(540,'T',NULL),(541,'T',NULL),(542,'T',NULL),(543,'B',NULL),(544,'T',NULL),(545,'T',NULL),(546,'T',NULL),(547,'T',NULL),(548,'T',NULL),(549,'B',NULL),(550,'T',NULL),(551,'T',NULL),(552,'T',NULL),(553,'T',NULL),(554,'T',NULL),(555,'T',NULL),(556,'T',NULL),(557,'T',NULL),(558,'T',NULL),(559,'T',NULL),(560,'T',NULL),(561,'T',NULL),(562,'B',NULL),(563,'T',NULL),(564,'T',NULL),(565,'T',NULL),(566,'T',NULL),(567,'T',NULL),(568,'T',NULL),(569,'B',NULL),(570,'T',NULL),(571,'T',NULL),(572,'T',NULL),(573,'T',NULL),(574,'T',NULL),(575,'B',NULL),(576,'T',NULL),(577,'T',NULL),(578,'T',NULL),(579,'T',NULL),(580,'T',NULL),(581,'T',NULL),(582,'B',NULL),(583,'T',NULL),(584,'T',NULL),(585,'T',NULL),(586,'T',NULL),(587,'T',NULL),(588,'T',NULL),(589,'B',NULL),(590,'T',NULL),(591,'T',NULL),(592,'T',NULL),(593,'T',NULL),(594,'T',NULL),(595,'T',NULL),(596,'T',NULL),(597,'T',NULL),(598,'T',NULL),(599,'T',NULL),(600,'T',NULL),(601,'T',NULL),(602,'T',NULL),(603,'T',NULL),(604,'T',NULL),(605,'T',NULL),(606,'T',NULL),(607,'T',NULL),(608,'T',NULL),(609,'T',NULL),(610,'T',NULL),(611,'T',NULL),(612,'T',NULL),(613,'T',NULL),(614,'T',NULL),(615,'T',NULL),(616,'T',NULL),(617,'T',NULL),(618,'T',NULL),(619,'T',NULL),(620,'T',NULL),(621,'T',NULL),(622,'T',NULL),(623,'T',NULL),(624,'T',NULL),(625,'T',NULL),(626,'T',NULL),(627,'T',NULL),(628,'T',NULL),(629,'T',NULL),(630,'T',NULL),(631,'T',NULL),(632,'T',NULL),(633,'T',NULL),(634,'T',NULL),(635,'T',NULL),(636,'T',NULL),(637,'T',NULL),(638,'T',NULL),(639,'T',NULL),(640,'T',NULL),(641,'T',NULL),(642,'T',NULL),(643,'T',NULL),(644,'B',NULL),(645,'T',NULL),(646,'T',NULL),(647,'T',NULL),(648,'T',NULL),(649,'T',NULL),(650,'T',NULL),(651,'T',NULL),(652,'T',NULL),(653,'T',NULL),(654,'T',NULL),(655,'T',NULL),(656,'T',NULL),(657,'T',NULL),(658,'T',NULL),(659,'T',NULL),(660,'T',NULL),(661,'T',NULL),(662,'T',NULL),(663,'T',NULL),(664,'T',NULL),(665,'T',NULL),(666,'T',NULL),(667,'T',NULL),(668,'T',NULL),(669,'B',NULL),(670,'T',NULL),(671,'T',NULL),(672,'T',NULL),(673,'T',NULL),(674,'T',NULL),(675,'T',NULL),(676,'T',NULL),(677,'T',NULL),(678,'T',NULL),(679,'T',NULL),(680,'T',NULL),(681,'T',NULL),(682,'T',NULL),(683,'T',NULL),(684,'T',NULL),(685,'T',NULL),(686,'T',NULL),(687,'T',NULL),(688,'T',NULL),(689,'T',NULL),(690,'T',NULL),(691,'T',NULL),(692,'T',NULL),(693,'T',NULL),(694,'T',NULL),(695,'T',NULL),(696,'T',NULL),(697,'T',NULL),(698,'T',NULL),(699,'T',NULL),(700,'B',NULL),(701,'T',NULL),(702,'T',NULL),(703,'T',NULL),(704,'T',NULL),(705,'T',NULL),(706,'T',NULL),(707,'T',NULL),(708,'T',NULL),(709,'T',NULL),(710,'T',NULL),(711,'T',NULL),(712,'T',NULL),(713,'T',NULL),(714,'T',NULL),(715,'T',NULL),(716,'T',NULL),(717,'T',NULL),(718,'T',NULL),(719,'T',NULL),(720,'T',NULL),(721,'T',NULL),(722,'T',NULL),(723,'T',NULL),(724,'T',NULL),(725,'T',NULL),(726,'T',NULL),(727,'T',NULL),(728,'T',NULL),(729,'T',NULL),(730,'T',NULL),(731,'B',NULL),(732,'T',NULL),(733,'T',NULL),(734,'T',NULL),(735,'T',NULL),(736,'T',NULL),(737,'T',NULL),(738,'T',NULL),(739,'T',NULL),(740,'T',NULL),(741,'T',NULL),(742,'T',NULL),(743,'T',NULL),(744,'B',NULL),(745,'T',NULL),(746,'T',NULL),(747,'T',NULL),(748,'T',NULL),(749,'T',NULL),(750,'T',NULL),(751,'T',NULL),(752,'T',NULL),(753,'T',NULL),(754,'T',NULL),(755,'T',NULL),(756,'T',NULL),(757,'T',NULL),(758,'T',NULL),(759,'T',NULL),(760,'T',NULL),(761,'T',NULL),(762,'T',NULL),(763,'B',NULL),(764,'T',NULL),(765,'T',NULL),(766,'T',NULL),(767,'T',NULL),(768,'T',NULL),(769,'T',NULL),(770,'T',NULL),(771,'T',NULL),(772,'T',NULL),(773,'T',NULL),(774,'T',NULL),(775,'T',NULL),(776,'T',NULL),(777,'T',NULL),(778,'T',NULL),(779,'T',NULL),(780,'T',NULL),(781,'T',NULL),(782,'B',NULL),(783,'T',NULL),(784,'T',NULL),(785,'T',NULL),(786,'T',NULL),(787,'T',NULL),(788,'T',NULL),(789,'T',NULL),(790,'T',NULL),(791,'T',NULL),(792,'T',NULL),(793,'T',NULL),(794,'T',NULL),(795,'T',NULL),(796,'T',NULL),(797,'T',NULL),(798,'T',NULL),(799,'T',NULL),(800,'T',NULL),(801,'T',NULL),(802,'T',NULL),(803,'T',NULL),(804,'T',NULL),(805,'T',NULL),(806,'T',NULL),(807,'T',NULL),(808,'T',NULL),(809,'T',NULL),(810,'T',NULL),(811,'T',NULL),(812,'T',NULL),(813,'T',NULL),(814,'T',NULL),(815,'T',NULL),(816,'T',NULL),(817,'T',NULL),(818,'T',NULL),(819,'T',NULL),(820,'T',NULL),(821,'T',NULL),(822,'T',NULL),(823,'T',NULL),(824,'T',NULL),(825,'T',NULL),(826,'T',NULL),(827,'T',NULL),(828,'T',NULL),(829,'T',NULL),(830,'T',NULL),(831,'T',NULL),(832,'T',NULL),(833,'T',NULL),(834,'T',NULL),(835,'T',NULL),(836,'T',NULL),(837,'T',NULL),(838,'T',NULL),(839,'T',NULL),(840,'T',NULL),(841,'T',NULL),(842,'T',NULL),(843,'T',NULL),(844,'T',NULL),(845,'T',NULL),(846,'T',NULL),(847,'T',NULL),(848,'T',NULL),(849,'T',NULL),(850,'T',NULL),(851,'T',NULL),(852,'T',NULL),(853,'T',NULL),(854,'T',NULL),(855,'T',NULL),(856,'T',NULL),(857,'T',NULL),(858,'T',NULL),(859,'T',NULL),(860,'T',NULL),(861,'T',NULL),(862,'T',NULL),(863,'T',NULL),(864,'T',NULL),(865,'T',NULL),(866,'T',NULL),(867,'T',NULL),(868,'T',NULL),(869,'T',NULL),(870,'T',NULL),(871,'T',NULL),(872,'T',NULL),(873,'T',NULL),(874,'T',NULL),(875,'T',NULL),(876,'T',NULL),(877,'T',NULL),(878,'T',NULL),(879,'T',NULL),(880,'T',NULL),(881,'T',NULL),(882,'T',NULL),(883,'T',NULL),(884,'T',NULL),(885,'T',NULL),(886,'T',NULL),(887,'T',NULL),(888,'T',NULL),(889,'T',NULL),(890,'T',NULL),(891,'T',NULL),(892,'T',NULL),(893,'T',NULL),(894,'T',NULL),(895,'T',NULL),(896,'T',NULL),(897,'B',NULL),(898,'T',NULL),(899,'T',NULL),(900,'T',NULL),(901,'T',NULL),(902,'T',NULL),(903,'T',NULL),(904,'T',NULL),(905,'T',NULL),(906,'T',NULL),(907,'T',NULL),(908,'T',NULL),(909,'T',NULL),(910,'T',NULL),(911,'T',NULL),(912,'T',NULL),(913,'T',NULL),(914,'T',NULL),(915,'T',NULL),(916,'T',NULL),(917,'T',NULL),(918,'T',NULL),(919,'T',NULL),(920,'T',NULL),(921,'T',NULL),(922,'T',NULL),(923,'T',NULL),(924,'T',NULL),(925,'T',NULL),(926,'T',NULL),(927,'T',NULL),(928,'T',NULL),(929,'T',NULL),(930,'T',NULL),(931,'T',NULL),(932,'T',NULL),(933,'T',NULL),(934,'T',NULL),(935,'T',NULL),(936,'T',NULL),(937,'T',NULL),(938,'T',NULL),(939,'T',NULL),(940,'T',NULL),(941,'T',NULL),(942,'T',NULL),(943,'T',NULL),(944,'T',NULL),(945,'T',NULL),(946,'T',NULL),(947,'T',NULL),(948,'T',NULL),(949,'T',NULL),(950,'T',NULL),(951,'T',NULL),(952,'T',NULL),(953,'T',NULL),(954,'T',NULL),(955,'T',NULL),(956,'T',NULL),(957,'T',NULL),(958,'T',NULL),(959,'T',NULL),(960,'T',NULL),(961,'T',NULL),(962,'T',NULL),(963,'T',NULL),(964,'T',NULL),(965,'T',NULL),(966,'T',NULL),(967,'T',NULL),(968,'T',NULL),(969,'T',NULL),(970,'T',NULL),(971,'T',NULL),(972,'T',NULL),(973,'T',NULL),(974,'T',NULL),(975,'T',NULL),(976,'T',NULL),(977,'T',NULL),(978,'T',NULL),(979,'T',NULL),(980,'T',NULL),(981,'T',NULL),(982,'T',NULL),(983,'T',NULL),(984,'T',NULL),(985,'T',NULL),(986,'T',NULL),(987,'T',NULL),(988,'T',NULL),(989,'T',NULL),(990,'T',NULL),(991,'T',NULL),(992,'T',NULL),(993,'T',NULL),(994,'T',NULL),(995,'T',NULL),(996,'T',NULL),(997,'T',NULL),(998,'T',NULL),(999,'T',NULL),(1000,'T',NULL),(1001,'T',NULL),(1002,'T',NULL),(1003,'T',NULL),(1004,'T',NULL),(1005,'T',NULL),(1006,'T',NULL),(1007,'T',NULL),(1008,'T',NULL),(1009,'T',NULL),(1010,'T',NULL),(1011,'T',NULL),(1012,'T',NULL),(1013,'T',NULL),(1014,'T',NULL),(1015,'T',NULL),(1016,'T',NULL),(1017,'T',NULL),(1018,'T',NULL),(1019,'T',NULL),(1020,'T',NULL),(1021,'T',NULL),(1022,'T',NULL),(1023,'T',NULL),(1024,'B',NULL),(1025,'T',NULL),(1026,'T',NULL),(1027,'T',NULL),(1028,'T',NULL),(1029,'T',NULL),(1030,'T',NULL),(1031,'B',NULL),(1032,'T',NULL),(1033,'T',NULL),(1034,'T',NULL),(1035,'T',NULL),(1036,'T',NULL),(1037,'T',NULL),(1038,'T',NULL),(1039,'T',NULL),(1040,'T',NULL),(1041,'T',NULL),(1042,'T',NULL),(1043,'T',NULL),(1044,'T',NULL),(1045,'T',NULL),(1046,'T',NULL),(1047,'T',NULL),(1048,'T',NULL),(1049,'T',NULL),(1050,'B',NULL),(1051,'T',NULL),(1052,'T',NULL),(1053,'T',NULL),(1054,'T',NULL),(1055,'T',NULL),(1056,'T',NULL),(1057,'B',NULL),(1058,'T',NULL),(1059,'T',NULL),(1060,'T',NULL),(1061,'T',NULL),(1062,'T',NULL),(1063,'T',NULL),(1064,'T',NULL),(1065,'T',NULL),(1066,'T',NULL),(1067,'T',NULL),(1068,'T',NULL),(1069,'T',NULL),(1070,'T',NULL),(1071,'T',NULL),(1072,'T',NULL),(1073,'T',NULL),(1074,'T',NULL),(1075,'T',NULL),(1076,'T',NULL),(1077,'T',NULL),(1078,'T',NULL),(1079,'T',NULL),(1080,'T',NULL),(1081,'T',NULL),(1082,'T',NULL),(1083,'T',NULL),(1084,'T',NULL),(1085,'T',NULL),(1086,'T',NULL),(1087,'T',NULL),(1088,'T',NULL),(1089,'T',NULL),(1090,'T',NULL),(1091,'T',NULL),(1092,'T',NULL),(1093,'T',NULL),(1094,'T',NULL),(1095,'T',NULL),(1096,'T',NULL),(1097,'T',NULL),(1098,'T',NULL),(1099,'T',NULL),(1100,'T',NULL),(1101,'T',NULL),(1102,'T',NULL),(1103,'T',NULL),(1104,'T',NULL),(1105,'T',NULL),(1106,'T',NULL),(1107,'T',NULL),(1108,'T',NULL),(1109,'T',NULL),(1110,'T',NULL),(1111,'T',NULL),(1112,'T',NULL),(1113,'T',NULL),(1114,'T',NULL),(1115,'T',NULL),(1116,'T',NULL),(1117,'T',NULL),(1118,'T',NULL),(1119,'T',NULL),(1120,'T',NULL),(1121,'T',NULL),(1122,'T',NULL),(1123,'T',NULL),(1124,'T',NULL),(1125,'T',NULL),(1126,'T',NULL),(1127,'T',NULL),(1128,'T',NULL),(1129,'T',NULL),(1130,'T',NULL),(1131,'T',NULL),(1132,'T',NULL),(1133,'T',NULL),(1134,'T',NULL),(1135,'T',NULL),(1136,'T',NULL),(1137,'T',NULL),(1138,'T',NULL),(1139,'T',NULL),(1140,'T',NULL),(1141,'T',NULL),(1142,'T',NULL),(1143,'T',NULL),(1144,'T',NULL),(1145,'T',NULL),(1146,'T',NULL),(1147,'T',NULL),(1148,'T',NULL),(1149,'T',NULL),(1150,'T',NULL),(1151,'T',NULL),(1152,'T',NULL),(1153,'T',NULL),(1154,'T',NULL),(1155,'T',NULL),(1156,'T',NULL),(1157,'T',NULL),(1158,'T',NULL),(1159,'T',NULL),(1160,'T',NULL),(1161,'T',NULL),(1162,'T',NULL),(1163,'T',NULL),(1164,'T',NULL),(1165,'T',NULL),(1166,'B',NULL),(1167,'T',NULL),(1168,'T',NULL),(1169,'T',NULL),(1170,'T',NULL),(1171,'T',NULL),(1172,'T',NULL),(1173,'B',NULL),(1174,'T',NULL),(1175,'T',NULL),(1176,'T',NULL),(1177,'T',NULL),(1178,'T',NULL),(1179,'T',NULL),(1180,'B',NULL),(1181,'T',NULL),(1182,'T',NULL),(1183,'T',NULL),(1184,'T',NULL),(1185,'T',NULL),(1186,'T',NULL),(1187,'B',NULL),(1188,'T',NULL),(1189,'T',NULL),(1190,'T',NULL),(1191,'T',NULL),(1192,'T',NULL),(1193,'T',NULL),(1194,'B',NULL),(1195,'T',NULL),(1196,'T',NULL),(1197,'T',NULL),(1198,'T',NULL),(1199,'T',NULL),(1200,'T',NULL),(1201,'B',NULL),(1202,'T',NULL),(1203,'T',NULL),(1204,'T',NULL),(1205,'T',NULL),(1206,'T',NULL),(1207,'T',NULL),(1208,'B',NULL),(1209,'T',NULL),(1210,'T',NULL),(1211,'T',NULL),(1212,'T',NULL),(1213,'T',NULL),(1214,'T',NULL),(1215,'B',NULL),(1216,'T',NULL),(1217,'T',NULL),(1218,'T',NULL),(1219,'T',NULL),(1220,'T',NULL),(1221,'T',NULL),(1222,'B',NULL),(1223,'T',NULL),(1224,'T',NULL),(1225,'T',NULL),(1226,'T',NULL),(1227,'T',NULL),(1228,'T',NULL),(1229,'B',NULL),(1230,'T',NULL),(1231,'T',NULL),(1232,'T',NULL),(1233,'T',NULL),(1234,'T',NULL),(1235,'T',NULL),(1236,'B',NULL),(1237,'T',NULL),(1238,'T',NULL),(1239,'T',NULL),(1240,'T',NULL),(1241,'T',NULL),(1242,'T',NULL),(1243,'B',NULL),(1244,'T',NULL),(1245,'T',NULL),(1246,'T',NULL),(1247,'T',NULL),(1248,'T',NULL),(1249,'T',NULL),(1250,'B',NULL),(1251,'B',NULL),(1252,'B',NULL),(1253,'B',NULL),(1254,'T',NULL),(1255,'T',NULL),(1256,'B',NULL),(1257,'B',NULL),(1258,'B',NULL),(1259,'B',NULL),(1260,'T',NULL),(1261,'T',NULL),(1262,'B',NULL),(1263,'B',NULL),(1264,'B',NULL),(1265,'B',NULL),(1266,'T',NULL),(1267,'T',NULL),(1268,'B',NULL),(1269,'B',NULL),(1270,'B',NULL),(1271,'B',NULL),(1272,'T',NULL),(1273,'T',NULL),(1274,'B',NULL),(1275,'B',NULL),(1276,'B',NULL),(1277,'B',NULL),(1278,'T',NULL),(1279,'T',NULL),(1280,'B',NULL),(1281,'B',NULL),(1282,'B',NULL),(1283,'B',NULL),(1284,'T',NULL),(1285,'T',NULL),(1286,'B',NULL),(1287,'B',NULL),(1288,'B',NULL),(1289,'B',NULL),(1290,'T',NULL),(1291,'T',NULL),(1292,'B',NULL),(1293,'B',NULL),(1294,'B',NULL),(1295,'T',NULL),(1296,'T',NULL),(1297,'B',NULL),(1298,'T',NULL),(1299,'T',NULL),(1300,'T',NULL),(1301,'T',NULL),(1302,'B',NULL),(1303,'T',NULL),(1304,'T',NULL),(1305,'T',NULL),(1306,'T',NULL),(1307,'T',NULL),(1308,'T',NULL),(1309,'T',NULL),(1310,'T',NULL),(1311,'T',NULL),(1312,'T',NULL),(1313,'T',NULL),(1314,'T',NULL),(1315,'T',NULL),(1316,'T',NULL),(1317,'T',NULL),(1318,'T',NULL),(1319,'T',NULL),(1320,'T',NULL),(1321,'T',NULL),(1322,'T',NULL),(1323,'T',NULL),(1324,'T',NULL),(1325,'T',NULL),(1326,'T',NULL),(1327,'T',NULL),(1328,'T',NULL),(1329,'T',NULL),(1330,'T',NULL),(1331,'T',NULL),(1332,'T',NULL),(1333,'T',NULL),(1334,'T',NULL),(1335,'T',NULL),(1336,'T',NULL),(1337,'T',NULL),(1338,'T',NULL),(1339,'T',NULL),(1340,'T',NULL),(1341,'T',NULL),(1342,'T',NULL),(1343,'T',NULL),(1344,'T',NULL),(1345,'T',NULL),(1346,'T',NULL),(1347,'T',NULL),(1348,'T',NULL),(1349,'T',NULL),(1350,'T',NULL),(1351,'T',NULL),(1352,'T',NULL),(1353,'T',NULL),(1354,'T',NULL),(1355,'T',NULL),(1356,'T',NULL),(1357,'T',NULL),(1358,'T',NULL),(1359,'T',NULL),(1360,'T',NULL),(1361,'T',NULL),(1362,'T',NULL),(1363,'T',NULL),(1364,'T',NULL),(1365,'T',NULL),(1366,'T',NULL),(1367,'T',NULL),(1368,'T',NULL),(1369,'T',NULL),(1370,'T',NULL),(1371,'T',NULL),(1372,'T',NULL),(1373,'T',NULL),(1374,'T',NULL),(1375,'T',NULL),(1376,'T',NULL),(1377,'T',NULL),(1378,'T',NULL),(1379,'T',NULL),(1380,'T',NULL),(1381,'T',NULL),(1382,'T',NULL),(1383,'T',NULL),(1384,'T',NULL),(1385,'T',NULL),(1386,'T',NULL),(1387,'T',NULL),(1388,'T',NULL),(1389,'T',NULL),(1390,'T',NULL),(1391,'T',NULL),(1392,'T',NULL),(1393,'T',NULL),(1394,'T',NULL),(1395,'T',NULL),(1396,'T',NULL),(1397,'T',NULL),(1398,'T',NULL),(1399,'T',NULL),(1400,'T',NULL),(1401,'T',NULL),(1402,'T',NULL),(1403,'T',NULL),(1404,'T',NULL),(1405,'T',NULL),(1406,'T',NULL),(1407,'T',NULL),(1408,'T',NULL),(1409,'T',NULL),(1410,'T',NULL),(1411,'T',NULL),(1412,'T',NULL),(1413,'T',NULL),(1414,'T',NULL),(1415,'T',NULL),(1416,'T',NULL),(1417,'T',NULL),(1418,'T',NULL),(1419,'T',NULL),(1420,'T',NULL),(1421,'T',NULL),(1422,'T',NULL),(1423,'T',NULL),(1424,'T',NULL),(1425,'T',NULL),(1426,'T',NULL),(1427,'T',NULL),(1428,'T',NULL),(1429,'T',NULL),(1430,'T',NULL),(1431,'T',NULL),(1432,'T',NULL),(1433,'T',NULL),(1434,'T',NULL),(1435,'T',NULL),(1436,'T',NULL),(1437,'T',NULL),(1438,'T',NULL),(1439,'T',NULL),(1440,'T',NULL),(1441,'T',NULL),(1442,'T',NULL),(1443,'T',NULL),(1444,'T',NULL),(1445,'T',NULL),(1446,'T',NULL),(1447,'T',NULL),(1448,'T',NULL),(1449,'T',NULL),(1450,'T',NULL),(1451,'T',NULL),(1452,'T',NULL),(1453,'T',NULL),(1454,'T',NULL),(1455,'T',NULL),(1456,'T',NULL),(1457,'T',NULL),(1458,'T',NULL),(1459,'T',NULL),(1460,'T',NULL),(1461,'T',NULL),(1462,'T',NULL),(1463,'T',NULL),(1464,'T',NULL),(1465,'T',NULL),(1466,'T',NULL),(1467,'T',NULL),(1468,'T',NULL),(1469,'T',NULL),(1470,'T',NULL),(1471,'T',NULL),(1472,'T',NULL),(1473,'T',NULL),(1474,'T',NULL),(1475,'T',NULL),(1476,'T',NULL),(1477,'T',NULL),(1478,'T',NULL),(1479,'T',NULL),(1480,'T',NULL),(1481,'T',NULL),(1482,'T',NULL),(1483,'T',NULL),(1484,'T',NULL),(1485,'T',NULL),(1486,'T',NULL),(1487,'T',NULL),(1488,'T',NULL),(1489,'T',NULL),(1490,'T',NULL),(1491,'T',NULL),(1492,'T',NULL),(1493,'T',NULL),(1494,'T',NULL),(1495,'T',NULL),(1496,'T',NULL),(1497,'T',NULL),(1498,'T',NULL),(1499,'T',NULL),(1500,'T',NULL),(1501,'T',NULL),(1502,'T',NULL),(1503,'T',NULL),(1504,'T',NULL),(1505,'T',NULL),(1506,'T',NULL),(1507,'T',NULL),(1508,'T',NULL),(1509,'T',NULL),(1510,'T',NULL),(1511,'T',NULL),(1512,'T',NULL),(1513,'T',NULL),(1514,'T',NULL),(1515,'T',NULL),(1516,'T',NULL),(1517,'T',NULL),(1518,'T',NULL),(1519,'T',NULL),(1520,'T',NULL),(1521,'T',NULL),(1522,'T',NULL),(1523,'T',NULL),(1524,'T',NULL),(1525,'T',NULL),(1526,'T',NULL),(1527,'T',NULL),(1528,'T',NULL),(1529,'T',NULL),(1530,'T',NULL),(1531,'T',NULL),(1532,'T',NULL),(1533,'T',NULL),(1534,'T',NULL),(1535,'T',NULL),(1536,'T',NULL),(1537,'T',NULL),(1538,'T',NULL),(1539,'T',NULL),(1540,'T',NULL),(1541,'T',NULL),(1542,'T',NULL),(1543,'T',NULL),(1544,'T',NULL),(1545,'T',NULL),(1546,'T',NULL),(1547,'T',NULL),(1548,'T',NULL),(1549,'T',NULL),(1550,'T',NULL),(1551,'T',NULL),(1552,'T',NULL),(1553,'T',NULL),(1554,'T',NULL),(1555,'T',NULL),(1556,'T',NULL),(1557,'T',NULL),(1558,'T',NULL),(1559,'T',NULL),(1560,'T',NULL),(1561,'T',NULL),(1562,'T',NULL),(1563,'T',NULL),(1564,'T',NULL),(1565,'T',NULL),(1566,'T',NULL),(1567,'T',NULL),(1568,'T',NULL),(1569,'T',NULL),(1570,'T',NULL),(1571,'T',NULL),(1572,'T',NULL),(1573,'T',NULL),(1574,'T',NULL),(1575,'T',NULL),(1576,'T',NULL),(1577,'T',NULL),(1578,'T',NULL),(1579,'T',NULL),(1580,'T',NULL),(1581,'T',NULL),(1582,'T',NULL),(1583,'T',NULL),(1584,'T',NULL),(1585,'T',NULL),(1586,'T',NULL),(1587,'T',NULL),(1588,'T',NULL),(1589,'T',NULL),(1590,'T',NULL),(1591,'T',NULL),(1592,'T',NULL),(1593,'T',NULL),(1594,'T',NULL),(1595,'T',NULL),(1596,'T',NULL),(1597,'T',NULL),(1598,'T',NULL),(1599,'T',NULL),(1600,'T',NULL),(1601,'T',NULL),(1602,'T',NULL),(1603,'T',NULL),(1604,'T',NULL),(1605,'T',NULL),(1606,'T',NULL),(1607,'T',NULL),(1608,'T',NULL),(1609,'T',NULL),(1610,'T',NULL),(1611,'T',NULL),(1612,'T',NULL),(1613,'T',NULL),(1614,'T',NULL),(1615,'T',NULL),(1616,'T',NULL),(1617,'T',NULL),(1618,'T',NULL),(1619,'T',NULL),(1620,'T',NULL),(1621,'T',NULL),(1622,'T',NULL),(1623,'T',NULL),(1624,'T',NULL),(1625,'T',NULL),(1626,'T',NULL),(1627,'T',NULL),(1628,'T',NULL),(1629,'T',NULL),(1630,'T',NULL),(1631,'T',NULL),(1632,'T',NULL),(1633,'T',NULL),(1634,'T',NULL),(1635,'T',NULL),(1636,'T',NULL),(1637,'T',NULL),(1638,'T',NULL),(1639,'T',NULL),(1640,'T',NULL),(1641,'T',NULL),(1642,'T',NULL),(1643,'T',NULL),(1644,'T',NULL),(1645,'T',NULL),(1646,'T',NULL),(1647,'T',NULL),(1648,'T',NULL),(1649,'T',NULL),(1650,'T',NULL),(1651,'T',NULL),(1652,'T',NULL),(1653,'T',NULL),(1654,'T',NULL),(1655,'T',NULL),(1656,'T',NULL),(1657,'T',NULL),(1658,'T',NULL),(1659,'T',NULL),(1660,'T',NULL),(1661,'T',NULL),(1662,'T',NULL),(1663,'T',NULL),(1664,'T',NULL),(1665,'T',NULL),(1666,'T',NULL),(1667,'T',NULL),(1668,'T',NULL),(1669,'T',NULL),(1670,'T',NULL),(1671,'T',NULL),(1672,'T',NULL),(1673,'T',NULL),(1674,'T',NULL),(1675,'T',NULL),(1676,'T',NULL),(1677,'T',NULL),(1678,'T',NULL),(1679,'T',NULL),(1680,'T',NULL),(1681,'T',NULL),(1682,'T',NULL),(1683,'T',NULL),(1684,'T',NULL),(1685,'T',NULL),(1686,'T',NULL),(1687,'T',NULL),(1688,'T',NULL),(1689,'T',NULL),(1690,'T',NULL),(1691,'T',NULL),(1692,'T',NULL),(1693,'T',NULL),(1694,'T',NULL),(1695,'T',NULL),(1696,'T',NULL),(1697,'T',NULL),(1698,'T',NULL),(1699,'T',NULL),(1700,'T',NULL),(1701,'T',NULL),(1702,'T',NULL),(1703,'T',NULL),(1704,'T',NULL),(1705,'T',NULL),(1706,'T',NULL),(1707,'T',NULL),(1708,'T',NULL),(1709,'T',NULL),(1710,'T',NULL),(1711,'T',NULL),(1712,'T',NULL),(1713,'T',NULL),(1714,'T',NULL),(1715,'T',NULL),(1716,'T',NULL),(1717,'T',NULL),(1718,'T',NULL),(1719,'T',NULL),(1720,'T',NULL),(1721,'T',NULL),(1722,'T',NULL),(1723,'T',NULL),(1724,'T',NULL),(1725,'T',NULL),(1726,'T',NULL),(1727,'T',NULL),(1728,'T',NULL),(1729,'T',NULL),(1730,'T',NULL),(1731,'T',NULL),(1732,'T',NULL),(1733,'T',NULL),(1734,'T',NULL),(1735,'T',NULL),(1736,'T',NULL),(1737,'T',NULL),(1738,'T',NULL),(1739,'T',NULL),(1740,'T',NULL),(1741,'T',NULL),(1742,'T',NULL),(1743,'T',NULL),(1744,'T',NULL),(1745,'T',NULL),(1746,'T',NULL),(1747,'T',NULL),(1748,'T',NULL),(1749,'T',NULL),(1750,'T',NULL),(1751,'T',NULL),(1752,'T',NULL),(1753,'T',NULL),(1754,'T',NULL),(1755,'T',NULL),(1756,'T',NULL),(1757,'T',NULL),(1758,'T',NULL),(1759,'T',NULL),(1760,'T',NULL),(1761,'T',NULL),(1762,'T',NULL),(1763,'T',NULL),(1764,'T',NULL),(1765,'T',NULL),(1766,'T',NULL),(1767,'T',NULL),(1768,'T',NULL),(1769,'T',NULL),(1770,'T',NULL),(1771,'T',NULL),(1772,'T',NULL),(1773,'T',NULL),(1774,'T',NULL),(1775,'T',NULL),(1776,'T',NULL),(1777,'T',NULL),(1778,'T',NULL),(1779,'T',NULL),(1780,'T',NULL),(1781,'T',NULL),(1782,'T',NULL),(1783,'T',NULL),(1784,'T',NULL),(1785,'T',NULL),(1786,'T',NULL),(1787,'T',NULL),(1788,'T',NULL),(1789,'T',NULL),(1790,'T',NULL),(1791,'T',NULL),(1792,'T',NULL),(1793,'T',NULL),(1794,'B',NULL),(1795,'T',NULL),(1796,'T',NULL),(1797,'T',NULL),(1798,'T',NULL),(1799,'T',NULL),(1800,'T',NULL),(1801,'B',NULL),(1802,'T',NULL),(1803,'T',NULL),(1804,'T',NULL),(1805,'T',NULL),(1806,'T',NULL),(1807,'B',NULL),(1808,'T',NULL),(1809,'T',NULL),(1810,'T',NULL),(1811,'T',NULL),(1812,'T',NULL),(1813,'B',NULL),(1814,'T',NULL),(1815,'T',NULL),(1816,'T',NULL),(1817,'T',NULL),(1818,'B',NULL),(1819,'T',NULL),(1820,'T',NULL),(1821,'T',NULL),(1822,'T',NULL),(1823,'B',NULL),(1824,'T',NULL),(1825,'T',NULL),(1826,'T',NULL),(1827,'T',NULL),(1828,'T',NULL),(1829,'T',NULL),(1830,'B',NULL),(1831,'T',NULL),(1832,'T',NULL),(1833,'T',NULL),(1834,'T',NULL),(1835,'T',NULL),(1836,'T',NULL),(1837,'B',NULL),(1838,'T',NULL),(1839,'T',NULL),(1840,'T',NULL),(1841,'T',NULL),(1842,'T',NULL),(1843,'B',NULL),(1844,'T',NULL),(1845,'T',NULL),(1846,'T',NULL),(1847,'T',NULL),(1848,'T',NULL),(1849,'B',NULL),(1850,'T',NULL),(1851,'T',NULL),(1852,'T',NULL),(1853,'T',NULL),(1854,'T',NULL),(1855,'T',NULL),(1856,'B',NULL),(1857,'T',NULL),(1858,'T',NULL),(1859,'T',NULL),(1860,'T',NULL),(1861,'T',NULL),(1862,'B',NULL),(1863,'T',NULL),(1864,'T',NULL),(1865,'T',NULL),(1866,'T',NULL);
/*!40000 ALTER TABLE `quagga_medium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_metafilter`
--

DROP TABLE IF EXISTS `quagga_metafilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_metafilter` (
  `id_metafilter` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_parent` bigint(20) DEFAULT NULL,
  `id_use_type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `notification_interval` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `document_attached` int(6) DEFAULT NULL,
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`id_metafilter`),
  UNIQUE KEY `metafilter_pk` (`id_metafilter`),
  KEY `ref_382_fk` (`id_use_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3011 DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_metafilter`
--

LOCK TABLES `quagga_metafilter` WRITE;
/*!40000 ALTER TABLE `quagga_metafilter` DISABLE KEYS */;
INSERT INTO `quagga_metafilter` VALUES (2010,NULL,0,'SA',NULL,NULL,NULL,NULL,'2010-12-04 03:22:49'),(2020,NULL,0,'SB',NULL,NULL,NULL,NULL,'2010-12-04 03:22:49'),(2030,NULL,0,'SC',NULL,NULL,NULL,NULL,'2010-12-04 03:22:49'),(2040,NULL,0,'SD',NULL,NULL,NULL,NULL,'2010-12-04 03:22:49'),(2050,NULL,0,'SE',NULL,NULL,NULL,NULL,'2010-12-04 03:22:49'),(2060,NULL,0,'SF',NULL,NULL,NULL,NULL,'2010-12-04 03:22:49'),(2070,NULL,0,'SG',NULL,NULL,NULL,NULL,'2010-12-04 03:22:49'),(2080,NULL,0,'SH',NULL,NULL,NULL,NULL,'2010-12-04 03:22:49'),(2090,NULL,0,'SI',NULL,NULL,NULL,NULL,'2010-12-04 03:22:49'),(2100,NULL,0,'SJ',NULL,NULL,NULL,NULL,'2010-12-04 03:22:50'),(2110,NULL,0,'SW',NULL,NULL,NULL,NULL,'2010-12-04 03:22:50'),(2120,NULL,0,'SP',NULL,NULL,NULL,NULL,'2010-12-04 03:22:50'),(2130,NULL,0,'SM',NULL,NULL,NULL,NULL,'2010-12-04 03:22:50'),(2140,NULL,0,'SX',NULL,NULL,NULL,NULL,'2010-12-04 03:22:50'),(3010,NULL,0,'C1',NULL,NULL,NULL,NULL,'2015-01-11 15:14:49');
/*!40000 ALTER TABLE `quagga_metafilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_metafilter_item`
--

DROP TABLE IF EXISTS `quagga_metafilter_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_metafilter_item` (
  `id_metafilter_item` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_metavar` bigint(20) DEFAULT NULL,
  `id_metavalue` bigint(20) DEFAULT NULL,
  `id_metafilter` bigint(20) NOT NULL DEFAULT '0',
  `id_set` int(6) NOT NULL DEFAULT '0',
  `metavalue` varchar(255) DEFAULT NULL,
  `metavalue_upper` varchar(255) DEFAULT NULL,
  `operation` int(11) DEFAULT NULL,
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`id_metafilter_item`),
  UNIQUE KEY `metafilter_item_pk` (`id_metafilter_item`),
  KEY `ref_475_fk` (`id_metafilter`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_metafilter_item`
--

LOCK TABLES `quagga_metafilter_item` WRITE;
/*!40000 ALTER TABLE `quagga_metafilter_item` DISABLE KEYS */;
INSERT INTO `quagga_metafilter_item` VALUES (247,NULL,157,2010,0,NULL,NULL,NULL,'2010-12-04 03:22:49'),(248,NULL,158,2010,0,NULL,NULL,NULL,'2010-12-04 03:22:49'),(249,NULL,157,2020,0,NULL,NULL,NULL,'2010-12-04 03:22:49'),(250,NULL,159,2020,0,NULL,NULL,NULL,'2010-12-04 03:22:49'),(251,NULL,157,2030,0,NULL,NULL,NULL,'2010-12-04 03:22:49'),(252,NULL,160,2030,0,NULL,NULL,NULL,'2010-12-04 03:22:49'),(253,NULL,157,2040,0,NULL,NULL,NULL,'2010-12-04 03:22:49'),(254,NULL,161,2040,0,NULL,NULL,NULL,'2010-12-04 03:22:49'),(255,NULL,157,2050,0,NULL,NULL,NULL,'2010-12-04 03:22:49'),(256,NULL,162,2050,0,NULL,NULL,NULL,'2010-12-04 03:22:49'),(257,NULL,157,2060,0,NULL,NULL,NULL,'2010-12-04 03:22:49'),(258,NULL,163,2060,0,NULL,NULL,NULL,'2010-12-04 03:22:49'),(259,NULL,157,2070,0,NULL,NULL,NULL,'2010-12-04 03:22:49'),(260,NULL,164,2070,0,NULL,NULL,NULL,'2010-12-04 03:22:49'),(261,NULL,157,2080,0,NULL,NULL,NULL,'2010-12-04 03:22:49'),(262,NULL,165,2080,0,NULL,NULL,NULL,'2010-12-04 03:22:49'),(263,NULL,157,2090,0,NULL,NULL,NULL,'2010-12-04 03:22:50'),(264,NULL,166,2090,0,NULL,NULL,NULL,'2010-12-04 03:22:50'),(265,NULL,157,2100,0,NULL,NULL,NULL,'2010-12-04 03:22:50'),(266,NULL,167,2100,0,NULL,NULL,NULL,'2010-12-04 03:22:50'),(267,NULL,157,2110,0,NULL,NULL,NULL,'2010-12-04 03:22:50'),(268,NULL,168,2110,0,NULL,NULL,NULL,'2010-12-04 03:22:50'),(269,NULL,157,2120,0,NULL,NULL,NULL,'2010-12-04 03:22:50'),(270,NULL,169,2120,0,NULL,NULL,NULL,'2010-12-04 03:22:50'),(271,NULL,157,2130,0,NULL,NULL,NULL,'2010-12-04 03:22:50'),(272,NULL,170,2130,0,NULL,NULL,NULL,'2010-12-04 03:22:50'),(273,NULL,157,2140,0,NULL,NULL,NULL,'2010-12-04 03:22:50'),(274,NULL,171,2140,0,NULL,NULL,NULL,'2010-12-04 03:22:50'),(281,NULL,157,3010,0,NULL,NULL,NULL,'2010-12-04 03:22:50'),(282,NULL,181,3010,0,NULL,NULL,NULL,'2010-12-04 03:22:50');
/*!40000 ALTER TABLE `quagga_metafilter_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_metavalue`
--

DROP TABLE IF EXISTS `quagga_metavalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_metavalue` (
  `id_metavalue` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_metavar` bigint(20) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`id_metavalue`),
  UNIQUE KEY `metavalue_pk` (`id_metavalue`),
  KEY `fk_metavalue_metavar_fk` (`id_metavar`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_metavalue`
--

LOCK TABLES `quagga_metavalue` WRITE;
/*!40000 ALTER TABLE `quagga_metavalue` DISABLE KEYS */;
INSERT INTO `quagga_metavalue` VALUES (157,9,'Q','2010-12-04 03:22:49'),(158,10,'SA','2010-12-04 03:22:49'),(159,10,'SB','2010-12-04 03:22:49'),(160,10,'SC','2010-12-04 03:22:49'),(161,10,'SD','2010-12-04 03:22:49'),(162,10,'SE','2010-12-04 03:22:49'),(163,10,'SF','2010-12-04 03:22:49'),(164,10,'SG','2010-12-04 03:22:49'),(165,10,'SH','2010-12-04 03:22:49'),(166,10,'SI','2010-12-04 03:22:50'),(167,10,'SJ','2010-12-04 03:22:50'),(168,10,'SW','2010-12-04 03:22:50'),(169,10,'SP','2010-12-04 03:22:50'),(170,10,'SM','2010-12-04 03:22:50'),(171,10,'SX','2010-12-04 03:22:50'),(172,9,'P','2010-12-04 03:54:43'),(181,10,'C1','2010-12-04 03:54:43');
/*!40000 ALTER TABLE `quagga_metavalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_metavar`
--

DROP TABLE IF EXISTS `quagga_metavar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_metavar` (
  `id_metavar` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_datatype` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `choosable` int(6) DEFAULT NULL,
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`id_metavar`),
  UNIQUE KEY `metavar_pk` (`id_metavar`),
  KEY `ref_19909_fk` (`id_datatype`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_metavar`
--

LOCK TABLES `quagga_metavar` WRITE;
/*!40000 ALTER TABLE `quagga_metavar` DISABLE KEYS */;
INSERT INTO `quagga_metavar` VALUES (9,0,'ContentType',1,'2010-12-04 03:22:49'),(10,0,'Categorie',1,'2010-12-04 03:22:49');
/*!40000 ALTER TABLE `quagga_metavar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_mime_type`
--

DROP TABLE IF EXISTS `quagga_mime_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_mime_type` (
  `mty_id` int(11) NOT NULL DEFAULT '0',
  `mty_description` varchar(20) NOT NULL DEFAULT '',
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`mty_id`),
  UNIQUE KEY `mime_type_pk` (`mty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_mime_type`
--

LOCK TABLES `quagga_mime_type` WRITE;
/*!40000 ALTER TABLE `quagga_mime_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_mime_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_norm`
--

DROP TABLE IF EXISTS `quagga_norm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_norm` (
  `nrm_id` int(11) NOT NULL DEFAULT '0',
  `nrm_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nrm_id`),
  UNIQUE KEY `EVALUATION_PK` (`nrm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_norm`
--

LOCK TABLES `quagga_norm` WRITE;
/*!40000 ALTER TABLE `quagga_norm` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_norm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_paragraph`
--

DROP TABLE IF EXISTS `quagga_paragraph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_paragraph` (
  `par_id` int(11) NOT NULL DEFAULT '0',
  `par_parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`par_id`),
  UNIQUE KEY `par_pk` (`par_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_paragraph`
--

LOCK TABLES `quagga_paragraph` WRITE;
/*!40000 ALTER TABLE `quagga_paragraph` DISABLE KEYS */;
INSERT INTO `quagga_paragraph` VALUES (9000,NULL),(9010,9000),(9020,9000),(9030,9000),(9040,9000),(9050,9000),(9060,9000),(9070,9000),(9080,9000),(9090,9000),(9100,9000),(9110,9000),(9120,9000),(9130,9000),(9140,9000),(10001,NULL),(10002,NULL),(10011,10001),(10012,10002);
/*!40000 ALTER TABLE `quagga_paragraph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_partition`
--

DROP TABLE IF EXISTS `quagga_partition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_partition` (
  `pro_id` int(11) NOT NULL DEFAULT '0',
  `cat_id` bigint(20) NOT NULL DEFAULT '0',
  `par_perc` decimal(3,2) DEFAULT NULL,
  `par_abs` int(11) DEFAULT NULL,
  PRIMARY KEY (`pro_id`,`cat_id`),
  UNIQUE KEY `partition_pk` (`pro_id`,`cat_id`),
  KEY `relation_2877_fk` (`pro_id`),
  KEY `relation_2886_fk` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_partition`
--

LOCK TABLES `quagga_partition` WRITE;
/*!40000 ALTER TABLE `quagga_partition` DISABLE KEYS */;
INSERT INTO `quagga_partition` VALUES (9310,1,NULL,1),(9310,2,NULL,1),(9310,3,NULL,1),(9310,4,NULL,1),(9310,5,NULL,1),(9310,6,NULL,1),(9310,8,NULL,1),(9310,10,NULL,1),(9310,12,NULL,1),(9310,13,NULL,1),(9410,245707,NULL,10);
/*!40000 ALTER TABLE `quagga_partition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_person`
--

DROP TABLE IF EXISTS `quagga_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_person` (
  `prs_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ptp_id` int(11) NOT NULL DEFAULT '0',
  `mty_id` int(11) NOT NULL DEFAULT '0',
  `prs_uid` varchar(100) NOT NULL DEFAULT '',
  `prs_password` varchar(75) NOT NULL DEFAULT '',
  `prs_password_expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `prs_failed_logins` int(6) NOT NULL DEFAULT '0',
  `prs_login_disabled` int(6) NOT NULL DEFAULT '0',
  `prs_last_name` varchar(75) NOT NULL DEFAULT '',
  `prs_first_name` varchar(50) DEFAULT NULL,
  `prs_email_address` varchar(255) DEFAULT NULL,
  `prs_phone` varchar(40) DEFAULT NULL,
  `prs_last_updated` datetime DEFAULT NULL,
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`prs_id`),
  UNIQUE KEY `person_pk` (`prs_id`),
  KEY `relation_400_fk` (`ptp_id`),
  KEY `relation_521_fk` (`mty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_person`
--

LOCK TABLES `quagga_person` WRITE;
/*!40000 ALTER TABLE `quagga_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_person_type`
--

DROP TABLE IF EXISTS `quagga_person_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_person_type` (
  `ptp_id` int(11) NOT NULL DEFAULT '0',
  `ptp_description` varchar(20) NOT NULL DEFAULT '',
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`ptp_id`),
  UNIQUE KEY `person_type_pk` (`ptp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_person_type`
--

LOCK TABLES `quagga_person_type` WRITE;
/*!40000 ALTER TABLE `quagga_person_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_person_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_pose_part`
--

DROP TABLE IF EXISTS `quagga_pose_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_pose_part` (
  `que_id` int(11) NOT NULL DEFAULT '0',
  `pop_id` int(11) NOT NULL DEFAULT '0',
  `med_id` int(11) NOT NULL DEFAULT '0',
  `med_type` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`que_id`,`pop_id`),
  UNIQUE KEY `pose_part_pk` (`que_id`,`pop_id`),
  KEY `relation_722_fk` (`med_id`,`med_type`),
  KEY `relation_721_fk` (`que_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_pose_part`
--

LOCK TABLES `quagga_pose_part` WRITE;
/*!40000 ALTER TABLE `quagga_pose_part` DISABLE KEYS */;
INSERT INTO `quagga_pose_part` VALUES (101,1,1,'T'),(102,1,6,'T'),(102,2,7,'B'),(103,1,12,'T'),(103,2,13,'B'),(104,1,17,'T'),(104,2,18,'B'),(105,1,22,'T'),(105,2,23,'B'),(106,1,28,'T'),(106,2,29,'B'),(107,1,34,'T'),(107,2,35,'B'),(108,1,39,'T'),(108,2,40,'B'),(109,1,45,'T'),(109,2,46,'B'),(110,1,51,'T'),(111,1,55,'T'),(112,1,59,'T'),(113,1,63,'T'),(114,1,68,'T'),(115,1,72,'T'),(116,1,77,'T'),(116,2,78,'B'),(117,1,82,'T'),(118,1,87,'T'),(119,1,92,'T'),(119,2,93,'B'),(120,1,98,'T'),(120,2,99,'B'),(121,1,104,'T'),(121,2,105,'B'),(201,1,110,'T'),(201,2,111,'B'),(202,1,115,'T'),(202,2,116,'B'),(203,1,121,'T'),(203,2,122,'B'),(204,1,126,'T'),(204,2,127,'B'),(205,1,132,'T'),(205,2,133,'B'),(207,1,137,'T'),(208,1,141,'T'),(208,2,142,'B'),(209,1,147,'T'),(209,2,148,'B'),(210,1,153,'T'),(211,1,157,'T'),(212,1,162,'T'),(213,1,167,'T'),(214,1,171,'T'),(215,1,175,'T'),(216,1,179,'T'),(216,2,180,'B'),(217,1,184,'T'),(218,1,188,'T'),(219,1,192,'T'),(219,2,193,'B'),(220,1,197,'T'),(301,1,202,'T'),(301,2,203,'B'),(302,1,207,'T'),(302,2,208,'B'),(303,1,213,'T'),(303,2,214,'B'),(304,1,219,'T'),(304,2,220,'B'),(305,1,225,'T'),(305,2,226,'B'),(306,1,232,'T'),(306,2,233,'B'),(307,1,237,'T'),(307,2,238,'B'),(308,1,243,'T'),(308,2,244,'B'),(309,1,248,'T'),(309,2,249,'B'),(310,1,253,'T'),(311,1,259,'T'),(312,1,263,'T'),(313,1,267,'T'),(314,1,272,'T'),(315,1,276,'T'),(316,1,281,'T'),(317,1,285,'T'),(317,2,286,'B'),(318,1,290,'T'),(319,1,294,'T'),(319,2,295,'B'),(320,1,299,'T'),(321,1,303,'T'),(401,1,307,'T'),(401,2,308,'B'),(403,1,312,'T'),(403,2,313,'B'),(404,1,318,'T'),(404,2,319,'B'),(405,1,323,'T'),(405,2,324,'B'),(406,1,328,'T'),(406,2,329,'B'),(407,1,334,'T'),(407,2,335,'B'),(409,1,339,'T'),(409,2,340,'B'),(410,1,345,'T'),(411,1,349,'T'),(412,1,353,'T'),(413,1,359,'T'),(414,1,365,'T'),(417,1,370,'T'),(417,2,371,'B'),(418,1,376,'T'),(419,1,381,'T'),(419,2,382,'B'),(420,1,387,'T'),(421,1,392,'T'),(422,1,397,'T'),(423,1,402,'T'),(508,1,407,'T'),(508,2,408,'B'),(3001,1,412,'T'),(3001,2,413,'B'),(3002,1,419,'T'),(3002,2,420,'B'),(3003,1,426,'T'),(3003,2,427,'B'),(3004,1,431,'T'),(3004,2,432,'B'),(3005,1,438,'T'),(3005,2,439,'B'),(3006,1,443,'T'),(3006,2,444,'B'),(3007,1,448,'T'),(3007,2,449,'B'),(3008,1,453,'T'),(3008,2,454,'B'),(3009,1,460,'T'),(3009,2,461,'B'),(3010,1,467,'T'),(3010,2,468,'B'),(3011,1,474,'T'),(3011,2,475,'B'),(3012,1,479,'T'),(3012,2,480,'B'),(3013,1,486,'T'),(3013,2,487,'B'),(3014,1,492,'T'),(3014,2,493,'B'),(3015,1,499,'T'),(3015,2,500,'B'),(3016,1,505,'T'),(3016,2,506,'B'),(3017,1,510,'T'),(3017,2,511,'B'),(3018,1,517,'T'),(3018,2,518,'B'),(3019,1,522,'T'),(3019,2,523,'B'),(3020,1,529,'T'),(3020,2,530,'B'),(3021,1,536,'T'),(3021,2,537,'B'),(3022,1,542,'T'),(3022,2,543,'B'),(3023,1,548,'T'),(3023,2,549,'B'),(3024,1,555,'T'),(3025,1,561,'T'),(3025,2,562,'B'),(3026,1,568,'T'),(3026,2,569,'B'),(3027,1,574,'T'),(3027,2,575,'B'),(3028,1,581,'T'),(3028,2,582,'B'),(3029,1,588,'T'),(3029,2,589,'B'),(3101,1,595,'T'),(3102,1,601,'T'),(3103,1,607,'T'),(3104,1,613,'T'),(3105,1,619,'T'),(3106,1,625,'T'),(3107,1,631,'T'),(3108,1,637,'T'),(3109,1,643,'T'),(3109,2,644,'B'),(3110,1,650,'T'),(3111,1,656,'T'),(3112,1,662,'T'),(3113,1,668,'T'),(3113,2,669,'B'),(3114,1,675,'T'),(3115,1,681,'T'),(3116,1,687,'T'),(3117,1,693,'T'),(3118,1,699,'T'),(3118,2,700,'B'),(3119,1,706,'T'),(3120,1,712,'T'),(3121,1,718,'T'),(3122,1,724,'T'),(3123,1,730,'T'),(3123,2,731,'B'),(3124,1,737,'T'),(3126,1,743,'T'),(3126,2,744,'B'),(3127,1,750,'T'),(3128,1,756,'T'),(3129,1,762,'T'),(3129,2,763,'B'),(3130,1,769,'T'),(3201,1,775,'T'),(3202,1,781,'T'),(3202,2,782,'B'),(3203,1,788,'T'),(3204,1,794,'T'),(3205,1,800,'T'),(3206,1,806,'T'),(3207,1,812,'T'),(3208,1,818,'T'),(3209,1,824,'T'),(3210,1,830,'T'),(3211,1,836,'T'),(3212,1,842,'T'),(3213,1,848,'T'),(3214,1,854,'T'),(3215,1,860,'T'),(3216,1,866,'T'),(3217,1,872,'T'),(3218,1,878,'T'),(3219,1,884,'T'),(3220,1,890,'T'),(3221,1,896,'T'),(3221,2,897,'B'),(3223,1,903,'T'),(3224,1,909,'T'),(3225,1,915,'T'),(3226,1,921,'T'),(3227,1,927,'T'),(3228,1,933,'T'),(3229,1,939,'T'),(3230,1,945,'T'),(3304,1,951,'T'),(3306,1,957,'T'),(3307,1,963,'T'),(3308,1,969,'T'),(3309,1,975,'T'),(3318,1,981,'T'),(3328,1,987,'T'),(3329,1,993,'T'),(3330,1,999,'T'),(3408,1,1005,'T'),(3409,1,1011,'T'),(3410,1,1017,'T'),(3420,1,1023,'T'),(3420,2,1024,'B'),(3421,1,1030,'T'),(3421,2,1031,'B'),(3423,1,1037,'T'),(3425,1,1043,'T'),(3426,1,1049,'T'),(3426,2,1050,'B'),(3429,1,1056,'T'),(3429,2,1057,'B'),(3801,1,1063,'T'),(3802,1,1069,'T'),(3803,1,1075,'T'),(3804,1,1081,'T'),(3805,1,1087,'T'),(3806,1,1093,'T'),(3807,1,1099,'T'),(3808,1,1105,'T'),(3809,1,1111,'T'),(3810,1,1117,'T'),(3811,1,1123,'T'),(3812,1,1129,'T'),(3813,1,1135,'T'),(3814,1,1141,'T'),(3815,1,1147,'T'),(3816,1,1153,'T'),(3817,1,1159,'T'),(4001,1,1165,'T'),(4001,2,1166,'B'),(4002,1,1172,'T'),(4002,2,1173,'B'),(4028,1,1179,'T'),(4028,2,1180,'B'),(4038,1,1186,'T'),(4038,2,1187,'B'),(4071,1,1193,'T'),(4071,2,1194,'B'),(4087,1,1200,'T'),(4087,2,1201,'B'),(4088,1,1207,'T'),(4088,2,1208,'B'),(4123,1,1214,'T'),(4123,2,1215,'B'),(4140,1,1221,'T'),(4140,2,1222,'B'),(4179,1,1228,'T'),(4179,2,1229,'B'),(4258,1,1235,'T'),(4258,2,1236,'B'),(4259,1,1242,'T'),(4259,2,1243,'B'),(5025,1,1249,'T'),(5032,1,1255,'T'),(5072,1,1261,'T'),(5123,1,1267,'T'),(5140,1,1273,'T'),(5181,1,1279,'T'),(5256,1,1285,'T'),(5257,1,1291,'T'),(6001,1,1296,'T'),(6001,2,1297,'B'),(6059,1,1301,'T'),(6059,2,1302,'B'),(7031,1,1306,'T'),(7032,1,1312,'T'),(7033,1,1318,'T'),(7034,1,1324,'T'),(7035,1,1330,'T'),(7036,1,1336,'T'),(7037,1,1342,'T'),(7038,1,1348,'T'),(7039,1,1354,'T'),(7040,1,1360,'T'),(7041,1,1366,'T'),(7042,1,1372,'T'),(7043,1,1378,'T'),(7044,1,1384,'T'),(7045,1,1390,'T'),(7046,1,1396,'T'),(7047,1,1402,'T'),(7048,1,1408,'T'),(7049,1,1414,'T'),(7050,1,1420,'T'),(7051,1,1426,'T'),(7052,1,1432,'T'),(7053,1,1438,'T'),(7054,1,1444,'T'),(7055,1,1450,'T'),(7056,1,1456,'T'),(7057,1,1462,'T'),(7058,1,1468,'T'),(7059,1,1474,'T'),(7060,1,1480,'T'),(7071,1,1486,'T'),(7072,1,1491,'T'),(7073,1,1496,'T'),(7074,1,1501,'T'),(7075,1,1506,'T'),(8901,1,1511,'T'),(8902,1,1517,'T'),(8903,1,1523,'T'),(8904,1,1529,'T'),(9301,1,1535,'T'),(9302,1,1541,'T'),(9303,1,1547,'T'),(9304,1,1553,'T'),(9305,1,1559,'T'),(9306,1,1565,'T'),(9307,1,1571,'T'),(9308,1,1577,'T'),(9309,1,1583,'T'),(9310,1,1589,'T'),(9311,1,1595,'T'),(9312,1,1601,'T'),(9313,1,1607,'T'),(9314,1,1613,'T'),(9315,1,1619,'T'),(9316,1,1625,'T'),(9317,1,1631,'T'),(9318,1,1637,'T'),(9319,1,1643,'T'),(9401,1,1649,'T'),(9402,1,1655,'T'),(9403,1,1661,'T'),(9404,1,1667,'T'),(9405,1,1673,'T'),(9406,1,1679,'T'),(9407,1,1685,'T'),(9408,1,1691,'T'),(9409,1,1697,'T'),(9410,1,1703,'T'),(9411,1,1709,'T'),(9412,1,1715,'T'),(9501,1,1721,'T'),(9502,1,1727,'T'),(9503,1,1733,'T'),(9504,1,1739,'T'),(9505,1,1745,'T'),(9506,1,1751,'T'),(9507,1,1757,'T'),(9508,1,1763,'T'),(9509,1,1769,'T'),(9510,1,1775,'T'),(9511,1,1781,'T'),(9512,1,1787,'T'),(9601,1,1793,'T'),(9601,2,1794,'B'),(9602,1,1800,'T'),(9602,2,1801,'B'),(9603,1,1806,'T'),(9603,2,1807,'B'),(9604,1,1812,'T'),(9604,2,1813,'B'),(9605,1,1817,'T'),(9605,2,1818,'B'),(9606,1,1822,'T'),(9606,2,1823,'B'),(9607,1,1829,'T'),(9607,2,1830,'B'),(9608,1,1836,'T'),(9608,2,1837,'B'),(9609,1,1842,'T'),(9609,2,1843,'B'),(9610,1,1848,'T'),(9610,2,1849,'B'),(9611,1,1855,'T'),(9611,2,1856,'B'),(9612,1,1861,'T'),(9612,2,1862,'B');
/*!40000 ALTER TABLE `quagga_pose_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_profile`
--

DROP TABLE IF EXISTS `quagga_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_profile` (
  `pro_id` int(11) NOT NULL DEFAULT '0',
  `pro_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pro_id`),
  UNIQUE KEY `profile_pk` (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_profile`
--

LOCK TABLES `quagga_profile` WRITE;
/*!40000 ALTER TABLE `quagga_profile` DISABLE KEYS */;
INSERT INTO `quagga_profile` VALUES (9000,'DVLA Examination'),(9310,'Simple examination'),(9410,'Cameroon examination');
/*!40000 ALTER TABLE `quagga_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_profilenorm`
--

DROP TABLE IF EXISTS `quagga_profilenorm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_profilenorm` (
  `nrm_id` int(11) NOT NULL DEFAULT '0',
  `pro_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nrm_id`,`pro_id`),
  UNIQUE KEY `RELATION_3065_PK` (`nrm_id`,`pro_id`),
  KEY `RELATION_3065_FK2` (`nrm_id`),
  KEY `RELATION_3065_FK` (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_profilenorm`
--

LOCK TABLES `quagga_profilenorm` WRITE;
/*!40000 ALTER TABLE `quagga_profilenorm` DISABLE KEYS */;
INSERT INTO `quagga_profilenorm` VALUES (1,9000),(1,9310);
/*!40000 ALTER TABLE `quagga_profilenorm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_pupil`
--

DROP TABLE IF EXISTS `quagga_pupil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_pupil` (
  `prs_id` bigint(20) NOT NULL DEFAULT '0',
  `pup_visible` int(6) NOT NULL DEFAULT '0',
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`prs_id`),
  UNIQUE KEY `pupil_pk` (`prs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_pupil`
--

LOCK TABLES `quagga_pupil` WRITE;
/*!40000 ALTER TABLE `quagga_pupil` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_pupil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_question`
--

DROP TABLE IF EXISTS `quagga_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_question` (
  `que_id` int(11) NOT NULL DEFAULT '0',
  `que_help_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`que_id`),
  UNIQUE KEY `relation_2029_fk` (`que_id`),
  UNIQUE KEY `question_pk` (`que_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_question`
--

LOCK TABLES `quagga_question` WRITE;
/*!40000 ALTER TABLE `quagga_question` DISABLE KEYS */;
INSERT INTO `quagga_question` VALUES (101,NULL),(102,NULL),(103,NULL),(104,NULL),(105,NULL),(106,NULL),(107,NULL),(108,NULL),(109,NULL),(110,NULL),(111,NULL),(112,NULL),(113,NULL),(114,NULL),(115,NULL),(116,NULL),(117,NULL),(118,NULL),(119,NULL),(120,NULL),(121,NULL),(201,NULL),(202,NULL),(203,NULL),(204,NULL),(205,NULL),(207,NULL),(208,NULL),(209,NULL),(210,NULL),(211,NULL),(212,NULL),(213,NULL),(214,NULL),(215,NULL),(216,NULL),(217,NULL),(218,NULL),(219,NULL),(220,NULL),(301,NULL),(302,NULL),(303,NULL),(304,NULL),(305,NULL),(306,NULL),(307,NULL),(308,NULL),(309,NULL),(310,NULL),(311,NULL),(312,NULL),(313,NULL),(314,NULL),(315,NULL),(316,NULL),(317,NULL),(318,NULL),(319,NULL),(320,NULL),(321,NULL),(401,NULL),(403,NULL),(404,NULL),(405,NULL),(406,NULL),(407,NULL),(409,NULL),(410,NULL),(411,NULL),(412,NULL),(413,NULL),(414,NULL),(417,NULL),(418,NULL),(419,NULL),(420,NULL),(421,NULL),(422,NULL),(423,NULL),(508,NULL),(3001,NULL),(3002,NULL),(3003,NULL),(3004,NULL),(3005,NULL),(3006,NULL),(3007,NULL),(3008,NULL),(3009,NULL),(3010,NULL),(3011,NULL),(3012,NULL),(3013,NULL),(3014,NULL),(3015,NULL),(3016,NULL),(3017,NULL),(3018,NULL),(3019,NULL),(3020,NULL),(3021,NULL),(3022,NULL),(3023,NULL),(3024,NULL),(3025,NULL),(3026,NULL),(3027,NULL),(3028,NULL),(3029,NULL),(3101,NULL),(3102,NULL),(3103,NULL),(3104,NULL),(3105,NULL),(3106,NULL),(3107,NULL),(3108,NULL),(3109,NULL),(3110,NULL),(3111,NULL),(3112,NULL),(3113,NULL),(3114,NULL),(3115,NULL),(3116,NULL),(3117,NULL),(3118,NULL),(3119,NULL),(3120,NULL),(3121,NULL),(3122,NULL),(3123,NULL),(3124,NULL),(3126,NULL),(3127,NULL),(3128,NULL),(3129,NULL),(3130,NULL),(3201,NULL),(3202,NULL),(3203,NULL),(3204,NULL),(3205,NULL),(3206,NULL),(3207,NULL),(3208,NULL),(3209,NULL),(3210,NULL),(3211,NULL),(3212,NULL),(3213,NULL),(3214,NULL),(3215,NULL),(3216,NULL),(3217,NULL),(3218,NULL),(3219,NULL),(3220,NULL),(3221,NULL),(3223,NULL),(3224,NULL),(3225,NULL),(3226,NULL),(3227,NULL),(3228,NULL),(3229,NULL),(3230,NULL),(3304,NULL),(3306,NULL),(3307,NULL),(3308,NULL),(3309,NULL),(3318,NULL),(3328,NULL),(3329,NULL),(3330,NULL),(3408,NULL),(3409,NULL),(3410,NULL),(3420,NULL),(3421,NULL),(3423,NULL),(3425,NULL),(3426,NULL),(3429,NULL),(3801,NULL),(3802,NULL),(3803,NULL),(3804,NULL),(3805,NULL),(3806,NULL),(3807,NULL),(3808,NULL),(3809,NULL),(3810,NULL),(3811,NULL),(3812,NULL),(3813,NULL),(3814,NULL),(3815,NULL),(3816,NULL),(3817,NULL),(4001,NULL),(4002,NULL),(4028,NULL),(4038,NULL),(4071,NULL),(4087,NULL),(4088,NULL),(4123,NULL),(4140,NULL),(4179,NULL),(4258,NULL),(4259,NULL),(5025,NULL),(5032,NULL),(5072,NULL),(5123,NULL),(5140,NULL),(5181,NULL),(5256,NULL),(5257,NULL),(6001,NULL),(6059,NULL),(7031,NULL),(7032,NULL),(7033,NULL),(7034,NULL),(7035,NULL),(7036,NULL),(7037,NULL),(7038,NULL),(7039,NULL),(7040,NULL),(7041,NULL),(7042,NULL),(7043,NULL),(7044,NULL),(7045,NULL),(7046,NULL),(7047,NULL),(7048,NULL),(7049,NULL),(7050,NULL),(7051,NULL),(7052,NULL),(7053,NULL),(7054,NULL),(7055,NULL),(7056,NULL),(7057,NULL),(7058,NULL),(7059,NULL),(7060,NULL),(7071,NULL),(7072,NULL),(7073,NULL),(7074,NULL),(7075,NULL),(8901,NULL),(8902,NULL),(8903,NULL),(8904,NULL),(9301,NULL),(9302,NULL),(9303,NULL),(9304,NULL),(9305,NULL),(9306,NULL),(9307,NULL),(9308,NULL),(9309,NULL),(9310,NULL),(9311,NULL),(9312,NULL),(9313,NULL),(9314,NULL),(9315,NULL),(9316,NULL),(9317,NULL),(9318,NULL),(9319,NULL),(9401,NULL),(9402,NULL),(9403,NULL),(9404,NULL),(9405,NULL),(9406,NULL),(9407,NULL),(9408,NULL),(9409,NULL),(9410,NULL),(9411,NULL),(9412,NULL),(9501,NULL),(9502,NULL),(9503,NULL),(9504,NULL),(9505,NULL),(9506,NULL),(9507,NULL),(9508,NULL),(9509,NULL),(9510,NULL),(9511,NULL),(9512,NULL),(9601,NULL),(9602,NULL),(9603,NULL),(9604,NULL),(9605,NULL),(9606,NULL),(9607,NULL),(9608,NULL),(9609,NULL),(9610,NULL),(9611,NULL),(9612,NULL);
/*!40000 ALTER TABLE `quagga_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_tekst`
--

DROP TABLE IF EXISTS `quagga_tekst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_tekst` (
  `med_id` int(11) NOT NULL DEFAULT '0',
  `med_type` char(1) NOT NULL DEFAULT '',
  `tek_contents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`med_id`,`med_type`),
  UNIQUE KEY `tekst_pk` (`med_id`,`med_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_tekst`
--

LOCK TABLES `quagga_tekst` WRITE;
/*!40000 ALTER TABLE `quagga_tekst` DISABLE KEYS */;
INSERT INTO `quagga_tekst` VALUES (1,'T','Which of these road signs always require the use of direction indicators?'),(5,'T','BLANK'),(6,'T','What should you bear in mind when you see this sign?'),(8,'T','Hunting area, fire may be lighted'),(9,'T','Bush fire, drive carefully'),(10,'T','Do not throw pieces of lighted cigarettes'),(11,'T','BLANK'),(12,'T','What is the meaning of this road sign?'),(14,'T','Stop and give way to oncoming traffic turning to the right'),(15,'T','Drive on, you have the right of way'),(16,'T','BLANK'),(17,'T','What is the meaning of this sign?'),(19,'T','Slippery road'),(20,'T','Road narrow on the left'),(21,'T','BLANK'),(22,'T','Who can move on?'),(24,'T','Vehicle No 2'),(25,'T','Vehicle No 1'),(26,'T','Vehicle No 1 and Vehicle No 3'),(27,'T','BLANK'),(28,'T','Who must wait?'),(30,'T','Vehicle No 2 and Vehicle No 3'),(31,'T','Vehicle No 1 and Vehicle No 3'),(32,'T','Vehicle No 3'),(33,'T','BLANK'),(34,'T','How should the vehicles proceed?'),(36,'T','Vehicle No 2 FIRST, Vehicle No 1 NEXT, Vehicle No 3 LAST'),(37,'T','Vehicle No 1 FIRST, Vehicle No 3 NEXT, Vehicle No 2 LAST'),(38,'T','BLANK'),(39,'T','Who must be the last to go?'),(41,'T','Vehicle No 1'),(42,'T','Vehicle No 2'),(43,'T','Vehicle No 3'),(44,'T','BLANK'),(45,'T','Who can go first?'),(47,'T','Vehicle No 1'),(48,'T','Vehicle No 3'),(49,'T','Vehicle No 2'),(50,'T','BLANK'),(51,'T','It is dark and an oncoming driver refuses to dim (dip) his headlights. What should you do to see still?'),(52,'T','Avoid looking into the lights of the oncoming vehicle and direct your eyes to the right hand edge of the road'),(53,'T','Switch on your highlights too'),(54,'T','BLANK'),(55,'T','What do you do when a vehicle with a flashing blue light and multi-tone horn is approaching?'),(56,'T','Such vehicles do not have right of way, you may drive on'),(57,'T','Clear the road'),(58,'T','BLANK'),(59,'T','What are you required to provide in your vehicle for first aid treatment?'),(60,'T','Fire Extinguisher'),(61,'T','First Aid Box'),(62,'T','BLANK'),(63,'T','What are you to anticipate if you want to follow a truck that is turning to the right?'),(64,'T','A pedestrian may let the truck pass but cross the street immediately it passes'),(65,'T','Another truck may overtake you'),(66,'T','The truck may suddenly pull up'),(67,'T','BLANK'),(68,'T','A holder of Class B Licence is not allowed to drive a vehicle exceeding a certain weight. What is this weight limit?'),(69,'T','5 metric tons'),(70,'T','2950 kg'),(71,'T','BLANK'),(72,'T','Within built-up areas, what is the prescribed maximum speed?'),(73,'T','100 kmh'),(74,'T','50 kmh'),(75,'T','150 kmh'),(76,'T','BLANK'),(77,'T','What is the meaning of this sign?'),(79,'T','Sharp turn to the left'),(80,'T','No U-turn allowed'),(81,'T','BLANK'),(82,'T','When your vehicle is being overtaken, what should you do?'),(83,'T','Drive on the far left'),(84,'T','Drive faster'),(85,'T','Do not accelerate'),(86,'T','BLANK'),(87,'T','What conditions of a vehicle are liable to cause accidents?'),(88,'T','Tyres completely worn down'),(89,'T','Tyres with too low pressure'),(90,'T','Well aligned wheels'),(91,'T','BLANK'),(92,'T','What do the broken lines mean on this road?'),(94,'T','You cannot overtake'),(95,'T','You may overtake'),(96,'T','Parking in the middle of the road is permitted'),(97,'T','BLANK'),(98,'T','What is the meaning of this sign?'),(100,'T','End of priority road'),(101,'T','No speed limit here'),(102,'T','Your right of way continues'),(103,'T','BLANK'),(104,'T','What is the meaning of this sign?'),(106,'T','Your right of way continues'),(107,'T','Start of priority road'),(108,'T','Your right of way has ended'),(109,'T','BLANK'),(110,'T','What is the meaning of this road sign?'),(112,'T','Double curve 3 km ahead'),(113,'T','Road surface is very slippery'),(114,'T','BLANK'),(115,'T','What is the meaning of this road sign?'),(117,'T','No entry for all vehicles'),(118,'T','No entry for all trucks'),(119,'T','No entry for heavy trucks'),(120,'T','BLANK'),(121,'T','What do you have to do when you see this sign while driving at a top speed?'),(123,'T','Slow down, you are approaching traffic lights'),(124,'T','Drive on, you are approaching traffic lights'),(125,'T','BLANK'),(126,'T','What vehicles are not allowed to park here?'),(128,'T','Motorcycles'),(129,'T','All vehicles'),(130,'T','Motorcycles and trucks (lorries)'),(131,'T','BLANK'),(132,'T','In what order must the vehicles proceed?'),(134,'T','Vehicle No 2 FIRST, Vehicle No 3 NEXT, Vehicle No 1 LAST'),(135,'T','Vehicle No 3 FIRST, Vehicle No 2 NEXT, Vehicle No 1 LAST'),(136,'T','BLANK'),(137,'T','What can be the use of the hazard or flashing warning signals on a motor vehicle?'),(138,'T','To indicate an upcoming bus stop'),(139,'T','To indicate a school bus with children getting in and out'),(140,'T','BLANK'),(141,'T','What is required of the driver of vehicle No 1?'),(143,'T','He can go'),(144,'T','He must allow vehicle No 2 to move ahead'),(145,'T','He must allow vehicle No 3 to go before he can go'),(146,'T','BLANK'),(147,'T','Who can turn off?'),(149,'T','Cyclist No 1 and vehicle No 3'),(150,'T','Cyclist No 1 and vehicle No 2'),(151,'T','Vehicle No 2'),(152,'T','BLANK'),(153,'T','Why should motor vehicles make as little noise as possible?'),(154,'T','Noise tends to disturb others'),(155,'T','Noise may be harmful to the health of others'),(156,'T','BLANK'),(157,'T','You have made changes on your vehicle and want to report them to the appropriate authority. What are you to submit?'),(158,'T','Driving licence'),(159,'T','Vehicle registration document'),(160,'T','Vehicle registration document and document of ownership'),(161,'T','BLANK'),(162,'T','What does \'Defensive Driving\' mean?'),(163,'T','Showing consideration and understanding for the mistakes of others as well as not blindly insisting on your rights'),(164,'T','Driving to cause danger to other road users'),(165,'T','Defending your vehicle with a multi-tone horn'),(166,'T','BLANK'),(167,'T','A police officer is controlling the traffic at an intersection even though the traffic lights are in operation. Whose signals are you to obey?'),(168,'T','The traffic lights only'),(169,'T','The police officers signals'),(170,'T','BLANK'),(171,'T','How is the date for the next inspection of your motor vehicle shown on the vehicle itself?'),(172,'T','By means of the inspection sticker'),(173,'T','By the side of the vehicle'),(174,'T','BLANK'),(175,'T','Apart from the owner of a vehicle, who else is to make sure that the vehicle he is driving is equipped with a fire-fighting equipment?'),(176,'T','The insurance company'),(177,'T','The driver'),(178,'T','BLANK'),(179,'T','What is the meaning of this road sign?'),(181,'T','U-turn'),(182,'T','No left turn'),(183,'T','BLANK'),(184,'T','What can be the use of the hazard or flashing warning signals on a motor vehicle?'),(185,'T','Used as the first indicator of a broken down vehicle at a point where it cannot be recognized early enough'),(186,'T','To indicate upcoming danger on the road'),(187,'T','BLANK'),(188,'T','When transporting human beings on trailers used for agricultural and forestry works, what precautions should be taken?'),(189,'T','Do not allow anybody to stand while the vehicle is moving'),(190,'T','Suitable seats must be provided'),(191,'T','BLANK'),(192,'T','What is the meaning of this road sign?'),(194,'T','Right turn prohibited'),(195,'T','Roundabout'),(196,'T','BLANK'),(197,'T','After a heavy rainfall, why should you maintain a longer distance between you and vehicles in front of you?'),(198,'T','Vehicles in front of you may start to skid'),(199,'T','Splash water will impair your vision and your braking distance will be longer'),(200,'T','Your tires will have a firm grip on the road'),(201,'T','BLANK'),(202,'T','What is the meaning of this road sign?'),(204,'T','Upcoming weather forecast station'),(205,'T','Side wind'),(206,'T','BLANK'),(207,'T','What is the meaning of this road sign?'),(209,'T','No entry for the next 100 m'),(210,'T','No entry for all trucks'),(211,'T','No entry 100 m ahead'),(212,'T','BLANK'),(213,'T','What is the meaning of this road sign?'),(215,'T','No right turn'),(216,'T','No parking on the right'),(217,'T','No stopping on the right'),(218,'T','BLANK'),(219,'T','What is the meaning of this road sign?'),(221,'T','Motorway ahead'),(222,'T','Compulsory driving direction: straight ahead'),(223,'T','No parking on both sides of the road'),(224,'T','BLANK'),(225,'T','Who is allowed to cross the intersection?'),(227,'T','None of them'),(228,'T','All of them'),(229,'T','Vehicle No 1'),(230,'T','Vehicles No 1 and No 2'),(231,'T','BLANK'),(232,'T','In what order must the vehicles proceed?'),(234,'T','Vehicle No 3 FIRST, Vehicle No 2 NEXT, Vehicle No 1 LAST'),(235,'T','Vehicle No 1 FIRST, Vehicle No 2 NEXT, Vehicle No 3 LAST'),(236,'T','BLANK'),(237,'T','Who can go first?'),(239,'T','Vehicle No 1'),(240,'T','Vehicles No 1 and No 2'),(241,'T','Vehicle No 3'),(242,'T','BLANK'),(243,'T','Who must wait?'),(245,'T','Vehicle No 2'),(246,'T','Vehicle No 1'),(247,'T','BLANK'),(248,'T','Who can go first?'),(250,'T','Vehicle No 2'),(251,'T','Vehicle No 1'),(252,'T','BLANK'),(253,'T','How can a driver who is drunk restore his ability to drive?'),(254,'T','By drinking strong, hot coffee'),(255,'T','By sleeping for an hour'),(256,'T','By going for a walk lasting one hour'),(257,'T','None of the above'),(258,'T','BLANK'),(259,'T','If you want to change lanes, what is expected of you?'),(260,'T','Indicate that you are changing lanes'),(261,'T','Observe the traffic behind you before you actually move'),(262,'T','BLANK'),(263,'T','On which part of the road is parking usually allowed?'),(264,'T','On the right'),(265,'T','On the left'),(266,'T','BLANK'),(267,'T','You are going on a very long journey. How can you keep yourself from getting tired?'),(268,'T','Get some energy drinks for on the road'),(269,'T','Drink some alcoholic beverages'),(270,'T','Take frequent breaks in the course of the journey'),(271,'T','BLANK'),(272,'T','On a highway, what is the interval of putting up a warning triangle or any other warning device when a vehicle breaks down?'),(273,'T','Approximately 100 m'),(274,'T','Approximately 120 m'),(275,'T','BLANK'),(276,'T','You have a new unlicenced vehicle that has Trial Number Plates (red licence plates). Where are you allowed to go with it?'),(277,'T','On trips abroad'),(278,'T','On trips to test whether the vehicle is working well'),(279,'T','On trips to demonstrate the vehicles topspeed'),(280,'T','BLANK'),(281,'T','In what situations is strong side wind very dangerous?'),(282,'T','When parking your vehicle'),(283,'T','While passing trucks'),(284,'T','BLANK'),(285,'T','What do lines X and Y mean if you are driving in direction A?'),(287,'T','Vehicle A can cross line Y to overtake'),(288,'T','Vehicle B can cross line X to overtake'),(289,'T','BLANK'),(290,'T','What is a possible danger that can occur during overtaking?'),(291,'T','Underestimation of the speed of an oncoming vehicle'),(292,'T','Overestimation of the drivers vision of an oncoming vehicle'),(293,'T','BLANK'),(294,'T','What should you expect when you see this sign?'),(296,'T','Braking distance will be longer than on a level road'),(297,'T','High gears will result in good braking'),(298,'T','BLANK'),(299,'T','Your vehicle has no fog lights but you are driving it in thick fog in the day time. Why is it wrong for you to use your parking lights instead of dimmed head lights?'),(300,'T','In foggy weather, you MUST make it a point to let road users coming from the opposite direction see you more clearly than those coming from behind'),(301,'T','You can be seen more easily by oncoming drivers when your dimmed headlights are on'),(302,'T','BLANK'),(303,'T','What is a possible danger that can occur during overtaking?'),(304,'T','Underestimation of your vehicles acceleration qualities'),(305,'T','Overestimation of the distance between you and an oncoming vehicle'),(306,'T','BLANK'),(307,'T','What is the meaning of this road sign?'),(309,'T','End of dual carriage ahead'),(310,'T','Edge of the road is dangerous'),(311,'T','BLANK'),(312,'T','What is the meaning of this road sign?'),(314,'T','Double curve (bend), first to the right and then to the left'),(315,'T','Slippery road surface'),(316,'T','Double curve (bend), first to the left and to the right'),(317,'T','BLANK'),(318,'T','What do you do when you see this sign?'),(320,'T','Reduce Speed and change to down gear'),(321,'T','Change to down gear and start braking'),(322,'T','BLANK'),(323,'T','Who must wait?'),(325,'T','Vehicle No 2'),(326,'T','Vehicle No 1'),(327,'T','BLANK'),(328,'T','Who must wait?'),(330,'T','Vehicle No 1'),(331,'T','Vehicles No 2 and No 3'),(332,'T','Vehicle No 3'),(333,'T','BLANK'),(334,'T','What is required of the driver of vehicle No 2?'),(336,'T','He has to observe the right of way of vehicle No 1 and wait for it'),(337,'T','He has the right of way before vehicle No 1'),(338,'T','BLANK'),(339,'T','When does a vehicle with the sticker below have to report for the next periodical inspection?'),(341,'T','10 november 2011'),(342,'T','22 october 2011'),(343,'T','21 october 2011'),(344,'T','BLANK'),(345,'T','You are at an intersection and want to turn right into a street where pedestrians have just started to cross. What are you to do?'),(346,'T','Signal the pedestrians to halt'),(347,'T','Give way to the pedestrians'),(348,'T','BLANK'),(349,'T','What do you have to keep in mind when you see elderly persons crossing the road?'),(350,'T','They may suddenly stop on the roadway'),(351,'T','They are as smart as younger persons'),(352,'T','BLANK'),(353,'T','What damage is covered by your Third Party Liability Insurance when you are involved in a road traffic accident?'),(354,'T','Only damages to the other vehicle'),(355,'T','Any damage to the other vehicle as well as injuries to the driver and passengers of the other vehicle'),(356,'T','Only damages to your vehicle'),(357,'T','Any damage to your vehicle as well as injuries to the driver and passengers of your vehicle'),(358,'T','BLANK'),(359,'T','In what situation are you allowed to use the headlight flasher to indicate your intention to overtake another vehicle?'),(360,'T','Outside built-up areas in the day time'),(361,'T','Outside built-up areas at night'),(362,'T','When it is raining heavily'),(363,'T','Outside built-up areas in the day time and at night'),(364,'T','BLANK'),(365,'T','You are descending a steep-hill and have to change to a lower gear. What method should you employ to use the braking effect of the engine?'),(366,'T','Immediately after shifting gear, disengage the clutch'),(367,'T','Immediately after shifting gear, switch off the engine'),(368,'T','Immediately after shifting gear, step firmly on the foot brake'),(369,'T','BLANK'),(370,'T','What is the meaning of this road sign?'),(372,'T','No entry for horse-riders'),(373,'T','Compulsory for horse-riders, prohibited for other road users'),(374,'T','Compulsory for all road users'),(375,'T','BLANK'),(376,'T','What types of licence holders are not allowed to drive a scooter with a capacity of 100 cc?'),(377,'T','Class A Licence'),(378,'T','Class B Licence'),(379,'T','Class B Licence and Class C Licence'),(380,'T','BLANK'),(381,'T','What is the meaning of this road sign?'),(383,'T','You are allowed to make a U-turn'),(384,'T','You can reverse'),(385,'T','You can park'),(386,'T','BLANK'),(387,'T','What factors may be responsible for underestimating or misjudging your own speed on a wide stretch of road outside built-up areas?'),(388,'T','Narrowness of the road'),(389,'T','The bad condition of the road'),(390,'T','Absence of trees and buildings on both sides'),(391,'T','BLANK'),(392,'T','What change on a passenger vehicle must always be reported to the official unit dealing with such matters?'),(393,'T','Change of ownership'),(394,'T','Change of color'),(395,'T','Installation of musical equipment'),(396,'T','BLANK'),(397,'T','What change on a passenger vehicle must always be reported to the official unit dealing with such matters?'),(398,'T','Conversion of 2-door to 4-door passenger vehicle'),(399,'T','Conversion of passenger vehicle into pickup'),(400,'T','Change of tyres'),(401,'T','BLANK'),(402,'T','What change on a passenger vehicle must always be reported to the official unit dealing with such matters?'),(403,'T','Change of color'),(404,'T','Installation of a new engine'),(405,'T','Installation of an engine with greater horse power'),(406,'T','BLANK'),(407,'T','Who can go first?'),(409,'T','Vehicle No 2'),(410,'T','Vehicle No 1'),(411,'T','BLANK'),(412,'T','When you arrive at an accident scene where help is available, you should'),(414,'T','Clear possible dangers'),(415,'T','Drive away people around the scene'),(416,'T','Keep concentrated on the traffic and pass the scene quickly'),(417,'T','Go watch the scene'),(418,'T','BLANK'),(419,'T','You are changing a tyre alongside the road. What should you do?'),(421,'T','Clear possible dangers'),(422,'T','Put your lights on'),(423,'T','Display warning triangle'),(424,'T','Change it quickly'),(425,'T','BLANK'),(426,'T','You want to reverse here. Is this allowed?'),(428,'T','Yes'),(429,'T','No'),(430,'T','BLANK'),(431,'T','You are appoaching a junction and you see this sign. What does it mean?'),(433,'T','Roadworks'),(434,'T','Train crossing'),(435,'T','Busy traffic'),(436,'T','Constructional vehicles cross'),(437,'T','BLANK'),(438,'T','The vehicle coming from your right on this level crossing indicates that it wants to turn right. Do you have priority?'),(440,'T','Yes'),(441,'T','No'),(442,'T','BLANK'),(443,'T','You want to stop here. Is this allowed?'),(445,'T','Yes'),(446,'T','No'),(447,'T','BLANK'),(448,'T','You want to park here. Is this allowed?'),(450,'T','Yes'),(451,'T','No'),(452,'T','BLANK'),(453,'T','What is the meaning of this road sign?'),(455,'T','Warning, right bend'),(456,'T','Warning, series of bends, first to right'),(457,'T','Warning, uneven road, slopes to left'),(458,'T','Warning, left bend'),(459,'T','BLANK'),(460,'T','What does this road sign tell you?'),(462,'T','Uneven road'),(463,'T','Warning for sleeping police or speed ram'),(464,'T','Speed ram at the spot of the sign'),(465,'T','Roadworks ahead'),(466,'T','BLANK'),(467,'T','What is the meaning of this road sign?'),(469,'T','Train station'),(470,'T','Busstop'),(471,'T','No entry for buses'),(472,'T','Overhead bridge'),(473,'T','BLANK'),(474,'T','You want to make a U-turn here. Is this allowed?'),(476,'T','Yes'),(477,'T','No'),(478,'T','BLANK'),(479,'T','You are driving behind this heavy loaded truck. What should you do?'),(481,'T','Keep distance'),(482,'T','Speed up and overtake'),(483,'T','Drive closely and signal left'),(484,'T','Blow horn'),(485,'T','BLANK'),(486,'T','You are driving behind this insecurely loaded truck. What might happen?'),(488,'T','Truck may start swaying'),(489,'T','Load may fall off'),(490,'T','Load may blind your sight'),(491,'T','BLANK'),(492,'T','You arrive at this junction, What do you need to do?'),(494,'T','Give way to a vehicle coming from the left'),(495,'T','Watch your left and move'),(496,'T','Drive onto the highway'),(497,'T','Stop'),(498,'T','BLANK'),(499,'T','What sign of a pedestrian do you need to watch?'),(501,'T','The person has one leg on the zebra'),(502,'T','The person moves on the zebra'),(503,'T','The person is waving to stop'),(504,'T','BLANK'),(505,'T','Do you have priority to cross the upcoming junction when you see this sign?'),(507,'T','Yes'),(508,'T','No'),(509,'T','BLANK'),(510,'T','Do you have priority to cross the upcoming junction when you see this sign?'),(512,'T','No'),(513,'T','Only when the other vehicle comes from the left'),(514,'T','Only when the other vehicle comes from the right'),(515,'T','Yes, and any vehicle can only come from the left'),(516,'T','BLANK'),(517,'T','Do you have priority to cross the upcoming junction when you see this sign?'),(519,'T','Yes'),(520,'T','No'),(521,'T','BLANK'),(522,'T','What can you expect ahead?'),(524,'T','Side road on the left'),(525,'T','Parking place on the left'),(526,'T','Quayside or riverbank on the left'),(527,'T','No through road on the left'),(528,'T','BLANK'),(529,'T','What do you need to do when you see a double sign like this?'),(531,'T','You need to pay attention to trafficlights'),(532,'T','You need to pay attention to pedestrians'),(533,'T','You need to pay attention to trafficlights and pedestrians'),(534,'T','None ot them'),(535,'T','BLANK'),(536,'T','What are you allowed to do when you see a double sign like this?'),(538,'T','Overtake'),(539,'T','Overtake, but keep your speed below 30'),(540,'T','None of the above'),(541,'T','BLANK'),(542,'T','What must you do when you see a double sign like this?'),(544,'T','Overtake, but keep your speed below 30 kmh'),(545,'T','Do not overtake and keep your speed below 30 kmh'),(546,'T','Only when overtaking, speed up above 30 kmh'),(547,'T','BLANK'),(548,'T','What do you do when you see a vehicle on a DVLA test?'),(550,'T','Quickly overtake'),(551,'T','Keep distance'),(552,'T','Slow down and blow your horn'),(553,'T','Blow the horn loudly'),(554,'T','BLANK'),(555,'T','What is first aid?'),(556,'T','Help by police'),(557,'T','Help by ambulance personnel'),(558,'T','Help by road workers'),(559,'T','The first and temporary help'),(560,'T','BLANK'),(561,'T','Where can you find this sign?'),(563,'T','Police station'),(564,'T','Court'),(565,'T','Fire service'),(566,'T','Hospital'),(567,'T','BLANK'),(568,'T','Where exactly do you need to stop?'),(570,'T','Before the sign'),(571,'T','On the stopline'),(572,'T','After the sign, but before the zebra'),(573,'T','BLANK'),(574,'T','What saved the passengers of this crashed vehicle?'),(576,'T','The bumper'),(577,'T','The crush zone'),(578,'T','The airbags'),(579,'T','Quality tyres'),(580,'T','BLANK'),(581,'T','You want to overtake this loaded truck. When can you do this?'),(583,'T','When you have a clear sight on a straight part of the road'),(584,'T','When you have a clear sight in a bend to the left, so you can see cars coming from the opposite direction'),(585,'T','When you have a clear sight in a bend to the right, so you can see cars coming from the opposite direction'),(586,'T','When the truck driver signals you'),(587,'T','BLANK'),(588,'T','You want to overtake this fruit pickup. How can you do this?'),(590,'T','You pass the pickup on the right side when possible'),(591,'T','You wait until the pickup moves to the right'),(592,'T','You horn and flash your lights to indicate you want to pass'),(593,'T','You pass on the shoulder of the road where possible'),(594,'T','BLANK'),(595,'T','Before you make a U-turn on the road, you should'),(596,'T','Give a horn signal as well as using your indicators'),(597,'T','Signal so that other drivers can slow down for you'),(598,'T','Look the wind screen for a final check'),(599,'T','Select a higher gear'),(600,'T','BLANK'),(601,'T','Objects hanging on your interior mirror may'),(602,'T','Restrict your view'),(603,'T','Improve your driving'),(604,'T','Enhance the beauty of your vehicle'),(605,'T','Help your concentration'),(606,'T','BLANK'),(607,'T','You are on a good, dry road surface and your vehicle has good brakes and tyres. Which one of the following can affect your stopping distance?'),(608,'T','The road surface'),(609,'T','If your reaction time is slow'),(610,'T','The wheel nuts'),(611,'T','The brake pads'),(612,'T','BLANK'),(613,'T','You are driving along a wet road. How can you tell if your vehicle`s tyres are losing their grip on the surface?'),(614,'T','The engine will stall'),(615,'T','The engine noise will increase'),(616,'T','The steering will feel very heavy'),(617,'T','The steering will feel very light'),(618,'T','BLANK'),(619,'T','When must you use dipped (dim) headlights during the day?'),(620,'T','All the time'),(621,'T','In poor visibility'),(622,'T','Along narrow streets'),(623,'T','When parking'),(624,'T','BLANK'),(625,'T','You are driving on a motorway. The traffic ahead is braking sharply because of an accident. How could you warn following traffic?'),(626,'T','Briefly use the hazard warning light'),(627,'T','Switch on the hazard warning lights continuously'),(628,'T','Briefly use the rear fog lights'),(629,'T','Switch on the headlights continuously'),(630,'T','BLANK'),(631,'T','When driving with low beam light, you will be able to see not more than 40 meters ahead. Which of the following beams will you prefer to use when driving behind another vehicle?'),(632,'T','High beam'),(633,'T','Side beam'),(634,'T','Low beam'),(635,'T','Back beam'),(636,'T','BLANK'),(637,'T','Skidding is mainly caused by'),(638,'T','The weather'),(639,'T','The vehicle'),(640,'T','The driver'),(641,'T','The road'),(642,'T','BLANK'),(643,'T','You are behind a trotro that pulls up at a bus stop. What should you do?'),(645,'T','Pull up as well past the trotro sounding your horn'),(646,'T','Watch carefully for pedestrians'),(647,'T','Be ready to give away to the trotro and the driver'),(648,'T','Stay behind the trotro'),(649,'T','BLANK'),(650,'T','To avoid an accident when entering a contra flow system (transfer of traffic its usual half of the road to the other half, so that it shares it with traffic flowing in the other direction), you should'),(651,'T','Reduce speed at the exit of the road'),(652,'T','Switch lanes anytime to make progress'),(653,'T','Choose opposite lane early'),(654,'T','Follow other motorists closely to avoid long queues'),(655,'T','BLANK'),(656,'T','What is the minimum legal insurance cover you should have a drive on public roads?'),(657,'T','Third party, fire and theft'),(658,'T','Third party only'),(659,'T','Fully comprehensive'),(660,'T','Personal injury cover'),(661,'T','BLANK'),(662,'T','Stopping distances decrease on wet and slippery roads. Is this correct?'),(663,'T','No'),(664,'T','Sometimes'),(665,'T','Yes'),(666,'T','Not at all'),(667,'T','BLANK'),(668,'T','Your mobile phone rings while you are on the motorway. Before answering your should'),(670,'T','Reduce your speed'),(671,'T','Move into the left hand lane'),(672,'T','Park on the hard shoulder'),(673,'T','Stop in a safe place'),(674,'T','BLANK'),(675,'T','In which of these situations should you avoid overtaking?'),(676,'T','Just after a bend'),(677,'T','On a 50 kmh road'),(678,'T','In a one-way street'),(679,'T','Approaching a dip in the road'),(680,'T','BLANK'),(681,'T','You are driving a slow moving vehicle on a narrow winding road. You should'),(682,'T','Keep well out to stop vehicles overtaking dangerously'),(683,'T','Wave following vehicles past you quickly'),(684,'T','Pull in safety when you can, to let following vehicles overtake'),(685,'T','Give at left signal when it is safe for vehicles to overtake'),(686,'T','BLANK'),(687,'T','What should you use your horn for?'),(688,'T','To alert others of your presence'),(689,'T','To greet other road user'),(690,'T','To allow you right of way'),(691,'T','To signal your annoyance'),(692,'T','BLANK'),(693,'T','It is essential that tyre pressures are checked regularly. When should this be done?'),(694,'T','After any lengthy journey'),(695,'T','When tyres are hot'),(696,'T','After travelling at high speed'),(697,'T','When tyres are cold'),(698,'T','BLANK'),(699,'T','How can you use the engine of your vehicle to reduce its speed?'),(701,'T','By changing to a lower gear'),(702,'T','By selecting reverse gear'),(703,'T','By changing to a higher gear'),(704,'T','By selecting neutral gear'),(705,'T','BLANK'),(706,'T','Are passengers allowed to ride in a caravan that is being towed?'),(707,'T','Yes, if they are over fourteen'),(708,'T','No, not at any time'),(709,'T','Only if all the seats in the towing vehicle are full'),(710,'T','Only if a stabilizer is fitted'),(711,'T','BLANK'),(712,'T','You must not use your horn when you are stationary'),(713,'T','Unless a moving vehicle may cause you danger'),(714,'T','At any time whatsoever'),(715,'T','Unless it is used only briefly'),(716,'T','Except for signaling that you have just arrived'),(717,'T','BLANK'),(718,'T','You are signalling to turn right in busy traffic. How would you confirm your intention safely?'),(719,'T','Sound the horn'),(720,'T','Give an arm signal'),(721,'T','Flash your headlights'),(722,'T','Position over the centre line'),(723,'T','BLANK'),(724,'T','Where may you overtake on a one-way street?'),(725,'T','Only on the left-hand side'),(726,'T','Overtaking is not allowed'),(727,'T','Only on the right-hand side'),(728,'T','Either on the right or the left'),(729,'T','BLANK'),(730,'T','What advice should you give to a driver who has had a few alcoholic drinks at a party?'),(732,'T','Have a strong cup of coffee and then drive home'),(733,'T','Drive carefully and slowly'),(734,'T','Go home by public transport'),(735,'T','Wait a short while and then drive home'),(736,'T','BLANK'),(737,'T','Identify one place where it is illegal to park your vehicle'),(738,'T','Garages'),(739,'T','Parking spaces'),(740,'T','Bus stops'),(741,'T','Office parking spaces'),(742,'T','BLANK'),(743,'T','What would you look out for when you see this road works ahead sign displayed along a road?'),(745,'T','Traffic lights'),(746,'T','Following traffic'),(747,'T','Constructional vehicles cross'),(748,'T','Covered trenches'),(749,'T','BLANK'),(750,'T','A heavy load on your roof rack will'),(751,'T','Improve the road holding'),(752,'T','Reduce the stopping distance'),(753,'T','Make the steering lighter'),(754,'T','Reduce stability'),(755,'T','BLANK'),(756,'T','With all mirrors properly adjusted, a driver will be able to see all around him including his blind spots. Is this correct?'),(757,'T','In some cases'),(758,'T','At all times'),(759,'T','Yes'),(760,'T','No'),(761,'T','BLANK'),(762,'T','If the legal permissible alcohol level for driving is 0.08 mg, how many bottles of chilled, sparkling star can you take to stay in range?'),(764,'T','One'),(765,'T','Half glass'),(766,'T','One full glass'),(767,'T','None of the above'),(768,'T','BLANK'),(769,'T','You wish to overtake a long, slow moving vehicle on a busy road. You should'),(770,'T','Fellow it closely and keep moving out to see the road ahead'),(771,'T','Flash your headlights for the oncoming traffic to give way'),(772,'T','Stay behind until the driver waves you past'),(773,'T','Keep well back until you can see that it is clear ahead'),(774,'T','BLANK'),(775,'T','Which of the following documents will not be necessary to carry in your vehicle?'),(776,'T','Driving license'),(777,'T','Vehicle registration documents certificate'),(778,'T','Insurance'),(779,'T','Roadworthy'),(780,'T','BLANK'),(781,'T','Which of the following fire extinguishers will be ideal for putting out fire caused by petrol electrical faults?'),(783,'T','Dry powder extinguisher'),(784,'T','BCF extinguisher'),(785,'T','Any of them'),(786,'T','None of the above'),(787,'T','BLANK'),(788,'T','An under inflated tyre can cause your tyre to'),(789,'T','Rotate well'),(790,'T','Have road-holding'),(791,'T','Overheat'),(792,'T','None of the above'),(793,'T','BLANK'),(794,'T','When you arrive at an accident scene, you must not do one of the following'),(795,'T','Clear possible dangers'),(796,'T','Drive away people around the scene'),(797,'T','Display warning triangle'),(798,'T','None of the above'),(799,'T','BLANK'),(800,'T','Oil levels of your vehicle should always be'),(801,'T','Above the maximum mark'),(802,'T','Below the minimum mark'),(803,'T','Between the maximum and minimum mark'),(804,'T','None of above'),(805,'T','BLANK'),(806,'T','Apart from your windscreen one of the following should also be always clean and securely fixed'),(807,'T','Windscreen'),(808,'T','Registration plates only'),(809,'T','Registration documents'),(810,'T','Registration and warning plates'),(811,'T','BLANK'),(812,'T','Before loading your vehicle, you should do one of the following to ensure safety'),(813,'T','Check content of your load'),(814,'T','Wash your vehicle'),(815,'T','Carry one load'),(816,'T','Do none of the above'),(817,'T','BLANK'),(818,'T','If you have to drive a vehicle you are not used to, which of the following controls will you look out for?'),(819,'T','The battery size'),(820,'T','The ground'),(821,'T','A child'),(822,'T','None of the above'),(823,'T','BLANK'),(824,'T','Which of the following is at risk of not being seen as you reverse?'),(825,'T','The driver'),(826,'T','The ground'),(827,'T','A child'),(828,'T','None of the above'),(829,'T','BLANK'),(830,'T','Correctly adjusted driving mirrors will show'),(831,'T','All blind spots'),(832,'T','The tail-end of your vehicle'),(833,'T','The drivers face properly'),(834,'T','Objects under the vehicle'),(835,'T','BLANK'),(836,'T','When you are waiting to manoeuvre to the left and a vehicle from the opposite direction flashes its lights, it means'),(837,'T','You can go on'),(838,'T','You should go straight ahead'),(839,'T','A warning of his presence'),(840,'T','None of the above'),(841,'T','BLANK'),(842,'T','You must never signal other road users'),(843,'T','To overtake'),(844,'T','To stop and offer help'),(845,'T','Of a danger ahead'),(846,'T','None of the above'),(847,'T','BLANK'),(848,'T','If you want to turn into the second of two junctions that are very close, you have to signal'),(849,'T','Before the first junction'),(850,'T','After the second junction'),(851,'T','Before the second junction'),(852,'T','After the first junction'),(853,'T','BLANK'),(854,'T','Do not move off if your action will force another driver to'),(855,'T','Use his mirrors'),(856,'T','Reverse'),(857,'T','Brake sharply'),(858,'T','Maintain his lane'),(859,'T','BLANK'),(860,'T','Unless road signs indicate otherwise all drivers must keep to'),(861,'T','Any lane'),(862,'T','The middle lane'),(863,'T','The left lane'),(864,'T','The right lane'),(865,'T','BLANK'),(866,'T','To reduce the risk of your vehicle crossing the centre line when negotiating a left-hand bend, you should keep to the'),(867,'T','Left edge of the road'),(868,'T','Right edge of the road'),(869,'T','Middle of the road'),(870,'T','Position most suitable'),(871,'T','BLANK'),(872,'T','Warning road signs are indicated on'),(873,'T','Circular signboards'),(874,'T','Rectangular signboards'),(875,'T','Square signboards'),(876,'T','Triangular signboards'),(877,'T','BLANK'),(878,'T','At junction where no priority is shown, you should always'),(879,'T','Flash you head lights'),(880,'T','Show your brake lights'),(881,'T','Be prepared to stop'),(882,'T','Signal others to move on'),(883,'T','BLANK'),(884,'T','If you intend going straight ahead in a roundabout, you should'),(885,'T','Keep to the left lane'),(886,'T','Keep to the right lane'),(887,'T','Keep to any lane'),(888,'T','Keep the middle lane'),(889,'T','BLANK'),(890,'T','Which of the following will give you an ideal stopping distance?'),(891,'T','The 2 second gap'),(892,'T','The 3 second gap'),(893,'T','The 3 minutes gap'),(894,'T','The 2 minutes gap'),(895,'T','BLANK'),(896,'T','Your mobile phone rings while you are on the motorway. Before answering, you should'),(898,'T','Reduce your speed to 90 kmh'),(899,'T','Hold the hand set to your ear'),(900,'T','Move into the left hand lane'),(901,'T','Stop in a safe place'),(902,'T','BLANK'),(903,'T','You can only drive on the sidewalks when it is'),(904,'T','Outside the drive way'),(905,'T','Parallel to the drive way'),(906,'T','Part of the drive way'),(907,'T','None of the above'),(908,'T','BLANK'),(909,'T','Which of these groups of drivers is allowed to use the roads?'),(910,'T','Visually impaired'),(911,'T','A driver with hearing problem'),(912,'T','A driver who is visually impaired in one eye'),(913,'T','None of the above'),(914,'T','BLANK'),(915,'T','You are held up in the middle of a level crossing and cannot restart the engine. The warning bell starts to ring. You should'),(916,'T','Phone the signal operator so that trains can be stopped'),(917,'T','Run down the rack to warn the signal operator'),(918,'T','Carry on trying to restart the engine quickly'),(919,'T','Push the vehicle to clear the crossing'),(920,'T','BLANK'),(921,'T','At a pedestrian crossing you only have priority when'),(922,'T','You are at the pedestrian crossing'),(923,'T','You step on the pedestrian crossing'),(924,'T','You run across the pedestrian crossing'),(925,'T','You intend to cross the road'),(926,'T','BLANK'),(927,'T','The majority of all accidents are due to'),(928,'T','The tyres of the vehicles'),(929,'T','Items falling off the vehicles'),(930,'T','Human error'),(931,'T','Road Conditions'),(932,'T','BLANK'),(933,'T','When you park your vehicle you should'),(934,'T','Set the brakes'),(935,'T','Stop the engine'),(936,'T','Remove the ignition key'),(937,'T','Do all the above'),(938,'T','BLANK'),(939,'T','If you are arrested for having a blood alcohol concentration, your concentration should be above'),(940,'T','100 %'),(941,'T','1.00 %'),(942,'T','0.08 %'),(943,'T','80 %'),(944,'T','BLANK'),(945,'T','In an emergency on a wet road, it is always right to'),(946,'T','Apply sudden brakes'),(947,'T','Slump the brakes'),(948,'T','Apply the brakes with care'),(949,'T','Call for help'),(950,'T','BLANK'),(951,'T','If someone is to guide you reverse, where should the person stand?'),(952,'T','Directly behind the vehicle'),(953,'T','In front of the vehicle'),(954,'T','At side of the vehicle'),(955,'T','None of the above'),(956,'T','BLANK'),(957,'T','On which of these roads will double-parking be allowed?'),(958,'T','One-way road'),(959,'T','A major road'),(960,'T','Roads in residential areas'),(961,'T','None of the above'),(962,'T','BLANK'),(963,'T','You may overtake on a clear level crossing.'),(964,'T','True'),(965,'T','False'),(966,'T','When it is safe to do so'),(967,'T','None of the above'),(968,'T','BLANK'),(969,'T','Before you check your engine oil, you should ensure that the'),(970,'T','Engine is warm'),(971,'T','Engine is cold'),(972,'T','Engine is on'),(973,'T','Engine is out of order'),(974,'T','BLANK'),(975,'T','To get an accurate result when you check your engine oil, you should always ensure that the vehicle is parked'),(976,'T','On a level ground'),(977,'T','In a mechanics shop'),(978,'T','On a slop'),(979,'T','In a depression'),(980,'T','BLANK'),(981,'T','You are driving a slow moving vehicle on a narrow road. When traffic wishes to overtake, you should'),(982,'T','Take no action'),(983,'T','Pull in safely as soon as you can to let following vehicles overtake'),(984,'T','Stop and wave the traffic on'),(985,'T','Give a left signal when it is safe for the following vehicles to overtake'),(986,'T','BLANK'),(987,'T','To help the environment, you can avoid wasting fuel by'),(988,'T','Making sure your tyres are correctly inflated'),(989,'T','Over-revving in the lower gears'),(990,'T','Driving at lower speeds where possible'),(991,'T','Keeping an empty roof rack properly fitted'),(992,'T','BLANK'),(993,'T','You are travelling along a road that has just been gravelled with loose gravels. Which of the following must you pay particular attention to?'),(994,'T','Vehicles overtaking you'),(995,'T','Vehicles parked on the shoulder of the road'),(996,'T','Dazzle indicators'),(997,'T','Red and white railing along the road'),(998,'T','BLANK'),(999,'T','You are late for a very important state programme in which you must participate. On your way, you encounter a heavy traffic situation. What should you do?'),(1000,'T','Follow an authorized convoy that is passing by'),(1001,'T','Follow drivers on the shoulder of the road'),(1002,'T','Be tolerant and wait for traffic to flow'),(1003,'T','Horn and force drive your way through the traffic'),(1004,'T','BLANK'),(1005,'T','You are waiting to come out of a side road. Why should you watch carefully for motorcycles?'),(1006,'T','Motorcycles are usually faster than cars'),(1007,'T','Police patrols often use motorcycles'),(1008,'T','Motorcycles are small and hard to see'),(1009,'T','Motorcycles have right of way'),(1010,'T','BLANK'),(1011,'T','You are following two cyclists. They approach a roundabout in the left hand-lane. In which direction should you expect the cyclists to go?'),(1012,'T','Left'),(1013,'T','Right'),(1014,'T','Any direction'),(1015,'T','Straight ahead'),(1016,'T','BLANK'),(1017,'T','You are waiting to emerge left from a minor road. A large vehicle is approaching from the right. You have time to turn, but you should wait. Why?'),(1018,'T','The large vehicle can turn suddenly'),(1019,'T','The large vehicle can easily hide an overtaking vehicle'),(1020,'T','The large vehicle is difficult to steer in a straight line'),(1021,'T','The large vehicle can easily hide vehicles from the left'),(1022,'T','BLANK'),(1023,'T','Which of the following gear positions can be referred to as the over-drive gear?'),(1025,'T','First gear'),(1026,'T','Reverse gear'),(1027,'T','Fifth gear'),(1028,'T','None of the above'),(1029,'T','BLANK'),(1030,'T','Correctly adjusted driving mirrors will show'),(1032,'T','All blind spots'),(1033,'T','The tail-end of your vehicle'),(1034,'T','The drivers face properly'),(1035,'T','Possible objects under the vehicle'),(1036,'T','BLANK'),(1037,'T','You must never signal other road users'),(1038,'T','To overtake'),(1039,'T','To stop and offer help'),(1040,'T','To warn for danger ahead'),(1041,'T','None of the above'),(1042,'T','BLANK'),(1043,'T','You are travelling on a highway, suddenly you notice that you are entering a built up area or town. What speed limit should you use?'),(1044,'T','25 kmh'),(1045,'T','30 kmh'),(1046,'T','50 kmh'),(1047,'T','70 kmh'),(1048,'T','BLANK'),(1049,'T','Four drivers attend a social event, three of them take 3 bottles of beer each, while the last person takes 1 bottle of the same beer. Which of them will the law permit to drive?'),(1051,'T','The three drivers who took 3 bottles of beer each'),(1052,'T','The driver who took 1 bottle of beer'),(1053,'T','Any of them can drive'),(1054,'T','None of them is permitted to drive'),(1055,'T','BLANK'),(1056,'T','You are about to travel with your family, your wife decides to the family. Whose responsibility is it to ensure that everybody wears seat belt?'),(1058,'T','The husband'),(1059,'T','The wife'),(1060,'T','Those in the care'),(1061,'T','The head of the family'),(1062,'T','BLANK'),(1063,'T','Pelican crossings are pedestrian crossing that are controlled by pedestrians.'),(1064,'T','Not always'),(1065,'T','False'),(1066,'T','True'),(1067,'T','None of the above'),(1068,'T','BLANK'),(1069,'T','Which of the following is the right thing to do when you find out that another driver is going against the rules?'),(1070,'T','Use your horn to warn the driver'),(1071,'T','Shout to correct the driver'),(1072,'T','Give the driver the right of way'),(1073,'T','Do none of the above'),(1074,'T','BLANK'),(1075,'T','You find out that your Blood Alcohol Concentration (BAC) is above 0.08%. Which of the following can help reduce the alcohol effect?'),(1076,'T','Drink a lot of water'),(1077,'T','Take cold shower'),(1078,'T','Take enough food'),(1079,'T','Allow for time'),(1080,'T','BLANK'),(1081,'T','When following a truck at night, it will be safe to use high beam headlights because trucks have high sides that can prevent the driver of the truck from noticing you.'),(1082,'T','True'),(1083,'T','False'),(1084,'T','Sometimes'),(1085,'T','True only when street lights are off'),(1086,'T','BLANK'),(1087,'T','After overtaking a truck you can only return to the drive lane only when you are sure you can see'),(1088,'T','The entire front of the truck in the side mirror'),(1089,'T','The entire front of the truck in the rear view mirror'),(1090,'T','The entire side of the truck in the side mirror'),(1091,'T','The entire side of the truck in the rear view mirror'),(1092,'T','BLANK'),(1093,'T','Which of the following will represent an act of aggressive driving?'),(1094,'T','Tailgating'),(1095,'T','Braking'),(1096,'T','Observing traffic rules'),(1097,'T','Driving in the right lane on two way road'),(1098,'T','BLANK'),(1099,'T','Exhaust pipe mufflers are fitted on vehicles to help'),(1100,'T','Give the vehicle good moisture output'),(1101,'T','Prevent oil from entering the exhaust system'),(1102,'T','Prevent excessive noise'),(1103,'T','Prevent carbon dioxide leakage'),(1104,'T','BLANK'),(1105,'T','You noticed that your car starts but your headlight becomes dim at low engine speed. Which of the following should you check?'),(1106,'T','Radiator'),(1107,'T','Water pump'),(1108,'T','Fuse'),(1109,'T','Alternator'),(1110,'T','BLANK'),(1111,'T','Which of the following will you consider as the basic function of a vehicles suspension system?'),(1112,'T','It keeps the cars wheels in firm contact with the road'),(1113,'T','It keeps the cars electrical system in good shape'),(1114,'T','It helps keep the brake pads in good shape'),(1115,'T','All the above'),(1116,'T','BLANK'),(1117,'T','Before you replace your tire, make sure your handbrake is on and position the gear to either the park or 1st position'),(1118,'T','True in all cases'),(1119,'T','True when the vehicle is parked on a hill'),(1120,'T','False in all cases'),(1121,'T','False when the vehicle is parked on a hill'),(1122,'T','BLANK'),(1123,'T','To reduce the damage your vehicle causes to the environment you should'),(1124,'T','Anticipate well ahead'),(1125,'T','Use narrow side streets'),(1126,'T','Brake in good time'),(1127,'T','Avoid harsh acceleration'),(1128,'T','BLANK'),(1129,'T','You arrive at a serious motorcycle accident scene. The motorcyclist is unconscious and bleeding. Your main priority should be to'),(1130,'T','Sweep up any loose debris'),(1131,'T','Make a list of witnesses and attend to the victim'),(1132,'T','Take number of the vehicle involved'),(1133,'T','Check the causality s airways'),(1134,'T','BLANK'),(1135,'T','At an accident scene, if causalities are unconscious and bleeding you should first use the ABC of first aid to check the victim. What does the ABC mean?'),(1136,'T','Airway, Bleeding, Conscious effort'),(1137,'T','Airway, Breathing, Circulation'),(1138,'T','Airway, Breathing, Care'),(1139,'T','None of the above'),(1140,'T','BLANK'),(1141,'T','You are on a road that has no traffic lights. There are street lights. What should the speed limit be?'),(1142,'T','50 kmh'),(1143,'T','70 kmh'),(1144,'T','90 kmh'),(1145,'T','120 kmh'),(1146,'T','BLANK'),(1147,'T','You are on a motorway; traffic ahead is breaking sharply because of an accident. How would you warn following traffic?'),(1148,'T','Briefly use the rear fog lights'),(1149,'T','Switch on the hazard lights continuously'),(1150,'T','Briefly use the hazard lights'),(1151,'T','Switch on the headlamps continuously'),(1152,'T','BLANK'),(1153,'T','Overtaking is allowed on wide and heavy bridges'),(1154,'T','False'),(1155,'T','True'),(1156,'T','True depending on the size to the bridge'),(1157,'T','Not always'),(1158,'T','BLANK'),(1159,'T','Hazard can be classified as \'real or potential\'. If this assertion is true, which of the following can be considered to be potential hazard?'),(1160,'T','Lead vehicles'),(1161,'T','Cyclists'),(1162,'T','Lead vehicles and cyclists'),(1163,'T','All the above'),(1164,'T','BLANK'),(1165,'T','What is the meaning of this road sign?'),(1167,'T','End of advisory speed'),(1168,'T','Advisory speed'),(1169,'T','Maximum speed limit'),(1170,'T','End of maximum speed limit'),(1171,'T','The road sign means: Maximum speed limit.'),(1172,'T','What is the meaning of this road sign?'),(1174,'T','End of advisory speed'),(1175,'T','End of 50 km zone'),(1176,'T','Repetition of maximum speed limit'),(1177,'T','Maximum speed limit'),(1178,'T','The road sign means: Maximum speed limit.'),(1179,'T','What is the meaning of this road sign?'),(1181,'T','Major road'),(1182,'T','Stop, give way for drivers on the intersecting road'),(1183,'T','Priority intersection'),(1184,'T','Give way for drivers on the intersecting road'),(1185,'T','The road sign means: Stop, give way for drivers on the intersecting road.'),(1186,'T','What is the meaning of this road sign?'),(1188,'T','Give way for oncoming traffic'),(1189,'T','Traffic allowed in both directions'),(1190,'T','One-way road'),(1191,'T','Two-way road'),(1192,'T','The road sign means: give way for oncoming traffic.'),(1193,'T','What is the meaning of this road sign?'),(1195,'T','Warning; dangerous intersection'),(1196,'T','Warning; compulsory roundabout'),(1197,'T','Pass either side'),(1198,'T','Roundabout, compulsory driving direction'),(1199,'T','The road sign means: roundabout, compulsory driving direction.'),(1200,'T','What is the meaning of this road sign?'),(1202,'T','No parking'),(1203,'T','No stopping for any person'),(1204,'T','Warning: dangerous intersection'),(1205,'T','Parking place'),(1206,'T','The road sign means: no stopping for any person.'),(1207,'T','What is the meaning of this road sign?'),(1209,'T','No parking'),(1210,'T','End of parking zone'),(1211,'T','No stopping for any person'),(1212,'T','Warning: dangerous intersection'),(1213,'T','The road sign means: no stopping for any person.'),(1214,'T','What is the meaning of this road sign?'),(1216,'T','End of overtaking prohibition'),(1217,'T','No parking'),(1218,'T','No overtaking by all vehicles'),(1219,'T','No overtaking by red vehicles'),(1220,'T','The road sign means: no overtaking by all vehicles.'),(1221,'T','What is the meaning of this road sign?'),(1223,'T','Freeway'),(1224,'T','Airport'),(1225,'T','Level crossing'),(1226,'T','Motorway or freeway'),(1227,'T','The road sign means: motorway or freeway.'),(1228,'T','What is the meaning of this road sign?'),(1230,'T','Warning, left bend'),(1231,'T','Warning, series of bends, first to right'),(1232,'T','Warning, uneven road, slopes to right'),(1233,'T','Warning, right bend'),(1234,'T','The road sign means: warning, right bend.'),(1235,'T','What is the meaning of this road sign?'),(1237,'T','Two-way road, closed to the right'),(1238,'T','One-way road, closed to the right'),(1239,'T','No throughroad on right'),(1240,'T','No throughroad'),(1241,'T','The road sign means: no throughroad on right.'),(1242,'T','What is the meaning of this road sign?'),(1244,'T','Level crossing 90 m ahead'),(1245,'T','Pedestrian crossing ahead'),(1246,'T','Level crossing 30 m ahead'),(1247,'T','Police checkpoint ahead'),(1248,'T','The road sign means: no throughroad on right.'),(1249,'T','Which of the road signs below means: give way for drivers on the major road ahead?'),(1254,'T','BLANK'),(1255,'T','Which of the road signs below means: no entry for all vehicles?'),(1260,'T','BLANK'),(1261,'T','Which of the road signs below means: roundabout, compulsory driving direction?'),(1266,'T','BLANK'),(1267,'T','Which of the road signs below means: no overtaking by all vehicles?'),(1272,'T','BLANK'),(1273,'T','Which of the road signs below means: motorway or freeway?'),(1278,'T','BLANK'),(1279,'T','Which of the road signs below means: warning, series of bends, first to right?'),(1284,'T','BLANK'),(1285,'T','Which of the road signs below means: no throughroad?'),(1290,'T','BLANK'),(1291,'T','Which of the road signs below means: level crossing 60 m ahead?'),(1295,'T','BLANK'),(1296,'T','You want to drive in here. Is this allowed?'),(1298,'T','Yes'),(1299,'T','No'),(1300,'T','The road sign means: no entry for all vehicles, so you may not drive in here.'),(1301,'T','You want to park here. Is this allowed?'),(1303,'T','Yes'),(1304,'T','No'),(1305,'T','The road sign means: no stopping for any person, so you may not park or even stop here.'),(1306,'T','Where should you position your hands on the steering wheel?'),(1307,'T','Left hand at 11 oclock and right hand at 1 oclock.'),(1308,'T','Left hand at 9 oclock and right hand at 3 oclock.'),(1309,'T','Left hand at 10 oclock and right hand at 2 oclock.'),(1310,'T','B. and C. are both correct.'),(1311,'T','BLANK'),(1312,'T','As you are driving, you should'),(1313,'T','Keep to the right-hand side of the lane.'),(1314,'T','Keep to the left-hand side of the lane.'),(1315,'T','Keep to the center of the lane.'),(1316,'T','It depends on which lane you are in and the hazards that are around you.'),(1317,'T','BLANK'),(1318,'T','When can you make a left turn at a red light?'),(1319,'T','Never.'),(1320,'T','When turning from a one-way street onto another one-way street.'),(1321,'T','When turning from a two-way street onto a one-way street.'),(1322,'T','B. and C. are correct.'),(1323,'T','BLANK'),(1324,'T','When changing lanes you should'),(1325,'T','Signal and then proceed.'),(1326,'T','Check your mirrors and your blind spot and then proceed.'),(1327,'T','Check your mirrors, signal, check your blind spot and then proceed.'),(1328,'T','Check your mirrors, signal and then proceed.'),(1329,'T','BLANK'),(1330,'T','A two-way left turn lane in the center of the road means'),(1331,'T','You can turn left or right from this lane.'),(1332,'T','You can pass other cars in this lane.'),(1333,'T','Cars traveling in both directions can turn left from this lane.'),(1334,'T','You can park in this lane.'),(1335,'T','BLANK'),(1336,'T','A flashing red light means'),(1337,'T','Stop, and wait for the light to turn green.'),(1338,'T','Stop, and proceed when it is safe to do so.'),(1339,'T','Slow down to check for oncoming traffic and proceed when it is safe.'),(1340,'T','The flashing red light simply indicates an uncontrolled intersection.'),(1341,'T','BLANK'),(1342,'T','A flashing green light means'),(1343,'T','This is a pedestrian-controlled traffic light.'),(1344,'T','You can continue through the intersection as long as it s clear.'),(1345,'T','This light simply warns you that you are entering an intersection.'),(1346,'T','A. and B. are correct.'),(1347,'T','BLANK'),(1348,'T','A light with a steady green arrow pointing either left or right means'),(1349,'T','You may turn in the direction of the arrow if the intersection is clear.'),(1350,'T','You must check for oncoming traffic before turning in the direction of the arrow.'),(1351,'T','Stop and proceed in the direction of the arrow with caution.'),(1352,'T','Drive straight through the intersection.'),(1353,'T','BLANK'),(1354,'T','A light with a steady red cross above a lane of traffic means'),(1355,'T','Proceed with caution'),(1356,'T','Begin moving out of this lane and into a lane with a steady green arrow.'),(1357,'T','You cannot drive in this lane.'),(1358,'T','Bus lane only.'),(1359,'T','BLANK'),(1360,'T','A large diamond painted on the road in a particular lane means'),(1361,'T','Bus lane only.'),(1362,'T','You cannot drive in this lane.'),(1363,'T','Reserved for buses and High Occupancy Vehicles (HOVs).'),(1364,'T','Crosswalk.'),(1365,'T','BLANK'),(1366,'T','When driving behind a slow-moving truck going up a hill you should'),(1367,'T','Check for approaching cars and pass in the oncoming lane when it is safe.'),(1368,'T','Pass on the shoulder of the road.'),(1369,'T','Honk so that the driver knows you are there and can pull over for you.'),(1370,'T','Be patient and try to let your road rage subside.'),(1371,'T','BLANK'),(1372,'T','When approaching a stop sign where there is no stop line, sidewalk or crosswalk you should'),(1373,'T','Stop 3 metres back from the intersection and inch up slowly.'),(1374,'T','Slow down and proceed with caution.'),(1375,'T','Stop just before you enter the intersection.'),(1376,'T','Stop only if pedestrians are waiting to cross.'),(1377,'T','BLANK'),(1378,'T','When approaching a railway crossing you should'),(1379,'T','Watch for warning lights that indicate an approaching train.'),(1380,'T','Watch for motorcycle riders and cyclists who may slip on the wet tracks.'),(1381,'T','Realize that trains always have the right of way.'),(1382,'T','All of the above.'),(1383,'T','BLANK'),(1384,'T','How far away from a fire hydrant are you required to park?'),(1385,'T','10 metres.'),(1386,'T','6 metres.'),(1387,'T','5 metres.'),(1388,'T','3 metres.'),(1389,'T','BLANK'),(1390,'T','How far away from a stop sign, traffic control signal or crosswalk are you required to park?'),(1391,'T','10 metres.'),(1392,'T','6 metres.'),(1393,'T','5 metres.'),(1394,'T','3 metres.'),(1395,'T','BLANK'),(1396,'T','It is illegal to park'),(1397,'T','On a sidewalk.'),(1398,'T','On a bridge or in a tunnel.'),(1399,'T','In a bicycle lane.'),(1400,'T','All of the above.'),(1401,'T','BLANK'),(1402,'T','When parallel parking, you must be within how many centimeters from the curb?'),(1403,'T','50 cm.'),(1404,'T','30 cm.'),(1405,'T','5 cm.'),(1406,'T','It does not matter.'),(1407,'T','BLANK'),(1408,'T','When is it a good idea to use hand signals in addition to a turn signal?'),(1409,'T','When changing lanes.'),(1410,'T','When turning a corner'),(1411,'T','When pulling out from a line of parked vehicles.'),(1412,'T','When stopping.'),(1413,'T','BLANK'),(1414,'T','When should you use your car s signals?'),(1415,'T','When changing lanes.'),(1416,'T','When turning a corner'),(1417,'T','When pulling out from a line of parked vehicles.'),(1418,'T','All of the above.'),(1419,'T','BLANK'),(1420,'T','A sign depicting a green circle with a straight arrow pointing upwards inside it means'),(1421,'T','Straight road ahead.'),(1422,'T','One lane ahead.'),(1423,'T','No turns - through only.'),(1424,'T','A. and C. are correct.'),(1425,'T','BLANK'),(1426,'T','If you must stop suddenly in an emergency, you should'),(1427,'T','Slam on the brakes and steer in the direction you want to go.'),(1428,'T','Pump the brakes and steer in the direction you want to go.'),(1429,'T','Hit the brakes hard, but not hard enough to lock the wheels, and steer in the direction you want to go.'),(1430,'T','Hit the brakes hard enough to lock the wheels and hope for the best.'),(1431,'T','BLANK'),(1432,'T','When faced with low visibility conditions while driving, you should'),(1433,'T','Slow down and maintain extra space margins.'),(1434,'T','Use your defroster to keep your windows clear.'),(1435,'T','Search and scan more carefully.'),(1436,'T','All of the above.'),(1437,'T','BLANK'),(1438,'T','When entering a tunnel on a sunny day, you should'),(1439,'T','Keep your sunglasses on, as taking them off may take your attention away from driving.'),(1440,'T','Slow down to let your eyes adjust to the lower light levels.'),(1441,'T','Speed up to get through as quickly as possible.'),(1442,'T','Just keep driving as you were before.'),(1443,'T','BLANK'),(1444,'T','If you find that your car is hydroplaning, you should'),(1445,'T','Slam on the brakes.'),(1446,'T','Brake gently.'),(1447,'T','Decelerate and drive straight ahead without hitting the brakes.'),(1448,'T','Pull over; there may be something wrong with your car.'),(1449,'T','BLANK'),(1450,'T','If you must drive through a deep puddle, you should'),(1451,'T','Drive through it as quickly as possible.'),(1452,'T','Drive through it as slowly as possible.'),(1453,'T','Apply the brakes after you get through the puddle to dry them out.'),(1454,'T','B. and C. are correct.'),(1455,'T','BLANK'),(1456,'T','If you are stranded in snow in your vehicle, you should'),(1457,'T','Run the engine to keep the interior of the vehicle warm.'),(1458,'T','Go and look for help.'),(1459,'T','Run the engine only for about five minutes an hour to avoid carbon monoxide poisoning.'),(1460,'T','B. and C. are correct.'),(1461,'T','BLANK'),(1462,'T','If you are faced with turbulence, you should'),(1463,'T','Get off the road immediately.'),(1464,'T','Watch out for vehicles that could be forced into your path, such as motorcycles and campers.'),(1465,'T','Speed up so that you have more control of the car.'),(1466,'T','Honk while passing large trucks to let them know you are there.'),(1467,'T','BLANK'),(1468,'T','Overdriving your headlights at night is dangerous because'),(1469,'T','You cannot stop within the distance that you can see.'),(1470,'T','Your headlights may become overworked and thus stop working at all.'),(1471,'T','You may blind oncoming drivers.'),(1472,'T','You won t be able to see if it becomes foggy.'),(1473,'T','BLANK'),(1474,'T','If your headlights ever fail, you should'),(1475,'T','Try turning the light switch on and off rapidly.'),(1476,'T','Trust your parking lights to make you visible to other vehicles.'),(1477,'T','Use your hazard lights.'),(1478,'T','A. and C. are correct.'),(1479,'T','BLANK'),(1480,'T','If a large animal is in your path and you cannot stop in time, you should'),(1481,'T','Brake firmly.'),(1482,'T','Try to strike the animal at an angle.'),(1483,'T','Let up on the brakes just before hitting the animal to reduce the chance of it coming through your windshield.'),(1484,'T','All of the above.'),(1485,'T','BLANK'),(1486,'T','What does MSM stand for ?'),(1487,'T','Mirror, Speed, Manoeuvre'),(1488,'T','Mirror, Signal, Manoeuvre'),(1489,'T','Mirror, Signal, Move'),(1490,'T','BLANK'),(1491,'T','What does PSL stand for ?'),(1492,'T','Prepare, Signal, Look'),(1493,'T','Position, Signal, Look'),(1494,'T','Position, Speed, Look'),(1495,'T','BLANK'),(1496,'T','A good driver should always mind COAT. What does that stand for?'),(1497,'T','Coordination, Observation, Anticipation, Tolerance'),(1498,'T','Concentration, Observation, Anticipation, Tolerance'),(1499,'T','Concentration, Organisation, Anticipation, Training'),(1500,'T','BLANK'),(1501,'T','What is the order of the foot controls in a vehicle with manual transmission?'),(1502,'T','Clutch, Brake, Accelerator'),(1503,'T','Accelerator, Brake, Clutch'),(1504,'T','Clutch, Accelerator, Brake'),(1505,'T','BLANK'),(1506,'T','There are 3 foot controls in a vehicle with manual transmission. What is different in a vehicle with automatic transmission?'),(1507,'T','The accelerator is missing'),(1508,'T','There is an extra brake'),(1509,'T','The clutch is missing'),(1510,'T','BLANK'),(1511,'T','Any load that is carried on a your roof rack should be'),(1512,'T','Securely fastened when driving'),(1513,'T','Loaded towards the rear of the vehicle'),(1514,'T','Visible in your exterior mirror'),(1515,'T','Covered with plastic sheeting'),(1516,'T','BLANK'),(1517,'T','If a trailer swerves or snakes when you are towing it you should'),(1518,'T','Ease off the accelerator and reduce your speed'),(1519,'T','Let go of the steering wheel and let it correct itself'),(1520,'T','Brake hard and hold the pedal down'),(1521,'T','Increase your speed as quickly as possible'),(1522,'T','BLANK'),(1523,'T','Who is responsable for making sure that a vehicle is not overloaded?'),(1524,'T','The owner of the items being carried'),(1525,'T','The person who loaded the vehicle'),(1526,'T','The driver of the vehicle'),(1527,'T','The licensing authority'),(1528,'T','BLANK'),(1529,'T','Overloading your vehicle can seriously effect the'),(1530,'T','Gearbox'),(1531,'T','Steering'),(1532,'T','Battery life'),(1533,'T','Journey time'),(1534,'T','BLANK'),(1535,'T','Excessive or uneven tyre wear can be caused by faults in which of the following?'),(1536,'T','The gearbox'),(1537,'T','The Accelerator'),(1538,'T','The exhaust system'),(1539,'T','Wheel alignment'),(1540,'T','BLANK'),(1541,'T','As well as planning your route before starting a journey, you should also plan an alternative route. Why us this?'),(1542,'T','To let another driver overtake'),(1543,'T','Your first route may be blocked'),(1544,'T','To avoid a railway level crossing'),(1545,'T','In case you have to avoid emergency vehicles'),(1546,'T','BLANK'),(1547,'T','What can cause heavy steering?'),(1548,'T','Driving on ice'),(1549,'T','Badly worn brakes'),(1550,'T','Over-inflated tyres'),(1551,'T','Under-inflated tyres'),(1552,'T','BLANK'),(1553,'T','Which of the following should not be kept in your vehicle?'),(1554,'T','A first aid kit'),(1555,'T','The vehicle documents'),(1556,'T','A road atlas'),(1557,'T','The tax disc'),(1558,'T','BLANK'),(1559,'T','Which of these is most likely to deter the theft of your vehicle?'),(1560,'T','An immobiliser'),(1561,'T','Tinted windows'),(1562,'T','Locking wheel nuts'),(1563,'T','A sun screen'),(1564,'T','BLANK'),(1565,'T','The purpose of a catalytic converter is to reduce'),(1566,'T','Fuel consumption'),(1567,'T','The risk of fire'),(1568,'T','Toxic exhaust gases'),(1569,'T','Engine wear'),(1570,'T','BLANK'),(1571,'T','It is essential that tyre pressures are checked regularly. When should this be done?'),(1572,'T','When tyres are cold'),(1573,'T','After any lengthy journey'),(1574,'T','After travelling at high speed'),(1575,'T','When tyres are hot'),(1576,'T','BLANK'),(1577,'T','Rapid acceleration and heavy braking can lead to'),(1578,'T','Reduced pollution'),(1579,'T','Reduced exhaust emissions'),(1580,'T','Increased fuel consumption'),(1581,'T','Increased road safety'),(1582,'T','BLANK'),(1583,'T','Driving with under-inflated tyres can affect'),(1584,'T','Fuel consumption'),(1585,'T','Engine temperature'),(1586,'T','Skidding'),(1587,'T','Oil pressure'),(1588,'T','BLANK'),(1589,'T','Driving with under-inflated tyres can affect'),(1590,'T','Skidding'),(1591,'T','Engine temperature'),(1592,'T','Braking'),(1593,'T','Oil pressure'),(1594,'T','BLANK'),(1595,'T','The main cause of brake fade is'),(1596,'T','The brakes over heating'),(1597,'T','Air in the brakes'),(1598,'T','Oil on the brakes'),(1599,'T','The brakes out of adjustment'),(1600,'T','BLANK'),(1601,'T','A roof rack fitted to your car will'),(1602,'T','Reduce fuel consumption'),(1603,'T','Improve the road handing'),(1604,'T','Make your car go faster'),(1605,'T','Increase fuel consumption'),(1606,'T','BLANK'),(1607,'T','What will reduce the risk of neck injury resulting from a collision?'),(1608,'T','An air-sprung seat'),(1609,'T','Anti-lock brakes'),(1610,'T','A properly adjusted head restraint'),(1611,'T','A collapsible steering wheel'),(1612,'T','BLANK'),(1613,'T','It is illegal to drive with tyres that'),(1614,'T','Have been bought second-hand'),(1615,'T','Have a large deep cut in the side wall'),(1616,'T','Are of different makes'),(1617,'T','Are of different tread patterns'),(1618,'T','BLANK'),(1619,'T','You are carrying two 13 year old children and their parents in your car. Who is responsible for seeing that the children wear seat belts?'),(1620,'T','You, the driver'),(1621,'T','The children s parents'),(1622,'T','The front-seat passenger'),(1623,'T','The children'),(1624,'T','BLANK'),(1625,'T','Driving at 100 kmh uses more fuel than driving at 70 kmh by up to'),(1626,'T','10%'),(1627,'T','30%'),(1628,'T','75%'),(1629,'T','100%'),(1630,'T','BLANK'),(1631,'T','Your vehicle pulls to one side when braking. You should'),(1632,'T','Consult your garage as soon as possible'),(1633,'T','Change the tyres around'),(1634,'T','Pump the pedal when braking'),(1635,'T','Use your handbrake at the same time'),(1636,'T','BLANK'),(1637,'T','To help protect the environment you should NOT'),(1638,'T','Remove your roof rack when unloading'),(1639,'T','Use your car for very short journeys'),(1640,'T','Walk, cycle, or use public transport'),(1641,'T','Empty the boot of unnecessary weight'),(1642,'T','BLANK'),(1643,'T','What should you do when leaving your vehicle?'),(1644,'T','Put valuable documents under seats'),(1645,'T','Cover valuables with a blanket'),(1646,'T','Remove all valuables'),(1647,'T','Leave the interior light on'),(1648,'T','BLANK'),(1649,'T','You have just gone through deep water. To dry off the brakes you should'),(1650,'T','Accelerate and keep to a high speed for a short time'),(1651,'T','Go slowly while gently applying the brakes'),(1652,'T','Avoid using the brakes at all for a few miles'),(1653,'T','Stop for at least an hour to allow them time to dry'),(1654,'T','BLANK'),(1655,'T','You are overtaking a okada rider in heavy rain. What should you do?'),(1656,'T','Allow extra room'),(1657,'T','Give a thank you wave'),(1658,'T','Move back early'),(1659,'T','Sound your horn'),(1660,'T','BLANK'),(1661,'T','You are travelling at 70 kmh on a good, dry road. What is your typical overall stopping distance?'),(1662,'T','25 metres'),(1663,'T','50 metres'),(1664,'T','75 metres'),(1665,'T','99 metres'),(1666,'T','BLANK'),(1667,'T','What is the most common cause of skidding?'),(1668,'T','Worn tyres'),(1669,'T','Other vehicles'),(1670,'T','Pedestrians'),(1671,'T','Driver error'),(1672,'T','BLANK'),(1673,'T','You are following a vehicle at a safe distance on a wet road. Another driver overtakes you and pulls into the gap you have left. What should you do?'),(1674,'T','Flash your headlights as a warning'),(1675,'T','Try to overtake safely as soon as you can'),(1676,'T','Drop back to regain a safe distance'),(1677,'T','Stay close to the other vehicle until it moves on'),(1678,'T','BLANK'),(1679,'T','You are trying to move off on loose sand. You should use'),(1680,'T','The lowest gear you can'),(1681,'T','The highest gear you can'),(1682,'T','A high engine speed'),(1683,'T','The handbrake and footbrake together'),(1684,'T','BLANK'),(1685,'T','The main benefit of having four-wheel drive is to improve'),(1686,'T','Road holding'),(1687,'T','Fuel consumption'),(1688,'T','Stopping distances'),(1689,'T','Passenger comfort'),(1690,'T','BLANK'),(1691,'T','You are on a long, downhill slope. What should you do to help control the speed of your vehicle?'),(1692,'T','Select neutral'),(1693,'T','Grip the handbrake firmly'),(1694,'T','Apply the parking brake gently'),(1695,'T','Select a lower gear'),(1696,'T','BLANK'),(1697,'T','You are driving in heavy rain. Your steering suddenly becomes very light. You should'),(1698,'T','Ease off the accelerator'),(1699,'T','Steer towards the side of the road'),(1700,'T','Apply gentle acceleration'),(1701,'T','Brake firmly to reduce speed'),(1702,'T','BLANK'),(1703,'T','Your overall stopping distance will be much longer when driving'),(1704,'T','In fog'),(1705,'T','In the rain'),(1706,'T','At night'),(1707,'T','In strong winds'),(1708,'T','BLANK'),(1709,'T','You have driven though a flood. What is the first thing you should do?'),(1710,'T','Stop and check the tyres'),(1711,'T','Stop and dry the brakes'),(1712,'T','Check your exhaust'),(1713,'T','Test your brakes'),(1714,'T','BLANK'),(1715,'T','You are on a wet motorway with surface spray. You should use'),(1716,'T','Hazard flashers'),(1717,'T','Dipped headlights'),(1718,'T','Rear fog lights'),(1719,'T','Sidelights'),(1720,'T','BLANK'),(1721,'T','Which of the following types of glasses should NOT be worn when driving at night?'),(1722,'T','Half-moon'),(1723,'T','Round'),(1724,'T','Bi-focal'),(1725,'T','Tinted'),(1726,'T','BLANK'),(1727,'T','How will a school crossing patrol signal you to stop?'),(1728,'T','By pointing to children on the opposite pavement'),(1729,'T','By displaying a red light'),(1730,'T','By displaying a stop sign'),(1731,'T','By giving you an arm signal'),(1732,'T','BLANK'),(1733,'T','Why should you look particularly for okada riders and cyclists at junctions?'),(1734,'T','They may want to turn into the side road'),(1735,'T','They are harder to see'),(1736,'T','They may slow down to let you turn'),(1737,'T','They might not see you turn'),(1738,'T','BLANK'),(1739,'T','You are waiting to come out of a side road. Why should you watch carefully for motorcycles?'),(1740,'T','Motorcycles are usually faster than cars'),(1741,'T','Police patrols often use motorcycles'),(1742,'T','Motorcycles are small and hard to see'),(1743,'T','Motorcycles have right of way'),(1744,'T','BLANK'),(1745,'T','You are following two cyclists. They approach a roundabout in the right-hand lane. In which direction should you expect the cyclists to go?'),(1746,'T','Left'),(1747,'T','Right'),(1748,'T','Straight ahead'),(1749,'T','Any direction'),(1750,'T','BLANK'),(1751,'T','There are flashing amber lights under a school warning sign. What action should you take?'),(1752,'T','Reduce speed until you are clear of the area'),(1753,'T','Keep up your speed and sound your horn'),(1754,'T','Increase your speed to clear the area quickly'),(1755,'T','Wait at the lights until they change to green'),(1756,'T','BLANK'),(1757,'T','You are following a car driven by an elderly driver. You should expect the driver to drive badly'),(1758,'T','Flash your lights and overtake'),(1759,'T','Be aware that the drivers reactions may not be as fast'),(1760,'T','As yours'),(1761,'T','Stay very close behind but be careful'),(1762,'T','BLANK'),(1763,'T','You think the driver of the vehicle in front has forgotten to cancel the right indicator. You should'),(1764,'T','Stay behind and not overtake'),(1765,'T','Flash your lights to alert the driver'),(1766,'T','Sound your horn before overtaking'),(1767,'T','Overtake on the left if there is room'),(1768,'T','BLANK'),(1769,'T','Why are mirrors often slightly curved (convex)'),(1770,'T','They totally cover blind spots'),(1771,'T','They make it easier to judge the speed of following traffic'),(1772,'T','They make following traffic look bigger'),(1773,'T','They give a wider field of vision'),(1774,'T','BLANK'),(1775,'T','Some two-way roads are divided into three lanes. Why are these particularly dangerous?'),(1776,'T','Traffic can travel faster in poor weather conditions'),(1777,'T','Traffic can overtake on the left'),(1778,'T','Traffic in both directions can use the middle lane to overtake'),(1779,'T','Traffic uses the middle lane for emergencies only'),(1780,'T','BLANK'),(1781,'T','During periods of illness your ability to drive may be impaired. You must'),(1782,'T','See your doctor each time before you drive'),(1783,'T','Only take smaller doses of any medicines'),(1784,'T','Be medically fit to drive'),(1785,'T','Take all your medicines with you when you drive'),(1786,'T','BLANK'),(1787,'T','You are about to drive home. You feel very tired and have a servere headache. You should'),(1788,'T','Wait until you are fit and well before driving'),(1789,'T','Drive home, but take a tablet for headaches'),(1790,'T','Drive home if you can stay awake for the journey'),(1791,'T','Wait for a short time, then drive home slowly'),(1792,'T','BLANK'),(1793,'T','How many road accidents happen due to over-speeding?'),(1795,'T','10% of road accidents happen due to over-speeding'),(1796,'T','30% of road accidents happen due to over-speeding'),(1797,'T','50% of road accidents happen due to over-speeding'),(1798,'T','70% of road accidents happen due to over-speeding'),(1799,'T','BLANK'),(1800,'T','Over-loading of vehicles is a major cause of road accidents. Is this true?'),(1802,'T','No'),(1803,'T','Yes, for all vehicles'),(1804,'T','Yes, but only for trotros'),(1805,'T','BLANK'),(1806,'T','Indiscipline is yet another cause of road accidents. Is this true?'),(1808,'T','Yes, for all vehicle drivers'),(1809,'T','No'),(1810,'T','Yes, but only for truck drivers'),(1811,'T','BLANK'),(1812,'T','Drivers using mobile phone while driving has caused several road accidents. Is this true?'),(1814,'T','Yes, when using hand-held mobile phone and not a headset'),(1815,'T','No'),(1816,'T','BLANK'),(1817,'T','Most accidents are caused by the break down of vehicles on the road. Is this true?'),(1819,'T','Yes'),(1820,'T','No, over-speeding and indiscipline are the major causes of road accidents'),(1821,'T','BLANK'),(1822,'T','How many road accidents happen due to over-speeding?'),(1824,'T','60% of road accidents happen due to over-speeding'),(1825,'T','50% of road accidents happen due to over-speeding'),(1826,'T','40% of road accidents happen due to over-speeding'),(1827,'T','30% of road accidents happen due to over-speeding'),(1828,'T','BLANK'),(1829,'T','How many road accidents are caused due to drunk driving?'),(1831,'T','10% of road accidents are caused due to drunk driving'),(1832,'T','20% of road accidents are caused due to drunk driving'),(1833,'T','30% of road accidents are caused due to drunk driving'),(1834,'T','40% of road accidents are caused due to drunk driving'),(1835,'T','BLANK'),(1836,'T','Most of the drivers do not follow traffic regulations. Is this true?'),(1838,'T','No'),(1839,'T','Yes, but only for trotro drivers'),(1840,'T','Yes, for all drivers'),(1841,'T','BLANK'),(1842,'T','Poor driving skills is a major cause of road accidents. Is this true?'),(1844,'T','Yes, but only for truck drivers'),(1845,'T','Yes, for all drivers'),(1846,'T','No'),(1847,'T','BLANK'),(1848,'T','Over-speeding by car drivers and motorists results in many road accidents. Is this true?'),(1850,'T','Yes, but only for motorists'),(1851,'T','Yes, but only for car drivers'),(1852,'T','Yes, for car drivers and motorists'),(1853,'T','No'),(1854,'T','BLANK'),(1855,'T','How many fatal casualties in a vehicle are common in road accidents?'),(1857,'T','All of the passengers in the vehicle'),(1858,'T','Most of the passengers in the vehicle'),(1859,'T','Some of the passengers in the vehicle'),(1860,'T','BLANK'),(1861,'T','What fatal casualties are common in road accidents?'),(1863,'T','Mostly vehicle passengers, then pedestrians, sometimes motorists'),(1864,'T','Mostly pedestrians, then vehicle passengers, sometimes motorists '),(1865,'T','Mostly pedestrians, then motorists, sometimes vehicle passengers'),(1866,'T','BLANK');
/*!40000 ALTER TABLE `quagga_tekst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_test`
--

DROP TABLE IF EXISTS `quagga_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_test` (
  `companyId` bigint(20) NOT NULL DEFAULT '0',
  `tst_id` int(11) NOT NULL DEFAULT '0',
  `pro_id` int(11) DEFAULT NULL,
  `tst_type` char(1) NOT NULL DEFAULT '',
  `tst_description` varchar(255) DEFAULT NULL,
  `tst_count_tqu` int(11) DEFAULT NULL,
  `tst_count_min_success` int(11) DEFAULT NULL,
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`tst_id`,`companyId`),
  UNIQUE KEY `test_pk` (`tst_id`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_test`
--

LOCK TABLES `quagga_test` WRITE;
/*!40000 ALTER TABLE `quagga_test` DISABLE KEYS */;
INSERT INTO `quagga_test` VALUES (10131,101,0,'T',NULL,10,9,NULL),(10131,102,0,'T',NULL,10,9,NULL),(10131,103,9310,'T','Ghana profile',10,9,NULL),(170059,203,9410,'T','Cameroon profile',10,9,NULL);
/*!40000 ALTER TABLE `quagga_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_test_document`
--

DROP TABLE IF EXISTS `quagga_test_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_test_document` (
  `tst_id` int(11) NOT NULL DEFAULT '0',
  `tdo_id` int(11) NOT NULL DEFAULT '0',
  `seq_id` int(11) DEFAULT NULL,
  `que_id` int(11) NOT NULL DEFAULT '0',
  `tqu_count_alt` int(11) DEFAULT NULL,
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`tst_id`,`tdo_id`),
  UNIQUE KEY `test_question_pk` (`tst_id`,`tdo_id`),
  KEY `ref_109_fk` (`tst_id`),
  KEY `doc_fk` (`que_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_test_document`
--

LOCK TABLES `quagga_test_document` WRITE;
/*!40000 ALTER TABLE `quagga_test_document` DISABLE KEYS */;
INSERT INTO `quagga_test_document` VALUES (101,1,1,3117,NULL,NULL),(101,2,2,3421,NULL,NULL),(101,3,3,105,NULL,NULL),(101,4,4,3328,NULL,NULL),(101,5,5,101,NULL,NULL),(101,6,6,3110,NULL,NULL),(101,7,7,4258,NULL,NULL),(101,8,8,318,NULL,NULL),(101,9,9,103,NULL,NULL),(101,10,10,3215,NULL,NULL),(102,1,1,3218,NULL,NULL),(102,2,2,4179,NULL,NULL),(102,3,3,3111,NULL,NULL),(102,4,4,3225,NULL,NULL),(102,5,5,3429,NULL,NULL),(102,6,6,102,NULL,NULL),(102,7,7,3308,NULL,NULL),(102,8,8,215,NULL,NULL),(102,9,9,5123,NULL,NULL),(102,10,10,3230,NULL,NULL),(201,1,1,10101,NULL,NULL),(201,2,2,10102,NULL,NULL),(201,3,3,10103,NULL,NULL),(201,4,4,10104,NULL,NULL),(201,5,5,10105,NULL,NULL),(201,6,6,10106,NULL,NULL),(201,7,7,10107,NULL,NULL),(201,8,8,10108,NULL,NULL),(201,9,9,10109,NULL,NULL),(201,10,10,10110,NULL,NULL);
/*!40000 ALTER TABLE `quagga_test_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_test_grouping`
--

DROP TABLE IF EXISTS `quagga_test_grouping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_test_grouping` (
  `tgr_id` int(11) NOT NULL DEFAULT '0',
  `tgr_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tgr_id`),
  UNIQUE KEY `EVALUATION_PK` (`tgr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_test_grouping`
--

LOCK TABLES `quagga_test_grouping` WRITE;
/*!40000 ALTER TABLE `quagga_test_grouping` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_test_grouping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_test_question`
--

DROP TABLE IF EXISTS `quagga_test_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_test_question` (
  `tst_id` int(11) NOT NULL DEFAULT '0',
  `tqu_id` int(11) NOT NULL DEFAULT '0',
  `que_id` int(11) NOT NULL DEFAULT '0',
  `tqu_count_alt` int(11) DEFAULT NULL,
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`tst_id`,`tqu_id`),
  UNIQUE KEY `test_question_pk` (`tst_id`,`tqu_id`),
  KEY `ref_106_fk` (`que_id`),
  KEY `ref_109_fk` (`tst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_test_question`
--

LOCK TABLES `quagga_test_question` WRITE;
/*!40000 ALTER TABLE `quagga_test_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_test_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_testnorm`
--

DROP TABLE IF EXISTS `quagga_testnorm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_testnorm` (
  `nrm_id` int(11) NOT NULL DEFAULT '0',
  `tst_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nrm_id`,`tst_id`),
  UNIQUE KEY `RELATION_3064_PK` (`nrm_id`,`tst_id`),
  KEY `RELATION_3064_FK2` (`nrm_id`),
  KEY `RELATION_3064_FK` (`tst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_testnorm`
--

LOCK TABLES `quagga_testnorm` WRITE;
/*!40000 ALTER TABLE `quagga_testnorm` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_testnorm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_tutor`
--

DROP TABLE IF EXISTS `quagga_tutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_tutor` (
  `prs_id` bigint(20) NOT NULL DEFAULT '0',
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`prs_id`),
  UNIQUE KEY `tutor_pk` (`prs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_tutor`
--

LOCK TABLES `quagga_tutor` WRITE;
/*!40000 ALTER TABLE `quagga_tutor` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_tutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_use_type`
--

DROP TABLE IF EXISTS `quagga_use_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_use_type` (
  `id_use_type` int(11) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `marker` datetime DEFAULT NULL,
  PRIMARY KEY (`id_use_type`),
  UNIQUE KEY `use_type_pk` (`id_use_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_use_type`
--

LOCK TABLES `quagga_use_type` WRITE;
/*!40000 ALTER TABLE `quagga_use_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_use_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_video`
--

DROP TABLE IF EXISTS `quagga_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_video` (
  `med_id` int(11) NOT NULL DEFAULT '0',
  `med_type` char(1) NOT NULL DEFAULT '',
  `vid_code` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`med_id`,`med_type`),
  UNIQUE KEY `video_pk` (`med_id`,`med_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_video`
--

LOCK TABLES `quagga_video` WRITE;
/*!40000 ALTER TABLE `quagga_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quagga_voice`
--

DROP TABLE IF EXISTS `quagga_voice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quagga_voice` (
  `med_id` int(11) NOT NULL DEFAULT '0',
  `med_type` char(1) NOT NULL DEFAULT '',
  `voc_code` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`med_id`,`med_type`),
  UNIQUE KEY `video_pk` (`med_id`,`med_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quagga_voice`
--

LOCK TABLES `quagga_voice` WRITE;
/*!40000 ALTER TABLE `quagga_voice` DISABLE KEYS */;
/*!40000 ALTER TABLE `quagga_voice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ADMIN'),(2,'MEMBER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,2,'Dr. Demond O\'Kon','sierra.brown@example.org','2020-05-03 07:52:05','$2y$10$BFzsynE/t9KWscMfu3YuKeZ7qclHhS/m1duPxoauGkKGuUJBAVpNy','+3006742234154','JQgxhDvupdNI8stOD3OGHxVSOhnsbiG8bprdHad0RF7QNoxgJjEWA5J60d8M','2020-05-03 07:52:05','2020-05-03 07:52:05'),(2,2,'mathon','mathon@xs4all.nl',NULL,'$2y$10$TaUkRZdjEksqDaTOyfed4.YBpsj23Mb/nJZ4Yd4ZZ3XJDEPvsd1y2','0123412345','rmVpU1zwNKRhxGPgTTjUl9emwotnguli39tEAP1ZkrlGOlW5Z0vx2HsfCSxf','2020-05-05 06:12:42','2020-05-05 06:12:42');
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

-- Dump completed on 2020-05-22 10:52:10
