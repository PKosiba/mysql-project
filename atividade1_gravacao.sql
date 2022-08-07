CREATE DATABASE  IF NOT EXISTS `atividade1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `atividade1`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: atividade1
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `gravacao`
--

DROP TABLE IF EXISTS `gravacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gravacao` (
  `cod_gravacao` int NOT NULL AUTO_INCREMENT,
  `cod_gravadora` int DEFAULT NULL,
  `cod_cantor` int DEFAULT NULL,
  `cod_musica` int DEFAULT NULL,
  `data_gravacao` date DEFAULT NULL,
  PRIMARY KEY (`cod_gravacao`),
  KEY `cod_gravadora` (`cod_gravadora`),
  KEY `cod_cantor` (`cod_cantor`),
  KEY `cod_musica` (`cod_musica`),
  CONSTRAINT `gravacao_ibfk_1` FOREIGN KEY (`cod_gravadora`) REFERENCES `gravadora` (`cod_gravadora`),
  CONSTRAINT `gravacao_ibfk_2` FOREIGN KEY (`cod_cantor`) REFERENCES `cantor` (`cod_cantor`),
  CONSTRAINT `gravacao_ibfk_3` FOREIGN KEY (`cod_musica`) REFERENCES `musica` (`cod_musica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gravacao`
--

LOCK TABLES `gravacao` WRITE;
/*!40000 ALTER TABLE `gravacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `gravacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-07 13:26:57
