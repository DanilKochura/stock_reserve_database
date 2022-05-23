-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `byer`
--

DROP TABLE IF EXISTS `byer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `byer` (
  `id_b` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `date_contract` datetime NOT NULL,
  `total_bought` int DEFAULT NULL,
  `bank_account` varchar(45) NOT NULL,
  `bic` varchar(45) NOT NULL,
  `bank_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_b`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `byer`
--

LOCK TABLES `byer` WRITE;
/*!40000 ALTER TABLE `byer` DISABLE KEYS */;
INSERT INTO `byer` VALUES (1,'Danil','Sochi','89882811407','2021-02-15 05:48:50',13300,'02222555561','2235453','Sberbank'),(2,'Maxim','Bryansk','84952556564','2020-03-16 12:58:50',15500,'022525252','45075340','Sberbank'),(3,'Bogdan','Balabanovo','8495325255','2021-06-15 05:48:50',6750,'15155641688','6786745','Tinkoff'),(4,'Anton','Usinsk','89265233654','2022-03-25 16:29:00',6000,'5469300766991','628741653','VTB'),(5,'Vladimir','Krasnodar','84955556664','2020-03-15 09:00:00',4850,'5555646869972','226255','Bank of America'),(6,'Dmitry','Chelyabinsk','89524956523','2020-04-01 18:36:55',NULL,'68745554','23528668','Raifaizen'),(7,'Oleg','Astrahan\'','86451234565','2020-05-12 12:55:45',NULL,'4655456','1235449','Pochtabank'),(8,'Ivan','Tolliatty','86454234565','2020-02-14 12:54:45',NULL,'466556','1289449','Pochtabank');
/*!40000 ALTER TABLE `byer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-19  2:53:39
