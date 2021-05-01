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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_booked` timestamp NOT NULL DEFAULT '2021-04-28 15:53:13',
  `expected_occupy_date` timestamp NOT NULL DEFAULT '2021-04-28 15:53:13',
  `paid` tinyint(1) NOT NULL,
  `house_id` bigint(20) unsigned NOT NULL,
  `tenant_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bookings_house_id_foreign` (`house_id`),
  KEY `bookings_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `bookings_house_id_foreign` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bookings_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',1,58,20),(2,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',0,57,15),(3,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',0,55,17),(4,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',1,51,13),(5,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',0,56,15),(6,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',0,56,18),(7,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',0,53,19),(8,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',1,55,20),(9,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',0,53,14),(10,'2021-04-28 16:36:47','2021-04-28 16:36:47','2021-04-28 16:36:46','2021-06-07 16:36:46',1,60,13),(11,'2021-04-29 07:23:45','2021-04-29 07:23:45','2021-04-28 16:36:46','2021-06-07 16:36:46',1,59,20);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses`
--

LOCK TABLES `houses` WRITE;
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
INSERT INTO `houses` VALUES (51,'2021-04-28 16:32:05','2021-04-28 16:32:05','Spcious 4 bedroom house','Alias incidunt omnis tenetur autem est aut.','2',10386.07,'I','11/1.jpg','16/2.jpg','16/3.jpg'),(52,'2021-04-28 16:32:05','2021-04-28 16:32:05','Cosy 1 bedroom house','Magni laudantium sint eos repellat libero.','3',1000,'II','7/1.jpg','3/2.jpg','12/3.jpg'),(53,'2021-04-28 16:32:05','2021-04-28 16:32:05','Cosy 4 bedroom house','Eos optio alias facere quis reiciendis et voluptates.','3',86382.35,'III','3/1.jpg','20/2.jpg','15/3.jpg'),(54,'2021-04-28 16:32:05','2021-04-28 16:32:05','Spcious 3 bedroom house','Aut quia sit et culpa doloribus.','2',26249.06,'I','20/1.jpg','11/2.jpg','10/3.jpg'),(55,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 3 bedroom house','Aut delectus accusamus nesciunt eos rerum tempore.','1',1000,'II','10/1.jpg','21/2.jpg','5/3.jpg'),(56,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 4 bedroom house','Alias animi fugit quibusdam et.','1',2125.59,'III','18/1.jpg','19/2.jpg','21/3.jpg'),(57,'2021-04-28 16:32:06','2021-04-28 16:32:06','Spcious 2 bedroom house','Rerum repudiandae et dolore adipisci unde.','4',1000,'I','8/1.jpg','4/2.jpg','10/3.jpg'),(58,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 2 bedroom house','Facere facere iure distinctio eum ratione magnam.','1',1000,'II','12/1.jpg','17/2.jpg','15/3.jpg'),(59,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 4 bedroom house','Modi eius maxime earum rem qui magni sed consequatur.','3',45829.29,'III','8/1.jpg','19/2.jpg','15/3.jpg'),(60,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 2 bedroom house','Non qui consequatur molestiae ipsum impedit vel ut.','4',1000,'I','3/1.jpg','17/2.jpg','7/3.jpg'),(61,'2021-04-29 07:19:39','2021-04-29 07:19:39','Spcious 4 bedroom house','Alias incidunt omnis tenetur autem est aut.','3',26286.07,'II','18/1.jpg','4/2.jpg','13/3.jpg'),(62,'2021-04-29 07:33:01','2021-04-29 07:33:01','Spcious 2 bedroom house','Rerum repudiandae et dolore adipisci unde.','4',1000,'III','3/1.jpg','18/2.jpg','18/3.jpg'),(63,'2021-04-30 10:23:45','2021-04-30 10:23:45','Spcious 2 bedroom house','Sit ea delectus quos minima distinctio.','3',34855771.765881,'I','13/1.jpg','2/2.jpg','25/3.jpg'),(64,'2021-04-30 10:23:45','2021-04-30 10:23:45','Spcious 3 bedroom house','Id quae ut quo praesentium eum nihil libero numquam.','3',1000,'II','4/1.jpg','8/2.jpg','17/3.jpg'),(65,'2021-04-30 10:23:45','2021-04-30 10:23:45','Cosy 2 bedroom house','Ut molestias rerum rerum atque vitae quam.','1',1000,'III','8/1.jpg','6/2.jpg','8/3.jpg'),(66,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 2 bedroom house','Rerum ut ut maxime ut modi libero labore.','2',1000,'III','24/1.jpg','7/2.jpg','17/3.jpg'),(67,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 4 bedroom house','Debitis deleniti vero consequatur.','4',1000,'I','19/1.jpg','15/2.jpg','10/3.jpg'),(68,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 1 bedroom house','Et quod autem reprehenderit nobis recusandae.','4',1000,'II','23/1.jpg','4/2.jpg','22/3.jpg'),(69,'2021-04-30 10:23:46','2021-04-30 10:23:46','Spcious 2 bedroom house','Ut ex quis est perferendis ea rem exercitationem.','1',6243.7782472365,'I','7/1.jpg','24/2.jpg','2/3.jpg'),(70,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 2 bedroom house','Dolor quibusdam aliquid doloremque in sit autem est.','4',4640.3967936531,'II','14/1.jpg','3/2.jpg','21/3.jpg'),(71,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 1 bedroom house','Ab repellendus natus molestias perspiciatis.','1',1000,'III','26/1.jpg','21/2.jpg','20/3.jpg'),(72,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 3 bedroom house','Sint ea quos dignissimos earum ea voluptate.','3',1000,'I','8/1.jpg','16/2.jpg','12/3.jpg'),(73,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 3 bedroom house','Et commodi et sapiente nihil provident et.','3',1000,'II','13/1.jpg','17/2.jpg','25/3.jpg'),(74,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 4 bedroom house','Vero aut consequatur est excepturi quos.','4',4047950.3411996,'II','15/1.jpg','10/2.jpg','12/3.jpg'),(75,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 4 bedroom house','Numquam voluptatem id aut deleniti temporibus nostrum.','1',1204.3216814494,'I','8/1.jpg','25/2.jpg','8/3.jpg'),(76,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 4 bedroom house','Nihil corporis ut quidem vel voluptatem.','3',67068.903578769,'II','22/1.jpg','16/2.jpg','5/3.jpg'),(77,'2021-04-30 10:23:46','2021-04-30 10:23:46','Spcious 3 bedroom house','Tenetur molestiae soluta dolorem veritatis.','3',1000,'III','6/1.jpg','3/2.jpg','2/3.jpg'),(78,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 2 bedroom house','Sint est ut enim quis eum.','3',635008.2661778,'III','17/1.jpg','21/2.jpg','17/3.jpg'),(79,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 3 bedroom house','Ea voluptatem nihil aut voluptas.','1',1000,'II','14/1.jpg','15/2.jpg','4/3.jpg'),(80,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 3 bedroom house','Porro et et perferendis sed.','3',23526.859988302996,'II','20/1.jpg','13/2.jpg','18/3.jpg'),(81,'2021-04-30 10:23:46','2021-04-30 10:23:46','Spcious 2 bedroom house','Illo fugit non sint maxime consequatur explicabo in.','4',1000,'I','4/1.jpg','18/2.jpg','24/3.jpg'),(82,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 2 bedroom house','Aut et voluptates ipsum odit eaque autem rerum.','3',1000,'II','12/1.jpg','26/2.jpg','17/3.jpg'),(83,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 3 bedroom house','Dolores ut hic velit ipsum.','2',1000,'III','21/1.jpg','21/2.jpg','11/3.jpg'),(84,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 3 bedroom house','Autem adipisci et est autem perferendis molestiae voluptatem.','1',1000,'II','16/1.jpg','4/2.jpg','4/3.jpg'),(85,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 1 bedroom house','Molestiae magni dignissimos maiores eius voluptas.','4',1000,'I','19/1.jpg','7/2.jpg','13/3.jpg'),(86,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 3 bedroom house','Deserunt aut eum assumenda aliquid eius dolorum.','4',34136.947686137,'I','17/1.jpg','24/2.jpg','25/3.jpg'),(87,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 1 bedroom house','Quia dignissimos ut odit unde.','1',1000,'II','3/1.jpg','20/2.jpg','10/3.jpg'),(88,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 1 bedroom house','Non quisquam rem saepe enim voluptate cumque illum rerum.','1',1000,'II','17/1.jpg','26/2.jpg','25/3.jpg'),(89,'2021-04-30 10:23:46','2021-04-30 10:23:46','Spcious 4 bedroom house','Quaerat qui iste ipsa et asperiores.','3',1000,'III','22/1.jpg','18/2.jpg','19/3.jpg'),(90,'2021-04-30 10:23:46','2021-04-30 10:23:46','Spcious 4 bedroom house','Assumenda aut optio quisquam ex ut quisquam.','2',1000,'I','8/1.jpg','13/2.jpg','16/3.jpg'),(91,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 2 bedroom house','Eveniet in voluptatem et aspernatur.','3',1000,'I','23/1.jpg','9/2.jpg','26/3.jpg'),(92,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 4 bedroom house','Est non deleniti modi culpa sit.','4',65506.870817975,'II','13/1.jpg','7/2.jpg','26/3.jpg'),(93,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 3 bedroom house','Sunt amet adipisci optio similique omnis aut ullam.','1',1733102.0348642,'III','23/1.jpg','5/2.jpg','3/3.jpg'),(94,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 3 bedroom house','Modi ducimus praesentium qui voluptas placeat.','1',1000,'II','21/1.jpg','7/2.jpg','13/3.jpg'),(95,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 2 bedroom house','Cumque illum ex qui eos quia in.','2',169360.97516873,'III','10/1.jpg','17/2.jpg','3/3.jpg'),(96,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 4 bedroom house','Accusantium necessitatibus ut quae laudantium voluptatem id rerum.','3',3771.6951347536,'I','14/1.jpg','11/2.jpg','3/3.jpg'),(97,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 3 bedroom house','Repellat provident accusamus doloremque voluptas sapiente quo.','3',642977.38726548,'I','14/1.jpg','5/2.jpg','4/3.jpg'),(98,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 4 bedroom house','Necessitatibus temporibus qui dolor qui aut molestias.','1',1000,'I','3/1.jpg','18/2.jpg','11/3.jpg'),(99,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 3 bedroom house','Velit numquam cumque ut corporis est ex.','3',1000,'I','21/1.jpg','20/2.jpg','17/3.jpg'),(100,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 1 bedroom house','Suscipit tempore molestiae et ad facere dignissimos perferendis.','2',1000,'II','21/1.jpg','20/2.jpg','1/3.jpg'),(101,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 3 bedroom house','Voluptates esse maiores at qui labore mollitia.','3',10041.73539598,'II','13/1.jpg','12/2.jpg','5/3.jpg'),(102,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 1 bedroom house','Illum velit porro dolores harum optio beatae.','2',1000,'II','3/1.jpg','1/2.jpg','23/3.jpg'),(103,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 2 bedroom house','Dignissimos non quam culpa ad illo veritatis.','3',1000,'III','2/1.jpg','19/2.jpg','20/3.jpg'),(104,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 4 bedroom house','Vel ea corporis voluptatibus.','1',1000,'II','25/1.jpg','14/2.jpg','4/3.jpg'),(105,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 1 bedroom house','Sint est magnam nihil.','4',1000,'I','16/1.jpg','12/2.jpg','10/3.jpg'),(106,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 1 bedroom house','Sequi quo qui at rerum ullam quos nesciunt.','2',311496.85384203005,'I','3/1.jpg','16/2.jpg','14/3.jpg'),(107,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 1 bedroom house','Vel hic inventore ipsum consequatur atque.','4',12148.748680364,'I','20/1.jpg','19/2.jpg','12/3.jpg'),(108,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 4 bedroom house','Voluptatibus excepturi rem blanditiis voluptates consequatur blanditiis et.','4',5021.4111314325,'III','14/1.jpg','22/2.jpg','17/3.jpg'),(109,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 3 bedroom house','Ut sit incidunt est dolorum soluta harum quod.','2',1000,'I','6/1.jpg','24/2.jpg','23/3.jpg'),(110,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 3 bedroom house','Impedit vero distinctio ipsum natus.','4',1000,'II','15/1.jpg','2/2.jpg','10/3.jpg'),(111,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 4 bedroom house','Excepturi ut veritatis unde et vero adipisci.','1',1000,'II','5/1.jpg','16/2.jpg','9/3.jpg'),(112,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 4 bedroom house','Vel asperiores aut facere.','2',5815.151512600601,'III','6/1.jpg','23/2.jpg','12/3.jpg'),(113,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 4 bedroom house','Atque in aut excepturi vitae laboriosam dolores.','3',5073.0556338597,'III','15/1.jpg','12/2.jpg','10/3.jpg'),(114,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 3 bedroom house','Voluptas eligendi earum recusandae architecto quis temporibus vel voluptas.','2',1000,'III','3/1.jpg','18/2.jpg','10/3.jpg'),(115,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 4 bedroom house','Voluptas necessitatibus quaerat pariatur molestiae nulla.','1',1000,'II','22/1.jpg','2/2.jpg','20/3.jpg'),(116,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 1 bedroom house','Dolor cum eos ipsa necessitatibus et non cum.','2',1000,'III','23/1.jpg','7/2.jpg','19/3.jpg'),(117,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 1 bedroom house','Voluptatibus rerum dicta ut quae nihil.','1',1000,'II','21/1.jpg','2/2.jpg','9/3.jpg'),(118,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 1 bedroom house','Aspernatur eos ipsam enim dolorem quos quidem voluptatem.','3',1000,'I','10/1.jpg','13/2.jpg','11/3.jpg'),(119,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 1 bedroom house','Et vitae consequatur libero voluptate voluptate recusandae ullam cupiditate.','4',1000,'II','13/1.jpg','8/2.jpg','2/3.jpg'),(120,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 4 bedroom house','Illum debitis optio optio ut aut provident.','2',1000,'II','8/1.jpg','24/2.jpg','2/3.jpg'),(121,'2021-04-30 10:23:48','2021-04-30 10:23:48','Cosy 4 bedroom house','Debitis in molestiae laudantium eum dolorem.','2',1000,'I','3/1.jpg','21/2.jpg','6/3.jpg'),(122,'2021-04-30 10:23:48','2021-04-30 10:23:48','Spcious 1 bedroom house','Aut voluptas corrupti nostrum sit amet.','4',322758.74823974,'I','14/1.jpg','5/2.jpg','21/3.jpg'),(123,'2021-04-30 10:23:48','2021-04-30 10:23:48','Cosy 4 bedroom house','Aperiam eos veniam ea dolorem qui quo.','2',1000,'II','10/1.jpg','13/2.jpg','9/3.jpg'),(124,'2021-04-30 10:23:48','2021-04-30 10:23:48','Elegant 2 bedroom house','Corporis reprehenderit minus quibusdam.','4',5425046.835542801,'III','7/1.jpg','24/2.jpg','10/3.jpg'),(125,'2021-04-30 10:23:48','2021-04-30 10:23:48','Spcious 4 bedroom house','Quisquam neque eligendi rerum dolores ut sit voluptatem.','1',2494.7484093884,'III','3/1.jpg','3/2.jpg','19/3.jpg'),(126,'2021-04-30 10:23:48','2021-04-30 10:23:48','Elegant 3 bedroom house','Consectetur nihil sed ut adipisci et nostrum.','1',1000,'II','22/1.jpg','19/2.jpg','16/3.jpg'),(127,'2021-04-30 10:23:48','2021-04-30 10:23:48','Cosy 4 bedroom house','Fugiat veniam et id.','4',1756766.1353896998,'II','21/1.jpg','8/2.jpg','20/3.jpg'),(128,'2021-04-30 10:23:48','2021-04-30 10:23:48','Spcious 2 bedroom house','Non nemo eum eaque voluptas voluptate voluptatem.','2',1000,'I','13/1.jpg','9/2.jpg','26/3.jpg'),(129,'2021-04-30 10:23:48','2021-04-30 10:23:48','Spcious 1 bedroom house','Cum est fugit omnis.','3',1000,'II','25/1.jpg','18/2.jpg','20/3.jpg'),(130,'2021-04-30 10:23:48','2021-04-30 10:23:48','Elegant 1 bedroom house','Animi voluptates porro molestiae maiores omnis qui ipsam.','1',7606415.2949158,'III','10/1.jpg','13/2.jpg','18/3.jpg'),(131,'2021-04-30 10:23:48','2021-04-30 10:23:48','Spcious 4 bedroom house','Autem id voluptates consequuntur voluptate.','1',29458.605158063,'I','1/1.jpg','11/2.jpg','5/3.jpg'),(132,'2021-04-30 10:23:48','2021-04-30 10:23:48','Cosy 2 bedroom house','Id quos consequuntur unde officia iure voluptate.','1',1000,'III','26/1.jpg','17/2.jpg','21/3.jpg'),(133,'2021-04-30 10:23:48','2021-04-30 10:23:48','Cosy 3 bedroom house','Aliquam at occaecati ea mollitia inventore.','4',702307.68448078,'III','22/1.jpg','23/2.jpg','11/3.jpg'),(134,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 1 bedroom house','Odit corporis laudantium voluptatum numquam ut itaque vero.','1',546529.2734579,'III','6/1.jpg','13/2.jpg','20/3.jpg'),(135,'2021-04-30 10:23:49','2021-04-30 10:23:49','Cosy 3 bedroom house','Itaque quia voluptatem fuga praesentium nostrum deleniti natus tenetur.','1',1000,'I','15/1.jpg','22/2.jpg','15/3.jpg'),(136,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 4 bedroom house','Dolorem saepe et voluptas optio.','1',1135.5860843459,'I','5/1.jpg','19/2.jpg','13/3.jpg'),(137,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 3 bedroom house','Rem suscipit accusantium dolorem rem.','2',1000,'II','3/1.jpg','26/2.jpg','20/3.jpg'),(138,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 2 bedroom house','Voluptatum vitae aspernatur rerum perferendis numquam a.','4',1000,'III','2/1.jpg','23/2.jpg','6/3.jpg'),(139,'2021-04-30 10:23:49','2021-04-30 10:23:49','Cosy 2 bedroom house','Enim nam consequuntur molestiae.','1',1000,'III','25/1.jpg','8/2.jpg','25/3.jpg'),(140,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 4 bedroom house','Aperiam iusto ipsam natus aut doloremque qui quis.','3',6474.547393731699,'III','16/1.jpg','25/2.jpg','26/3.jpg'),(141,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 1 bedroom house','Labore molestiae enim odio est ut quae et.','2',1000,'I','4/1.jpg','24/2.jpg','3/3.jpg'),(142,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 3 bedroom house','Odit quo quod nihil excepturi sit dolor aut.','1',2093463.6861447,'I','24/1.jpg','15/2.jpg','16/3.jpg'),(143,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 2 bedroom house','Corrupti minus explicabo quam commodi.','1',1000,'III','3/1.jpg','2/2.jpg','17/3.jpg'),(144,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 4 bedroom house','Illo nisi itaque et fuga deserunt numquam.','4',1000,'III','22/1.jpg','19/2.jpg','12/3.jpg'),(145,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 4 bedroom house','Aliquam omnis facilis excepturi ducimus voluptates magni.','4',2019239.6985910002,'III','23/1.jpg','9/2.jpg','7/3.jpg'),(146,'2021-04-30 10:23:49','2021-04-30 10:23:49','Cosy 1 bedroom house','Tempore assumenda ex sapiente dolore incidunt ducimus ut.','1',1000,'I','22/1.jpg','16/2.jpg','24/3.jpg'),(147,'2021-04-30 10:23:49','2021-04-30 10:23:49','Cosy 2 bedroom house','Omnis molestiae dolores eos ut fuga.','2',1000,'III','16/1.jpg','23/2.jpg','22/3.jpg'),(148,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 4 bedroom house','Quasi quis quis ut cumque ipsam et.','1',1000,'I','11/1.jpg','16/2.jpg','12/3.jpg'),(149,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 2 bedroom house','Eligendi assumenda vel corrupti saepe.','2',324990.2661472,'I','8/1.jpg','10/2.jpg','17/3.jpg'),(150,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 2 bedroom house','Id consectetur qui non et iure et voluptates.','2',1000,'I','7/1.jpg','26/2.jpg','23/3.jpg'),(151,'2021-04-30 10:23:49','2021-04-30 10:23:49','Cosy 4 bedroom house','Eligendi commodi sit ut facere deleniti.','2',1000,'II','11/1.jpg','21/2.jpg','14/3.jpg'),(152,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 2 bedroom house','Neque eum est laboriosam possimus tenetur ut laboriosam.','1',1000,'II','5/1.jpg','4/2.jpg','26/3.jpg'),(153,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 3 bedroom house','Sapiente consequuntur voluptatem iste distinctio perspiciatis.','4',1351440.3459953999,'III','17/1.jpg','5/2.jpg','8/3.jpg'),(154,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 1 bedroom house','Dolorem doloremque necessitatibus commodi sit nihil doloribus voluptas.','1',1000,'III','17/1.jpg','16/2.jpg','13/3.jpg'),(155,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 4 bedroom house','Cupiditate inventore delectus repudiandae modi.','3',1000,'III','10/1.jpg','10/2.jpg','14/3.jpg'),(156,'2021-04-30 10:23:49','2021-04-30 10:23:49','Cosy 2 bedroom house','Vero deleniti numquam rerum enim et ad.','3',1000,'I','25/1.jpg','4/2.jpg','4/3.jpg'),(157,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 1 bedroom house','Voluptatem aliquam veritatis necessitatibus.','1',1000,'I','16/1.jpg','13/2.jpg','4/3.jpg'),(158,'2021-04-30 10:23:50','2021-04-30 10:23:50','Spcious 2 bedroom house','Officia et eum corrupti numquam provident ut quia.','1',225532.39745818998,'III','5/1.jpg','3/2.jpg','7/3.jpg'),(159,'2021-04-30 10:23:50','2021-04-30 10:23:50','Spcious 2 bedroom house','Eos corrupti ex voluptatem consectetur ea eaque aut.','1',1000,'III','2/1.jpg','1/2.jpg','25/3.jpg'),(160,'2021-04-30 10:23:50','2021-04-30 10:23:50','Cosy 4 bedroom house','Sit similique id dicta quis facilis quos nemo.','3',526666.5387558601,'III','19/1.jpg','21/2.jpg','25/3.jpg'),(161,'2021-04-30 10:23:50','2021-04-30 10:23:50','Elegant 1 bedroom house','Deleniti suscipit ut magnam ab veritatis omnis.','1',19038.173079977998,'II','11/1.jpg','22/2.jpg','22/3.jpg'),(162,'2021-04-30 10:23:50','2021-04-30 10:23:50','Spcious 2 bedroom house','Esse qui deleniti repudiandae perferendis quaerat ducimus.','3',1886.4376492834,'III','26/1.jpg','22/2.jpg','10/3.jpg');
/*!40000 ALTER TABLE `houses` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2019_08_19_000000_create_failed_jobs_table',1),(2,'2020_04_01_191052_create_tenants_table',1),(3,'2021_04_01_191053_create_houses_table',2),(4,'2020_04_01_191158_create_tenancies_table',3),(5,'2020_04_01_191209_create_bookings_table',3),(6,'2020_04_01_191222_create_payments_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tenancies`
--

DROP TABLE IF EXISTS `tenancies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenancies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start_date` timestamp NOT NULL DEFAULT '2021-04-28 15:53:11',
  `end_date` timestamp NOT NULL DEFAULT '2021-04-28 15:53:11',
  `expected_end_date` timestamp NOT NULL DEFAULT '2021-04-28 15:53:11',
  `house_id` bigint(20) unsigned NOT NULL,
  `tenant_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tenancies_house_id_foreign` (`house_id`),
  KEY `tenancies_tenant_id_foreign` (`tenant_id`),
  CONSTRAINT `tenancies_house_id_foreign` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tenancies_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenancies`
--

LOCK TABLES `tenancies` WRITE;
/*!40000 ALTER TABLE `tenancies` DISABLE KEYS */;
INSERT INTO `tenancies` VALUES (4,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',55,15),(5,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',59,19),(6,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',54,15),(7,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',52,16),(8,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',51,14),(9,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',56,11),(10,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',54,15),(11,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',56,16),(12,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',52,17),(13,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',55,11),(15,'2021-04-29 07:26:41','2021-04-29 07:26:41','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',56,15);
/*!40000 ALTER TABLE `tenancies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenants`
--

DROP TABLE IF EXISTS `tenants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenants` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tenants_email_unique` (`email`),
  UNIQUE KEY `tenants_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants`
--

LOCK TABLES `tenants` WRITE;
/*!40000 ALTER TABLE `tenants` DISABLE KEYS */;
INSERT INTO `tenants` VALUES (11,'2021-04-28 16:32:06','2021-04-28 16:32:06','Jerel','Fritsch','alyce.schroeder@example.net','+1.540.626.3989','prospective','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','faEQzBLtAnG2aQGPnhdM2kx41tczqq'),(12,'2021-04-28 16:32:06','2021-04-28 16:32:06','Rolando','Cronin','purdy.mae@example.net','559.865.1633','past','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Bzriu1cl1hq4xjwDRaR9PTRrWnzYpd'),(13,'2021-04-28 16:32:06','2021-04-28 16:32:06','Margarette','Medhurst','anderson.raynor@example.net','713-762-9308','prospective','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','fI7sRKyCOMz59MDMWD9pOUntjzkGPK'),(14,'2021-04-28 16:32:06','2021-04-28 16:32:06','Dagmar','Upton','klangworth@example.com','830-965-1818','past','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','pn981BYlMaRirETy7i2jzarCqtVDqT'),(15,'2021-04-28 16:32:06','2021-04-28 16:32:06','Santino','Bergstrom','runolfsson.yolanda@example.org','(616) 908-1428','prospective','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zwIsP2zsAt5I961INFWWICCyWX3O7u'),(16,'2021-04-28 16:32:06','2021-04-28 16:32:06','Lilliana','Lemke','hane.una@example.org','+1.425.496.7688','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2BCIxgdGObkx8ZW2gq8FGQ4JvkLnEV'),(17,'2021-04-28 16:32:06','2021-04-28 16:32:06','Dawn','Walter','dawn.schmidt@example.org','+1-929-756-7914','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','lDBIgoMDW3nhzL2hC7oimSR3BKqMLd'),(18,'2021-04-28 16:32:06','2021-04-28 16:32:06','Dayne','Kiehn','elmore.ortiz@example.org','678.453.0119','prospective','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','vaDmU0du7nQyGRXWu4JuFPvoMm7KMR'),(19,'2021-04-28 16:32:06','2021-04-28 16:32:06','Dallin','Rice','kunde.blake@example.com','(320) 929-8532','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WGEtHG1GWNrrgo5I1ysovqrvj6k71G'),(20,'2021-04-28 16:32:06','2021-04-28 16:32:06','Lydia','Kuvalis','johnathan.cole@example.org','351-384-4830','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','AfF89bQLXFTdHweEtxsPgfbNypQ1Sw'),(21,'2021-04-29 06:47:59','2021-04-29 06:47:59','George','Ndirangu','ndirangu.mepawa@gmail.com','0746649576','current','$2y$10$t7FjZqDq8kmXQNrPxjht4eR30TP3NkpuSBlibdS1urTQJ0B37EHjS',NULL),(22,'2021-04-29 15:31:48','2021-04-29 15:31:48','George','Wachira','george@gmail.com','074568790','prospective','$2y$10$DONfMOPBGBoOmork0nLkduAx6wAtj8L8ii0Za3Ev87HT6UdGvbxj6',NULL);
/*!40000 ALTER TABLE `tenants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-01  7:20:27
