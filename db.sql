-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: quickhire
-- ------------------------------------------------------
-- Server version	8.0.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `pincode` int NOT NULL,
  `street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Bhubaneswar',751007,'Sahid Nagar'),(2,'Bhubaneswar',751007,'Sahid Nagar');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Projects Based On Java\n','Java Projects ','Active'),(2,'Websites using HTML, CSS, JS','Web Development','Active'),(3,'Get the most out of video editing','Video Editing','Active'),(4,'Make Immersive Thumbnails for social media platforms','SocialMedia Thumbnail','Active');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pg_transaction`
--

DROP TABLE IF EXISTS `pg_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pg_transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` decimal(38,2) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `raw_response` varchar(255) DEFAULT NULL,
  `receipt_id` varchar(255) DEFAULT NULL,
  `request_time` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKb3fqee7ei91b6u9ww8vkx0hl4` (`user_id`),
  CONSTRAINT `FKb3fqee7ei91b6u9ww8vkx0hl4` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pg_transaction`
--

LOCK TABLES `pg_transaction` WRITE;
/*!40000 ALTER TABLE `pg_transaction` DISABLE KEYS */;
INSERT INTO `pg_transaction` VALUES (1,2000.00,'order_Q7iMNjtDYQoHEo',NULL,'1742183251359-3f897c','1742183251359-3f897c','Success','Create Order',3),(2,2000.00,'order_Q7iMNjtDYQoHEo',NULL,'1742183251359-3f897c','1742183251359-3f897c','Failed','Payment',3);
/*!40000 ALTER TABLE `pg_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `added_time` varchar(255) DEFAULT NULL,
  `delivery_time` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `min_price` decimal(38,2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `tech_expert_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK34cq08yegp653556yhfv601rc` (`category_id`),
  KEY `FKswafjk878dggr7a5ha0swc7rb` (`tech_expert_id`),
  CONSTRAINT `FK34cq08yegp653556yhfv601rc` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKswafjk878dggr7a5ha0swc7rb` FOREIGN KEY (`tech_expert_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'1742182516036',3,'Build Projects Using Java','3e1fa58ae7a94079852855cdab566436.jpg','3eeac9e7dbb44d328f3a34217c99a4a9.jpg','a2233cbc35b346bd8cf53e2d0c51b260.jpg',1500.00,'Projects Using Java','Active',1,2),(2,'1742182808614',3,'Make thumbnails for youtube','1ae813ebae3949369e2d2bc3cf2942d2.jpg','302e2efbc92544bcbb66526ba9f41dfb.jpg','dc44682d15b3466e8dfd3cf57e53a60b.jpg',1000.00,'Youtube Thumbnail','Active',4,2);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_negotiation`
--

DROP TABLE IF EXISTS `service_negotiation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_negotiation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_time` varchar(255) DEFAULT NULL,
  `estimated_time` int DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `price` decimal(38,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `service_request_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1dxlx4hym0rr0kwlb3kgoo5hs` (`customer_id`),
  KEY `FKhwfdk8oqjt0nfs6pqkmboktlr` (`service_request_id`),
  KEY `FK6xttvco42vqo11rr27a0veuon` (`user_id`),
  CONSTRAINT `FK1dxlx4hym0rr0kwlb3kgoo5hs` FOREIGN KEY (`customer_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK6xttvco42vqo11rr27a0veuon` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKhwfdk8oqjt0nfs6pqkmboktlr` FOREIGN KEY (`service_request_id`) REFERENCES `service_request` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_negotiation`
--

LOCK TABLES `service_negotiation` WRITE;
/*!40000 ALTER TABLE `service_negotiation` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_negotiation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_request`
--

DROP TABLE IF EXISTS `service_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `request_time` varchar(255) DEFAULT NULL,
  `requirement_description` varchar(255) DEFAULT NULL,
  `requirement_filename` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `service_negotiation_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7mnabmtu5si974y09sd36r260` (`service_negotiation_id`),
  KEY `FKm3evjk98sevntyjdy7d19j8vc` (`customer_id`),
  KEY `FK5dj2qmv8w6ggwtn7285w92jur` (`service_id`),
  CONSTRAINT `FK5dj2qmv8w6ggwtn7285w92jur` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`),
  CONSTRAINT `FK7mnabmtu5si974y09sd36r260` FOREIGN KEY (`service_negotiation_id`) REFERENCES `service_negotiation` (`id`),
  CONSTRAINT `FKm3evjk98sevntyjdy7d19j8vc` FOREIGN KEY (`customer_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_request`
--

LOCK TABLES `service_request` WRITE;
/*!40000 ALTER TABLE `service_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_request_message`
--

DROP TABLE IF EXISTS `service_request_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_request_message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_time` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `service_request_id` int DEFAULT NULL,
  `tech_expert_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk2jgjug3gycnpp9gyr9jm7had` (`service_request_id`),
  KEY `FKm2q8e2qj9lljd8v3kqsefbpy1` (`tech_expert_id`),
  CONSTRAINT `FKk2jgjug3gycnpp9gyr9jm7had` FOREIGN KEY (`service_request_id`) REFERENCES `service_request` (`id`),
  CONSTRAINT `FKm2q8e2qj9lljd8v3kqsefbpy1` FOREIGN KEY (`tech_expert_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_request_message`
--

LOCK TABLES `service_request_message` WRITE;
/*!40000 ALTER TABLE `service_request_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_request_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `wallet_amount` decimal(38,2) DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKdhlcfg8h1drrgu0irs1ro3ohb` (`address_id`),
  CONSTRAINT `FKddefmvbrws3hvl5t0hnnsv8ox` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin@gmail.com',NULL,NULL,'$2a$10$DQ5tx9X1zLSglbhf3UjzC.J4U1FBxnBUhrWvl3qVeM2VucodBW.Oa',NULL,'Admin',NULL,'Active',NULL,NULL),(2,'expertx@gmail.com','tech-expert','1','$2a$10$V51dwzHO6PX7j1WBt0A0IeNqFXc4wzUcDAqvZdPF4rPyMjfg2wFua','9437011456','Tech Expert','ExpertX','Active',0.00,1),(3,'customer@gmail.com','customer','1','$2a$10$bxWBlnMjUP0qLtgdzghaUuBes5UQDmKhSwyn3R6YuatFNSqDp0XqC','9437705714','Customer','','Active',0.00,2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17  9:58:38
