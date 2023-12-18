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
-- Table structure for table `lecturer_data`
--

DROP TABLE IF EXISTS `lecturer_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecturer_data` (
  `lecturer_ID` int NOT NULL,
  `lecturer_name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `home_address` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  PRIMARY KEY (`lecturer_ID`),
  UNIQUE KEY `lecturer_ID_UNIQUE` (`lecturer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturer_data`
--

LOCK TABLES `lecturer_data` WRITE;
/*!40000 ALTER TABLE `lecturer_data` DISABLE KEYS */;
INSERT INTO `lecturer_data` VALUES (1,'John Anderson','Male','123 Elm St, Cityville','5551111','john.anderson@email.com','Biology','2022-05-15'),(2,'Emily Brown','Male','456 Oak St, Cityville','5552222','emily.brown@email.com','Physics','2021-08-20'),(3,'Michael Clark','Male','789 Pine St, Cityville','5553333','michael.clark@email.com','Chemistry','2022-03-10'),(4,'Alice Davis','Female','987 Maple St, Cityville','5554444','alice.davis@email.com','Mathematics','2021-06-05'),(5,'Sophia Evans','Female','654 Birch St, Cityville','5555555','sophia.evans@email.com','Computer Engineering','2022-12-12'),(6,'LecturerTest','test','home address','0000000','email','Biology','2000-12-12');
/*!40000 ALTER TABLE `lecturer_data` ENABLE KEYS */;
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
