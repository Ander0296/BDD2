-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: staging
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
-- Table structure for table `staging_cliente`
--

DROP TABLE IF EXISTS `staging_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staging_cliente` (
  `id_cliente` int NOT NULL,
  `nombre_cliente` varchar(100) DEFAULT NULL,
  `nombre_contacto` varchar(50) DEFAULT NULL,
  `apellido_contacto` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `id_empleado_rep_ventas` int DEFAULT NULL,
  `limite_credito` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `id_empleado_rep_ventas` (`id_empleado_rep_ventas`),
  CONSTRAINT `staging_cliente_ibfk_1` FOREIGN KEY (`id_empleado_rep_ventas`) REFERENCES `staging_empleado` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staging_cliente`
--

LOCK TABLES `staging_cliente` WRITE;
/*!40000 ALTER TABLE `staging_cliente` DISABLE KEYS */;
INSERT INTO `staging_cliente` VALUES (101,'JARDINERÍA VERDE','Ana','Martínez','Madrid','España',7,50000.00),(102,'FLORES DEL SOL','Juan','López','Barcelona','España',8,45000.00),(103,'PLANTAS Y MÁS','Lucía','Pérez','Valencia','España',9,60000.00),(104,'JARDÍN URBANO','Marcos','Sánchez','Sevilla','España',10,40000.00),(105,'GREEN WORLD','Clara','Gómez','Bilbao','España',11,55000.00),(106,'ECOGARDEN','David','Fernández','Zaragoza','España',12,70000.00),(107,'PAISAJISMO TOTAL','Laura','Ruiz','Lisboa','Portugal',13,65000.00),(108,'NATUREZA VIVA','Pedro','Castro','Oporto','Portugal',14,48000.00),(109,'PARÍS VERDE','Élodie','Dubois','París','Francia',15,52000.00),(110,'JARDINAGE LYON','Jean','Martin','Lyon','Francia',16,51000.00),(111,'PLANTES MARSEILLE','Claire','Bernard','Marsella','Francia',17,62000.00),(112,'ROMA GARDEN','Alessandro','Rossi','Roma','Italia',18,58000.00),(113,'MILANO VERDE','Giulia','Bianchi','Milán','Italia',19,54000.00),(114,'NAPOLI NATURA','Francesco','Esposito','Nápoles','Italia',20,49000.00),(115,'TORINO VERDE','Sara','Conti','Turín','Italia',21,62000.00),(116,'BRUSSELS GARDEN','Sophie','Dupont','Bruselas','Bélgica',22,50000.00),(117,'AMSTERDAM PLANTS','Tom','Jansen','Ámsterdam','Países Bajos',23,53000.00),(118,'ROTTERDAM GREEN','Eva','De Vries','Róterdam','Países Bajos',24,56000.00),(119,'BERLIN GARTEN','Hans','Schmidt','Berlín','Alemania',25,59000.00),(120,'MUNICH PFLANZEN','Katrin','Müller','Múnich','Alemania',26,61000.00),(121,'FRANKFURT GARDEN','Lukas','Weber','Fráncfort','Alemania',27,47000.00),(122,'HAMBURG GRÜN','Anna','Fischer','Hamburgo','Alemania',28,53000.00),(123,'VIENNA GREEN','Stefan','Huber','Viena','Austria',29,60000.00),(124,'ZURICH PFLANZEN','Martina','Keller','Zúrich','Suiza',30,65000.00),(125,'GENEVA NATURE','Patrick','Dubois','Ginebra','Suiza',7,50000.00),(126,'LONDON GARDEN','James','Brown','Londres','Reino Unido',8,55000.00),(127,'MANCHESTER PLANTS','Emily','Smith','Mánchester','Reino Unido',9,60000.00),(128,'DUBLIN GREEN','Liam','O’Brien','Dublín','Irlanda',10,58000.00),(129,'EDINBURGH NATURE','Sophie','Wilson','Edimburgo','Reino Unido',11,49000.00),(130,'CORK GARDEN','Sean','Murphy','Cork','Irlanda',12,52000.00);
/*!40000 ALTER TABLE `staging_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staging_detalle_pedido`
--

DROP TABLE IF EXISTS `staging_detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staging_detalle_pedido` (
  `id_pedido` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int DEFAULT NULL,
  `precio_unidad` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`,`id_producto`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `staging_detalle_pedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `staging_pedido` (`id_pedido`),
  CONSTRAINT `staging_detalle_pedido_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `staging_producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staging_detalle_pedido`
--

LOCK TABLES `staging_detalle_pedido` WRITE;
/*!40000 ALTER TABLE `staging_detalle_pedido` DISABLE KEYS */;
INSERT INTO `staging_detalle_pedido` VALUES (2001,1001,10,2.50),(2002,1002,15,3.00),(2003,1003,5,15.00),(2004,1004,20,1.50),(2005,1005,12,2.80),(2006,1006,8,4.00),(2007,1007,7,6.50),(2008,1008,3,25.00),(2009,1009,6,3.50),(2010,1010,4,12.00),(2011,1011,2,45.00),(2012,1012,3,30.00),(2013,1013,5,7.00),(2014,1014,6,5.00),(2015,1015,8,4.50),(2016,1016,3,18.00),(2017,1017,4,6.00),(2018,1018,5,8.50),(2019,1019,3,14.00),(2020,1020,4,12.50),(2021,1021,6,9.00),(2022,1022,2,20.00),(2023,1023,1,22.00),(2024,1024,7,3.20),(2025,1025,2,16.00),(2026,1026,3,10.00),(2027,1027,4,12.00),(2028,1028,5,5.50),(2029,1029,3,25.00),(2030,1030,2,50.00);
/*!40000 ALTER TABLE `staging_detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staging_empleado`
--

DROP TABLE IF EXISTS `staging_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staging_empleado` (
  `id_empleado` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido1` varchar(50) DEFAULT NULL,
  `id_oficina` varchar(10) DEFAULT NULL,
  `id_jefe` int DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `id_oficina` (`id_oficina`),
  CONSTRAINT `staging_empleado_ibfk_1` FOREIGN KEY (`id_oficina`) REFERENCES `staging_oficina` (`id_oficina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staging_empleado`
--

LOCK TABLES `staging_empleado` WRITE;
/*!40000 ALTER TABLE `staging_empleado` DISABLE KEYS */;
INSERT INTO `staging_empleado` VALUES (1,'Carlos','García','OFI-001',NULL,'Director General'),(2,'Laura','Martínez','OFI-001',1,'Subdirectora'),(3,'Javier','Fernández','OFI-002',2,'Gerente Ventas'),(4,'Marta','Sánchez','OFI-003',2,'Gerente Ventas'),(5,'Andrés','Hernández','OFI-004',2,'Gerente Ventas'),(6,'Elena','Pérez','OFI-005',2,'Gerente Ventas'),(7,'Luis','Romero','OFI-006',3,'Representante Ventas'),(8,'Paula','Gómez','OFI-007',3,'Representante Ventas'),(9,'Diego','Navarro','OFI-008',3,'Representante Ventas'),(10,'Carmen','Morales','OFI-009',4,'Representante Ventas'),(11,'Sergio','Domínguez','OFI-010',4,'Representante Ventas'),(12,'Natalia','Ramos','OFI-011',4,'Representante Ventas'),(13,'Hugo','Ortiz','OFI-012',5,'Representante Ventas'),(14,'Isabel','Cruz','OFI-013',5,'Representante Ventas'),(15,'Pedro','Molina','OFI-014',5,'Representante Ventas'),(16,'Lucía','Castillo','OFI-015',6,'Representante Ventas'),(17,'Manuel','Marín','OFI-016',6,'Representante Ventas'),(18,'Rosa','Iglesias','OFI-017',6,'Representante Ventas'),(19,'Álvaro','Cabrera','OFI-018',6,'Representante Ventas'),(20,'Patricia','Santos','OFI-019',7,'Representante Ventas'),(21,'Mario','Reyes','OFI-020',7,'Representante Ventas'),(22,'Sara','Herrera','OFI-021',7,'Representante Ventas'),(23,'Raúl','Giménez','OFI-022',7,'Representante Ventas'),(24,'Julia','Cortés','OFI-023',8,'Representante Ventas'),(25,'Adrián','Lorenzo','OFI-024',8,'Representante Ventas'),(26,'Eva','Carmona','OFI-025',8,'Representante Ventas'),(27,'Tomás','Soto','OFI-026',8,'Representante Ventas'),(28,'Marina','Durán','OFI-027',9,'Representante Ventas'),(29,'Ignacio','Benítez','OFI-028',9,'Representante Ventas'),(30,'Beatriz','Vidal','OFI-029',9,'Representante Ventas');
/*!40000 ALTER TABLE `staging_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staging_oficina`
--

DROP TABLE IF EXISTS `staging_oficina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staging_oficina` (
  `id_oficina` varchar(10) NOT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(15) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_oficina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staging_oficina`
--

LOCK TABLES `staging_oficina` WRITE;
/*!40000 ALTER TABLE `staging_oficina` DISABLE KEYS */;
INSERT INTO `staging_oficina` VALUES ('OFI-001','Madrid','España','28001','+34 910000001'),('OFI-002','Barcelona','España','08001','+34 930000002'),('OFI-003','Valencia','España','46001','+34 960000003'),('OFI-004','Sevilla','España','41001','+34 950000004'),('OFI-005','Bilbao','España','48001','+34 940000005'),('OFI-006','Zaragoza','España','50001','+34 970000006'),('OFI-007','Lisboa','Portugal','1000-001','+351 210000007'),('OFI-008','Oporto','Portugal','4000-001','+351 220000008'),('OFI-009','París','Francia','75001','+33 140000009'),('OFI-010','Lyon','Francia','69001','+33 450000010'),('OFI-011','Marsella','Francia','13001','+33 420000011'),('OFI-012','Roma','Italia','00100','+39 060000012'),('OFI-013','Milán','Italia','20100','+39 020000013'),('OFI-014','Nápoles','Italia','80100','+39 081000014'),('OFI-015','Turín','Italia','10100','+39 011000015'),('OFI-016','Bruselas','Bélgica','1000','+32 020000016'),('OFI-017','Ámsterdam','Países Bajos','1011','+31 020000017'),('OFI-018','Róterdam','Países Bajos','3011','+31 010000018'),('OFI-019','Berlín','Alemania','10115','+49 030000019'),('OFI-020','Múnich','Alemania','80331','+49 089000020'),('OFI-021','Fráncfort','Alemania','60311','+49 069000021'),('OFI-022','Hamburgo','Alemania','20095','+49 040000022'),('OFI-023','Viena','Austria','1010','+43 010000023'),('OFI-024','Zúrich','Suiza','8001','+41 044000024'),('OFI-025','Ginebra','Suiza','1201','+41 022000025'),('OFI-026','Londres','Reino Unido','SW1A','+44 020000026'),('OFI-027','Mánchester','Reino Unido','M1','+44 016100027'),('OFI-028','Dublín','Irlanda','D01','+353 010000028'),('OFI-029','Edimburgo','Reino Unido','EH1','+44 013100029'),('OFI-030','Cork','Irlanda','T12','+353 021000030');
/*!40000 ALTER TABLE `staging_oficina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staging_pago`
--

DROP TABLE IF EXISTS `staging_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staging_pago` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `forma_pago` enum('Transferencia','Cheque','Tarjeta') DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `staging_pago_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `staging_cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staging_pago`
--

LOCK TABLES `staging_pago` WRITE;
/*!40000 ALTER TABLE `staging_pago` DISABLE KEYS */;
INSERT INTO `staging_pago` VALUES (1,101,'Transferencia','2025-09-05',25.00),(2,102,'Cheque','2025-09-06',45.00),(3,103,'Tarjeta','2025-09-07',75.00),(4,104,'Transferencia','2025-09-08',30.00),(5,105,'Cheque','2025-09-09',33.60),(6,106,'Tarjeta','2025-09-10',32.00),(7,107,'Transferencia','2025-09-11',45.50),(8,108,'Cheque','2025-09-12',75.00),(9,109,'Tarjeta','2025-09-13',21.00),(10,110,'Transferencia','2025-09-14',48.00),(11,111,'Cheque','2025-09-15',90.00),(12,112,'Tarjeta','2025-09-16',90.00),(13,113,'Transferencia','2025-09-17',35.00),(14,114,'Cheque','2025-09-18',30.00),(15,115,'Tarjeta','2025-09-19',36.00),(16,116,'Transferencia','2025-09-20',54.00),(17,117,'Cheque','2025-09-21',24.00),(18,118,'Tarjeta','2025-09-22',42.50),(19,119,'Transferencia','2025-09-23',42.00),(20,120,'Cheque','2025-09-24',50.00),(21,121,'Tarjeta','2025-09-25',54.00),(22,122,'Transferencia','2025-09-26',40.00),(23,123,'Cheque','2025-09-27',22.00),(24,124,'Tarjeta','2025-09-28',22.40),(25,125,'Transferencia','2025-09-29',32.00),(26,126,'Cheque','2025-09-30',30.00),(27,127,'Tarjeta','2025-10-01',48.00),(28,128,'Transferencia','2025-10-02',27.50),(29,129,'Cheque','2025-10-03',75.00),(30,130,'Tarjeta','2025-10-04',100.00);
/*!40000 ALTER TABLE `staging_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staging_pedido`
--

DROP TABLE IF EXISTS `staging_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staging_pedido` (
  `id_pedido` int NOT NULL,
  `fecha_pedido` date DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `estado` enum('Pendiente','Entregado','Rechazado') DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `staging_pedido_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `staging_cliente` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staging_pedido`
--

LOCK TABLES `staging_pedido` WRITE;
/*!40000 ALTER TABLE `staging_pedido` DISABLE KEYS */;
INSERT INTO `staging_pedido` VALUES (2001,'2025-09-01',NULL,'Pendiente',101),(2002,'2025-09-02','2025-09-05','Entregado',102),(2003,'2025-09-03',NULL,'Pendiente',103),(2004,'2025-09-04','2025-09-07','Entregado',104),(2005,'2025-09-05',NULL,'Pendiente',105),(2006,'2025-09-06','2025-09-09','Entregado',106),(2007,'2025-09-07',NULL,'Pendiente',107),(2008,'2025-09-08','2025-09-11','Entregado',108),(2009,'2025-09-09',NULL,'Pendiente',109),(2010,'2025-09-10','2025-09-13','Entregado',110),(2011,'2025-09-11',NULL,'Pendiente',111),(2012,'2025-09-12','2025-09-15','Entregado',112),(2013,'2025-09-13',NULL,'Pendiente',113),(2014,'2025-09-14','2025-09-17','Entregado',114),(2015,'2025-09-15',NULL,'Pendiente',115),(2016,'2025-09-16','2025-09-19','Entregado',116),(2017,'2025-09-17',NULL,'Pendiente',117),(2018,'2025-09-18','2025-09-21','Entregado',118),(2019,'2025-09-19',NULL,'Pendiente',119),(2020,'2025-09-20','2025-09-23','Entregado',120),(2021,'2025-09-21',NULL,'Pendiente',121),(2022,'2025-09-22','2025-09-25','Entregado',122),(2023,'2025-09-23',NULL,'Pendiente',123),(2024,'2025-09-24','2025-09-27','Entregado',124),(2025,'2025-09-25',NULL,'Pendiente',125),(2026,'2025-09-26','2025-09-29','Entregado',126),(2027,'2025-09-27',NULL,'Pendiente',127),(2028,'2025-09-28','2025-10-01','Entregado',128),(2029,'2025-09-29',NULL,'Pendiente',129),(2030,'2025-09-30','2025-10-03','Entregado',130);
/*!40000 ALTER TABLE `staging_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staging_producto`
--

DROP TABLE IF EXISTS `staging_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staging_producto` (
  `id_producto` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `gama` varchar(50) DEFAULT NULL,
  `dimensiones` varchar(50) DEFAULT NULL,
  `proveedor` varchar(100) DEFAULT NULL,
  `precio_venta` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staging_producto`
--

LOCK TABLES `staging_producto` WRITE;
/*!40000 ALTER TABLE `staging_producto` DISABLE KEYS */;
INSERT INTO `staging_producto` VALUES (1001,'Rosa Roja','Flores','30cm','Floricultura Madrid',2.50),(1002,'Tulipán Amarillo','Flores','25cm','Tulipanes BCN',3.00),(1003,'Orquídea Blanca','Orquídeas','40cm','Orquídeas Valencia',15.00),(1004,'Clavel Rojo','Flores','20cm','Claveles Sevilla',1.50),(1005,'Girasol','Flores','50cm','Campos Bilbao',2.80),(1006,'Cactus Mini','Suculentas','10cm','Green Lisboa',4.00),(1007,'Suculenta Aloe Vera','Suculentas','15cm','Portugal Verde',6.50),(1008,'Bonsái Ficus','Bonsáis','35cm','Bonsáis París',25.00),(1009,'Lirio Blanco','Flores','40cm','Flores Lyon',3.50),(1010,'Helecho Boston','Plantas Verdes','60cm','Marseille Green',12.00),(1011,'Palmera Areca','Plantas Verdes','120cm','Roma Verde',45.00),(1012,'Olivo en Maceta','Árboles','80cm','Milano Plantas',30.00),(1013,'Lavanda','Aromáticas','25cm','Napoli Garden',7.00),(1014,'Romero','Aromáticas','20cm','Turín Nature',5.00),(1015,'Menta','Aromáticas','20cm','Bruselas Verde',4.50),(1016,'Hortensia Azul','Flores','40cm','Ámsterdam Floral',18.00),(1017,'Peonía Rosa','Flores','35cm','Rotterdam Flowers',6.00),(1018,'Geranio Rojo','Flores','25cm','Berlín Plantas',8.50),(1019,'Camelia','Flores','50cm','Múnich Garden',14.00),(1020,'Azalea Blanca','Flores','30cm','Fráncfort Natur',12.50),(1021,'Begonia','Flores','25cm','Hamburgo Flor',9.00),(1022,'Jazmín','Aromáticas','40cm','Viena Garden',20.00),(1023,'Gardenia','Flores','30cm','Zúrich Plantas',22.00),(1024,'Crisantemo Amarillo','Flores','30cm','Ginebra Floral',3.20),(1025,'Clivia Naranja','Flores','35cm','London Flowers',16.00),(1026,'Hiedra','Plantas Verdes','50cm','Manchester Verde',10.00),(1027,'Bambú de la Suerte','Plantas Verdes','40cm','Dublín Zen',12.00),(1028,'Aloe Mini','Suculentas','15cm','Edimburgo Green',5.50),(1029,'Sansevieria','Plantas Verdes','70cm','Cork Plantas',25.00),(1030,'Ficus Lyrata','Plantas Verdes','100cm','Global Plants',50.00);
/*!40000 ALTER TABLE `staging_producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-27  0:08:28
