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
-- Table structure for table `grades_data`
--

DROP TABLE IF EXISTS `grades_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades_data` (
  `grades_ID` int NOT NULL,
  `student_ID` int DEFAULT NULL,
  `course_ID` int DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `numerical_grade` float DEFAULT NULL,
  PRIMARY KEY (`grades_ID`),
  UNIQUE KEY `grades_ID_UNIQUE` (`grades_ID`),
  KEY `student_ID_idx` (`student_ID`),
  KEY `course_ID_idx` (`course_ID`),
  CONSTRAINT `gradesData_course_ID` FOREIGN KEY (`course_ID`) REFERENCES `course_data` (`course_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `gradesData_student_ID` FOREIGN KEY (`student_ID`) REFERENCES `student_data` (`student_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades_data`
--

LOCK TABLES `grades_data` WRITE;
/*!40000 ALTER TABLE `grades_data` DISABLE KEYS */;
INSERT INTO `grades_data` VALUES (1,1,1,'A',90),(2,1,2,'B',80),(3,1,3,'C',70),(4,6,1,'B',85),(5,6,2,'C',75),(6,6,3,'D',60),(7,11,1,'B',80),(8,11,2,'A',95),(9,11,3,'B',85),(10,16,1,'C',70),(11,16,2,'C',75),(12,16,3,'B',88),(13,21,1,'B',88),(14,21,2,'A',92),(15,21,3,'A',95),(16,2,4,'B',85),(17,2,5,'C',75),(18,2,6,'C',75),(19,7,4,'A',92),(20,7,5,'A',95),(21,7,6,'B',85),(22,12,4,'C',70),(23,12,5,'C',75),(24,12,6,'B',88),(25,17,4,'A',90),(26,17,5,'B',80),(27,17,6,'C',70),(28,22,4,'B',88),(29,22,5,'A',92),(30,22,6,'A',95),(31,3,7,'A',90),(32,3,8,'B',80),(33,3,9,'C',70),(34,8,7,'B',85),(35,8,8,'C',75),(36,8,9,'D',60),(37,13,7,'A',92),(38,13,8,'A',95),(39,13,9,'B',85),(40,18,7,'C',70),(41,18,8,'C',75),(42,18,9,'B',88),(43,23,7,'B',88),(44,23,8,'A',92),(45,23,9,'A',95),(46,4,10,'A',90),(47,4,11,'B',80),(48,4,12,'C',70),(49,9,10,'B',85),(50,9,11,'C',75),(51,9,12,'D',60),(52,14,10,'A',92),(53,14,11,'A',95),(54,14,12,'B',85),(55,19,10,'C',70),(56,19,11,'C',75),(57,19,12,'B',88),(58,24,10,'B',88),(59,24,11,'A',92),(60,24,12,'A',95),(61,5,13,'A',90),(62,5,14,'B',80),(63,5,15,'C',70),(64,10,13,'B',85),(65,10,14,'C',75),(66,10,15,'D',60),(67,15,13,'A',92),(68,15,14,'A',95),(69,15,15,'B',85),(70,20,13,'C',70),(71,20,14,'C',75),(72,20,15,'B',88),(73,25,13,'B',88),(74,25,14,'A',92),(75,25,15,'A',95);
/*!40000 ALTER TABLE `grades_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-18 22:36:00
