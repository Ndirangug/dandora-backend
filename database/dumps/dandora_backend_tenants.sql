CREATE DATABASE  IF NOT EXISTS `dandora_backend` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dandora_backend`;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants`
--

LOCK TABLES `tenants` WRITE;
/*!40000 ALTER TABLE `tenants` DISABLE KEYS */;
INSERT INTO `tenants` VALUES (1,'2021-05-27 05:44:37','2021-05-27 05:44:37','Ashton','Champlin','lauretta.thompson@example.com','+15163516589','past','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','a42k1xo7i9xcwlQjJVycnyB2FdWuXJ'),(2,'2021-05-27 05:44:37','2021-05-27 05:44:37','Hildegard','Konopelski','zena.ziemann@example.com','669.560.7297','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','fQUOJjJmnuFSIIfGBW1MFNqQRw5ohd'),(3,'2021-05-27 05:44:37','2021-05-27 05:44:37','Elfrieda','Kohler','enola06@example.net','+1 (301) 629-5608','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','wpPKkUUNE1wpDb0ucVdOjU6fEuN5u4'),(4,'2021-05-27 05:44:37','2021-05-27 05:44:37','Maiya','Cassin','rshanahan@example.org','+1-909-429-6426','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','iNj4mTRBcxeZ3ri3gDGgrEPdpRSXBk'),(5,'2021-05-27 05:44:37','2021-05-27 05:44:37','Kiera','Gerlach','mable.wiegand@example.com','1-380-248-6145','prospective','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','894PTtkJJjrVXCv4l1Fgjoi8RmAJ5t'),(6,'2021-05-27 05:44:37','2021-05-27 05:44:37','Gilda','Rogahn','leann.oconner@example.net','1-225-569-9348','prospective','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','pOoSl0XtCZl6qsZelXanqf9qltQrJ8'),(7,'2021-05-27 05:44:37','2021-05-27 05:44:37','Billy','Franecki','thudson@example.org','541-876-4038','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','kaHo8zs0zaKbhmAy3DepoBVTXMCVoc'),(8,'2021-05-27 05:44:37','2021-05-27 05:44:37','Princess','Stamm','heaney.george@example.net','1-406-376-4514','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','RWciZpi6z96YL1itOJ9myPpmvTxxIS'),(9,'2021-05-27 05:44:37','2021-05-27 05:44:37','Tavares','Wilderman','xprohaska@example.net','1-339-395-8248','current','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','bXZBcvXGKU4ZvkGteEWguLncpbrsiZ'),(10,'2021-05-27 05:44:38','2021-05-27 05:44:38','Ayla','Schneider','donnie16@example.org','860.952.9261','past','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','i2ioUpp1an4yG1ojwPgrEpr03co4rE'),(11,'2021-05-27 07:06:49','2021-05-27 07:06:49','George','Ndirangu','ndirangu.mepawa@gmail.com','0746649576','prospective','$2y$10$YnRVOpAD3E0zc4QHjF6Sa.uHL.AkMlNgfvzf7vDtnBC90pbQH/ojy',NULL),(12,'2021-05-27 07:26:47','2021-05-27 07:26:47','George','Ndirangu','admin@dandora.com','074537889','prospective','$2y$10$dW8KD8dDwMkFQrn3mHKAiuqMlYzkGZI/alidSKK/ox/.rqaE6WiMa',NULL);
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

-- Dump completed on 2021-05-27 15:02:42
