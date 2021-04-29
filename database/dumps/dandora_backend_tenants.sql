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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants`
--

LOCK TABLES `tenants` WRITE;
/*!40000 ALTER TABLE `tenants` DISABLE KEYS */;
INSERT INTO `tenants` VALUES (11,'2021-04-28 16:32:06','2021-04-28 16:32:06','Jerel','Fritsch','alyce.schroeder@example.net','+1.540.626.3989','prospective','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','faEQzBLtAnG2aQGPnhdM2kx41tczqq'),(12,'2021-04-28 16:32:06','2021-04-28 16:32:06','Rolando','Cronin','purdy.mae@example.net','559.865.1633','past','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Bzriu1cl1hq4xjwDRaR9PTRrWnzYpd'),(13,'2021-04-28 16:32:06','2021-04-28 16:32:06','Margarette','Medhurst','anderson.raynor@example.net','713-762-9308','prospective','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','fI7sRKyCOMz59MDMWD9pOUntjzkGPK'),(14,'2021-04-28 16:32:06','2021-04-28 16:32:06','Dagmar','Upton','klangworth@example.com','830-965-1818','past','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','pn981BYlMaRirETy7i2jzarCqtVDqT'),(15,'2021-04-28 16:32:06','2021-04-28 16:32:06','Santino','Bergstrom','runolfsson.yolanda@example.org','(616) 908-1428','prospective','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zwIsP2zsAt5I961INFWWICCyWX3O7u'),(16,'2021-04-28 16:32:06','2021-04-28 16:32:06','Lilliana','Lemke','hane.una@example.org','+1.425.496.7688','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2BCIxgdGObkx8ZW2gq8FGQ4JvkLnEV'),(17,'2021-04-28 16:32:06','2021-04-28 16:32:06','Dawn','Walter','dawn.schmidt@example.org','+1-929-756-7914','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','lDBIgoMDW3nhzL2hC7oimSR3BKqMLd'),(18,'2021-04-28 16:32:06','2021-04-28 16:32:06','Dayne','Kiehn','elmore.ortiz@example.org','678.453.0119','prospective','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','vaDmU0du7nQyGRXWu4JuFPvoMm7KMR'),(19,'2021-04-28 16:32:06','2021-04-28 16:32:06','Dallin','Rice','kunde.blake@example.com','(320) 929-8532','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WGEtHG1GWNrrgo5I1ysovqrvj6k71G'),(20,'2021-04-28 16:32:06','2021-04-28 16:32:06','Lydia','Kuvalis','johnathan.cole@example.org','351-384-4830','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','AfF89bQLXFTdHweEtxsPgfbNypQ1Sw'),(21,'2021-04-29 06:47:59','2021-04-29 06:47:59','George','Ndirangu','ndirangu.mepwa@gmail','0746649576','current','$2y$10$t7FjZqDq8kmXQNrPxjht4eR30TP3NkpuSBlibdS1urTQJ0B37EHjS',NULL);
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

-- Dump completed on 2021-04-29 13:37:31
