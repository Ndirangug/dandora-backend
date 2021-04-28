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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',1,58,20),(2,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',0,57,15),(3,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',0,55,17),(4,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',1,51,13),(5,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',0,56,15),(6,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',0,56,18),(7,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',0,53,19),(8,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',1,55,20),(9,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46',0,53,14),(10,'2021-04-28 16:36:47','2021-04-28 16:36:47','2021-04-28 16:36:46','2021-06-07 16:36:46',1,60,13);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses`
--

LOCK TABLES `houses` WRITE;
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
INSERT INTO `houses` VALUES (51,'2021-04-28 16:32:05','2021-04-28 16:32:05','Spcious 4 bedroom house','Alias incidunt omnis tenetur autem est aut.','2',267103286.07,'2'),(52,'2021-04-28 16:32:05','2021-04-28 16:32:05','Cosy 1 bedroom house','Magni laudantium sint eos repellat libero.','3',1000,'4'),(53,'2021-04-28 16:32:05','2021-04-28 16:32:05','Cosy 4 bedroom house','Eos optio alias facere quis reiciendis et voluptates.','3',8846382.35,'3'),(54,'2021-04-28 16:32:05','2021-04-28 16:32:05','Spcious 3 bedroom house','Aut quia sit et culpa doloribus.','2',26217349.06,'2'),(55,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 3 bedroom house','Aut delectus accusamus nesciunt eos rerum tempore.','1',1000,'1'),(56,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 4 bedroom house','Alias animi fugit quibusdam et.','1',2125.59,'4'),(57,'2021-04-28 16:32:06','2021-04-28 16:32:06','Spcious 2 bedroom house','Rerum repudiandae et dolore adipisci unde.','4',1000,'1'),(58,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 2 bedroom house','Facere facere iure distinctio eum ratione magnam.','1',1000,'1'),(59,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 4 bedroom house','Modi eius maxime earum rem qui magni sed consequatur.','3',45149829.29,'3'),(60,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 2 bedroom house','Non qui consequatur molestiae ipsum impedit vel ut.','4',1000,'2');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (4,'2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17',3963.53,'rent',13),(5,'2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17',181379.58,'booking',13),(6,'2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17',1000,'rent',11),(7,'2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17',43070203.06,'booking',6),(8,'2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17',69843424.9,'rent',6),(9,'2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17',1000,'rent',4),(10,'2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17','2021-04-28 16:38:17',19677194.31,'booking',7),(11,'2021-04-28 16:38:18','2021-04-28 16:38:18','2021-04-28 16:38:17','2021-04-28 16:38:17',1438115.38,'booking',9),(12,'2021-04-28 16:38:18','2021-04-28 16:38:18','2021-04-28 16:38:17','2021-04-28 16:38:17',8283.19,'rent',4),(13,'2021-04-28 16:38:18','2021-04-28 16:38:18','2021-04-28 16:38:17','2021-04-28 16:38:17',1189718.58,'rent',13);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenancies`
--

LOCK TABLES `tenancies` WRITE;
/*!40000 ALTER TABLE `tenancies` DISABLE KEYS */;
INSERT INTO `tenancies` VALUES (4,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',55,15),(5,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',59,19),(6,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',54,15),(7,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',52,16),(8,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',51,14),(9,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',56,11),(10,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',54,15),(11,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',56,16),(12,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',52,17),(13,'2021-04-28 16:36:46','2021-04-28 16:36:46','2021-04-28 16:36:46','2021-06-07 16:36:46','2021-06-07 16:36:46',55,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants`
--

LOCK TABLES `tenants` WRITE;
/*!40000 ALTER TABLE `tenants` DISABLE KEYS */;
INSERT INTO `tenants` VALUES (11,'2021-04-28 16:32:06','2021-04-28 16:32:06','Jerel','Fritsch','alyce.schroeder@example.net','+1.540.626.3989','prospective','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','faEQzBLtAnG2aQGPnhdM2kx41tczqq'),(12,'2021-04-28 16:32:06','2021-04-28 16:32:06','Rolando','Cronin','purdy.mae@example.net','559.865.1633','past','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Bzriu1cl1hq4xjwDRaR9PTRrWnzYpd'),(13,'2021-04-28 16:32:06','2021-04-28 16:32:06','Margarette','Medhurst','anderson.raynor@example.net','713-762-9308','prospective','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','fI7sRKyCOMz59MDMWD9pOUntjzkGPK'),(14,'2021-04-28 16:32:06','2021-04-28 16:32:06','Dagmar','Upton','klangworth@example.com','830-965-1818','past','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','pn981BYlMaRirETy7i2jzarCqtVDqT'),(15,'2021-04-28 16:32:06','2021-04-28 16:32:06','Santino','Bergstrom','runolfsson.yolanda@example.org','(616) 908-1428','prospective','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zwIsP2zsAt5I961INFWWICCyWX3O7u'),(16,'2021-04-28 16:32:06','2021-04-28 16:32:06','Lilliana','Lemke','hane.una@example.org','+1.425.496.7688','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2BCIxgdGObkx8ZW2gq8FGQ4JvkLnEV'),(17,'2021-04-28 16:32:06','2021-04-28 16:32:06','Dawn','Walter','dawn.schmidt@example.org','+1-929-756-7914','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','lDBIgoMDW3nhzL2hC7oimSR3BKqMLd'),(18,'2021-04-28 16:32:06','2021-04-28 16:32:06','Dayne','Kiehn','elmore.ortiz@example.org','678.453.0119','prospective','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','vaDmU0du7nQyGRXWu4JuFPvoMm7KMR'),(19,'2021-04-28 16:32:06','2021-04-28 16:32:06','Dallin','Rice','kunde.blake@example.com','(320) 929-8532','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WGEtHG1GWNrrgo5I1ysovqrvj6k71G'),(20,'2021-04-28 16:32:06','2021-04-28 16:32:06','Lydia','Kuvalis','johnathan.cole@example.org','351-384-4830','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','AfF89bQLXFTdHweEtxsPgfbNypQ1Sw');
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

-- Dump completed on 2021-04-28 22:59:51
