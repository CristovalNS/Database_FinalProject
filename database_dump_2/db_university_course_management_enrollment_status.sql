-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: db_university_course_management
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `enrollment_status`
--

DROP TABLE IF EXISTS `enrollment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_status` (
  `enrollment_ID` int NOT NULL,
  `student_ID` int DEFAULT NULL,
  `course_ID` int DEFAULT NULL,
  `semester` varchar(45) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`enrollment_ID`),
  UNIQUE KEY `enrollment_ID_UNIQUE` (`enrollment_ID`),
  KEY `student_ID_idx` (`student_ID`),
  KEY `fk2_course_ID_idx` (`course_ID`),
  CONSTRAINT `enrollStatus_course_ID` FOREIGN KEY (`course_ID`) REFERENCES `course_data` (`course_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `enrollStatus_student_ID` FOREIGN KEY (`student_ID`) REFERENCES `student_data` (`student_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_status`
--

LOCK TABLES `enrollment_status` WRITE;
/*!40000 ALTER TABLE `enrollment_status` DISABLE KEYS */;
INSERT INTO `enrollment_status` VALUES (1,1,1,'1','2022','2022-08-15','Enrolled'),(2,1,2,'2','2022','2022-08-15','Enrolled'),(3,1,3,'3','2023','2023-08-15','Enrolled'),(4,6,1,'1','2022','2022-08-15','Enrolled'),(5,6,2,'2','2022','2022-08-15','Enrolled'),(6,6,3,'3','2023','2023-08-15','Enrolled'),(7,11,1,'1','2022','2022-08-15','Enrolled'),(8,11,2,'2','2022','2022-08-15','Enrolled'),(9,11,3,'3','2023','2023-08-15','Enrolled'),(10,16,1,'1','2022','2022-08-15','Enrolled'),(11,16,2,'2','2022','2022-08-15','Enrolled'),(12,16,3,'3','2023','2023-08-15','Enrolled'),(13,21,1,'1','2022','2022-08-15','Enrolled'),(14,21,2,'2','2022','2022-08-15','Enrolled'),(15,21,3,'3','2023','2023-08-15','Enrolled'),(16,2,4,'1','2022','2022-08-15','Enrolled'),(17,2,5,'2','2022','2022-08-15','Enrolled'),(18,2,6,'3','2023','2023-08-15','Enrolled'),(19,7,4,'1','2022','2022-08-15','Enrolled'),(20,7,5,'2','2022','2022-08-15','Enrolled'),(21,7,6,'3','2023','2023-08-15','Enrolled'),(22,12,4,'1','2022','2022-08-15','Enrolled'),(23,12,5,'2','2022','2022-08-15','Enrolled'),(24,12,6,'3','2023','2023-08-15','Enrolled'),(25,17,4,'1','2022','2022-08-15','Enrolled'),(26,17,5,'2','2022','2022-08-15','Enrolled'),(27,17,6,'3','2023','2023-08-15','Enrolled'),(28,22,4,'1','2022','2022-08-15','Enrolled'),(29,22,5,'2','2022','2022-08-15','Enrolled'),(30,22,6,'3','2023','2023-08-15','Enrolled'),(31,3,7,'1','2022','2022-08-15','Enrolled'),(32,3,8,'2','2022','2022-08-15','Enrolled'),(33,3,9,'3','2023','2023-08-15','Enrolled'),(34,8,7,'1','2022','2022-08-15','Enrolled'),(35,8,8,'2','2022','2022-08-15','Enrolled'),(36,8,9,'3','2023','2023-08-15','Enrolled'),(37,13,7,'1','2022','2022-08-15','Enrolled'),(38,13,8,'2','2022','2022-08-15','Enrolled'),(39,13,9,'3','2023','2023-08-15','Enrolled'),(40,18,7,'1','2022','2022-08-15','Enrolled'),(41,18,8,'2','2022','2022-08-15','Enrolled'),(42,18,9,'3','2023','2023-08-15','Enrolled'),(43,23,7,'1','2022','2022-08-15','Enrolled'),(44,23,8,'2','2022','2022-08-15','Enrolled'),(45,23,9,'3','2023','2023-08-15','Enrolled'),(46,4,10,'1','2022','2022-08-15','Enrolled'),(47,4,11,'2','2022','2022-08-15','Enrolled'),(48,4,12,'3','2023','2023-08-15','Enrolled'),(49,9,10,'1','2022','2022-08-15','Enrolled'),(50,9,11,'2','2022','2022-08-15','Enrolled'),(51,9,12,'3','2023','2023-08-15','Enrolled'),(52,14,10,'1','2022','2022-08-15','Enrolled'),(53,14,11,'2','2022','2022-08-15','Enrolled'),(54,14,12,'3','2023','2023-08-15','Enrolled'),(55,19,10,'1','2022','2022-08-15','Enrolled'),(56,19,11,'2','2022','2022-08-15','Enrolled'),(57,19,12,'3','2023','2023-08-15','Enrolled'),(58,24,10,'1','2022','2022-08-15','Enrolled'),(59,24,11,'2','2022','2022-08-15','Enrolled'),(60,24,12,'3','2023','2023-08-15','Enrolled'),(61,5,13,'1','2022','2022-08-15','Enrolled'),(62,5,14,'2','2022','2022-08-15','Enrolled'),(63,5,15,'3','2023','2023-08-15','Enrolled'),(64,10,13,'1','2022','2022-08-15','Enrolled'),(65,10,14,'2','2022','2022-08-15','Enrolled'),(66,10,15,'3','2023','2023-08-15','Enrolled'),(67,15,13,'1','2022','2022-08-15','Enrolled'),(68,15,14,'2','2022','2022-08-15','Enrolled'),(69,15,15,'3','2023','2023-08-15','Enrolled'),(70,20,13,'1','2022','2022-08-15','Enrolled'),(71,20,14,'2','2022','2022-08-15','Enrolled'),(72,20,15,'3','2023','2023-08-15','Enrolled'),(73,25,13,'1','2022','2022-08-15','Enrolled'),(74,25,14,'2','2022','2022-08-15','Enrolled'),(75,25,15,'3','2023','2023-08-15','Enrolled');
/*!40000 ALTER TABLE `enrollment_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-18 22:35:59
