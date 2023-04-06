-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: covid-19_Schema
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `Patient`
--

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Patient` (
  `Patient_ID` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  PRIMARY KEY (`Patient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` (`Patient_ID`, `Name`, `Age`) VALUES (1,'Dawna Coonihan',34),(2,'Cathyleen Legges',0),(3,'Stanislas Gasnell',70),(4,'Emlen Cosgrive',52),(5,'Eloisa Latch',7),(6,'Niccolo Richten',63),(7,'Valeda Seamon',77),(8,'Elbert Radage',36),(9,'Kenyon Ricart',28),(10,'Bianka Brettelle',43),(11,'Michaeline Shillabeer',64),(12,'Kerr Halliday',67),(13,'Carine Charlick',56),(14,'Laraine Fallows',8),(15,'Kevan Thuillier',39),(16,'Loree Stinson',35),(17,'Gabriello Penas',74),(18,'Lynnea Kelway',53),(19,'Merwin Bowle',66),(20,'Vyky Innocenti',33),(21,'Ulberto Tidman',29),(22,'Tybalt O\'Gavin',39),(23,'Vassili Teesdale',18),(24,'Emily Knightsbridge',49),(25,'Feodor Tomson',56),(26,'Lexy Ormerod',19),(27,'Lucinda Grebner',7),(28,'Gothart Raraty',9),(29,'Thayne Simper',54),(30,'Bradney O\' Timony',59),(31,'Amory Galland',18),(32,'Tobin Luis',79),(33,'Paulita Hurring',76),(34,'Guntar Kwietak',36),(35,'Tedmund Lutton',4),(36,'Otho Quinton',49),(37,'Rosalinda Walesby',6),(38,'Olive Jentgens',3),(39,'Bronson Noquet',42),(40,'Therese Aleixo',75),(41,'Carilyn Alsford',41),(42,'Lindie Farrants',38),(43,'Cyndi Patshull',31),(44,'Franzen I\'anson',61),(45,'Puff Panks',59),(46,'Darbie Grimsdike',12),(47,'Tania Bricksey',53),(48,'Keriann Jirick',40),(49,'Rycca Malling',13),(50,'Mariam Buckett',67),(51,'Bo Lorinez',47),(52,'Gabriela Levine',45),(53,'Kermie Mantle',70),(54,'Hildagard Cainey',40),(55,'Bobby Hatto',41),(56,'Diannne Baccup',45),(57,'Emeline Pigne',45),(58,'Lock Betjes',54),(59,'Staffard Leatherborrow',78),(60,'Jessie Heinish',43),(61,'Blythe Cartmael',10),(62,'Bob Vassel',55),(63,'Gare Dalyell',42),(64,'Isabelita Strapp',58),(65,'Alyss Bohlje',51),(66,'Monika Blomefield',33),(67,'Eben Ewington',13),(68,'Benson Alton',63),(69,'Lark Atwell',20),(70,'Putnem Wiles',80),(71,'Patton Hayer',17),(72,'Ellerey Frowing',42),(73,'Zenia McOrkil',3),(74,'Dean Van T\'Hoog',69),(75,'Romeo Heisler',70),(76,'Kimball McAlees',25),(77,'Sarette Tolefree',79),(78,'Shirl Mears',37),(79,'Devina Cahen',35),(80,'Ryun Shernock',6),(81,'Emmy Hartrick',12),(82,'Vin Bofield',63),(83,'Freida Janton',9),(84,'Thomas Golda',64),(85,'Cherice Velti',42),(86,'Sally Ruzic',56),(87,'Maridel Whatman',27),(88,'Lawton Van Zon',9),(89,'Margarete Watmore',5),(90,'Jaquelyn Berndsen',15),(91,'Perri Trickett',47),(92,'Rosalia Summerley',76),(93,'Corella Knok',75),(94,'Tremain Dewis',15),(95,'Cece Noddings',18),(96,'Chrotoem Handforth',40),(97,'Mathilda Janjusevic',40),(98,'Gisele Ridsdell',0),(99,'Xerxes Foxcroft',48),(100,'Corbie Gregorace',47);
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-04 20:36:46
