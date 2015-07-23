-- MySQL dump 10.13  Distrib 5.5.44, for Win32 (x86)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_trans` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `small_text` varchar(30) DEFAULT NULL,
  `big_text` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  UNIQUE KEY `id` (`id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Ford','to  broadway',1000000,'The Ford Motor Company (common','The Ford Motor Company (commonly referred to as simply Ford) is an American multinational automaker headquartered in Dearborn, Michigan, a suburb of Detroit. It was founded by Henry Ford and incorporated on June 16, 1903. The company sells automobiles and',1),(1,'mouse','chelyabinsk',150,'small mouse','# Do NOT simply read the instructions in here without understanding # what they do.  TheyTre here only as hints or reminders.  If you are unsure # consult the online docs. You have been warned.  ',8),(1,'mouse','chelyabinsk',150,'small mouse','# Do NOT simply read the instructions in here without understanding # what they do.  TheyTre here only as hints or reminders.  If you are unsure # consult the online docs. You have been warned.  ',9),(2,'Chevy','to  broadway',12300000,'chevy car - uncomfortable','Chevrolet-branded vehicles are sold in most automotive markets worldwide, with the notable exception of Oceania, where GM is represented by their Australian subsidiary, Holden. In 2005, Chevrolet was relaunched in Europe, primarily selling vehicles built ',1),(2,'mouse','chelyabinsk',150,'# Do NOT simply read the instr','# Do NOT simply read the instructions in here without understanding # what they do.  TheyTre here only as hints or reminders.  If you are unsure # consult the online docs. You have been warned.  ',8),(2,'mouse','chelyabinsk',150,'small mouse','# Do NOT simply read the instructions in here without understanding # what they do.  TheyTre here only as hints or reminders.  If you are unsure # consult the online docs. You have been warned.  ',9),(3,'Jeep','to  broadway',2000000,'jeep peep beep beeb','Jeep is a brand of American automobiles that is a division of FCA US LLC (formerly Chrysler Group, LLC), a wholly owned subsidiary of Fiat Chrysler Automobiles.[2][3] The former Chrysler Corporation acquired the Jeep brand, along with the remaining assets',1),(3,'mouse','chelyabinsk',150,'small mouse','# Do NOT simply read the instructions in here without understanding # what they do.  TheyTre here only as hints or reminders.  If you are unsure # consult the online docs. You have been warned.  ',8),(3,'mouse','chelyabinsk',150,'small mouse','# Do NOT simply read the instructions in here without understanding # what they do.  TheyTre here only as hints or reminders.  If you are unsure # consult the online docs. You have been warned.  ',9),(4,'potatoes','to auchan',200,'small text about potatoes','The potato is a starchy, tuberous crop from the perennial nightshade Solanum tuberosum L. The word \"potato\" may refer either to the plant itself or to the edible tuber.[2] In the Andes, where the species is indigenous, there are some other closely related',0),(4,'mouse','chelyabinsk',150,'small mouse','# Do NOT simply read the instructions in here without understanding # what they do.  TheyTre here only as hints or reminders.  If you are unsure # consult the online docs. You have been warned.  ',8),(4,'mouse','chelyabinsk',150,'small mouse','# Do NOT simply read the instructions in here without understanding # what they do.  TheyTre here only as hints or reminders.  If you are unsure # consult the online docs. You have been warned.  ',9),(5,'tomatoes','to auchan',300,'small text about tomatoes','The tomato is the edible, often red fruit/berry of the nightshade Solanum lycopersicum,[1][2] commonly known as a tomato plant. The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is',0),(5,'mouse','chelyabinsk',150,'small mouse','# Do NOT simply read the instructions in here without understanding # what they do.  TheyTre here only as hints or reminders.  If you are unsure # consult the online docs. You have been warned.  ',9),(6,'mouse','chelyabinsk',150,'small mouse','# Do NOT simply read the instructions in here without understanding # what they do.  TheyTre here only as hints or reminders.  If you are unsure # consult the online docs. You have been warned.  ',8);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-18 11:35:15
