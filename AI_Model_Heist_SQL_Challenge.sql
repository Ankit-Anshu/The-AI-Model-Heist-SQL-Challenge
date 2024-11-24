CREATE DATABASE  IF NOT EXISTS `vortexai` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vortexai`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vortexai
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `building_access`
--

DROP TABLE IF EXISTS `building_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building_access` (
  `access_id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `entry_exit` varchar(10) DEFAULT NULL,
  `access_point` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`access_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_access`
--

LOCK TABLES `building_access` WRITE;
/*!40000 ALTER TABLE `building_access` DISABLE KEYS */;
INSERT INTO `building_access` VALUES (1,22,'2024-11-14 22:06:00','ENTRY','Side Door'),(2,17,'2024-11-14 20:20:00','ENTRY','Main Gate'),(3,6,'2024-11-14 22:48:00','ENTRY','Back Gate'),(4,3,'2024-11-14 21:49:00','EXIT','Side Door'),(5,2,'2024-11-14 22:04:00','ENTRY','Back Gate'),(6,5,'2024-11-14 20:56:00','ENTRY','Main Gate'),(7,19,'2024-11-14 19:45:00','EXIT','Main Gate'),(8,20,'2024-11-14 20:52:00','EXIT','Side Door'),(9,17,'2024-11-14 20:35:00','EXIT','Main Gate'),(10,11,'2024-11-14 22:45:00','ENTRY','Main Gate'),(11,1,'2024-11-14 22:21:00','ENTRY','Side Door'),(12,1,'2024-11-14 22:20:00','EXIT','Main Gate'),(13,10,'2024-11-14 21:35:00','EXIT','Main Gate'),(14,2,'2024-11-14 23:09:00','ENTRY','Parking'),(15,11,'2024-11-14 22:15:00','ENTRY','Side Door'),(16,11,'2024-11-14 20:30:00','EXIT','Side Door'),(17,6,'2024-11-14 20:58:00','EXIT','Back Gate'),(18,26,'2024-11-14 22:23:00','ENTRY','Main Gate'),(19,23,'2024-11-14 21:40:00','EXIT','Parking'),(20,30,'2024-11-14 22:48:00','EXIT','Back Gate'),(21,9,'2024-11-14 21:40:00','ENTRY','Side Door'),(22,2,'2024-11-14 22:30:00','EXIT','Side Door'),(23,24,'2024-11-14 21:47:00','ENTRY','Main Gate'),(24,9,'2024-11-14 21:43:00','EXIT','Parking'),(25,24,'2024-11-14 23:00:00','EXIT','Parking'),(26,5,'2024-11-14 22:01:00','ENTRY','Main Gate'),(27,15,'2024-11-14 23:09:00','EXIT','Back Gate'),(28,2,'2024-11-14 23:20:00','EXIT','Back Gate'),(29,7,'2024-11-14 23:11:00','ENTRY','Main Gate'),(30,9,'2024-11-14 19:36:00','ENTRY','Parking'),(31,21,'2024-11-14 20:05:00','ENTRY','Parking'),(32,24,'2024-11-14 22:12:00','EXIT','Parking'),(33,25,'2024-11-14 21:26:00','ENTRY','Back Gate'),(34,18,'2024-11-14 21:03:00','EXIT','Side Door'),(35,30,'2024-11-14 22:05:00','ENTRY','Back Gate'),(36,30,'2024-11-14 21:15:00','ENTRY','Parking'),(37,16,'2024-11-14 20:20:00','EXIT','Back Gate'),(38,12,'2024-11-14 23:06:00','ENTRY','Parking'),(39,2,'2024-11-14 20:23:00','EXIT','Parking'),(40,5,'2024-11-14 22:51:00','EXIT','Parking'),(41,9,'2024-11-14 19:50:00','EXIT','Side Door'),(42,25,'2024-11-14 21:31:00','ENTRY','Back Gate'),(43,30,'2024-11-14 20:55:00','EXIT','Main Gate'),(44,14,'2024-11-14 22:52:00','EXIT','Main Gate'),(45,15,'2024-11-14 22:14:00','EXIT','Side Door'),(46,16,'2024-11-14 22:23:00','EXIT','Parking'),(47,26,'2024-11-14 20:20:00','EXIT','Back Gate'),(48,2,'2024-11-14 19:59:00','ENTRY','Parking'),(49,21,'2024-11-14 22:45:00','EXIT','Parking'),(50,17,'2024-11-14 23:07:00','EXIT','Side Door');
/*!40000 ALTER TABLE `building_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_devices`
--

DROP TABLE IF EXISTS `employee_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_devices` (
  `device_id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `device_type` varchar(50) DEFAULT NULL,
  `system_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_devices`
--

LOCK TABLES `employee_devices` WRITE;
/*!40000 ALTER TABLE `employee_devices` DISABLE KEYS */;
INSERT INTO `employee_devices` VALUES (1,21,'Laptop','129.245.207.83'),(2,2,'Tablet','2.57.95.218'),(3,28,'Laptop','97.98.136.60'),(4,19,'Laptop','220.181.105.179'),(5,28,'Laptop','97.98.136.60'),(6,13,'Laptop','212.0.222.126'),(7,16,'Desktop','81.225.22.170'),(8,22,'Desktop','101.209.55.185'),(9,17,'Desktop','166.19.192.147'),(10,1,'Desktop','69.20.136.223'),(11,27,'Tablet','20.55.105.192'),(12,15,'Desktop','30.90.171.172'),(13,25,'Desktop','157.122.195.183'),(14,12,'Desktop','66.71.153.92'),(15,5,'Tablet','81.0.14.234'),(16,12,'Desktop','66.71.153.92'),(17,13,'Laptop','212.0.222.126'),(18,12,'Laptop','66.71.153.92'),(19,1,'Laptop','69.20.136.223'),(20,20,'Desktop','154.171.236.54'),(21,8,'Desktop','112.188.22.204'),(22,8,'Tablet','112.188.22.204'),(23,7,'Tablet','77.214.206.107'),(24,28,'Tablet','97.98.136.60'),(25,10,'Tablet','177.43.193.240'),(26,19,'Tablet','220.181.105.179'),(27,21,'Tablet','129.245.207.83'),(28,13,'Laptop','212.0.222.126'),(29,22,'Laptop','101.209.55.185'),(30,6,'Tablet','39.208.50.81'),(31,9,'Tablet','220.144.197.72'),(32,25,'Laptop','157.122.195.183'),(33,11,'Desktop','184.220.181.33'),(34,16,'Tablet','81.225.22.170'),(35,28,'Laptop','97.98.136.60'),(36,17,'Tablet','166.19.192.147'),(37,13,'Desktop','212.0.222.126'),(38,25,'Desktop','157.122.195.183'),(39,16,'Laptop','81.225.22.170'),(40,15,'Tablet','30.90.171.172'),(41,9,'Desktop','220.144.197.72'),(42,28,'Tablet','97.98.136.60'),(43,28,'Tablet','97.98.136.60'),(44,13,'Laptop','212.0.222.126'),(45,1,'Desktop','69.20.136.223'),(46,4,'Laptop','223.124.82.110'),(47,18,'Tablet','145.130.17.70'),(48,3,'Desktop','51.94.194.221'),(49,8,'Tablet','112.188.22.204'),(50,20,'Laptop','154.171.236.54');
/*!40000 ALTER TABLE `employee_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `access_level` int DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Rahul Sharma','AI Research',3,'2024-01-15',181114),(2,'Priya Patel','Engineering',3,'2023-12-05',246813),(3,'Balendra Savant','Data Engineering',3,'2024-09-13',125921),(4,'Dayamai Sengupta','Data Engineering',4,'2024-02-22',210028),(5,'Gavin Pal','Management',3,'2024-05-25',158170),(7,'Avni Naik','Data Engineering',4,'2023-12-14',226776),(8,'Gaurangi Nagarajan','Data Engineering',3,'2024-02-01',216700),(9,'Hemangini Char','Data Engineering',4,'2024-06-25',175997),(10,'Qarin Kade','Machine Learning',4,'2023-12-16',161804),(11,'Ridhi Murthy','AI Research',4,'2023-12-03',199807),(12,'Damyanti Kapoor','Machine Learning',4,'2024-01-20',126419),(13,'Agastya Chawla','Data Engineering',3,'2024-01-17',237275),(14,'Watika Som','Engineering',3,'2024-03-05',157993),(15,'Azad Dalal','Management',3,'2024-04-13',129049),(16,'Udarsh Parikh','Engineering',3,'2024-08-28',137996),(17,'Nathan Jain','AI Research',3,'2024-09-13',161947),(18,'Aradhana Mani','AI Research',3,'2024-09-17',147668),(19,'Vedika Butala','AI Research',3,'2024-04-18',144472),(20,'Bimala Lall','Machine Learning',4,'2024-08-15',128531),(21,'Sarthak Kakar','Machine Learning',4,'2024-04-26',156902),(22,'Madhavi Kaur','Machine Learning',4,'2024-05-12',134815),(23,'Mekhala Palan','Management',3,'2024-01-23',123801),(24,'Lavanya Sidhu','Management',4,'2024-08-16',140141),(25,'Sai Singh','Machine Learning',4,'2023-12-01',120696),(26,'Bishakha Korpal','Data Engineering',3,'2023-12-17',212881),(27,'Eiravati Patil','Management',3,'2024-04-14',197127),(28,'Frado Seshadri','Engineering',3,'2023-12-24',222975),(29,'Henry Chakrabarti','Data Engineering',4,'2024-04-24',210075),(30,'Teerth Verma','AI Research',3,'2024-09-19',170155);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network_traffic`
--

DROP TABLE IF EXISTS `network_traffic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `network_traffic` (
  `traffic_id` int NOT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `source_ip` varchar(15) DEFAULT NULL,
  `destination_ip` varchar(15) DEFAULT NULL,
  `data_size_mb` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`traffic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network_traffic`
--

LOCK TABLES `network_traffic` WRITE;
/*!40000 ALTER TABLE `network_traffic` DISABLE KEYS */;
INSERT INTO `network_traffic` VALUES (1,'2024-11-14 21:03:00','220.144.197.72','130.169.152.144',141.38),(2,'2024-11-14 21:21:00','142.202.0.247','157.238.87.1',424.16),(3,'2024-11-14 21:30:00','2.57.95.218','176.66.82.98',485.02),(4,'2024-11-14 20:44:00','177.43.193.240','190.86.133.61',377.77),(5,'2024-11-14 23:10:00','30.90.171.172','162.63.145.140',406.96),(6,'2024-11-14 19:41:00','211.108.53.227','108.61.40.251',407.30),(7,'2024-11-14 21:39:00','81.225.22.170','218.3.217.54',127.05),(8,'2024-11-14 19:57:00','97.98.136.60','122.17.250.149',373.60),(9,'2024-11-14 22:26:00','77.216.106.102','136.232.98.44',339.39),(10,'2024-11-14 22:11:00','184.220.181.33','189.191.226.102',189.01),(11,'2024-11-14 20:30:00','2.57.95.218','52.167.149.150',288.02),(12,'2024-11-14 22:54:00','2.57.95.218','70.248.4.100',444.78),(13,'2024-11-14 23:09:00','66.71.153.92','188.21.186.189',216.43),(14,'2024-11-14 21:06:00','101.209.55.185','44.132.56.81',69.63),(15,'2024-11-14 19:38:00','101.209.55.185','80.115.8.57',391.23),(16,'2024-11-14 22:37:00','97.98.136.60','136.158.202.20',168.94),(17,'2024-11-14 20:07:00','18.175.160.220','190.38.51.96',186.12),(18,'2024-11-14 22:50:00','8.28.224.185','105.216.8.170',473.00),(19,'2024-11-14 22:35:00','154.171.236.54','169.95.130.51',65.97),(20,'2024-11-14 22:56:00','51.94.194.221','157.228.131.92',291.69),(21,'2024-11-14 21:27:00','145.130.17.70','74.47.46.196',60.09),(22,'2024-11-14 22:38:00','20.55.105.192','75.123.127.249',166.89),(23,'2024-11-14 21:37:00','220.181.105.179','178.171.86.236',273.58),(24,'2024-11-14 20:54:00','77.216.106.102','44.15.228.136',418.42),(25,'2024-11-14 20:37:00','145.130.17.70','149.104.189.198',321.25),(26,'2024-11-14 21:57:00','30.90.171.172','52.197.252.89',430.09),(27,'2024-11-14 21:59:00','69.20.136.223','211.94.252.253',447.07),(28,'2024-11-14 20:15:00','157.122.195.183','62.201.70.44',426.48),(29,'2024-11-14 19:53:00','145.130.17.70','166.239.124.163',348.49),(30,'2024-11-14 20:17:00','2.57.95.218','29.3.246.139',117.08),(31,'2024-11-14 21:06:00','177.43.193.240','136.96.160.218',63.71),(32,'2024-11-14 20:23:00','97.98.136.60','23.206.94.139',336.67),(33,'2024-11-14 20:27:00','51.94.194.221','147.150.157.248',312.02),(34,'2024-11-14 21:33:00','77.214.206.107','35.164.176.216',88.76),(35,'2024-11-14 21:03:00','220.181.105.179','98.179.4.14',170.97),(36,'2024-11-14 20:30:00','157.122.195.183','186.191.64.52',320.09),(37,'2024-11-14 21:22:00','30.90.171.172','62.118.22.22',346.18),(38,'2024-11-14 20:12:00','77.214.206.107','57.218.159.22',179.86),(39,'2024-11-14 20:33:00','77.216.106.102','38.210.77.103',401.58),(40,'2024-11-14 20:58:00','142.202.0.247','157.57.85.231',292.79),(41,'2024-11-14 23:02:00','184.220.181.33','54.112.28.149',98.33),(42,'2024-11-14 20:42:00','145.130.17.70','37.10.55.204',116.11),(43,'2024-11-14 22:14:00','177.43.193.240','63.94.195.84',239.79),(44,'2024-11-14 20:32:00','81.225.22.170','92.146.130.15',307.94),(45,'2024-11-14 21:39:00','8.28.224.185','120.227.132.138',367.72),(46,'2024-11-14 21:13:00','20.55.105.192','17.27.100.51',106.45),(47,'2024-11-14 22:44:00','166.19.192.147','123.35.163.16',350.02),(48,'2024-11-14 22:07:00','77.216.106.102','152.5.83.232',234.81),(49,'2024-11-14 22:22:00','69.20.136.223','110.110.231.60',315.04),(50,'2024-11-14 22:03:00','81.0.14.234','131.143.236.166',102.49);
/*!40000 ALTER TABLE `network_traffic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_interviews`
--

DROP TABLE IF EXISTS `security_interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `security_interviews` (
  `interview_id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `statement` text,
  PRIMARY KEY (`interview_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_interviews`
--

LOCK TABLES `security_interviews` WRITE;
/*!40000 ALTER TABLE `security_interviews` DISABLE KEYS */;
INSERT INTO `security_interviews` VALUES (1,1,'2024-11-15 00:20:00','I stayed late to gather and clean data for our new AI model to improve its training performance.'),(2,2,'2024-11-15 00:52:00','Had to fix some urgent bugs in the system. Copied some files for backup purposes.'),(3,3,'2024-11-15 00:46:00','Was doing routine security checks throughout the night shift.'),(4,4,'2024-11-14 23:41:00','Had to fix some urgent bugs in the system. Copied some files for backup purposes.'),(5,5,'2024-11-15 01:26:00','Had to fix some urgent bugs in the system. Copied some files for backup purposes.'),(6,6,'2024-11-15 00:38:00','I was working on deploying an AI model for a client, and I stayed late to ensure everything went smoothly.'),(7,7,'2024-11-15 00:39:00','Had to fix some urgent bugs in the system. Copied some files for backup purposes.'),(8,8,'2024-11-15 00:43:00','I was involved in data preprocessing for a major machine learning project, which took longer than expected.'),(9,9,'2024-11-15 00:48:00','I was working on deploying an AI model for a client, and I stayed late to ensure everything went smoothly.'),(10,10,'2024-11-15 01:05:00','I was working on deploying an AI model for a client, and I stayed late to ensure everything went smoothly.'),(11,11,'2024-11-15 00:07:00','I had a meeting with a potential AI product partner and stayed late to finalize the presentation and data.'),(12,12,'2024-11-15 00:14:00','I was working on a critical machine learning algorithm and needed extra time to fine-tune it.'),(13,13,'2024-11-15 00:46:00','Had to fix some urgent bugs in the system. Copied some files for backup purposes.'),(14,14,'2024-11-15 01:05:00','Had to fix some urgent bugs in the system. Copied some files for backup purposes.'),(15,15,'2024-11-15 00:13:00','I had a meeting with a potential AI product partner and stayed late to finalize the presentation and data.'),(16,16,'2024-11-15 00:06:00','I was conducting research on the latest deep learning techniques, and I needed the extra hours to analyze the results.'),(17,17,'2024-11-14 23:56:00','I stayed late to gather and clean data for our new AI model to improve its training performance.'),(18,18,'2024-11-15 01:24:00','I stayed late to gather and clean data for our new AI model to improve its training performance.'),(19,19,'2024-11-15 00:45:00','Was doing routine security checks throughout the night shift.'),(20,20,'2024-11-15 00:59:00','I had a meeting with a potential AI product partner and stayed late to finalize the presentation and data.'),(21,21,'2024-11-15 01:22:00','I was conducting research on the latest deep learning techniques, and I needed the extra hours to analyze the results.'),(22,22,'2024-11-15 01:12:00','I was involved in data preprocessing for a major machine learning project, which took longer than expected.'),(23,23,'2024-11-15 00:28:00','I was conducting research on the latest deep learning techniques, and I needed the extra hours to analyze the results.'),(24,24,'2024-11-14 23:34:00','I was working on a critical machine learning algorithm and needed extra time to fine-tune it.'),(25,25,'2024-11-15 01:19:00','I was involved in data preprocessing for a major machine learning project, which took longer than expected.'),(26,26,'2024-11-15 00:54:00','I was optimizing an AI model and stayed late to improve its accuracy before the deployment deadline.'),(27,27,'2024-11-14 23:48:00','I was conducting research on the latest deep learning techniques, and I needed the extra hours to analyze the results.'),(28,28,'2024-11-15 00:22:00','I was working on a critical machine learning algorithm and needed extra time to fine-tune it.'),(29,29,'2024-11-15 00:28:00','I stayed late to gather and clean data for our new AI model to improve its training performance.'),(30,30,'2024-11-14 23:41:00','Was doing routine security checks throughout the night shift.');
/*!40000 ALTER TABLE `security_interviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_logs`
--

DROP TABLE IF EXISTS `system_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_logs` (
  `log_id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `file_accessed` varchar(100) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_logs`
--

LOCK TABLES `system_logs` WRITE;
/*!40000 ALTER TABLE `system_logs` DISABLE KEYS */;
INSERT INTO `system_logs` VALUES (1,4,'2024-11-14 19:57:00','FILE_COPY','design_plan.pdf','223.124.82.110'),(2,2,'2024-11-14 21:00:00','FILE_ACCESS','project_docs.pdf','2.57.95.218'),(3,23,'2024-11-14 22:20:00','FILE_ACCESS','research_notes.txt','211.108.53.227'),(4,2,'2024-11-14 21:30:00','FILE_COPY','ai_model_v2.py','2.57.95.218'),(5,5,'2024-11-14 20:52:00','FILE_ACCESS','project_docs.pdf','81.0.14.234'),(6,7,'2024-11-14 23:25:00','FILE_COPY','server_logs.txt','77.214.206.107'),(7,28,'2024-11-14 21:04:00','SYSTEM_CHECK','server_logs.txt','97.98.136.60'),(8,7,'2024-11-14 23:09:00','SYSTEM_CHECK','server_logs.txt','77.214.206.107'),(9,13,'2024-11-14 22:17:00','FILE_ACCESS','ai_model_v2.py','212.0.222.126'),(10,9,'2024-11-14 19:48:00','SYSTEM_CHECK','management_plan.xlsx','220.144.197.72'),(11,12,'2024-11-14 23:25:00','FILE_ACCESS','server_logs.txt','66.71.153.92'),(12,4,'2024-11-14 21:51:00','SYSTEM_CHECK','management_plan.xlsx','223.124.82.110'),(13,6,'2024-11-14 20:44:00','SYSTEM_CHECK','design_plan.pdf','39.208.50.81'),(14,8,'2024-11-14 19:39:00','SYSTEM_CHECK','project_docs.pdf','112.188.22.204'),(15,19,'2024-11-14 21:00:00','FILE_COPY','management_plan.xlsx','220.181.105.179'),(16,21,'2024-11-14 20:13:00','SYSTEM_CHECK','project_docs.pdf','129.245.207.83'),(17,6,'2024-11-14 20:58:00','FILE_COPY','ai_model_v2.py','39.208.50.81'),(18,18,'2024-11-14 21:17:00','FILE_ACCESS','project_docs.pdf','145.130.17.70'),(19,27,'2024-11-14 19:57:00','SYSTEM_CHECK','design_plan.pdf','20.55.105.192'),(20,18,'2024-11-14 20:04:00','SYSTEM_CHECK','research_notes.txt','145.130.17.70'),(21,6,'2024-11-14 21:39:00','FILE_ACCESS','management_plan.xlsx','39.208.50.81'),(22,25,'2024-11-14 22:18:00','FILE_COPY','ai_model_v2.py','157.122.195.183'),(23,2,'2024-11-14 22:14:00','FILE_COPY','research_notes.txt','2.57.95.218'),(24,2,'2024-11-14 20:37:00','FILE_ACCESS','server_logs.txt','2.57.95.218'),(25,11,'2024-11-14 20:30:00','FILE_ACCESS','research_notes.txt','184.220.181.33'),(26,4,'2024-11-14 20:20:00','SYSTEM_CHECK','research_notes.txt','223.124.82.110'),(27,26,'2024-11-14 22:10:00','SYSTEM_CHECK','research_notes.txt','142.202.0.247'),(28,24,'2024-11-14 20:38:00','FILE_COPY','project_docs.pdf','18.175.160.220'),(29,11,'2024-11-14 23:19:00','FILE_COPY','design_plan.pdf','184.220.181.33'),(30,8,'2024-11-14 20:46:00','SYSTEM_CHECK','ai_model_v2.py','112.188.22.204'),(31,13,'2024-11-14 22:10:00','FILE_COPY','design_plan.pdf','212.0.222.126'),(32,9,'2024-11-14 22:29:00','SYSTEM_CHECK','server_logs.txt','220.144.197.72'),(33,1,'2024-11-14 22:19:00','FILE_ACCESS','ai_model_v2.py','69.20.136.223'),(34,3,'2024-11-14 22:02:00','FILE_ACCESS','server_logs.txt','51.94.194.221'),(35,27,'2024-11-14 21:21:00','SYSTEM_CHECK','security_logs.txt','20.55.105.192'),(36,3,'2024-11-14 21:52:00','FILE_ACCESS','server_logs.txt','51.94.194.221'),(37,16,'2024-11-14 21:16:00','FILE_COPY','ai_model_v2.py','81.225.22.170'),(38,12,'2024-11-14 21:00:00','FILE_ACCESS','ai_model_v2.py','66.71.153.92'),(39,30,'2024-11-14 22:03:00','SYSTEM_CHECK','design_plan.pdf','183.33.37.222'),(40,5,'2024-11-14 20:21:00','FILE_COPY','research_notes.txt','81.0.14.234'),(41,15,'2024-11-14 21:03:00','FILE_ACCESS','server_logs.txt','30.90.171.172'),(42,17,'2024-11-14 20:54:00','FILE_COPY','design_plan.pdf','166.19.192.147'),(43,14,'2024-11-14 23:19:00','FILE_COPY','project_docs.pdf','8.28.224.185'),(44,10,'2024-11-14 22:22:00','FILE_ACCESS','ai_model_v2.py','177.43.193.240'),(45,4,'2024-11-14 20:03:00','SYSTEM_CHECK','server_logs.txt','223.124.82.110'),(46,4,'2024-11-14 22:02:00','FILE_ACCESS','ai_model_v2.py','223.124.82.110'),(47,10,'2024-11-14 19:35:00','SYSTEM_CHECK','ai_model_v2.py','177.43.193.240'),(48,28,'2024-11-14 22:33:00','SYSTEM_CHECK','research_notes.txt','97.98.136.60'),(49,1,'2024-11-14 19:32:00','SYSTEM_CHECK','security_logs.txt','69.20.136.223'),(50,21,'2024-11-14 23:13:00','FILE_COPY','security_logs.txt','129.245.207.83');
/*!40000 ALTER TABLE `system_logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22  0:29:02
