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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `Item_ID` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  `price` double NOT NULL,
  `posted_date` date NOT NULL,
  `availability` char(60) NOT NULL DEFAULT 'available',
  `main_image` varchar(300) NOT NULL,
  `image_1` varchar(300) NOT NULL,
  `image_2` varchar(300) NOT NULL,
  `image_3` varchar(300) NOT NULL,
  `SID` int NOT NULL,
  PRIMARY KEY (`Item_ID`),
  KEY `fk_fk3` (`SID`),
  CONSTRAINT `fk_fk3` FOREIGN KEY (`SID`) REFERENCES `seller` (`SID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Battery','Active','Amet ex omnis vel n Amet ex omnis vel n\r\nAmet ex omnis vel n','Dolor dolore veniam','MO098',488,968,'2022-11-10','available','Battery.png','battery1.jpg','battery2.png','battery3.png',1),(2,'Est ad vel consequat','Inactive','Cupiditate sapiente ','Rem incididunt quide','Quis quae irure vero',821,656,'2022-11-10','available','Tyre2.jpg','Tyre3.png','Tyres1.png','Tyre2.jpg',1),(3,'Steering Wheel','Active','In voluptatem natus ','Pariatur Sit eum v','Esse provident max',198,467,'2022-11-10','available','steering.jpg','steering1.jpeg','steering1.jpeg','steering.jpg',2),(4,'Car body','Active','Aute enim vero volup','Enim assumenda labor','Esse hic sint dicta',902,538,'2022-11-10','available','body.png','body1.jpg','body.png','body1.jpg',2),(5,'Engine','Active','Et eius sunt in ad ','Soluta impedit fugi','Quis praesentium seq',138,362,'2022-11-10','available','engine.jpg','engS.png','engS.png','engine.jpg',3),(6,'Tools','Active','Voluptatem minus qu','Iste minus omnis eiu','Magni molestiae susc',354,260,'2022-11-10','available','shockAbsorber.png','toolSet.png','sensor.png','brake1.jpg',3),(7,'Brakes','Inactive','Qui fugiat et sed ei','Nemo tempor molestia','Sed labore quia itaq',161,860,'2022-11-10','available','brake1.jpg','brake2.jpg','brake2.jpg','brake1.jpg',4),(8,'Nulla laborum cupida','Inactive','Quia rem quo praesen','Et facere sapiente e','Voluptate quia qui m',106,785,'2022-11-10','available','headlights.png','headlights.png','headlights.png','headlights.png',4),(9,'Spare Parts','Inactive','Ut itaque ut dolor u','Eu delectus quis of','Nisi dolorem aut eli',109,134,'2022-11-10','available','seatCover.png','sensor.png','beltKit.png','steering.jpg',5),(10,'Tools and Sensors','Inactive','Minim non distinctio','Illo maxime consequa','Occaecat doloremque ',474,762,'2022-11-10','available','oil.png','sensor1.jpg','beltKit.png','shockAbsorber.png',5);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
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
