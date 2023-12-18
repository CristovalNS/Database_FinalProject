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
-- Table structure for table `student_data`
--

DROP TABLE IF EXISTS `student_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_data` (
  `student_ID` int NOT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `home_address` varchar(100) DEFAULT NULL,
  `phone_number` int DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `major` varchar(45) DEFAULT NULL,
  `year_of_study` int DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  PRIMARY KEY (`student_ID`),
  UNIQUE KEY `student_ID_UNIQUE` (`student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_data`
--

LOCK TABLES `student_data` WRITE;
/*!40000 ALTER TABLE `student_data` DISABLE KEYS */;
INSERT INTO `student_data` VALUES (1,'Alice Johnson','1999-03-25','Female','321 Elm St, Springfield',5551111,'alice.johnson@email.com','Biology',2,'2022-08-15'),(2,'Bob Smith','2000-07-12','Male','456 Oak St, Springfield',5552222,'bob.smith@email.com','Physics',1,'2022-09-10'),(3,'Charlie Brown','1998-05-03','Male','789 Pine St, Springfield',5553333,'charlie.brown@email.com','Chemistry',3,'2021-07-22'),(4,'Diana Williams','2001-09-18','Female','987 Maple St, Springfield',5554444,'diana.williams@email.com','Mathematics',2,'2022-11-05'),(5,'Eva Davis','1997-12-07','Female','654 Birch St, Springfield',5555555,'eva.davis@email.com','Computer Engineering',1,'2023-03-30'),(6,'Frank Miller','2002-06-28','Male','111 Cedar St, Springfield',5556666,'frank.miller@email.com','Biology',3,'2021-02-08'),(7,'Grace Turner','1999-01-14','Female','222 Redwood St, Springfield',5557777,'grace.turner@email.com','Physics',2,'2022-10-19'),(8,'Henry White','2000-04-05','Male','333 Oak St, Springfield',5558888,'henry.white@email.com','Chemistry',1,'2023-09-15'),(9,'Ivy Green','1998-08-20','Female','444 Pine St, Springfield',5559999,'ivy.green@email.com','Mathematics',3,'2021-12-02'),(10,'Jack Black','2001-02-11','Male','555 Elm St, Springfield',5551010,'jack.black@email.com','Computer Engineering',2,'2022-05-18'),(11,'Karen Reed','1997-10-30','Female','666 Maple St, Springfield',5551111,'karen.reed@email.com','Biology',1,'2022-08-25'),(12,'Leonard Brown','2000-12-17','Male','777 Birch St, Springfield',5551212,'leonard.brown@email.com','Physics',3,'2023-09-14'),(13,'Megan Davis','1999-05-05','Female','888 Cedar St, Springfield',5551313,'megan.davis@email.com','Chemistry',2,'2021-07-30'),(14,'Nathan Taylor','2001-09-22','Male','999 Redwood St, Springfield',5551414,'nathan.taylor@email.com','Mathematics',1,'2022-11-09'),(15,'Olivia White','1998-04-10','Female','123 Pine St, Springfield',5551515,'olivia.white@email.com','Computer Engineering',3,'2023-03-22'),(16,'Paul Green','2002-11-07','Male','234 Cedar St, Springfield',5551616,'paul.green@email.com','Biology',2,'2021-01-13'),(17,'Quinn Turner','1999-02-15','Female','345 Oak St, Springfield',5551717,'quinn.turner@email.com','Physics',1,'2022-10-26'),(18,'Ryan Miller','2000-06-03','Male','456 Elm St, Springfield',5551818,'ryan.miller@email.com','Chemistry',3,'2021-09-17'),(19,'Samantha Harris','1998-01-19','Female','567 Birch St, Springfield',5551919,'samantha.harris@email.com','Mathematics',2,'2022-11-12'),(20,'Thomas Davis','2001-07-02','Male','678 Cedar St, Springfield',5552020,'thomas.davis@email.com','Computer Engineering',1,'2022-06-08'),(21,'Ursula Wilson','1999-03-25','Female','789 Redwood St, Springfield',5552121,'ursula.wilson@email.com','Biology',3,'2021-03-02'),(22,'Victor Turner','2002-08-11','Male','890 Pine St, Springfield',5552222,'victor.turner@email.com','Physics',2,'2022-09-21'),(23,'Wendy Green','1998-02-05','Female','987 Elm St, Springfield',5552323,'wendy.green@email.com','Chemistry',1,'2023-04-04'),(24,'Xavier Brown','2001-06-20','Male','876 Birch St, Springfield',5552424,'xavier.brown@email.com','Mathematics',3,'2022-11-23'),(25,'Yvonne Davis','1997-10-15','Female','765 Cedar St, Springfield',5552525,'yvonne.davis@email.com','Computer Engineering',2,'2022-05-10');
/*!40000 ALTER TABLE `student_data` ENABLE KEYS */;
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
