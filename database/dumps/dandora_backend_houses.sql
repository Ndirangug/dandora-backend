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
-- Table structure for table `houses`
--

DROP TABLE IF EXISTS `houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bedrooms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent` double NOT NULL,
  `phase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo1` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo2` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo3` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses`
--

LOCK TABLES `houses` WRITE;
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
INSERT INTO `houses` VALUES (51,'2021-04-28 16:32:05','2021-04-28 16:32:05','Spcious 4 bedroom house','Alias incidunt omnis tenetur autem est aut.','2',267103286.07,'2',NULL,NULL,NULL),(52,'2021-04-28 16:32:05','2021-04-28 16:32:05','Cosy 1 bedroom house','Magni laudantium sint eos repellat libero.','3',1000,'4',NULL,NULL,NULL),(53,'2021-04-28 16:32:05','2021-04-28 16:32:05','Cosy 4 bedroom house','Eos optio alias facere quis reiciendis et voluptates.','3',8846382.35,'3',NULL,NULL,NULL),(54,'2021-04-28 16:32:05','2021-04-28 16:32:05','Spcious 3 bedroom house','Aut quia sit et culpa doloribus.','2',26217349.06,'2',NULL,NULL,NULL),(55,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 3 bedroom house','Aut delectus accusamus nesciunt eos rerum tempore.','1',1000,'1',NULL,NULL,NULL),(56,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 4 bedroom house','Alias animi fugit quibusdam et.','1',2125.59,'4',NULL,NULL,NULL),(57,'2021-04-28 16:32:06','2021-04-28 16:32:06','Spcious 2 bedroom house','Rerum repudiandae et dolore adipisci unde.','4',1000,'1',NULL,NULL,NULL),(58,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 2 bedroom house','Facere facere iure distinctio eum ratione magnam.','1',1000,'1',NULL,NULL,NULL),(59,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 4 bedroom house','Modi eius maxime earum rem qui magni sed consequatur.','3',45149829.29,'3',NULL,NULL,NULL),(60,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 2 bedroom house','Non qui consequatur molestiae ipsum impedit vel ut.','4',1000,'2',NULL,NULL,NULL),(61,'2021-04-29 07:19:39','2021-04-29 07:19:39','Spcious 4 bedroom house','Alias incidunt omnis tenetur autem est aut.','3',267103286.07,'1',NULL,NULL,NULL),(62,'2021-04-29 07:33:01','2021-04-29 07:33:01','Spcious 2 bedroom house','Rerum repudiandae et dolore adipisci unde.','4',1000,'1','unsplash.com/random','unsplash.com/random','unsplash.com/random');
/*!40000 ALTER TABLE `houses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-29 13:37:31
