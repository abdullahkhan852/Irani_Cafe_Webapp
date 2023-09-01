-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: mishtidb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Admin','admin@gmail.com','12345');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `short_desc` varchar(250) NOT NULL,
  `long_desc` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (7,'Breakfast Brunch','Classic Breakfast Platter:\r\nTea,\r\nCoffee,\r\nBun Maska,\r\nLamington Cake,\r\nOmlette,\r\nScrambled Eggs,ETC','Start your day right with our café\'s delicious breakfast offerings. From Special Irani Tea to freshly baked cakes and pastries our menu has something to satisfy every craving. Indulge in freshly brewed coffee and enjoy the warm and inviting atmosphere.'),(8,'Daily Special','Our Daily Special Menu:\r\n','Daily speciality at our cafe is a delightful offering that will satisfy your cravings and leave you feeling energized. Our menu features a variety of flavorful options to suit different tastes and dietary preferences.'),(9,'Lunch ','Lunch Menu Consists of','\"We serve up a delectable array of culinary delights to satiate your midday appetite. Our lunch menu is thoughtfully crafted to offer a diverse range of flavors and options to suit every taste and preference.\r\nStep into our inviting ambiance and prepare to be delighted by our lunch offerings. From freshly prepared salads bursting with vibrant colors and crisp textures\" '),(10,'Biryani\'s menu','Biryani Menu','\"Experience the flavors of authentic and aromatic biryanis at our cafe. Our biryanis are a celebration of culinary craftsmanship, combining fragrant basmati rice, tender chicken or vegetables, and a harmonious blend of spices and herbs.\r\nBiryani is an exquisite and highly regarded dish that  has gained worldwide recognition for its tantalizing flavors and aromatic appeal. \"\r\n'),(11,'Deserts','Desert Menu','\"We offer a divine selection of heavenly delights to satisfy your cravings and indulge your senses. Our menu is carefully curated to encompass a variety of irresistible treats that are sure to transport you to a realm of pure bliss.\"');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cat_id` int NOT NULL,
  `fname` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (2,7,'Irani Tea and Bun Maska ','\"Irani tea is known for its robust and full-bodied flavor. The tea leaves used are typically Ceylon black tea, which lends a rich and deep taste\"',100),(3,7,'Coffee                 ',' We source only the finest Arabica beans, known for their superior quality and exquisite taste. Grown in high-altitude regions, these beans possess a delicate acidity and a wide range of flavor profiles, ensuring a memorable coffee experience.',30),(5,7,'Egg Role         ','This is a North Indian Pop Food. Everybody likes it so damn very much.',145),(8,8,'Iranian Joojeh Kebab','This is a Irani Pop Food. Everybody likes it so damn very much.',100),(9,10,'Mutton Dum Biryani         ','Each biryani is meticulously prepared, with every grain of rice cooked to perfection. The rice is infused with the aromatic essence of saffron, cardamom, and other spices, creating a tantalizing aroma that fills the air. The layers of rice and tender',280),(10,10,'Chicken Dum Biryani         ','Each biryani is meticulously prepared, with every grain of rice cooked to perfection. The rice is infused with the aromatic essence of saffron, cardamom, and other spices, creating a tantalizing aroma that fills the air. The layers of rice and tender',220),(11,8,'Cherry Pulao           ','This food is so much popular even in India. It tastes like Chowmein but with Gravy. ',130),(15,9,'Dosa         ','I love Dosa very much. Its a South Indian Food and Everybody loves it!',40);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(10) NOT NULL,
  `food_id` varchar(10) NOT NULL,
  `food_name` varchar(30) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `timestamp` varchar(50) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `totalprice` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (8,'35','2','Irani Tea and Bun Maska ',1,'Aayush Shah','03:08:2023 05:53:26pm','9765696939','Khadki','100'),(9,'35','2','Irani Tea and Bun Maska ',1,'Aayush Shah','03:08:2023 06:01:57pm','9765696939','Khadki','100'),(10,'35','2','Irani Tea and Bun Maska ',1,'Aayush Shah','03:08:2023 06:03:17pm','9765696939','Khadki','100'),(11,'35','3','Coffee                 ',3,'Aayush Shah','03:08:2023 06:06:09pm','9765696939','Khadki','90'),(12,'35','2','Irani Tea and Bun Maska ',3,'Aayush Shah','03:08:2023 06:07:03pm','9765696939','Khadki','300'),(18,'35','2','Irani Tea and Bun Maska ',1,'Aayush Shah','03:08:2023 07:45:32pm','9765696939','Khadki','100'),(19,'35','2','Irani Tea and Bun Maska ',1,'Aayush Shah','03:08:2023 07:49:55pm','9765696939','Khadki','100'),(20,'35','2','Irani Tea and Bun Maska ',1,'Aayush Shah','03:08:2023 07:50:56pm','9765696939','Khadki','100'),(21,'35','2','Irani Tea and Bun Maska ',1,'Aayush Shah','03:08:2023 07:53:34pm','9765696939','Khadki','100'),(22,'35','15','Dosa         ',1,'Aayush Shah','03:08:2023 08:07:11pm','9765696939','Khadki','40'),(23,'35','15','Dosa         ',6,'Aayush Shah','03:08:2023 08:07:40pm','9765696939','Khadki','240'),(24,'35','15','Dosa         ',3,'Aayush Shah','04:08:2023 07:21:53pm','9765696939','Khadki','120'),(25,'35','3','Coffee                 ',3,'Aayush Shah','04:08:2023 07:27:01pm','9765696939','Khadki','90');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `timestamp` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Abdulla','abd@gmail.com','12345','06:08:2019 01:40:08am','8329328012','Vimannagar,Pune-411021'),(4,'Faizan Shaikh','faizanshaikh2100@gmail.com','yedtutti','31:07:2023 01:54:10pm','9518944598','Dighi-pune'),(5,'Aayush Shah','ayush@gmail.com','12345','31:07:2023 01:58:20pm','8945454578','Khadki,Pune'),(6,'Yash Thakkar','asd2@gmail.com','12','31:07:2023 01:59:37pm','48984556565','Pune'),(7,'farookh khan','fkhan@gmail.com','932588','02:08:2023 11:09:35am',NULL,NULL),(8,'Aayush ','aayush123@gmail.com','12345','02:08:2023 12:44:33pm',NULL,NULL),(9,'hasgg','yafsvhjk@gmail.com','12345','02:08:2023 12:48:05pm',NULL,NULL),(10,'Pratik','ashish123@gmial.com','12345','02:08:2023 01:00:26pm',NULL,NULL),(11,'hplkjhgfytgui','yyuikt@gmail.com','12345','','1234685','hbuhwiojd'),(12,'hplkjhgfytgui','yyuikt@gmail.com','12345','','1234685','hbuhwiojd'),(13,'hplkjhgfytgui','yyuikt@gmail.com','12345','','1234685','hbuhwiojd'),(14,'hplkjhgfytgui','yyuikt@gmail.com','12345','','1234685','hbuhwiojd'),(15,'hplkjhgfytgui','yyuikt@gmail.com','12345','','1234685','hbuhwiojd'),(16,'hplkjhgfytgui','yyuikt@gmail.com','12345','','1234685','hbuhwiojd'),(17,'hplkjhgfytgui','yyuikt@gmail.com','12345','','1234685','hbuhwiojd'),(18,'IUGYF2IOK','hwgecgdj@gmail.com','12345','','175272856','viman nagar'),(19,'IUGYF2IOK','hwgecgdj@gmail.com','12345','','175272856','viman nagar'),(20,'IUGYF2IOK','hwgecgdj@gmail.com','12345','','175272856','viman nagar'),(21,'IUGYF2IOK','hwgecgdj@gmail.com','12345','','175272856','viman nagar'),(22,'IUGYF2IOK','hwgecgdj@gmail.com','12345','','175272856','viman nagar'),(23,'yeuiokwd','jhgru2@gmail.com','12345','','12546165','yuwofkuwyetvf'),(24,'yeuiokwd','jhgru2@gmail.com','12345','','12546165','yuwofkuwyetvf'),(25,'yeuiokwd','jhgru2@gmail.com','12345','','12546165','yuwofkuwyetvf'),(26,'yeuiokwd','jhgru2@gmail.com','12345','','12546165','yuwofkuwyetvf'),(27,'yeuiokwd','jhgru2@gmail.com','12345','','12546165','yuwofkuwyetvf'),(28,'bdjeg','jwbhebfjw@mai','12345','','8648678645','wuyvfwuijd'),(29,'bdjeg','jwbhebfjw@mai','12345','02:08:2023 10:19:53am','8648678645','wuyvfwuijd'),(30,'bdjeg','jwbhebfjw@mai','12345','02:08:2023 10:19:53am','8648678645','wuyvfwuijd'),(31,'bdjeg','jwbhebfjw@mai','12345','02:08:2023 10:19:53am','8648678645','wuyvfwuijd'),(32,'bdjeg','jwbhebfjw@mai','12345','02:08:2023 10:19:53am','8648678645','wuyvfwuijd'),(33,'bdjeg','jwbhebfjw@mai','12345','02:08:2023 10:19:54am','8648678645','wuyvfwuijd'),(34,'iwyut2','oihwgyfrui@ejg','12345','02:08:2023 10:20:15am','1358545','wuygfwuij'),(35,'Aayush Shah','aayushshah605@gmail.com','12345','02:08:2023 10:24:47am','9765696939','Khadki'),(36,'aayusb','aayub@123gmail.com','12345','02:08:2023 10:29:44am','3293838393020','rhyg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-05  0:08:30
