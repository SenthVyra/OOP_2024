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
-- Table structure for table `contact_us_seller`
--

DROP TABLE IF EXISTS `contact_us_seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_us_seller` (
  `contact_ID` int NOT NULL AUTO_INCREMENT,
  `seller_name` varchar(45) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `seller_email` varchar(45) NOT NULL,
  `seller_phone` varchar(45) NOT NULL,
  `message` varchar(200) NOT NULL,
  PRIMARY KEY (`contact_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us_seller`
--

LOCK TABLES `contact_us_seller` WRITE;
/*!40000 ALTER TABLE `contact_us_seller` DISABLE KEYS */;
INSERT INTO `contact_us_seller` VALUES (1,'Wynne Greene','Posting an advertisement','qatyjat@mailinator.com','456456','Need to post an advertisement. But it doest not allow me to post the advertisement and it displays as an error.'),(2,'Jane Doe','Payment validation','j@gmail.com','234234','Need to get a better idea about the payment validation of the system.'),(3,'Avye Bryant','Removing an advertisement','cewede@mailinator.com','1231231','I want to remove an advertisement which was posted by me. But it does not allow me to delete it.'),(5,'Roary Lara','About the system','bobac@mailinator.com','34534534','Can I know whether a customer can post an advertisement?'),(6,'Zorita Benton','About registering','deliku@mailinator.com','8908','Is it possible to register as a customer and a seller at the same time?');
/*!40000 ALTER TABLE `contact_us_seller` ENABLE KEYS */;
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
