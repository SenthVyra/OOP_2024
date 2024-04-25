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
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `SID` int NOT NULL AUTO_INCREMENT,
  `S_fname` varchar(45) NOT NULL,
  `S_lname` varchar(45) NOT NULL,
  `S_email` char(100) NOT NULL,
  `S_contactNo` int NOT NULL,
  `S_password` char(60) NOT NULL,
  `S_address` char(100) NOT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,'Rylee Griffith','Wallace Norton','xivyhyxev@mailinator.com',998898678,'123','London, UK'),(2,'Evelyn Delaney','Keely Mueller','lywobylyf@mailinator.com',998898909,'123','Itaque quis molestia'),(3,'Ivana Mccarthy','Felicia Bartlett','dyviweqos@mailinator.com',998898678,'123','Soluta accusamus ill'),(4,'Phyllis Huber','Rama Vang','furoka@mailinator.com',775841233,'123','Ab magna qui enim of'),(5,'Bo Forbes','Stacy Hale','mylyxow@mailinator.com',998898678,'123','Consequatur placeat'),(6,'Wanda Atkinson','Callie Delgado','cimud@mailinator.com',998898789,'123','Tenetur doloribus ad'),(7,'Morgan Simon','Hedley Mcconnell','paregecos@mailinator.com',775562657,'123','Adipisicing incididu'),(9,'Amaya Buchanan','Stewart Johnston','kuxilewad@mailinator.com',1223312123,'123','Est consequatur volu');
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
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
