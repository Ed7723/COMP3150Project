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
-- Table structure for table `Positive Test`
--

DROP TABLE IF EXISTS `Positive Test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Positive Test` (
  `Test_ID` int NOT NULL,
  `Case_ID` int NOT NULL,
  PRIMARY KEY (`Test_ID`,`Case_ID`),
  KEY `Case_ID_idx` (`Case_ID`),
  CONSTRAINT `Case_ID` FOREIGN KEY (`Case_ID`) REFERENCES `Covid Case` (`Case_ID`),
  CONSTRAINT `Test_ID` FOREIGN KEY (`Test_ID`) REFERENCES `Covid Test` (`Test_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Positive Test`
--

LOCK TABLES `Positive Test` WRITE;
/*!40000 ALTER TABLE `Positive Test` DISABLE KEYS */;
INSERT INTO `Positive Test` (`Test_ID`, `Case_ID`) VALUES (5443,1100),(5444,1101),(5445,1102),(5446,1103),(5447,1104),(5448,1105),(5449,1106),(5450,1107),(5451,1108),(5452,1109),(5453,1110),(5454,1111),(5455,1112),(5456,1113),(5457,1114),(5458,1115),(5459,1116),(5460,1117),(5461,1118),(5462,1119),(5463,1120),(5464,1121),(5465,1122),(5466,1123),(5467,1124),(5468,1125),(5469,1126),(5470,1127),(5471,1128),(5472,1129),(5473,1130),(5474,1131),(5475,1132),(5476,1133),(5477,1134),(5478,1135),(5479,1136),(5480,1137),(5481,1138),(5482,1139),(5483,1140),(5484,1141),(5485,1142),(5486,1143),(5487,1144),(5488,1145),(5489,1146),(5490,1147),(5491,1148),(5492,1149),(5493,1150),(5494,1151),(5495,1152),(5496,1153),(5497,1154),(5498,1155),(5499,1156),(5500,1157),(5501,1158),(5502,1159),(5503,1160),(5504,1161),(5505,1162),(5506,1163),(5507,1164),(5508,1165),(5509,1166),(5510,1167),(5511,1168),(5512,1170),(5513,1171),(5514,1172),(5515,1173),(5516,1174),(5517,1175),(5518,1176),(5519,1177),(5520,1178),(5521,1179),(5522,1180),(5523,1181),(5524,1182),(5525,1183),(5526,1184),(5527,1185),(5528,1186),(5529,1187),(5530,1188),(5531,1189),(5532,1190),(5533,1191),(5534,1192),(5535,1193),(5536,1194),(5537,1195),(5538,1196),(5539,1197),(5540,1198),(5541,1199);
/*!40000 ALTER TABLE `Positive Test` ENABLE KEYS */;
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
