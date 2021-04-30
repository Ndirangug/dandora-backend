-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dandora_backend
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB-1:10.4.18+maria~focal

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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT '2021-04-28 15:53:15',
  `for_month` timestamp NOT NULL DEFAULT '2021-04-28 15:53:15',
  `amount` double NOT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenancy_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_tenancy_id_foreign` (`tenancy_id`),
  CONSTRAINT `payments_tenancy_id_foreign` FOREIGN KEY (`tenancy_id`) REFERENCES `tenancies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (4,'2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17',3963.53,'rent',13),(5,'2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17',181379.58,'booking',13),(6,'2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17',1000,'rent',11),(7,'2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17',43070203.06,'booking',6),(8,'2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17',69843424.9,'rent',6),(9,'2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17',1000,'rent',4),(10,'2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17',19677194.31,'booking',7),(11,'2021-04-28 16:38:18','2021-04-28 16:38:18','2021-04-28 16:38:17','2021-04-28 16:38:17',1438115.38,'booking',9),(12,'2021-04-28 16:38:18','2021-04-28 16:38:18','2021-04-28 16:38:17','2021-04-28 16:38:17',8283.19,'rent',4),(13,'2021-04-28 16:38:18','2021-04-28 16:38:18','2021-04-28 16:38:17','2021-04-28 16:38:17',1189718.58,'rent',13),(14,'2021-04-29 07:28:22','2021-04-29 07:28:22','2021-04-28 16:38:17','2021-04-28 16:38:17',19677194.31,'booking',7);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-30 16:33:35