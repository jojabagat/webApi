-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: web
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `airline`
--

DROP TABLE IF EXISTS `airline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airline` (
  `idairline` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idairline`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airline`
--

LOCK TABLES `airline` WRITE;
/*!40000 ALTER TABLE `airline` DISABLE KEYS */;
INSERT INTO `airline` VALUES (1,'Pacific');
/*!40000 ALTER TABLE `airline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airport` (
  `idairport` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  PRIMARY KEY (`idairport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES (1,'Pacific','New York','USA');
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Ducimus et voluptas sed.','Omnis et cumque quisquam. Quasi est amet ducimus minus doloribus dolorum. Saepe vel nihil a exercitationem.','2017-09-28 15:14:49','2017-09-28 15:14:49'),(2,'Error qui vel reprehenderit quae amet iure.','Magni laborum eum aperiam perspiciatis. Vitae quia tempore dolores similique qui ab qui quam. Atque est ut ea fugit impedit nihil recusandae placeat.','2017-09-28 15:14:49','2017-09-28 15:14:49'),(3,'Omnis quas nihil ad sint.','A voluptatem vero consequatur maxime sit non. Ullam odit quaerat enim sint. Veritatis voluptatibus molestias voluptatem quas velit aperiam reiciendis omnis. Id dolorem ipsa tempore enim magnam ut.','2017-09-28 15:14:49','2017-09-28 15:14:49'),(4,'Animi minus similique magni exercitationem totam magnam vel.','Quo culpa dolorum reprehenderit reiciendis tenetur id. Sapiente et non ut et fuga explicabo quo. Dolor iste sit rerum. Aut sit et provident enim dolores et.','2017-09-28 15:14:49','2017-09-28 15:14:49'),(5,'Voluptas repellendus tempora consequatur veniam.','Praesentium voluptatum omnis aspernatur ea ut aut aliquid. Qui nam ut aut illo a. Et commodi sit deserunt quam saepe. Amet magni quia autem ullam dolore.','2017-09-28 15:14:49','2017-09-28 15:14:49'),(6,'Officiis qui fuga dicta libero quia animi eum.','Sed ab officia praesentium sunt quae. Repellat non odio earum facilis nobis. Dolorem ut est id placeat non dolorum aliquid corporis. Suscipit sed minus molestiae.','2017-09-28 15:14:49','2017-09-28 15:14:49'),(7,'Provident cupiditate vel voluptas maxime ea sint ut consequatur.','Et fugit consequatur non velit hic ut commodi. Accusamus est ut pariatur nihil culpa exercitationem magni. Rerum at sit omnis dolor.','2017-09-28 15:14:49','2017-09-28 15:14:49'),(8,'Sed natus et similique ut dolorem temporibus laborum.','Quia odio rerum officia qui. Corrupti quia illum optio aut quisquam sint sint.','2017-09-28 15:14:49','2017-09-28 15:14:49'),(9,'Perferendis nobis consequatur porro nobis qui enim.','Unde voluptates ea eos. Rerum earum quidem omnis repellat aut. Omnis tenetur voluptatem voluptatem voluptatibus sed cum voluptate sed.','2017-09-28 15:14:49','2017-09-28 15:14:49'),(10,'Laboriosam qui ut autem dolorum est qui.','Tempora impedit fugit velit commodi quia sed sit consequatur. Voluptas in earum sint odio nesciunt voluptatibus voluptas.','2017-09-28 15:14:49','2017-09-28 15:14:49'),(11,'Vel voluptas natus cumque consequatur voluptate corporis qui.','Quis a praesentium provident dolor ipsa. Ducimus eveniet voluptas fuga ut repudiandae aut. In quibusdam odit minima.','2017-09-28 15:14:49','2017-09-28 15:14:49'),(12,'Quaerat harum id aut officiis omnis id ea qui.','Ipsum culpa autem culpa saepe voluptate quasi. Officiis asperiores asperiores quae officiis minima omnis. Distinctio facilis error aut ut dolores.','2017-09-28 15:14:49','2017-09-28 15:14:49'),(13,'Veniam reprehenderit sed fugiat dolores culpa aut voluptas.','Libero molestiae in praesentium et. Eum molestiae quas voluptatum quia dolores excepturi non. Eos ipsam deserunt consectetur sint voluptatem.','2017-09-28 15:14:49','2017-09-28 15:14:49'),(14,'Et saepe ipsam voluptatem voluptatibus et corporis.','Voluptate aut tempore in et. Non quis est incidunt.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(15,'Est veniam unde dicta sint rerum explicabo molestiae.','Vero nisi voluptatem ratione optio. Nisi iure recusandae a et est est eaque. Aut iusto nihil cumque perspiciatis quam.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(16,'Quo quis voluptate atque exercitationem possimus sunt optio.','Pariatur accusamus nihil nobis aspernatur sunt. Et atque consequatur ut magni.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(17,'Reprehenderit modi aliquid alias corporis odio.','Suscipit quaerat sit qui ut. Aliquam molestiae sequi similique tempora et necessitatibus. Ipsum et quo consequatur ipsa quia. Sunt inventore et illum voluptas doloribus in.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(18,'Magni temporibus laboriosam eos et.','Ut sed voluptatum quia in alias quaerat. Commodi omnis provident blanditiis laborum expedita voluptas. Earum et dolores perspiciatis commodi aliquid repellat odit. Esse molestiae commodi molestiae aut enim autem.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(19,'Id repellat aut ut ratione quas.','Animi commodi similique voluptates necessitatibus quia amet beatae aut. Adipisci consequatur facilis ducimus adipisci alias quo aut. Voluptatibus animi corporis cumque natus beatae voluptatibus adipisci.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(20,'Eius et corporis possimus qui velit doloribus accusantium.','Dicta est dignissimos consectetur autem dolores qui. Dolores cumque explicabo dicta officia rem dicta sit nulla. Sit iure natus alias qui amet dolore sed. Sequi sapiente omnis eveniet est quam.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(21,'Delectus consequatur aliquid hic.','Ut voluptas non a et nesciunt. Reiciendis qui provident animi. Id iste et qui eos tenetur sint. Velit sint ut quis maxime excepturi voluptate iure.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(22,'Qui accusantium ullam impedit.','At voluptate similique quasi. Ea saepe id reprehenderit soluta aut voluptatibus quam. Rerum vero eligendi natus quia eum. Ab illo soluta vitae porro. Amet voluptas aut eligendi occaecati.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(23,'Dolores praesentium quam modi doloribus.','Eveniet quo dolore quis atque dignissimos. Iste quas eaque hic voluptas. Optio officia eaque quidem.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(24,'Ducimus aut aut quas.','Ratione error labore cumque maiores adipisci inventore porro. Tempora voluptas veniam minima vitae.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(25,'Qui eaque esse assumenda praesentium.','Enim facere repellendus est temporibus. Commodi delectus inventore possimus tempora. Autem corrupti optio est voluptatem dicta est laborum. Magni illo non omnis ea et qui.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(26,'Distinctio nisi sit ipsam iusto.','Architecto laboriosam eum voluptatem voluptatem et ipsum error. Numquam nam nobis quam et et saepe. Consequatur maxime nobis minima veritatis nulla et omnis.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(27,'Sequi corporis nam molestiae qui.','Sunt voluptatem enim commodi amet assumenda vero cum. Pariatur totam minima corporis voluptatem consequatur. Et aut ipsam repellendus enim fugiat nihil. Maxime unde dolorum culpa aliquid non.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(28,'Qui aut ut porro unde modi.','Aut minima et enim exercitationem itaque asperiores dolorum qui. Voluptatibus accusantium aut repellendus. Labore quidem inventore iusto fugiat et voluptas.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(29,'Laudantium in ex voluptates quia iste.','Neque id ad illo non minus. Quia nulla molestiae harum omnis quam et. Sit ab dignissimos ut magnam temporibus. At suscipit omnis est ad. Nemo iusto repellendus aliquam dolorem.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(30,'Quia ut est nemo.','Aut nesciunt maxime nulla quia placeat ipsum. Porro amet sint sed delectus est doloremque voluptas. Et aspernatur assumenda dolores odio omnis nisi explicabo.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(31,'Aut quae nostrum repellat porro a error.','Porro officia sint ut fugit. Et est voluptatem architecto ut quod. Unde eum est necessitatibus accusamus qui aperiam. Tempora provident quo accusamus.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(32,'Perferendis minima voluptatem sit earum.','Quo aut inventore qui. Vitae qui cum architecto eaque. Dolores hic cumque maxime et est error.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(33,'Minus optio praesentium dolorum laboriosam rerum dolores.','Quis unde velit molestias ut doloremque architecto fugiat. Et tempora ut quis laboriosam est. Nulla nesciunt vel inventore quibusdam ut est cupiditate.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(34,'Expedita explicabo iusto dolor explicabo quia est odio et.','Amet enim nam voluptas ut molestias praesentium. Totam sed harum consequatur eos natus. Qui autem vitae assumenda eum impedit.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(35,'Totam commodi unde vero modi eum ut.','Quia tempora cupiditate commodi. Vel ratione perferendis dolorem unde aspernatur doloribus. Animi labore ipsum perferendis.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(36,'Quia dolorum dolores aut est vel.','Aut praesentium numquam beatae quia quibusdam. Voluptatibus optio earum eveniet accusantium dolores. Dolorem labore dolor incidunt tenetur eos. Quia quisquam dolorem hic vero magnam et accusamus fugit.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(37,'Ea dolor sequi dolorem.','Temporibus perferendis hic velit assumenda ut. Est et quidem temporibus blanditiis voluptatum occaecati nesciunt. Error non rerum voluptates cumque. Cum quam minus et voluptatem vel perferendis.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(38,'Molestiae id consequatur iste delectus beatae aliquid.','Ratione dignissimos sequi perspiciatis placeat. Doloremque quibusdam ut quo. Velit voluptates incidunt et eius dicta. Et rerum facere modi cupiditate explicabo sapiente est.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(39,'Dolorum voluptas earum sit magnam.','Numquam est aut tempora illum illo id et. Quam rerum nostrum tempora voluptatibus delectus non minima adipisci. Aut fuga et reprehenderit eius alias repudiandae reprehenderit quaerat.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(40,'Fugiat corporis aut sed et quia aut beatae.','Suscipit nihil ab minus non quis provident expedita. Illum est placeat ipsa. Omnis cum itaque sit ut culpa dicta. Rem sed possimus qui sint velit.','2017-09-28 15:14:50','2017-09-28 15:14:50'),(41,'Fugit quia fugiat quis voluptatem et.','Impedit vel fuga consequatur fuga neque ut. Ab similique nemo aut non voluptatibus voluptas. Sunt dolorum similique omnis assumenda.','2017-09-28 15:14:51','2017-09-28 15:14:51'),(42,'Fuga occaecati corporis optio nesciunt sed ipsum vero.','Dolorum quia voluptatem odit fugit deserunt illum. Soluta rerum est doloribus saepe quis. Ipsa eligendi possimus nihil voluptate soluta minus dolores atque.','2017-09-28 15:14:51','2017-09-28 15:14:51'),(43,'Provident incidunt eum aperiam ut.','Vel corporis quia voluptas eaque tenetur praesentium dignissimos quod. Nisi molestiae maiores velit aut voluptatem. Dignissimos in quia expedita nam molestias unde ut. Qui earum asperiores ullam quisquam illo.','2017-09-28 15:14:51','2017-09-28 15:14:51'),(44,'Earum quos rerum tenetur.','Inventore magnam animi animi aut. Inventore saepe eos aut sed repellat officia omnis. Magnam quae dolorem architecto ad dolor.','2017-09-28 15:14:51','2017-09-28 15:14:51'),(45,'Et fuga et quos sit vitae est.','Exercitationem placeat earum facilis inventore labore doloremque tempore occaecati. Repudiandae officia optio autem mollitia. Et commodi nemo possimus quia quasi.','2017-09-28 15:14:51','2017-09-28 15:14:51'),(46,'Quia exercitationem totam quibusdam mollitia omnis.','Ea eos dolore consectetur expedita. Ratione facilis sunt est quae voluptatem aut minus.','2017-09-28 15:14:51','2017-09-28 15:14:51'),(47,'Et velit error sit.','Quos aliquid labore qui provident enim illum. Vel mollitia voluptatibus molestiae sunt in velit adipisci. Voluptatibus in qui doloribus.','2017-09-28 15:14:51','2017-09-28 15:14:51'),(48,'Voluptate totam labore voluptas illum qui commodi.','Deleniti et dolor assumenda iste et facilis et. Rerum dolorem aut aut aliquid aut minus.','2017-09-28 15:14:51','2017-09-28 15:14:51'),(49,'Animi aut repudiandae ea accusamus excepturi.','Aperiam harum molestiae tempora dolor reprehenderit. Nisi delectus voluptatem error vitae ut. Quia ullam et sequi et omnis sint ut accusantium.','2017-09-28 15:14:51','2017-09-28 15:14:51'),(50,'Dicta quod accusamus sunt et itaque ut.','Sed porro ut numquam. Eos sunt voluptatem similique. Nisi aliquam facere dolorem sit consequuntur.','2017-09-28 15:14:51','2017-09-28 15:14:51');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight` (
  `idflight` int(11) NOT NULL,
  `arrivalTime` datetime DEFAULT NULL,
  `departureTime` datetime DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `flightinfo_idflightinfo` int(11) NOT NULL,
  `airport_idairport` int(11) NOT NULL,
  PRIMARY KEY (`idflight`),
  KEY `fk_flight_flightinfo1_idx` (`flightinfo_idflightinfo`),
  KEY `fk_flight_airport1_idx` (`airport_idairport`),
  CONSTRAINT `fk_flight_airport1` FOREIGN KEY (`airport_idairport`) REFERENCES `airport` (`idairport`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_flight_flightinfo1` FOREIGN KEY (`flightinfo_idflightinfo`) REFERENCES `flightinfo` (`idflightinfo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flightinfo`
--

DROP TABLE IF EXISTS `flightinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flightinfo` (
  `idflightinfo` int(11) NOT NULL,
  `seats` varchar(45) NOT NULL,
  `stops` varchar(45) NOT NULL,
  `daysofweek` varchar(45) NOT NULL,
  `fare` varchar(45) NOT NULL,
  `airline_idairline` int(11) NOT NULL,
  PRIMARY KEY (`idflightinfo`),
  KEY `fk_flightinfo_airline_idx` (`airline_idairline`),
  CONSTRAINT `fk_flightinfo_airline` FOREIGN KEY (`airline_idairline`) REFERENCES `airline` (`idairline`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flightinfo`
--

LOCK TABLES `flightinfo` WRITE;
/*!40000 ALTER TABLE `flightinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `flightinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flightstatus`
--

DROP TABLE IF EXISTS `flightstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flightstatus` (
  `idflightStatus` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(45) DEFAULT NULL,
  `to` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`idflightStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flightstatus`
--

LOCK TABLES `flightstatus` WRITE;
/*!40000 ALTER TABLE `flightstatus` DISABLE KEYS */;
INSERT INTO `flightstatus` VALUES (1,'New York','Philippines','2004-04-17'),(2,'New York','Cebu','2004-04-17'),(3,'New York','Talisay','2004-04-17');
/*!40000 ALTER TABLE `flightstatus` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (7,'2014_10_12_000000_create_users_table',1),(8,'2014_10_12_100000_create_password_resets_table',1),(9,'2017_09_28_075204_create_articles_table',1),(10,'2017_09_28_085704_adds_api_token_to_users_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (21,'Chad','chad@gmail.com','$2y$10$HcKDRpzvqLdj9xfnPzGveehMRJsR0hm0WkBlPGGpjc2yCNYGcBM9S','oKJkJ9cgPxykJ5s81G8tSRoyOhjKJl3M1A7JYVfQtZGyPcChbsJU5rc6qnHw','2017-10-03 17:03:03','2017-10-03 17:03:03','Nvmb2ruZ5vASdv2tgHusP21T3G3R54EU9gFLqlAH3iA9UVGrpIBChBgARafT'),(22,'Josephine','josephine@gmail.com','$2y$10$qE0L59SUeKvt3EVfw8Rm1OL0uomCzF6n47HjhH9YAhYyReKoyJeFm',NULL,'2017-10-03 17:03:40','2017-10-03 17:03:40','Cko8gXUgNN4WTgeU4PqEKjtmScVW2S9l9j3wS2qXKUnlYjdITwZeKQWLuvHP'),(23,'Chadchad','chadchad@gmail.com','$2y$10$71KpcDjJX7JTbp/2Fr84u.ec9mA0SszsHtwKzOVjqu9QHTehXcNxO','NUpb0zqg7zvnhvnTJsZc0mL47huK5ee6tNdZWmNqbI1Z3C14OTFTcUyNrKz6','2017-10-05 04:13:21','2017-10-05 04:13:21','ocEAyDcG73jnN2HCQv7aTVg1vwcRWh7nov0vh5wShAsghrrk2eaC7EKPxVtk');
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

-- Dump completed on 2017-10-13  5:18:09
