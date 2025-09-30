-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: datamart_jardineria
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `dim_cliente`
--

DROP TABLE IF EXISTS `dim_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_cliente` (
  `id_cliente` int NOT NULL,
  `nombre_cliente` varchar(50) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `pais` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_cliente`
--

LOCK TABLES `dim_cliente` WRITE;
/*!40000 ALTER TABLE `dim_cliente` DISABLE KEYS */;
INSERT INTO `dim_cliente` VALUES (101,'JARDINERÍA VERDE','Madrid','España'),(102,'FLORES DEL SOL','Barcelona','España'),(103,'PLANTAS Y MÁS','Valencia','España'),(104,'JARDÍN URBANO','Sevilla','España'),(105,'GREEN WORLD','Bilbao','España'),(106,'ECOGARDEN','Zaragoza','España'),(107,'PAISAJISMO TOTAL','Lisboa','Portugal'),(108,'NATUREZA VIVA','Oporto','Portugal'),(109,'PARÍS VERDE','París','Francia'),(110,'JARDINAGE LYON','Lyon','Francia'),(111,'PLANTES MARSEILLE','Marsella','Francia'),(112,'ROMA GARDEN','Roma','Italia'),(113,'MILANO VERDE','Milán','Italia'),(114,'NAPOLI NATURA','Nápoles','Italia'),(115,'TORINO VERDE','Turín','Italia'),(116,'BRUSSELS GARDEN','Bruselas','Bélgica'),(117,'AMSTERDAM PLANTS','Ámsterdam','Países Bajos'),(118,'ROTTERDAM GREEN','Róterdam','Países Bajos'),(119,'BERLIN GARTEN','Berlín','Alemania'),(120,'MUNICH PFLANZEN','Múnich','Alemania'),(121,'FRANKFURT GARDEN','Fráncfort','Alemania'),(122,'HAMBURG GRÜN','Hamburgo','Alemania'),(123,'VIENNA GREEN','Viena','Austria'),(124,'ZURICH PFLANZEN','Zúrich','Suiza'),(125,'GENEVA NATURE','Ginebra','Suiza'),(126,'LONDON GARDEN','Londres','Reino Unido'),(127,'MANCHESTER PLANTS','Mánchester','Reino Unido'),(128,'DUBLIN GREEN','Dublín','Irlanda'),(129,'EDINBURGH NATURE','Edimburgo','Reino Unido'),(130,'CORK GARDEN','Cork','Irlanda');
/*!40000 ALTER TABLE `dim_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_empleado`
--

DROP TABLE IF EXISTS `dim_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_empleado` (
  `id_empleado` int NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido1` varchar(30) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_empleado`
--

LOCK TABLES `dim_empleado` WRITE;
/*!40000 ALTER TABLE `dim_empleado` DISABLE KEYS */;
INSERT INTO `dim_empleado` VALUES (1,'Carlos','García','Director General'),(2,'Laura','Martínez','Subdirectora'),(3,'Javier','Fernández','Gerente Ventas'),(4,'Marta','Sánchez','Gerente Ventas'),(5,'Andrés','Hernández','Gerente Ventas'),(6,'Elena','Pérez','Gerente Ventas'),(7,'Luis','Romero','Representante Ventas'),(8,'Paula','Gómez','Representante Ventas'),(9,'Diego','Navarro','Representante Ventas'),(10,'Carmen','Morales','Representante Ventas'),(11,'Sergio','Domínguez','Representante Ventas'),(12,'Natalia','Ramos','Representante Ventas'),(13,'Hugo','Ortiz','Representante Ventas'),(14,'Isabel','Cruz','Representante Ventas'),(15,'Pedro','Molina','Representante Ventas'),(16,'Lucía','Castillo','Representante Ventas'),(17,'Manuel','Marín','Representante Ventas'),(18,'Rosa','Iglesias','Representante Ventas'),(19,'Álvaro','Cabrera','Representante Ventas'),(20,'Patricia','Santos','Representante Ventas'),(21,'Mario','Reyes','Representante Ventas'),(22,'Sara','Herrera','Representante Ventas'),(23,'Raúl','Giménez','Representante Ventas'),(24,'Julia','Cortés','Representante Ventas'),(25,'Adrián','Lorenzo','Representante Ventas'),(26,'Eva','Carmona','Representante Ventas'),(27,'Tomás','Soto','Representante Ventas'),(28,'Marina','Durán','Representante Ventas'),(29,'Ignacio','Benítez','Representante Ventas'),(30,'Beatriz','Vidal','Representante Ventas');
/*!40000 ALTER TABLE `dim_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_producto`
--

DROP TABLE IF EXISTS `dim_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_producto` (
  `id_producto` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `gama` varchar(50) DEFAULT NULL,
  `precio_venta` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_producto`
--

LOCK TABLES `dim_producto` WRITE;
/*!40000 ALTER TABLE `dim_producto` DISABLE KEYS */;
INSERT INTO `dim_producto` VALUES (1001,'Rosa Roja','Flores',2.50),(1002,'Tulipán Amarillo','Flores',3.00),(1003,'Orquídea Blanca','Orquídeas',15.00),(1004,'Clavel Rojo','Flores',1.50),(1005,'Girasol','Flores',2.80),(1006,'Cactus Mini','Suculentas',4.00),(1007,'Suculenta Aloe Vera','Suculentas',6.50),(1008,'Bonsái Ficus','Bonsáis',25.00),(1009,'Lirio Blanco','Flores',3.50),(1010,'Helecho Boston','Plantas Verdes',12.00),(1011,'Palmera Areca','Plantas Verdes',45.00),(1012,'Olivo en Maceta','Árboles',30.00),(1013,'Lavanda','Aromáticas',7.00),(1014,'Romero','Aromáticas',5.00),(1015,'Menta','Aromáticas',4.50),(1016,'Hortensia Azul','Flores',18.00),(1017,'Peonía Rosa','Flores',6.00),(1018,'Geranio Rojo','Flores',8.50),(1019,'Camelia','Flores',14.00),(1020,'Azalea Blanca','Flores',12.50),(1021,'Begonia','Flores',9.00),(1022,'Jazmín','Aromáticas',20.00),(1023,'Gardenia','Flores',22.00),(1024,'Crisantemo Amarillo','Flores',3.20),(1025,'Clivia Naranja','Flores',16.00),(1026,'Hiedra','Plantas Verdes',10.00),(1027,'Bambú de la Suerte','Plantas Verdes',12.00),(1028,'Aloe Mini','Suculentas',5.50),(1029,'Sansevieria','Plantas Verdes',25.00),(1030,'Ficus Lyrata','Plantas Verdes',50.00);
/*!40000 ALTER TABLE `dim_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_tiempo`
--

DROP TABLE IF EXISTS `dim_tiempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_tiempo` (
  `id_tiempo` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `anio` int DEFAULT NULL,
  `trimestre` int DEFAULT NULL,
  `mes` int DEFAULT NULL,
  `dia` int DEFAULT NULL,
  PRIMARY KEY (`id_tiempo`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_tiempo`
--

LOCK TABLES `dim_tiempo` WRITE;
/*!40000 ALTER TABLE `dim_tiempo` DISABLE KEYS */;
INSERT INTO `dim_tiempo` VALUES (1,'2025-09-01',2025,3,9,1),(2,'2025-09-02',2025,3,9,2),(3,'2025-09-03',2025,3,9,3),(4,'2025-09-04',2025,3,9,4),(5,'2025-09-05',2025,3,9,5),(6,'2025-09-06',2025,3,9,6),(7,'2025-09-07',2025,3,9,7),(8,'2025-09-08',2025,3,9,8),(9,'2025-09-09',2025,3,9,9),(10,'2025-09-10',2025,3,9,10),(11,'2025-09-11',2025,3,9,11),(12,'2025-09-12',2025,3,9,12),(13,'2025-09-13',2025,3,9,13),(14,'2025-09-14',2025,3,9,14),(15,'2025-09-15',2025,3,9,15),(16,'2025-09-16',2025,3,9,16),(17,'2025-09-17',2025,3,9,17),(18,'2025-09-18',2025,3,9,18),(19,'2025-09-19',2025,3,9,19),(20,'2025-09-20',2025,3,9,20),(21,'2025-09-21',2025,3,9,21),(22,'2025-09-22',2025,3,9,22),(23,'2025-09-23',2025,3,9,23),(24,'2025-09-24',2025,3,9,24),(25,'2025-09-25',2025,3,9,25),(26,'2025-09-26',2025,3,9,26),(27,'2025-09-27',2025,3,9,27),(28,'2025-09-28',2025,3,9,28),(29,'2025-09-29',2025,3,9,29),(30,'2025-09-30',2025,3,9,30),(32,'2025-09-01',2025,3,9,1),(33,'2025-09-02',2025,3,9,2),(34,'2025-09-03',2025,3,9,3),(35,'2025-09-04',2025,3,9,4),(36,'2025-09-05',2025,3,9,5),(37,'2025-09-06',2025,3,9,6),(38,'2025-09-07',2025,3,9,7),(39,'2025-09-08',2025,3,9,8),(40,'2025-09-09',2025,3,9,9),(41,'2025-09-10',2025,3,9,10),(42,'2025-09-11',2025,3,9,11),(43,'2025-09-12',2025,3,9,12),(44,'2025-09-13',2025,3,9,13),(45,'2025-09-14',2025,3,9,14),(46,'2025-09-15',2025,3,9,15),(47,'2025-09-16',2025,3,9,16),(48,'2025-09-17',2025,3,9,17),(49,'2025-09-18',2025,3,9,18),(50,'2025-09-19',2025,3,9,19),(51,'2025-09-20',2025,3,9,20),(52,'2025-09-21',2025,3,9,21),(53,'2025-09-22',2025,3,9,22),(54,'2025-09-23',2025,3,9,23),(55,'2025-09-24',2025,3,9,24),(56,'2025-09-25',2025,3,9,25),(57,'2025-09-26',2025,3,9,26),(58,'2025-09-27',2025,3,9,27),(59,'2025-09-28',2025,3,9,28),(60,'2025-09-29',2025,3,9,29),(61,'2025-09-30',2025,3,9,30);
/*!40000 ALTER TABLE `dim_tiempo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_ventas`
--

DROP TABLE IF EXISTS `fact_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_ventas` (
  `id_fact` int NOT NULL AUTO_INCREMENT,
  `id_tiempo` int DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_empleado` int DEFAULT NULL,
  `id_producto` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `total_venta` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_fact`),
  KEY `id_tiempo` (`id_tiempo`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `fact_ventas_ibfk_1` FOREIGN KEY (`id_tiempo`) REFERENCES `dim_tiempo` (`id_tiempo`),
  CONSTRAINT `fact_ventas_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `dim_cliente` (`id_cliente`),
  CONSTRAINT `fact_ventas_ibfk_3` FOREIGN KEY (`id_empleado`) REFERENCES `dim_empleado` (`id_empleado`),
  CONSTRAINT `fact_ventas_ibfk_4` FOREIGN KEY (`id_producto`) REFERENCES `dim_producto` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_ventas`
--

LOCK TABLES `fact_ventas` WRITE;
/*!40000 ALTER TABLE `fact_ventas` DISABLE KEYS */;
INSERT INTO `fact_ventas` VALUES (1,1,101,7,1001,10,25.00),(2,2,102,8,1002,15,45.00),(3,3,103,9,1003,5,75.00),(4,4,104,10,1004,20,30.00),(5,5,105,11,1005,12,33.60),(6,6,106,12,1006,8,32.00),(7,7,107,13,1007,7,45.50),(8,8,108,14,1008,3,75.00),(9,9,109,15,1009,6,21.00),(10,10,110,16,1010,4,48.00),(11,11,111,17,1011,2,90.00),(12,12,112,18,1012,3,90.00),(13,13,113,19,1013,5,35.00),(14,14,114,20,1014,6,30.00),(15,15,115,21,1015,8,36.00),(16,16,116,22,1016,3,54.00),(17,17,117,23,1017,4,24.00),(18,18,118,24,1018,5,42.50),(19,19,119,25,1019,3,42.00),(20,20,120,26,1020,4,50.00),(21,21,121,27,1021,6,54.00),(22,22,122,28,1022,2,40.00),(23,23,123,29,1023,1,22.00),(24,24,124,30,1024,7,22.40),(25,25,125,7,1025,2,32.00),(26,26,126,8,1026,3,30.00),(27,27,127,9,1027,4,48.00),(28,28,128,10,1028,5,27.50),(29,29,129,11,1029,3,75.00),(30,30,130,12,1030,2,100.00),(31,32,101,7,1001,10,25.00),(32,33,102,8,1002,15,45.00),(33,34,103,9,1003,5,75.00),(34,35,104,10,1004,20,30.00),(35,36,105,11,1005,12,33.60),(36,37,106,12,1006,8,32.00),(37,38,107,13,1007,7,45.50),(38,39,108,14,1008,3,75.00),(39,40,109,15,1009,6,21.00),(40,41,110,16,1010,4,48.00),(41,42,111,17,1011,2,90.00),(42,43,112,18,1012,3,90.00),(43,44,113,19,1013,5,35.00),(44,45,114,20,1014,6,30.00),(45,46,115,21,1015,8,36.00),(46,47,116,22,1016,3,54.00),(47,48,117,23,1017,4,24.00),(48,49,118,24,1018,5,42.50),(49,50,119,25,1019,3,42.00),(50,51,120,26,1020,4,50.00),(51,52,121,27,1021,6,54.00),(52,53,122,28,1022,2,40.00),(53,54,123,29,1023,1,22.00),(54,55,124,30,1024,7,22.40),(55,56,125,7,1025,2,32.00),(56,57,126,8,1026,3,30.00),(57,58,127,9,1027,4,48.00),(58,59,128,10,1028,5,27.50),(59,60,129,11,1029,3,75.00),(60,61,130,12,1030,2,100.00),(64,1,101,7,1001,10,25.00),(65,2,102,8,1002,15,45.00),(66,3,103,9,1003,5,75.00),(67,4,104,10,1004,20,30.00),(68,5,105,11,1005,12,33.60),(69,6,106,12,1006,8,32.00),(70,7,107,13,1007,7,45.50),(71,8,108,14,1008,3,75.00),(72,9,109,15,1009,6,21.00),(73,10,110,16,1010,4,48.00),(74,11,111,17,1011,2,90.00),(75,12,112,18,1012,3,90.00),(76,13,113,19,1013,5,35.00),(77,14,114,20,1014,6,30.00),(78,15,115,21,1015,8,36.00),(79,16,116,22,1016,3,54.00),(80,17,117,23,1017,4,24.00),(81,18,118,24,1018,5,42.50),(82,19,119,25,1019,3,42.00),(83,20,120,26,1020,4,50.00),(84,21,121,27,1021,6,54.00),(85,22,122,28,1022,2,40.00),(86,23,123,29,1023,1,22.00),(87,24,124,30,1024,7,22.40),(88,25,125,7,1025,2,32.00),(89,26,126,8,1026,3,30.00),(90,27,127,9,1027,4,48.00),(91,28,128,10,1028,5,27.50),(92,29,129,11,1029,3,75.00),(93,30,130,12,1030,2,100.00),(94,32,101,7,1001,10,25.00),(95,33,102,8,1002,15,45.00),(96,34,103,9,1003,5,75.00),(97,35,104,10,1004,20,30.00),(98,36,105,11,1005,12,33.60),(99,37,106,12,1006,8,32.00),(100,38,107,13,1007,7,45.50),(101,39,108,14,1008,3,75.00),(102,40,109,15,1009,6,21.00),(103,41,110,16,1010,4,48.00),(104,42,111,17,1011,2,90.00),(105,43,112,18,1012,3,90.00),(106,44,113,19,1013,5,35.00),(107,45,114,20,1014,6,30.00),(108,46,115,21,1015,8,36.00),(109,47,116,22,1016,3,54.00),(110,48,117,23,1017,4,24.00),(111,49,118,24,1018,5,42.50),(112,50,119,25,1019,3,42.00),(113,51,120,26,1020,4,50.00),(114,52,121,27,1021,6,54.00),(115,53,122,28,1022,2,40.00),(116,54,123,29,1023,1,22.00),(117,55,124,30,1024,7,22.40),(118,56,125,7,1025,2,32.00),(119,57,126,8,1026,3,30.00),(120,58,127,9,1027,4,48.00),(121,59,128,10,1028,5,27.50),(122,60,129,11,1029,3,75.00),(123,61,130,12,1030,2,100.00),(127,1,101,7,1001,10,25.00),(128,2,102,8,1002,15,45.00),(129,3,103,9,1003,5,75.00),(130,4,104,10,1004,20,30.00),(131,5,105,11,1005,12,33.60),(132,6,106,12,1006,8,32.00),(133,7,107,13,1007,7,45.50),(134,8,108,14,1008,3,75.00),(135,9,109,15,1009,6,21.00),(136,10,110,16,1010,4,48.00),(137,11,111,17,1011,2,90.00),(138,12,112,18,1012,3,90.00),(139,13,113,19,1013,5,35.00),(140,14,114,20,1014,6,30.00),(141,15,115,21,1015,8,36.00),(142,16,116,22,1016,3,54.00),(143,17,117,23,1017,4,24.00),(144,18,118,24,1018,5,42.50),(145,19,119,25,1019,3,42.00),(146,20,120,26,1020,4,50.00),(147,21,121,27,1021,6,54.00),(148,22,122,28,1022,2,40.00),(149,23,123,29,1023,1,22.00),(150,24,124,30,1024,7,22.40),(151,25,125,7,1025,2,32.00),(152,26,126,8,1026,3,30.00),(153,27,127,9,1027,4,48.00),(154,28,128,10,1028,5,27.50),(155,29,129,11,1029,3,75.00),(156,30,130,12,1030,2,100.00),(157,32,101,7,1001,10,25.00),(158,33,102,8,1002,15,45.00),(159,34,103,9,1003,5,75.00),(160,35,104,10,1004,20,30.00),(161,36,105,11,1005,12,33.60),(162,37,106,12,1006,8,32.00),(163,38,107,13,1007,7,45.50),(164,39,108,14,1008,3,75.00),(165,40,109,15,1009,6,21.00),(166,41,110,16,1010,4,48.00),(167,42,111,17,1011,2,90.00),(168,43,112,18,1012,3,90.00),(169,44,113,19,1013,5,35.00),(170,45,114,20,1014,6,30.00),(171,46,115,21,1015,8,36.00),(172,47,116,22,1016,3,54.00),(173,48,117,23,1017,4,24.00),(174,49,118,24,1018,5,42.50),(175,50,119,25,1019,3,42.00),(176,51,120,26,1020,4,50.00),(177,52,121,27,1021,6,54.00),(178,53,122,28,1022,2,40.00),(179,54,123,29,1023,1,22.00),(180,55,124,30,1024,7,22.40),(181,56,125,7,1025,2,32.00),(182,57,126,8,1026,3,30.00),(183,58,127,9,1027,4,48.00),(184,59,128,10,1028,5,27.50),(185,60,129,11,1029,3,75.00),(186,61,130,12,1030,2,100.00);
/*!40000 ALTER TABLE `fact_ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-27  0:10:37
