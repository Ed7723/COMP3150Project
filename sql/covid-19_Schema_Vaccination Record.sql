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
-- Table structure for table `Vaccination Record`
--

DROP TABLE IF EXISTS `Vaccination Record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Vaccination Record` (
  `Vaccine_ID` int NOT NULL,
  `Patient_ID` int NOT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`Vaccine_ID`,`Patient_ID`),
  KEY `Patient_ID_idx` (`Patient_ID`),
  CONSTRAINT `Patient_ID` FOREIGN KEY (`Patient_ID`) REFERENCES `Patient` (`Patient_ID`),
  CONSTRAINT `Vaccine_ID` FOREIGN KEY (`Vaccine_ID`) REFERENCES `Covid Vaccine` (`Vaccine_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vaccination Record`
--

LOCK TABLES `Vaccination Record` WRITE;
/*!40000 ALTER TABLE `Vaccination Record` DISABLE KEYS */;
INSERT INTO `Vaccination Record` (`Vaccine_ID`, `Patient_ID`, `Date`) VALUES (2210,62,'2021-08-19'),(2212,22,'2022-06-07'),(2213,88,'2021-09-12'),(2219,99,'2022-02-13'),(2221,84,'2021-08-16'),(2224,3,'2021-09-28'),(2230,50,'2022-01-28'),(2230,66,'2021-12-28'),(2253,59,'2021-11-25'),(2258,30,'2021-08-20'),(2262,25,'2021-09-26'),(2269,14,'2021-11-30'),(2269,17,'2022-02-24'),(2269,49,'2021-12-08'),(2297,38,'2022-02-22'),(2298,15,'2022-01-23'),(2300,76,'2022-02-14'),(2304,46,'2022-05-22'),(2306,13,'2022-03-24'),(2311,60,'2021-08-20'),(2322,7,'2022-04-07'),(2328,48,'2022-04-09'),(2336,11,'2022-04-02'),(2344,1,'2022-05-18'),(2346,63,'2022-06-01'),(2362,68,'2022-01-07'),(2363,95,'2021-12-31'),(2367,72,'2022-02-08'),(2372,81,'2022-01-01'),(2376,6,'2021-12-26'),(2377,69,'2021-08-09'),(2380,83,'2021-09-11'),(2392,87,'2022-06-22'),(2396,42,'2022-03-18'),(2409,64,'2021-12-01'),(2411,41,'2021-09-30'),(2413,71,'2021-09-09'),(2416,94,'2022-06-03'),(2416,96,'2022-02-12'),(2434,91,'2021-10-26'),(2444,93,'2022-05-02'),(2449,28,'2022-05-02'),(2453,98,'2021-10-08'),(2456,31,'2021-12-16'),(2460,75,'2021-12-27'),(2462,21,'2022-01-18'),(2462,24,'2021-11-01'),(2463,2,'2022-04-08'),(2476,55,'2021-10-16'),(2476,57,'2022-01-12'),(2487,67,'2022-04-21'),(2490,89,'2022-01-16'),(2491,9,'2022-03-05'),(2495,58,'2021-11-24'),(2506,35,'2021-12-19'),(2508,44,'2021-11-06'),(2511,79,'2022-03-01'),(2512,77,'2021-11-05'),(2513,61,'2022-03-12'),(2526,33,'2021-09-03'),(2535,18,'2022-04-16'),(2539,32,'2022-01-03'),(2542,12,'2022-05-11'),(2546,23,'2021-12-07'),(2564,45,'2021-12-22'),(2566,16,'2021-12-16'),(2572,8,'2022-01-05'),(2579,56,'2022-06-17'),(2581,92,'2021-08-20'),(2582,43,'2021-08-09'),(2584,20,'2021-12-23'),(2585,86,'2022-04-07'),(2588,51,'2021-12-19'),(2593,70,'2022-01-27'),(2593,78,'2022-02-01'),(2601,52,'2022-01-08'),(2602,47,'2022-05-21'),(2602,82,'2022-01-30'),(2603,53,'2022-05-08'),(2613,65,'2021-08-25'),(2637,80,'2021-12-23'),(2642,29,'2022-01-26'),(2642,40,'2022-01-01'),(2647,73,'2022-05-20'),(2652,54,'2021-11-17'),(2660,10,'2021-12-20'),(2663,100,'2021-08-18'),(2664,5,'2022-02-20'),(2666,39,'2021-11-30'),(2666,85,'2022-05-19'),(2668,27,'2021-10-09'),(2670,19,'2021-08-20'),(2671,90,'2021-09-04'),(2674,37,'2022-05-23'),(2675,36,'2022-04-23'),(2685,26,'2022-03-18'),(2690,97,'2022-04-02'),(2692,74,'2022-04-01'),(2697,4,'2021-11-01'),(2697,34,'2022-01-07');
/*!40000 ALTER TABLE `Vaccination Record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-04 20:36:45
