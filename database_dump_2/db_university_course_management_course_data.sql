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
-- Table structure for table `course_data`
--

DROP TABLE IF EXISTS `course_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_data` (
  `course_ID` int NOT NULL,
  `course_name` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `credit_hours` varchar(45) DEFAULT NULL,
  `semester` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `lecturer_ID` int DEFAULT NULL,
  PRIMARY KEY (`course_ID`),
  UNIQUE KEY `course_ID_UNIQUE` (`course_ID`),
  KEY `lectuer_ID_idx` (`lecturer_ID`),
  CONSTRAINT `courseData_lectuer_ID` FOREIGN KEY (`lecturer_ID`) REFERENCES `lecturer_data` (`lecturer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_data`
--

LOCK TABLES `course_data` WRITE;
/*!40000 ALTER TABLE `course_data` DISABLE KEYS */;
INSERT INTO `course_data` VALUES (1,'Introduction to Biology','Biology','3','Fall','Fundamentals of Biology',1),(2,'Genetics and Evolution','Biology','4','Spring','Study of Genetics and Evolution',1),(3,'Ecology and Environmental Science','Biology','3','Summer','Exploration of Ecology and Environmental Science',1),(4,'Classical Mechanics','Physics','4','Fall','Fundamentals of Classical Mechanics',2),(5,'Electromagnetism','Physics','4','Spring','Study of Electromagnetism',2),(6,'Quantum Physics','Physics','3','Summer','Introduction to Quantum Physics',2),(7,'Inorganic Chemistry','Chemistry','3','Fall','Introduction to Inorganic Chemistry',3),(8,'Organic Chemistry','Chemistry','4','Spring','Study of Organic Chemistry',3),(9,'Physical Chemistry','Chemistry','3','Summer','Fundamentals of Physical Chemistry',3),(10,'Calculus I','Mathematics','4','Fall','Introduction to Calculus',4),(11,'Linear Algebra','Mathematics','3','Spring','Study of Linear Algebra',4),(12,'Probability and Statistics','Mathematics','3','Summer','Introduction to Probability and Statistics',4),(13,'Introduction to Programming','Computer Engineering','4','Fall','Fundamentals of Programming',5),(14,'Computer Networks','Computer Engineering','3','Spring','Study of Computer Networks',5),(15,'Database Management Systems','Computer Engineering','3','Summer','Introduction to Database Management Systems',5),(16,'test','test','5','test','test test teset',6);
/*!40000 ALTER TABLE `course_data` ENABLE KEYS */;
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
