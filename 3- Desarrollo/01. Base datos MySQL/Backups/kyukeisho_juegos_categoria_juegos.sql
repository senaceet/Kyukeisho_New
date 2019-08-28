-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: kyukeisho
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `juegos_categoria_juegos`
--

DROP TABLE IF EXISTS `juegos_categoria_juegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `juegos_categoria_juegos` (
  `codigo_juego` varchar(5) NOT NULL,
  `id_categoria_juegos` int(10) NOT NULL,
  PRIMARY KEY (`codigo_juego`,`id_categoria_juegos`),
  KEY `fk_juegos_categoria_juegos_codigo_juego_idx` (`codigo_juego`),
  KEY `fk_juegos_categoria_juegos_id_categoria_juegos_idx` (`id_categoria_juegos`),
  CONSTRAINT `fk_juegos_categoria_juegos_codigo_juego` FOREIGN KEY (`codigo_juego`) REFERENCES `juegos` (`codigo_juego`) ON UPDATE CASCADE,
  CONSTRAINT `fk_juegos_categoria_juegos_id_categoria_juegos` FOREIGN KEY (`id_categoria_juegos`) REFERENCES `categoria_juegos` (`id_categoria_juegos`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juegos_categoria_juegos`
--

LOCK TABLES `juegos_categoria_juegos` WRITE;
/*!40000 ALTER TABLE `juegos_categoria_juegos` DISABLE KEYS */;
/*!40000 ALTER TABLE `juegos_categoria_juegos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-28 11:19:38
