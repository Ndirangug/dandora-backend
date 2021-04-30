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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses`
--

LOCK TABLES `houses` WRITE;
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
INSERT INTO `houses` VALUES (51,'2021-04-28 16:32:05','2021-04-28 16:32:05','Spcious 4 bedroom house','Alias incidunt omnis tenetur autem est aut.','2',10386.07,'I',NULL,NULL,NULL),(52,'2021-04-28 16:32:05','2021-04-28 16:32:05','Cosy 1 bedroom house','Magni laudantium sint eos repellat libero.','3',1000,'II',NULL,NULL,NULL),(53,'2021-04-28 16:32:05','2021-04-28 16:32:05','Cosy 4 bedroom house','Eos optio alias facere quis reiciendis et voluptates.','3',86382.35,'III',NULL,NULL,NULL),(54,'2021-04-28 16:32:05','2021-04-28 16:32:05','Spcious 3 bedroom house','Aut quia sit et culpa doloribus.','2',26249.06,'I',NULL,NULL,NULL),(55,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 3 bedroom house','Aut delectus accusamus nesciunt eos rerum tempore.','1',1000,'II',NULL,NULL,NULL),(56,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 4 bedroom house','Alias animi fugit quibusdam et.','1',2125.59,'III',NULL,NULL,NULL),(57,'2021-04-28 16:32:06','2021-04-28 16:32:06','Spcious 2 bedroom house','Rerum repudiandae et dolore adipisci unde.','4',1000,'I',NULL,NULL,NULL),(58,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 2 bedroom house','Facere facere iure distinctio eum ratione magnam.','1',1000,'II',NULL,NULL,NULL),(59,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 4 bedroom house','Modi eius maxime earum rem qui magni sed consequatur.','3',45829.29,'III',NULL,NULL,NULL),(60,'2021-04-28 16:32:06','2021-04-28 16:32:06','Cosy 2 bedroom house','Non qui consequatur molestiae ipsum impedit vel ut.','4',1000,'I',NULL,NULL,NULL),(61,'2021-04-29 07:19:39','2021-04-29 07:19:39','Spcious 4 bedroom house','Alias incidunt omnis tenetur autem est aut.','3',26286.07,'II',NULL,NULL,NULL),(62,'2021-04-29 07:33:01','2021-04-29 07:33:01','Spcious 2 bedroom house','Rerum repudiandae et dolore adipisci unde.','4',1000,'III','unsplash.com/random','unsplash.com/random','unsplash.com/random'),(63,'2021-04-30 10:23:45','2021-04-30 10:23:45','Spcious 2 bedroom house','Sit ea delectus quos minima distinctio.','3',34855771.765881,'I',NULL,NULL,NULL),(64,'2021-04-30 10:23:45','2021-04-30 10:23:45','Spcious 3 bedroom house','Id quae ut quo praesentium eum nihil libero numquam.','3',1000,'II',NULL,NULL,NULL),(65,'2021-04-30 10:23:45','2021-04-30 10:23:45','Cosy 2 bedroom house','Ut molestias rerum rerum atque vitae quam.','1',1000,'III',NULL,NULL,NULL),(66,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 2 bedroom house','Rerum ut ut maxime ut modi libero labore.','2',1000,'III',NULL,NULL,NULL),(67,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 4 bedroom house','Debitis deleniti vero consequatur.','4',1000,'I',NULL,NULL,NULL),(68,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 1 bedroom house','Et quod autem reprehenderit nobis recusandae.','4',1000,'II',NULL,NULL,NULL),(69,'2021-04-30 10:23:46','2021-04-30 10:23:46','Spcious 2 bedroom house','Ut ex quis est perferendis ea rem exercitationem.','1',6243.7782472365,'I',NULL,NULL,NULL),(70,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 2 bedroom house','Dolor quibusdam aliquid doloremque in sit autem est.','4',4640.3967936531,'II',NULL,NULL,NULL),(71,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 1 bedroom house','Ab repellendus natus molestias perspiciatis.','1',1000,'III',NULL,NULL,NULL),(72,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 3 bedroom house','Sint ea quos dignissimos earum ea voluptate.','3',1000,'I',NULL,NULL,NULL),(73,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 3 bedroom house','Et commodi et sapiente nihil provident et.','3',1000,'II',NULL,NULL,NULL),(74,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 4 bedroom house','Vero aut consequatur est excepturi quos.','4',4047950.3411996,'II',NULL,NULL,NULL),(75,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 4 bedroom house','Numquam voluptatem id aut deleniti temporibus nostrum.','1',1204.3216814494,'I',NULL,NULL,NULL),(76,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 4 bedroom house','Nihil corporis ut quidem vel voluptatem.','3',67068.903578769,'II',NULL,NULL,NULL),(77,'2021-04-30 10:23:46','2021-04-30 10:23:46','Spcious 3 bedroom house','Tenetur molestiae soluta dolorem veritatis.','3',1000,'III',NULL,NULL,NULL),(78,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 2 bedroom house','Sint est ut enim quis eum.','3',635008.2661778,'III',NULL,NULL,NULL),(79,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 3 bedroom house','Ea voluptatem nihil aut voluptas.','1',1000,'II',NULL,NULL,NULL),(80,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 3 bedroom house','Porro et et perferendis sed.','3',23526.859988302996,'II',NULL,NULL,NULL),(81,'2021-04-30 10:23:46','2021-04-30 10:23:46','Spcious 2 bedroom house','Illo fugit non sint maxime consequatur explicabo in.','4',1000,'I',NULL,NULL,NULL),(82,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 2 bedroom house','Aut et voluptates ipsum odit eaque autem rerum.','3',1000,'II',NULL,NULL,NULL),(83,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 3 bedroom house','Dolores ut hic velit ipsum.','2',1000,'III',NULL,NULL,NULL),(84,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 3 bedroom house','Autem adipisci et est autem perferendis molestiae voluptatem.','1',1000,'II',NULL,NULL,NULL),(85,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 1 bedroom house','Molestiae magni dignissimos maiores eius voluptas.','4',1000,'I',NULL,NULL,NULL),(86,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 3 bedroom house','Deserunt aut eum assumenda aliquid eius dolorum.','4',34136.947686137,'I',NULL,NULL,NULL),(87,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 1 bedroom house','Quia dignissimos ut odit unde.','1',1000,'II',NULL,NULL,NULL),(88,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 1 bedroom house','Non quisquam rem saepe enim voluptate cumque illum rerum.','1',1000,'II',NULL,NULL,NULL),(89,'2021-04-30 10:23:46','2021-04-30 10:23:46','Spcious 4 bedroom house','Quaerat qui iste ipsa et asperiores.','3',1000,'III',NULL,NULL,NULL),(90,'2021-04-30 10:23:46','2021-04-30 10:23:46','Spcious 4 bedroom house','Assumenda aut optio quisquam ex ut quisquam.','2',1000,'I',NULL,NULL,NULL),(91,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 2 bedroom house','Eveniet in voluptatem et aspernatur.','3',1000,'I',NULL,NULL,NULL),(92,'2021-04-30 10:23:46','2021-04-30 10:23:46','Cosy 4 bedroom house','Est non deleniti modi culpa sit.','4',65506.870817975,'II',NULL,NULL,NULL),(93,'2021-04-30 10:23:46','2021-04-30 10:23:46','Elegant 3 bedroom house','Sunt amet adipisci optio similique omnis aut ullam.','1',1733102.0348642,'III',NULL,NULL,NULL),(94,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 3 bedroom house','Modi ducimus praesentium qui voluptas placeat.','1',1000,'II',NULL,NULL,NULL),(95,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 2 bedroom house','Cumque illum ex qui eos quia in.','2',169360.97516873,'III',NULL,NULL,NULL),(96,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 4 bedroom house','Accusantium necessitatibus ut quae laudantium voluptatem id rerum.','3',3771.6951347536,'I',NULL,NULL,NULL),(97,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 3 bedroom house','Repellat provident accusamus doloremque voluptas sapiente quo.','3',642977.38726548,'I',NULL,NULL,NULL),(98,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 4 bedroom house','Necessitatibus temporibus qui dolor qui aut molestias.','1',1000,'I',NULL,NULL,NULL),(99,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 3 bedroom house','Velit numquam cumque ut corporis est ex.','3',1000,'I',NULL,NULL,NULL),(100,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 1 bedroom house','Suscipit tempore molestiae et ad facere dignissimos perferendis.','2',1000,'II',NULL,NULL,NULL),(101,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 3 bedroom house','Voluptates esse maiores at qui labore mollitia.','3',10041.73539598,'II',NULL,NULL,NULL),(102,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 1 bedroom house','Illum velit porro dolores harum optio beatae.','2',1000,'II',NULL,NULL,NULL),(103,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 2 bedroom house','Dignissimos non quam culpa ad illo veritatis.','3',1000,'III',NULL,NULL,NULL),(104,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 4 bedroom house','Vel ea corporis voluptatibus.','1',1000,'II',NULL,NULL,NULL),(105,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 1 bedroom house','Sint est magnam nihil.','4',1000,'I',NULL,NULL,NULL),(106,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 1 bedroom house','Sequi quo qui at rerum ullam quos nesciunt.','2',311496.85384203005,'I',NULL,NULL,NULL),(107,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 1 bedroom house','Vel hic inventore ipsum consequatur atque.','4',12148.748680364,'I',NULL,NULL,NULL),(108,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 4 bedroom house','Voluptatibus excepturi rem blanditiis voluptates consequatur blanditiis et.','4',5021.4111314325,'III',NULL,NULL,NULL),(109,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 3 bedroom house','Ut sit incidunt est dolorum soluta harum quod.','2',1000,'I',NULL,NULL,NULL),(110,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 3 bedroom house','Impedit vero distinctio ipsum natus.','4',1000,'II',NULL,NULL,NULL),(111,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 4 bedroom house','Excepturi ut veritatis unde et vero adipisci.','1',1000,'II',NULL,NULL,NULL),(112,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 4 bedroom house','Vel asperiores aut facere.','2',5815.151512600601,'III',NULL,NULL,NULL),(113,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 4 bedroom house','Atque in aut excepturi vitae laboriosam dolores.','3',5073.0556338597,'III',NULL,NULL,NULL),(114,'2021-04-30 10:23:47','2021-04-30 10:23:47','Elegant 3 bedroom house','Voluptas eligendi earum recusandae architecto quis temporibus vel voluptas.','2',1000,'III',NULL,NULL,NULL),(115,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 4 bedroom house','Voluptas necessitatibus quaerat pariatur molestiae nulla.','1',1000,'II',NULL,NULL,NULL),(116,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 1 bedroom house','Dolor cum eos ipsa necessitatibus et non cum.','2',1000,'III',NULL,NULL,NULL),(117,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 1 bedroom house','Voluptatibus rerum dicta ut quae nihil.','1',1000,'II',NULL,NULL,NULL),(118,'2021-04-30 10:23:47','2021-04-30 10:23:47','Cosy 1 bedroom house','Aspernatur eos ipsam enim dolorem quos quidem voluptatem.','3',1000,'I',NULL,NULL,NULL),(119,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 1 bedroom house','Et vitae consequatur libero voluptate voluptate recusandae ullam cupiditate.','4',1000,'II',NULL,NULL,NULL),(120,'2021-04-30 10:23:47','2021-04-30 10:23:47','Spcious 4 bedroom house','Illum debitis optio optio ut aut provident.','2',1000,'II',NULL,NULL,NULL),(121,'2021-04-30 10:23:48','2021-04-30 10:23:48','Cosy 4 bedroom house','Debitis in molestiae laudantium eum dolorem.','2',1000,'I',NULL,NULL,NULL),(122,'2021-04-30 10:23:48','2021-04-30 10:23:48','Spcious 1 bedroom house','Aut voluptas corrupti nostrum sit amet.','4',322758.74823974,'I',NULL,NULL,NULL),(123,'2021-04-30 10:23:48','2021-04-30 10:23:48','Cosy 4 bedroom house','Aperiam eos veniam ea dolorem qui quo.','2',1000,'II',NULL,NULL,NULL),(124,'2021-04-30 10:23:48','2021-04-30 10:23:48','Elegant 2 bedroom house','Corporis reprehenderit minus quibusdam.','4',5425046.835542801,'III',NULL,NULL,NULL),(125,'2021-04-30 10:23:48','2021-04-30 10:23:48','Spcious 4 bedroom house','Quisquam neque eligendi rerum dolores ut sit voluptatem.','1',2494.7484093884,'III',NULL,NULL,NULL),(126,'2021-04-30 10:23:48','2021-04-30 10:23:48','Elegant 3 bedroom house','Consectetur nihil sed ut adipisci et nostrum.','1',1000,'II',NULL,NULL,NULL),(127,'2021-04-30 10:23:48','2021-04-30 10:23:48','Cosy 4 bedroom house','Fugiat veniam et id.','4',1756766.1353896998,'II',NULL,NULL,NULL),(128,'2021-04-30 10:23:48','2021-04-30 10:23:48','Spcious 2 bedroom house','Non nemo eum eaque voluptas voluptate voluptatem.','2',1000,'I',NULL,NULL,NULL),(129,'2021-04-30 10:23:48','2021-04-30 10:23:48','Spcious 1 bedroom house','Cum est fugit omnis.','3',1000,'II',NULL,NULL,NULL),(130,'2021-04-30 10:23:48','2021-04-30 10:23:48','Elegant 1 bedroom house','Animi voluptates porro molestiae maiores omnis qui ipsam.','1',7606415.2949158,'III',NULL,NULL,NULL),(131,'2021-04-30 10:23:48','2021-04-30 10:23:48','Spcious 4 bedroom house','Autem id voluptates consequuntur voluptate.','1',29458.605158063,'I',NULL,NULL,NULL),(132,'2021-04-30 10:23:48','2021-04-30 10:23:48','Cosy 2 bedroom house','Id quos consequuntur unde officia iure voluptate.','1',1000,'III',NULL,NULL,NULL),(133,'2021-04-30 10:23:48','2021-04-30 10:23:48','Cosy 3 bedroom house','Aliquam at occaecati ea mollitia inventore.','4',702307.68448078,'III',NULL,NULL,NULL),(134,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 1 bedroom house','Odit corporis laudantium voluptatum numquam ut itaque vero.','1',546529.2734579,'III',NULL,NULL,NULL),(135,'2021-04-30 10:23:49','2021-04-30 10:23:49','Cosy 3 bedroom house','Itaque quia voluptatem fuga praesentium nostrum deleniti natus tenetur.','1',1000,'I',NULL,NULL,NULL),(136,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 4 bedroom house','Dolorem saepe et voluptas optio.','1',1135.5860843459,'I',NULL,NULL,NULL),(137,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 3 bedroom house','Rem suscipit accusantium dolorem rem.','2',1000,'II',NULL,NULL,NULL),(138,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 2 bedroom house','Voluptatum vitae aspernatur rerum perferendis numquam a.','4',1000,'III',NULL,NULL,NULL),(139,'2021-04-30 10:23:49','2021-04-30 10:23:49','Cosy 2 bedroom house','Enim nam consequuntur molestiae.','1',1000,'III',NULL,NULL,NULL),(140,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 4 bedroom house','Aperiam iusto ipsam natus aut doloremque qui quis.','3',6474.547393731699,'III',NULL,NULL,NULL),(141,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 1 bedroom house','Labore molestiae enim odio est ut quae et.','2',1000,'I',NULL,NULL,NULL),(142,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 3 bedroom house','Odit quo quod nihil excepturi sit dolor aut.','1',2093463.6861447,'I',NULL,NULL,NULL),(143,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 2 bedroom house','Corrupti minus explicabo quam commodi.','1',1000,'III',NULL,NULL,NULL),(144,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 4 bedroom house','Illo nisi itaque et fuga deserunt numquam.','4',1000,'III',NULL,NULL,NULL),(145,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 4 bedroom house','Aliquam omnis facilis excepturi ducimus voluptates magni.','4',2019239.6985910002,'III',NULL,NULL,NULL),(146,'2021-04-30 10:23:49','2021-04-30 10:23:49','Cosy 1 bedroom house','Tempore assumenda ex sapiente dolore incidunt ducimus ut.','1',1000,'I',NULL,NULL,NULL),(147,'2021-04-30 10:23:49','2021-04-30 10:23:49','Cosy 2 bedroom house','Omnis molestiae dolores eos ut fuga.','2',1000,'III',NULL,NULL,NULL),(148,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 4 bedroom house','Quasi quis quis ut cumque ipsam et.','1',1000,'I',NULL,NULL,NULL),(149,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 2 bedroom house','Eligendi assumenda vel corrupti saepe.','2',324990.2661472,'I',NULL,NULL,NULL),(150,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 2 bedroom house','Id consectetur qui non et iure et voluptates.','2',1000,'I',NULL,NULL,NULL),(151,'2021-04-30 10:23:49','2021-04-30 10:23:49','Cosy 4 bedroom house','Eligendi commodi sit ut facere deleniti.','2',1000,'II',NULL,NULL,NULL),(152,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 2 bedroom house','Neque eum est laboriosam possimus tenetur ut laboriosam.','1',1000,'II',NULL,NULL,NULL),(153,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 3 bedroom house','Sapiente consequuntur voluptatem iste distinctio perspiciatis.','4',1351440.3459953999,'III',NULL,NULL,NULL),(154,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 1 bedroom house','Dolorem doloremque necessitatibus commodi sit nihil doloribus voluptas.','1',1000,'III',NULL,NULL,NULL),(155,'2021-04-30 10:23:49','2021-04-30 10:23:49','Elegant 4 bedroom house','Cupiditate inventore delectus repudiandae modi.','3',1000,'III',NULL,NULL,NULL),(156,'2021-04-30 10:23:49','2021-04-30 10:23:49','Cosy 2 bedroom house','Vero deleniti numquam rerum enim et ad.','3',1000,'I',NULL,NULL,NULL),(157,'2021-04-30 10:23:49','2021-04-30 10:23:49','Spcious 1 bedroom house','Voluptatem aliquam veritatis necessitatibus.','1',1000,'I',NULL,NULL,NULL),(158,'2021-04-30 10:23:50','2021-04-30 10:23:50','Spcious 2 bedroom house','Officia et eum corrupti numquam provident ut quia.','1',225532.39745818998,'III',NULL,NULL,NULL),(159,'2021-04-30 10:23:50','2021-04-30 10:23:50','Spcious 2 bedroom house','Eos corrupti ex voluptatem consectetur ea eaque aut.','1',1000,'III',NULL,NULL,NULL),(160,'2021-04-30 10:23:50','2021-04-30 10:23:50','Cosy 4 bedroom house','Sit similique id dicta quis facilis quos nemo.','3',526666.5387558601,'III',NULL,NULL,NULL),(161,'2021-04-30 10:23:50','2021-04-30 10:23:50','Elegant 1 bedroom house','Deleniti suscipit ut magnam ab veritatis omnis.','1',19038.173079977998,'II',NULL,NULL,NULL),(162,'2021-04-30 10:23:50','2021-04-30 10:23:50','Spcious 2 bedroom house','Esse qui deleniti repudiandae perferendis quaerat ducimus.','3',1886.4376492834,'III',NULL,NULL,NULL);
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

-- Dump completed on 2021-04-30 16:33:35
