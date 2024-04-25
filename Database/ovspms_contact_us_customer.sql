-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: ovspms
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `contact_us_customer`
--

DROP TABLE IF EXISTS `contact_us_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_us_customer` (
  `contact_ID` int NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(45) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `cus_email` varchar(45) NOT NULL,
  `cus_phone` varchar(45) NOT NULL,
  `message` varchar(400) NOT NULL,
  PRIMARY KEY (`contact_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us_customer`
--

LOCK TABLES `contact_us_customer` WRITE;
/*!40000 ALTER TABLE `contact_us_customer` DISABLE KEYS */;
INSERT INTO `contact_us_customer` VALUES (10,'Mark Anderson','Registration','Amark@gmail.com','076542332','Can I register as a customer and a seller at the same time?'),(11,'Aaquib Khan','Delivery','khanA@gmail.com','011234567','Can I know the delivery charges to Kandy?'),(12,'Shermila Dias','Contact seller','shermila12@gmail.com','081563427','Can I contact a seller to get some information?'),(13,'Kavini Withanage','Placing an order','kavini@gmail.com','0765842443','Need to place an order. But it does not allow me to confirm the order.'),(14,'Tom Holland','Payment validation','tom12@gmail.com','011235678','Can I know more details about the payment methods?'),(15,'John Doe','jld@gmail.com','jld@gmail.com','01334489','Testing'),(17,'John Doe','hupofucol@mailinator.com','hupofucol@mailinator.com','0133333','hello');
/*!40000 ALTER TABLE `contact_us_customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-11 12:53:23
