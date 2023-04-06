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
-- Table structure for table `Covid Vaccine`
--

DROP TABLE IF EXISTS `Covid Vaccine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Covid Vaccine` (
  `Vaccine_ID` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Vaccine_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Covid Vaccine`
--

LOCK TABLES `Covid Vaccine` WRITE;
/*!40000 ALTER TABLE `Covid Vaccine` DISABLE KEYS */;
INSERT INTO `Covid Vaccine` (`Vaccine_ID`, `Name`) VALUES (2210,'Pfizer'),(2212,'Moderna'),(2213,'Moderna'),(2219,'Moderna'),(2221,'Moderna'),(2224,'Moderna'),(2230,'Moderna'),(2253,'Pfizer'),(2258,'Moderna'),(2262,'Pfizer'),(2269,'Moderna'),(2297,'Moderna'),(2298,'Moderna'),(2300,'JNJ'),(2304,'Pfizer'),(2306,'Moderna'),(2311,'Pfizer'),(2322,'Moderna'),(2328,'Moderna'),(2336,'Pfizer'),(2344,'Pfizer'),(2346,'Pfizer'),(2362,'Pfizer'),(2363,'JNJ'),(2367,'Moderna'),(2372,'Moderna'),(2376,'JNJ'),(2377,'Pfizer'),(2380,'Moderna'),(2392,'Moderna'),(2396,'Pfizer'),(2409,'Pfizer'),(2411,'Pfizer'),(2413,'Pfizer'),(2416,'Pfizer'),(2434,'JNJ'),(2444,'Pfizer'),(2449,'Moderna'),(2453,'Pfizer'),(2456,'Pfizer'),(2460,'Moderna'),(2462,'Pfizer'),(2463,'Moderna'),(2476,'JNJ'),(2487,'Moderna'),(2490,'Pfizer'),(2491,'Pfizer'),(2495,'Moderna'),(2506,'Moderna'),(2508,'Moderna'),(2511,'JNJ'),(2512,'Moderna'),(2513,'Moderna'),(2526,'Pfizer'),(2535,'Moderna'),(2539,'JNJ'),(2542,'Pfizer'),(2546,'Pfizer'),(2564,'Moderna'),(2566,'Pfizer'),(2572,'JNJ'),(2579,'Moderna'),(2581,'Moderna'),(2582,'Pfizer'),(2584,'Moderna'),(2585,'Moderna'),(2588,'Moderna'),(2593,'Moderna'),(2601,'Pfizer'),(2602,'JNJ'),(2603,'Moderna'),(2613,'Pfizer'),(2637,'Moderna'),(2642,'Pfizer'),(2647,'Pfizer'),(2652,'Pfizer'),(2660,'Moderna'),(2663,'Moderna'),(2664,'Moderna'),(2666,'Moderna'),(2668,'Moderna'),(2670,'Moderna'),(2671,'Moderna'),(2674,'Moderna'),(2675,'JNJ'),(2685,'JNJ'),(2690,'Pfizer'),(2692,'JNJ'),(2697,'Pfizer');
/*!40000 ALTER TABLE `Covid Vaccine` ENABLE KEYS */;
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
