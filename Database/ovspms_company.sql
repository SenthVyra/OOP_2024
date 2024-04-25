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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `Com_ID` int NOT NULL AUTO_INCREMENT,
  `SID` int DEFAULT NULL,
  `Com_name` varchar(45) DEFAULT NULL,
  `Com_contactNo` int DEFAULT NULL,
  `Com_email` varchar(100) DEFAULT NULL,
  `Com_logo` varchar(100) DEFAULT 'defaultCompanyImage.jpg',
  `Com_address` varchar(100) DEFAULT NULL,
  `Com_district` varchar(50) DEFAULT NULL,
  `Com_city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Com_ID`),
  KEY `company_fk1` (`SID`),
  CONSTRAINT `company_fk1` FOREIGN KEY (`SID`) REFERENCES `seller` (`SID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,1,'RG Company',887787567,'RGCompany@mailinator.com','defaultCompanyImage.jpg','Oxford Street','London','UK'),(2,2,'EDCompany',998890989,'molukolo@mailinator.com','defaultCompanyImage.jpg','Quia officia aliquam','Sequi tempore iure ','Dolor nihil consecte'),(3,3,'IMCompany',998898789,'jojubipi@mailinator.com','defaultCompanyImage.jpg','Laboriosam suscipit','Adipisci ratione sin','Eum quia excepteur a'),(4,4,'Magee Frost',775841233,'rywiqosy@mailinator.com','defaultCompanyImage.jpg','Sed ea quam numquam ','Assumenda et nulla q','Est maiores illum e'),(5,5,'BSCompany',889989098,'fumaryd@mailinator.com','defaultCompanyImage.jpg','Non fugiat aut duci','Optio quos impedit','Irure libero quo qui'),(6,6,'BSCompany',775841233,'fumaryd@mailinator.com','defaultCompanyImage.jpg','Non fugiat aut duci','Optio quos impedit','Irure libero quo qui'),(7,7,'Forrest Oconnor',998898789,'fozoqobeh@mailinator.com','defaultCompanyImage.jpg','Doloremque vitae vel','Aliqua Qui fugiat ','Recusandae Voluptas');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
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
