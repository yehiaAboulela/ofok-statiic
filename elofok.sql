-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: elofoknew
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abouts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `about_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abouts`
--

LOCK TABLES `abouts` WRITE;
/*!40000 ALTER TABLE `abouts` DISABLE KEYS */;
INSERT INTO `abouts` VALUES (4,'<h1 style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding: 0px; border: 0px; outline: none; line-height: 1.3; font-size: 36px; font-family: Nunito, sans-serif; color: rgb(51, 51, 51);\">Special Doctors Are Dedicated to Our Patients</h1><div><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">Elofok Medical Center is distinguished by the presence of fully equipped operating rooms with the latest medical equipment to perform all surgical operations &amp; is accompanied by a recovery &amp; care room equipped with all facilities to ensure the highest levels of safety for our patients after surgery.</span><br style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">Our services are completed with specialized units for non-invasive intervention, including Urodynamic Unit, Extracorporeal Shock Wave Lithotripsy (ESWL) Unit, a specialized unit for the therapeutic &amp; surgical treatments of benign &amp; malignant prostate diseases &amp; a specialized unit for erectile dysfunction.</span><br></div>','psum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at upsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at upsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at upsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum khalil ridens expetenda id sit, at u','uploads/website-images/about-2024-01-18-10-16-00-4061.jpg','uploads/website-images/about-background-2022-02-26-07-47-57-1280.jpg','<h1><b>Our Mission</b></h1><p><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif; text-align: center;\">providing the best medical services under the supervision of eminent specialized consultants and surgeons, according to the latest international medical protocols, and using the latest medical equipment.</span><br></p>','uploads/website-images/mission-2021-10-26-12-04-31-5341.jpg','<h1><span style=\"font-weight: bolder;\">Our Vision</span></h1><p><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif; text-align: center;\">We aim to become a destination for Urology &amp; Nephrology patients, as well as Andrology ones, both inside and outside Egypt.</span><br></p>','uploads/website-images/mission-2021-10-26-12-04-44-8431.jpg','2021-07-12 01:11:22','2024-01-18 20:19:50');
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `admin_type` int NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (4,'Elofok Admin','admin@gmail.com','$2y$10$jK4SomtU9eXhtSPpkHrLp..6WwdOCdfSS1yMyRpvg5TBxAjicQY4q','uploads/website-images/John Doe-2021-10-26-12-45-24-3851.jpg','6LuL6f5azk4H0bZjukg0O1ONaYdYGnVl0Q3bcHC7Mc6kS5mOwjdztgTMld5t9E5fv7mVtOkQA7HE5DmiqtIsn32H0R7O6g9kfm4I',1,1,'RIPXNx1N7LYBIczoY2xJiLT8IthZhpIUgTqrSYYwYceZoruz5epiTFdJSxTP','2021-06-25 23:14:28','2024-01-18 16:43:56'),(9,'John Peter','john@gmail.com','$2y$10$tfhP/W1b7NzP5Up8sK35wOrPJJo0wlcAQA4WjSArO4k3QHtcEXDN6','uploads/website-images/John Peter-2021-07-13-12-09-24-5551.jpg',NULL,1,0,NULL,'2021-07-13 05:59:06','2024-01-10 04:46:25'),(11,'Ibrahim Khalil','admin100@gmail.com','$2y$10$INeoaI/iUQzx3pkc59xcG.9FIXF9VAzWz0/9tCT4E3qmZkSpb7EkK',NULL,NULL,1,0,NULL,'2021-10-26 06:54:15','2021-10-26 06:54:15');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advice`
--

DROP TABLE IF EXISTS `advice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advice` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `appointment_id` int NOT NULL,
  `advice` text COLLATE utf8mb4_unicode_ci,
  `test_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advice`
--

LOCK TABLES `advice` WRITE;
/*!40000 ALTER TABLE `advice` DISABLE KEYS */;
INSERT INTO `advice` VALUES (1,22,'N/A',NULL,'N/A','2021-07-13 19:09:34','2021-07-26 02:58:05'),(2,2,'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem',NULL,'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem','2021-07-26 03:32:44','2021-10-26 07:09:24'),(3,4,'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem',NULL,'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem','2021-07-26 03:38:42','2021-10-26 07:06:48'),(4,6,NULL,NULL,NULL,'2021-08-07 16:28:27','2021-08-07 16:28:27'),(6,13,'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem',NULL,'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem','2021-10-24 01:22:57','2021-10-26 07:06:22'),(7,17,'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem',NULL,'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem','2021-10-26 07:03:47','2022-04-12 03:18:01'),(8,60,'test',NULL,'test','2023-11-08 04:33:14','2023-11-08 04:33:25');
/*!40000 ALTER TABLE `advice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `doctor_id` int NOT NULL,
  `user_id` int NOT NULL,
  `day_id` int NOT NULL,
  `schedule_id` int NOT NULL,
  `date` date NOT NULL,
  `appointment_fee` double NOT NULL,
  `payment_status` tinyint NOT NULL DEFAULT '0',
  `payment_transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_description` text COLLATE utf8mb4_unicode_ci,
  `blood_pressure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pulse_rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temperature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem_description` text COLLATE utf8mb4_unicode_ci,
  `habits` text COLLATE utf8mb4_unicode_ci,
  `already_treated` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (64,45,12,1,1,20,'2024-01-27',65,1,NULL,'Bank Transfer','NBE\r\n2345678765432',NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-22 04:32:40','2024-01-22 04:42:07'),(65,46,11,1,3,21,'2024-01-29',10,1,'txn_3ObmQeHWLjS9yT0S0JXiGcvi','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 20:02:24','2024-01-23 20:02:24'),(66,47,11,1,3,21,'2024-01-29',10,1,'txn_3Obn8fHWLjS9yT0S0yUX0xl3','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 20:47:54','2024-01-23 20:47:54'),(67,48,11,1,3,21,'2024-01-29',10,1,'txn_3Obn9JHWLjS9yT0S0MuR2wbQ','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 20:48:33','2024-01-23 20:48:33'),(68,49,11,1,3,21,'2024-01-29',10,1,'txn_3ObnCgHWLjS9yT0S1xSunTjo','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 20:52:03','2024-01-23 20:52:03'),(69,50,11,1,3,21,'2024-01-29',10,1,'txn_3ObnPOHWLjS9yT0S0i3kyUVU','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:05:11','2024-01-23 21:05:11'),(70,51,11,1,3,21,'2024-01-29',10,1,'txn_3ObnQ6HWLjS9yT0S14vhkPea','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:05:54','2024-01-23 21:05:54'),(71,52,11,1,3,21,'2024-01-29',10,1,'txn_3ObnReHWLjS9yT0S11yPoZj4','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:07:31','2024-01-23 21:07:31'),(72,53,11,1,3,21,'2024-01-29',10,1,'txn_3ObnSGHWLjS9yT0S0y7C2wMm','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:08:09','2024-01-23 21:08:09'),(73,54,11,1,3,21,'2024-01-29',10,1,'txn_3ObnTiHWLjS9yT0S0dOyQKMU','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:09:39','2024-01-23 21:09:39'),(74,55,11,1,3,21,'2024-01-29',10,1,'txn_3ObnUPHWLjS9yT0S1M0mrOPt','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:10:21','2024-01-23 21:10:21'),(75,56,11,1,3,21,'2024-01-29',10,1,'txn_3ObnWBHWLjS9yT0S0acg5Mre','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:12:12','2024-01-23 21:12:12'),(76,57,11,1,3,21,'2024-01-29',10,1,'txn_3ObndrHWLjS9yT0S1XfgHav0','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:20:08','2024-01-23 21:20:08'),(77,58,11,1,3,21,'2024-01-29',10,1,'txn_3ObngkHWLjS9yT0S0NS24qad','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:23:07','2024-01-23 21:23:07'),(78,59,11,1,3,21,'2024-01-29',10,1,'txn_3ObnhLHWLjS9yT0S0pwSA53x','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:23:44','2024-01-23 21:23:44'),(79,60,11,1,3,21,'2024-01-29',10,1,'txn_3Obnl0HWLjS9yT0S1foOngar','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:27:31','2024-01-23 21:27:31'),(80,61,11,1,3,21,'2024-01-29',10,1,'txn_3ObnlpHWLjS9yT0S15aeE3xN','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:28:21','2024-01-23 21:28:21'),(81,62,11,1,3,21,'2024-01-29',10,1,'txn_3ObnmYHWLjS9yT0S0QfnsOlK','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:29:07','2024-01-23 21:29:07'),(82,63,11,1,3,21,'2024-01-29',10,1,'txn_3ObnqmHWLjS9yT0S0OSedMjh','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:33:29','2024-01-23 21:33:29'),(83,64,11,1,3,21,'2024-01-29',10,1,'txn_3ObnreHWLjS9yT0S0gpBIzpb','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:34:22','2024-01-23 21:34:22'),(84,65,11,1,3,21,'2024-01-29',10,1,'txn_3ObnuTHWLjS9yT0S1BuN7CrM','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:37:18','2024-01-23 21:37:18'),(85,66,11,1,3,21,'2024-01-29',10,1,'txn_3ObnvMHWLjS9yT0S0VeGJqLb','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-23 21:38:13','2024-01-23 21:38:13'),(86,67,11,21,3,21,'2024-01-29',10,1,'txn_3OcTfgHWLjS9yT0S0JOr9Ecf','Stripe',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2024-01-25 18:12:49','2024-01-25 18:12:49');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_images`
--

DROP TABLE IF EXISTS `banner_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe_us` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us_bg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_and_condition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_and_policy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_profile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_images`
--

LOCK TABLES `banner_images` WRITE;
/*!40000 ALTER TABLE `banner_images` DISABLE KEYS */;
INSERT INTO `banner_images` VALUES (1,'uploads/website-images/admin_login-banner-2023-12-20-01-24-23-2840.jpg','uploads/website-images/doctor_login-banner-2023-12-20-01-17-35-4325.png','uploads/website-images/about-us-banner-2021-10-26-02-16-19-7998.png','uploads/website-images/subscribe-us-banner-2021-10-26-11-54-46-5492.jpg','uploads/website-images/doctor-banner-2021-10-26-02-16-34-9212.png','uploads/website-images/service-banner-2021-10-26-02-16-43-6646.png','uploads/website-images/department-banner-2021-10-26-02-18-01-2182.png','uploads/website-images/testimonial-banner-2021-10-26-02-17-42-5311.png','uploads/website-images/faq-banner-2021-10-26-02-18-30-3126.png','uploads/website-images/contact-banner-2021-10-26-02-18-38-9560.png','uploads/website-images/profile-banner-2021-10-26-02-18-47-4375.png','uploads/website-images/login-banner-2021-10-26-02-18-58-5638.png','uploads/website-images/payment-banner-2021-10-26-02-19-06-5221.png','uploads/website-images/overview-banner-2021-07-13-04-02-53-5069.png','default-images/about-us-banner-2021-07-11-06-16-08-2518.jpg','uploads/website-images/custom_page-banner-2021-10-26-02-19-13-3204.png','uploads/website-images/blog-banner-2021-10-26-02-19-21-8242.png','uploads/website-images/terms_and_condition-banner-2021-10-26-02-19-39-5629.png','uploads/website-images/privacy_and_policy-banner-2021-10-26-02-19-28-7782.png','uploads/website-images/default_profile-2021-10-26-12-49-24-9466.jpg',NULL,'2023-12-20 07:24:23');
/*!40000 ALTER TABLE `banner_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` VALUES (1,'Nephrology','nephrology',1,'2021-07-13 03:43:06','2024-01-18 15:11:59'),(2,'Urology','urology',1,'2021-07-13 03:46:40','2024-01-18 15:12:12'),(20,'Andrology','andrology',1,'2021-07-13 08:40:44','2024-01-18 15:12:34'),(22,'General Surgery','general-surgery',1,'2024-01-18 15:40:04','2024-01-18 15:40:04');
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comments`
--

DROP TABLE IF EXISTS `blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comments`
--

LOCK TABLES `blog_comments` WRITE;
/*!40000 ALTER TABLE `blog_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blog_category_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `show_feature_blog` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,1,'Perfect Water Intake','perfect-water-intake','Perfect Water Intake','<div class=\"hf-elementor-layout elementor-element elementor-element-13bec4e elementor-widget elementor-widget-section_title\" data-id=\"13bec4e\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 30px 0px 0px; padding: 0px;\"><div class=\"iq-title-box iq-title-box-1 iq-befor-line\" style=\"margin: 0px;\"><h4 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h4); font-size: var(--font-size-h4); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title); letter-spacing: var(--font-letter-spacing-h4);\"><b>What’s The Perfect Daily Water Intake That Could Balance All The Body Functions?</b></h4><p class=\"iq-title-desc\" style=\"margin: 15px 0px; line-height: 1.66em;\">Adequate water intake is essential for maintaining optimal body functions, as water plays a vital role in various physiological processes. However, determining the perfect daily water intake that balances all body functions could be challenging. This article aims to provide guidelines for individuals without kidney complications and discusses exceptions for patients with kidney failure or kidney stones. Understanding the significance of water consumption and recognizing the unique requirements for individuals with kidney-related conditions is crucial for promoting overall health and well-being.</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-9ca5de3 elementor-widget elementor-widget-section_title\" data-id=\"9ca5de3\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 30px 0px 0px; padding: 0px;\"><div class=\"iq-title-box iq-title-box-1 iq-befor-line\" style=\"margin: 0px;\"><div class=\"iq-title-icon\"></div><h4 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h4); font-size: var(--font-size-h4); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title); letter-spacing: var(--font-letter-spacing-h4);\"><b>1. Introduction</b></h4><p class=\"iq-title-desc\" style=\"margin: 15px 0px; line-height: 1.66em;\">Water is a fundamental component of the human body, accounting for approximately 60% of an adult’s total body weight. It serves as a medium for nutrient transportation, waste elimination, temperature regulation, and numerous biochemical reactions. Maintaining an optimal water balance is essential for supporting various body functions and promoting overall health.</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-6bfe616 elementor-widget elementor-widget-section_title\" data-id=\"6bfe616\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 15px 0px;\"><div class=\"iq-title-box iq-title-box-1 iq-befor-line\" style=\"margin: 0px;\"><div class=\"iq-title-icon\"></div><h4 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h4); font-size: var(--font-size-h4); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title); letter-spacing: var(--font-letter-spacing-h4);\"><b>2. Daily Water Intake Recommendations</b></h4><p class=\"iq-title-desc\" style=\"margin: 15px 0px; line-height: 1.66em;\">The adequate daily water intake varies depending on several factors, including age, sex, level of physical activity, climate, and overall health status. The general recommendation for adults is to consume approximately 2-3 liters (8-12 cups) of water per day. However, individual needs may vary, and additional factors should be considered.</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-fbfe123 elementor-widget elementor-widget-section_title\" data-id=\"fbfe123\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 15px 0px;\"><div class=\"iq-title-box iq-title-box-1 iq-befor-line\" style=\"margin: 0px; padding: 0px;\"><div class=\"iq-title-icon\"></div><h4 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h4); font-size: var(--font-size-h4); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title); letter-spacing: var(--font-letter-spacing-h4);\"><b>3. Factors Influencing Water Requirements</b></h4></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-d8e3fed elementor-widget elementor-widget-text-editor\" data-id=\"d8e3fed\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><ul style=\"padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Physical Activity:</span>&nbsp;Engaging in physical exercise increases water loss through perspiration and requires additional fluid intake to compensate for the loss.<br><br></li><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Climate:</span>&nbsp;Hot and humid climates increase perspiration, necessitating higher water intake to prevent dehydration.<br><br></li><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Health Conditions:</span>&nbsp;Certain medical conditions, such as fever, diarrhea, and vomiting, increase fluid loss and may require increased water intake.</li></ul></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-f7c6b1f elementor-widget elementor-widget-section_title\" data-id=\"f7c6b1f\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 15px 0px; padding: 0px;\"><div class=\"iq-title-box iq-title-box-1 iq-befor-line\" style=\"margin: 0px;\"><div class=\"iq-title-icon\"></div><h4 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h4); font-size: var(--font-size-h4); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title); letter-spacing: var(--font-letter-spacing-h4);\"><b>4. Kidney Failure And Water Intake</b></h4></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-8358c14 elementor-widget elementor-widget-text-editor\" data-id=\"8358c14\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">Patients with kidney failure may experience compromised kidney function, resulting in an impaired ability to regulate fluid balance. Water intake recommendations for these individuals should be determined by their healthcare provider, based on their specific condition, treatment plan (e.g., dialysis), and overall health status. Strict fluid restriction may be necessary to prevent fluid overload and its associated complications.<br>&gt;&gt;&gt;&nbsp;<a href=\"https://www.pulslytics.co/book-now/\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Book now with your consultant</a></p></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-2fd4277 elementor-widget elementor-widget-section_title\" data-id=\"2fd4277\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 15px 0px; padding: 0px;\"><div class=\"iq-title-box iq-title-box-1 iq-befor-line\" style=\"margin: 0px;\"><div class=\"iq-title-icon\"></div><h4 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h4); font-size: var(--font-size-h4); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title); letter-spacing: var(--font-letter-spacing-h4);\"><b>5. Kidney Stones And Water Intake</b></h4></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-521c6d5 elementor-widget elementor-widget-text-editor\" data-id=\"521c6d5\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">Increased fluid intake is generally recommended for patients with a history of kidney stones. Adequate hydration helps dilute urine and prevent the formation of crystals or stones. The recommended daily water intake for individuals with kidney stones is typically higher than the general population, often exceeding 3 liters (12 cups) per day. However, the exact amount may vary depending on the type of kidney stone and individual factors. Consultation with a healthcare professional or a registered dietitian is advised for personalized recommendations.<br>&gt;&gt;&gt;&nbsp;<a href=\"https://www.pulslytics.co/book-now/\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Book now with your consultant</a></p></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-9b0d2c3 elementor-widget elementor-widget-section_title\" data-id=\"9b0d2c3\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 15px 0px; padding: 0px;\"><div class=\"iq-title-box iq-title-box-1 iq-befor-line\" style=\"margin: 0px;\"><div class=\"iq-title-icon\"></div><h4 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h4); font-size: var(--font-size-h4); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title); letter-spacing: var(--font-letter-spacing-h4);\"><b>6. Conclusion</b></h4></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-58ad2ba elementor-widget elementor-widget-text-editor\" data-id=\"58ad2ba\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">Maintaining an optimal daily water intake is crucial but it also has individual variations. So, patients with kidney failure or kidney stones require special considerations, and their water intake should be determined by healthcare professionals. Consulting with a healthcare provider or registered dietitian is essential for personalized recommendations tailored to individual circumstances.<br>&gt;&gt;&gt;&nbsp;<a href=\"https://www.pulslytics.co/book-now/\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Book now with your consultant</a></p></div></div>','Perfect Water Intake','Perfect Water Intake','uploads/custom-images/blog-thumbnail-2024-01-18-05-18-46-5692.jpg','uploads/custom-images/blog-feature-2024-01-18-05-18-46-3811.jpg',1,1,'2021-07-13 04:00:22','2024-01-18 15:18:46'),(2,2,'Incontinence Is A Nightmare','incontinence-is-a-nightmare','Incontinence Is A Nightmare','<div class=\"hf-elementor-layout elementor-element elementor-element-3f8840f elementor-widget elementor-widget-section_title\" data-id=\"3f8840f\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 30px 0px 0px; padding: 0px;\"><div class=\"iq-title-box iq-title-box-1 iq-befor-line\" style=\"margin: 0px;\"><h4 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h4); font-size: var(--font-size-h4); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title); letter-spacing: var(--font-letter-spacing-h4);\"><b>Incontinence: A Nightmare That Can Be Overcome</b></h4><p class=\"iq-title-desc\" style=\"margin: 15px 0px; line-height: 1.66em;\">Incontinence is a distressing condition that affects millions of people worldwide, it is important to recognize that incontinence is not an irreversible problem. Incontinence is characterized by the involuntary loss of urine, resulting in an inability to control bladder. It can occur due to a variety of underlying factors, including weak pelvic floor muscles, nerve damage, anatomical abnormalities, or certain medical conditions.</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-3d39da8 elementor-widget elementor-widget-section_title\" data-id=\"3d39da8\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 30px 0px 0px; padding: 0px;\"><div class=\"iq-title-box iq-title-box-1 iq-befor-line\" style=\"margin: 0px;\"><div class=\"iq-title-icon\"></div><h4 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h4); font-size: var(--font-size-h4); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title); letter-spacing: var(--font-letter-spacing-h4);\"><b>What Are The Main Causes Of Incontinence?</b></h4></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-fd38b82 elementor-widget elementor-widget-text-editor\" data-id=\"fd38b82\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">Understanding the causes of incontinence is crucial for effective management.<br>Risk factors that play a significant role:</p><ul style=\"padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: inherit;\">Age</li><li style=\"list-style: inherit;\">Gender</li><li style=\"list-style: inherit;\">Pregnancy</li><li style=\"list-style: inherit;\">Repeated delivery</li><li style=\"list-style: inherit;\">Obesity</li></ul><p style=\"margin: 15px 0px; line-height: 1.66em;\">Additional to other specific conditions, such as urinary tract infections, neurological disorders, &amp; hormonal imbalances, that can contribute to the development of incontinence.</p></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-52344c3 elementor-widget elementor-widget-section_title\" data-id=\"52344c3\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 15px 0px;\"><div class=\"iq-title-box iq-title-box-1 iq-befor-line\" style=\"margin: 0px;\"><div class=\"iq-title-icon\"></div><h4 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h4); font-size: var(--font-size-h4); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title); letter-spacing: var(--font-letter-spacing-h4);\"><b>Types &amp; Symptoms Of Urinary Incontinence:</b></h4></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-a392bb3 elementor-widget elementor-widget-text-editor\" data-id=\"a392bb3\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">Many people experience occasional, minor leaks of urine. Others may lose small to moderate amounts of urine more frequently.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">So, we need to understand all types of Urinary Incontinence:</p><ul style=\"padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Stress incontinence:&nbsp;</span>Urine leaks when you exert pressure on your bladder by coughing, sneezing, laughing, exercising, or lifting something heavy.<span style=\"font-weight: var(--font-weight-bold)er;\"><br></span></li></ul><ul style=\"padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Urge incontinence:&nbsp;</span>You have a sudden, intense urge to urinate followed by an involuntary loss of urine. You may need to urinate often, including throughout the night. Urge incontinence may be caused by a minor condition, such as infection, or a more severe condition such as a neurological disorder or diabetes.</li><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Overflow incontinence:&nbsp;</span>You experience frequent or constant dribbling of urine due to a bladder that doesn’t empty completely.</li></ul><ul style=\"padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Fistula Incontinence<br><br></span></li><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Functional Incontinence:&nbsp;</span>Due to physical disability resulting from a congenital defect, an accident, a previous surgery, or an impairment of consciousness.<br><br></li><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Mixed incontinence:&nbsp;</span>You experience more than one type of urinary incontinence, most often this refers to a combination of stress incontinence and urge incontinence.</li></ul></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-3e947fa elementor-widget elementor-widget-section_title\" data-id=\"3e947fa\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 15px 0px;\"><div class=\"iq-title-box iq-title-box-1 iq-befor-line\" style=\"margin: 0px; padding: 0px;\"><div class=\"iq-title-icon\"></div><h4 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h4); font-size: var(--font-size-h4); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title); letter-spacing: var(--font-letter-spacing-h4);\"><b>Diagnosis Of Urinary Incontinence:</b></h4></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-b1fe698 elementor-widget elementor-widget-text-editor\" data-id=\"b1fe698\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">Urinary incontinence is common, increases in prevalence with age, &amp; affects quality of life for Children, men &amp; women. The initial evaluation occurs with the urologist; the basic workup is aimed at identifying possible reversible causes.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">The next step is to determine the type of incontinence (urge, stress, overflow, or mixed) and the urgency. a review of the patient’s completed voiding diary, a physical examination, &amp;, if stress incontinence is suspected, a cough stress test. Other components of the evaluation include laboratory tests &amp; measurement of post void residual urine volume. If the type of urinary incontinence is still not clear, or if red flags such as hematuria, obstructive symptoms, or recurrent urinary tract infections are present, referral to a urologist or urogynecologist should be considered.<br><span style=\"font-weight: var(--font-weight-bold)er;\">&gt;&gt;&gt;&gt;&gt;&gt;&nbsp;<a href=\"https://www.pulslytics.co/book-now/\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Book now with our Urologists</a></span></p><p style=\"margin: 15px 0px; line-height: 1.66em;\">The&nbsp;<span style=\"font-weight: var(--font-weight-bold)er;\">urodynamic machine</span>&nbsp;is a digital equipment used in this test can measure urine flow and pressure in the bladder by using X-rays &amp; it helps diagnose lower urinary tract problems by showing how well your bladder, sphincters, and urethra work together to store and release.<br><span style=\"font-weight: var(--font-weight-bold)er;\">&gt;&gt;&gt;&gt;&gt;&gt;&nbsp;<a href=\"https://www.pulslytics.co/book-now/\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Book your Urodynamic Test Now</a></span></p></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-7d74896 elementor-widget elementor-widget-section_title\" data-id=\"7d74896\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 15px 0px; padding: 0px;\"><div class=\"iq-title-box iq-title-box-1 iq-befor-line\" style=\"margin: 0px;\"><div class=\"iq-title-icon\"></div><h4 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h4); font-size: var(--font-size-h4); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title); letter-spacing: var(--font-letter-spacing-h4);\"><b>Treatment Options Of Urinary Incontinence:</b></h4></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-8498577 elementor-widget elementor-widget-text-editor\" data-id=\"8498577\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><ul style=\"padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Non-invasive interventions</span>: such as lifestyle modifications, bladder training, pelvic floor exercises, &amp; behavioral therapies, are discussed in detail Additionally, pharmacological treatments, such as anticholinergic medications &amp; hormone therapy, or Laparoscopic injection of bladder with Botox.<br><br></li><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">surgical options</span>: including slings, artificial sphincters, repair prolapse &amp; neuromodulator, are examined.</li></ul></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-e101ade elementor-widget elementor-widget-section_title\" data-id=\"e101ade\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 15px 0px; padding: 0px;\"><div class=\"iq-title-box iq-title-box-1 iq-befor-line\" style=\"margin: 0px;\"><div class=\"iq-title-icon\"></div><h4 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h4); font-size: var(--font-size-h4); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title); letter-spacing: var(--font-letter-spacing-h4);\"><b>How Could Lifestyle Modifications And Coping Strategies Help With Urinary Incontinence?</b></h4></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-6268af8 elementor-widget elementor-widget-text-editor\" data-id=\"6268af8\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">Adopting healthy lifestyle habits &amp; implementing coping strategies can significantly improve the management of incontinence, Such as:</p><ul style=\"padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">fluid management:<br></span>Be mindful of how much you are drinking. Don’t gulp down anything.<br>Stop drinking coffee and soda…<br>Avoid alcohol…</li></ul><ul style=\"padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Weight loss:&nbsp;</span>Weight loss helps urinary leakage because losing weight in the abdominal area puts less pressure on the bladder.</li></ul><ul style=\"padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Regular exercise routines:&nbsp;</span>Get at least 150 minutes of moderate aerobic activity or 75 minutes of vigorous aerobic activity a week.<br>Also there are other specific exercises that may your Doctor advice like Kegel exercise.</li></ul><p style=\"margin: 15px 0px; line-height: 1.66em;\">At the end, Incontinence may be considered a nightmare, but with the right knowledge &amp; comprehensive management, it can be effectively controlled, if not completely eliminated. By combining medical interventions, lifestyle modifications, &amp; coping strategies, individuals, ultimately turning the nightmare of incontinence into a manageable reality.<br><span style=\"font-weight: var(--font-weight-bold)er;\">&gt;&gt;&gt;&gt;&gt;&gt;&nbsp;<a href=\"https://www.pulslytics.co/book-now/\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Book now with our Urologists</a></span></p></div></div>','Incontinence Is A Nightmare','Incontinence Is A Nightmare','uploads/custom-images/blog-thumbnail-2024-01-18-05-23-14-8112.jpg','uploads/custom-images/blog-feature-2024-01-18-05-23-14-5772.jpg',1,1,'2021-07-13 04:03:25','2024-01-18 15:23:14'),(3,20,'Could The Erectile Dysfunction Be Treated','could-the-erectile-dysfunction-be-treated','Could The Erectile Dysfunction Be Treated','<div class=\"hf-elementor-layout elementor-element elementor-element-5a2ee94 elementor-widget elementor-widget-section_title\" data-id=\"5a2ee94\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 30px 0px 0px; padding: 0px;\"><div class=\"iq-title-box iq-title-box-1 iq-befor-line\" style=\"margin: 0px;\"><h4 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h4); font-size: var(--font-size-h4); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title); letter-spacing: var(--font-letter-spacing-h4);\"><b>Could The Erectile Dysfunction Be Treated?</b></h4><p class=\"iq-title-desc\" style=\"margin: 15px 0px; line-height: 1.66em;\">Erectile dysfunction (ED) is a common condition that affects many men worldwide. It refers to the inability to achieve or maintain an erection firm enough for sexual intercourse. While it can be a sensitive topic to discuss, it’s important to understand that there are various management techniques available to help improve your sexual health and overall well-being. So, we will explore some effective strategies and tips for managing erectile dysfunction.</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-cf20d7a elementor-widget elementor-widget-section_title\" data-id=\"cf20d7a\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 30px 0px 0px; padding: 0px;\"><div class=\"iq-title-box iq-title-box-1 iq-befor-line\" style=\"margin: 0px;\"><div class=\"iq-title-icon\"></div><h4 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h4); font-size: var(--font-size-h4); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title); letter-spacing: var(--font-letter-spacing-h4);\"><b>What Is Erectile Dysfunction?</b></h4><p class=\"iq-title-desc\" style=\"margin: 15px 0px; line-height: 1.66em;\">Erectile dysfunction can be caused by various factors, both physical and psychological. Physical causes include cardiovascular disease, diabetes, obesity, hormonal imbalances, and medication side effects. Psychological causes may include stress, anxiety, depression, and relationship problems. Identifying the underlying cause is crucial in determining the most appropriate management approach.</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-e31f164 elementor-widget elementor-widget-section_title\" data-id=\"e31f164\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 15px 0px;\"><div class=\"iq-title-box iq-title-box-1 iq-befor-line\" style=\"margin: 0px; padding: 0px;\"><div class=\"iq-title-icon\"></div><h4 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h4); font-size: var(--font-size-h4); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title); letter-spacing: var(--font-letter-spacing-h4);\"><b>How To Manage Erectile Dysfunction?</b></h4></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-3bacf6b elementor-widget elementor-widget-text-editor\" data-id=\"3bacf6b\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><b style=\"\"><font color=\"#085294\">1. Lifestyle Changes:</font></b></h5><p style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">One of the first steps in managing erectile dysfunction is making certain lifestyle modifications. Here are some key areas to focus on:</p><ul style=\"color: rgb(0, 0, 0); padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Healthy Diet:</span>&nbsp;Adopting a balanced diet that includes fruits, vegetables, whole grains, lean proteins, and healthy fats is essential for overall health. Incorporating foods rich in antioxidants and omega-3 fatty acids, such as berries, fish, and nuts, may help improve blood flow and sexual function.<br>&gt;&gt;&gt;&gt;&gt;&gt;&nbsp;<a href=\"https://www.pulslytics.co/book-now/\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Book now with our Clinical Nutrition Consultants</a><br><br></li><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Regular Exercise</span>: Engaging in regular physical activity can have a positive impact on erectile function. Aim for at least 30 minutes of moderate-intensity exercise, such as brisk walking, jogging, or cycling, most days of the week. Exercise improves blood circulation, reduces stress, and promotes overall well-being.<br><br></li><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Weight Management:</span>&nbsp;Maintaining a healthy weight is crucial for managing erectile dysfunction. Obesity is associated with increased risk of ED, as it can lead to hormonal imbalances and cardiovascular problems. If necessary, consult a healthcare professional or nutritionist to develop a personalized weight loss plan.<br><span style=\"font-weight: var(--font-weight-bold)er; font-size: 1rem;\">&gt;&gt;&gt;&gt;&gt;&gt;&nbsp;<a href=\"https://www.pulslytics.co/book-now/\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Book now with our Clinical Nutrition Consultants</a></span></li></ul></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-d0fcab0 elementor-widget elementor-widget-text-editor\" data-id=\"d0fcab0\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 740.656px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 20px 0px 0px;\"><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><b style=\"\"><font color=\"#085294\">2. Medications And Treatments:</font></b></h5><p style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">Depending on the underlying cause of erectile dysfunction, your healthcare provider may recommend certain medications or treatments. Some common options include:</p><ul style=\"color: rgb(0, 0, 0); padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er; font-size: 1rem;\">Oral Medications:&nbsp;</span><span style=\"font-size: 1rem;\">Drugs like Sildenafil, Tadalafil, and Vardenafil are often prescribed to improve erectile function. These medications work by increasing blood flow to the penis, facilitating the achievement and maintenance of an erection. It’s important to consult with a healthcare professional before taking any medications.<br><span style=\"font-weight: var(--font-weight-bold)er; font-size: 1rem;\">&nbsp;&gt;&gt;&gt;&gt;&gt;&gt;&nbsp;<a href=\"https://www.pulslytics.co/book-now/\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Book now with our Andrology Consultants</a></span></span><br><br></li><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Hormone Therapy:&nbsp;</span>In cases where hormonal imbalances are the cause of erectile dysfunction, hormone replacement therapy may be recommended. This involves replacing or supplementing certain hormones, such as testosterone, to restore normal erectile function.<br><span style=\"font-weight: var(--font-weight-bold)er;\">&gt;&gt;&gt;&gt;&gt;&gt;&nbsp;<a href=\"https://www.pulslytics.co/book-now/\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Book now with our Andrology Consultants</a></span><br><br></li><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Shockwave therapy (ESWT):</span>&nbsp;helps to enhance blood flow to the penis, by strengthening the blood vessels in the penis, stimulating the growth of new blood vessels in the penis, penile tissue reshaping, removal of calcifications accumulated in the blood vessels of the penis &amp; stimulating the growth of stem cells in the penis.<br><span style=\"font-weight: var(--font-weight-bold)er; font-size: 1rem;\">&gt;&gt;&gt;&gt;&gt;&gt;&nbsp;<a href=\"https://www.pulslytics.co/book-now/\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Book now with our Andrology Consultants</a></span><br><br></li></ul><ul style=\"color: rgb(0, 0, 0); padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Penile Stent (Prothesis) Surgery:&nbsp;</span>A procedure that helps men who haven’t responded to other treatments. Which include implantation of artificial device inside the penis, to help him achieve erection, &amp; restore his sexual function. It has different types, Semi rigid &amp; Hydraulic Stents.<br><span style=\"font-weight: var(--font-weight-bold)er; font-size: 1rem;\">&gt;&gt;&gt;&gt;&gt;&gt;&nbsp;<a href=\"https://www.pulslytics.co/book-now/\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Book now with our Andrology Consultants</a></span></li></ul></div></div>','Could The Erectile Dysfunction Be Treated','Could The Erectile Dysfunction Be Treated','uploads/custom-images/blog-thumbnail-2024-01-18-05-25-42-4140.jpg','uploads/custom-images/blog-feature-2024-01-18-05-25-42-2450.jpg',1,1,'2021-07-14 17:22:52','2024-01-18 15:25:42');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancel_orders`
--

DROP TABLE IF EXISTS `cancel_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancel_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appointment_fee` double NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appointment_qty` int NOT NULL,
  `return_status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancel_orders`
--

LOCK TABLES `cancel_orders` WRITE;
/*!40000 ALTER TABLE `cancel_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancel_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_privacies`
--

DROP TABLE IF EXISTS `condition_privacies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `condition_privacies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `terms_condition` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_policy` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_privacies`
--

LOCK TABLES `condition_privacies` WRITE;
/*!40000 ALTER TABLE `condition_privacies` DISABLE KEYS */;
INSERT INTO `condition_privacies` VALUES (1,'<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span><br></p><p><span style=\"font-size: 1rem;\">Ne primis electram reformidans pro, mea perpetua senserit ea, sit eu prompta intellegebat. Et vel stet exerci consequat, per dignissim repudiandae ea, sensibus sententiae voluptatibus duo ad. Ut clita scribentur quo. In movet reprehendunt vis, iriure sanctus te nec. At pro possim detraxit sadipscing, iudico laoreet ullamcorper an nec.</span><br></p>','<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span><br></p><p><span style=\"font-size: 1rem;\">Ne primis electram reformidans pro, mea perpetua senserit ea, sit eu prompta intellegebat. Et vel stet exerci consequat, per dignissim repudiandae ea, sensibus sententiae voluptatibus duo ad. Ut clita scribentur quo. In movet reprehendunt vis, iriure sanctus te nec. At pro possim detraxit sadipscing, iudico laoreet ullamcorper an nec.</span></p>','2021-07-13 16:12:31','2021-10-24 06:19:47');
/*!40000 ALTER TABLE `condition_privacies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_information`
--

DROP TABLE IF EXISTS `contact_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phones` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `emails` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_embed_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_information`
--

LOCK TABLES `contact_information` WRITE;
/*!40000 ALTER TABLE `contact_information` DISABLE KEYS */;
INSERT INTO `contact_information` VALUES (1,'Contact Us','We are here and always ready to help you. Let us know how we serve you and we’ll get back within no time.','010 1111 9691','Info@Elofok-Eg.Com','Eastern Cairo','Elofok Medical Center is distinguished by the presence of fully equipped operating rooms with the latest medical equipment to perform all surgical operations & is accompanied by a recovery & care room equipped with all facilities to ensure the highest levels of safety for our patients after surgery.\r\nOur services are completed with specialized units for non-invasive intervention, including Urodynamic Unit, Extracorporeal Shock Wave Lithotripsy (ESWL) Unit, a specialized unit for the therapeutic & surgical treatments of benign & malignant prostate diseases & a specialized unit for erectile dysfunction.','<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d220968.50861339178!2d31.284154698242208!3d30.076054105014773!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14583fa60b21beeb%3A0x79dfb296e8423bba!2sCairo%2C%20Cairo%20Governorate%2C%20Egypt!5e0!3m2!1sen!2sus!4v1705774228902!5m2!1sen!2sus\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>','Copyright 2024, All rights reserved @Elofok Medical Center.','2021-06-11 03:01:41','2024-01-21 07:10:37');
/*!40000 ALTER TABLE `contact_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_notification` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messages`
--

LOCK TABLES `contact_messages` WRITE;
/*!40000 ALTER TABLE `contact_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_us` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
INSERT INTO `contact_us` VALUES (3,'Info@Elofok-Eg.Com','010 1111 9691','#','#','#','#',NULL,'2021-06-11 03:18:20','2024-01-21 07:29:56');
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'AFA','Afghan Afghani','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'ALL','Albanian Lek','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'DZD','Algerian Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'AOA','Angolan Kwanza','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'ARS','Argentine Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'AMD','Armenian Dram','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'AWG','Aruban Florin','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'AUD','Australian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'AZN','Azerbaijani Manat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'BSD','Bahamian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'BHD','Bahraini Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'BDT','Bangladeshi Taka','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'BBD','Barbadian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'BYR','Belarusian Ruble','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'BEF','Belgian Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'BZD','Belize Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'BMD','Bermudan Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'BTN','Bhutanese Ngultrum','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'BTC','Bitcoin','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'BOB','Bolivian Boliviano','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'BAM','Bosnia-Herzegovina Convertible Mark','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'BWP','Botswanan Pula','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'BRL','Brazilian Real','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'GBP','British Pound Sterling','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'BND','Brunei Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'BGN','Bulgarian Lev','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'BIF','Burundian Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'KHR','Cambodian Riel','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'CAD','Canadian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'CVE','Cape Verdean Escudo','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'KYD','Cayman Islands Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'XOF','CFA Franc BCEAO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'XAF','CFA Franc BEAC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'XPF','CFP Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'CLP','Chilean Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'CNY','Chinese Yuan','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'COP','Colombian Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'KMF','Comorian Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'CDF','Congolese Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'CRC','Costa Rican ColÃ³n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'HRK','Croatian Kuna','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'CUC','Cuban Convertible Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'CZK','Czech Republic Koruna','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'DKK','Danish Krone','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'DJF','Djiboutian Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'DOP','Dominican Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'XCD','East Caribbean Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'EGP','Egyptian Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'ERN','Eritrean Nakfa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'EEK','Estonian Kroon','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'ETB','Ethiopian Birr','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'EUR','Euro','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'FKP','Falkland Islands Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'FJD','Fijian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'GMD','Gambian Dalasi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'GEL','Georgian Lari','0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'DEM','German Mark','0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'GHS','Ghanaian Cedi','0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'GIP','Gibraltar Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'GRD','Greek Drachma','0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'GTQ','Guatemalan Quetzal','0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'GNF','Guinean Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,'GYD','Guyanaese Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,'HTG','Haitian Gourde','0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'HNL','Honduran Lempira','0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,'HKD','Hong Kong Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,'HUF','Hungarian Forint','0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,'ISK','Icelandic KrÃ³na','0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,'INR','Indian Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,'IDR','Indonesian Rupiah','0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,'IRR','Iranian Rial','0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,'IQD','Iraqi Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,'ILS','Israeli New Sheqel','0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,'ITL','Italian Lira','0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,'JMD','Jamaican Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,'JPY','Japanese Yen','0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,'JOD','Jordanian Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,'KZT','Kazakhstani Tenge','0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,'KES','Kenyan Shilling','0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,'KWD','Kuwaiti Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,'KGS','Kyrgystani Som','0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,'LAK','Laotian Kip','0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,'LVL','Latvian Lats','0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,'LBP','Lebanese Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,'LSL','Lesotho Loti','0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,'LRD','Liberian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,'LYD','Libyan Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,'LTL','Lithuanian Litas','0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,'MOP','Macanese Pataca','0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,'MKD','Macedonian Denar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,'MGA','Malagasy Ariary','0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,'MWK','Malawian Kwacha','0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,'MYR','Malaysian Ringgit','0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,'MVR','Maldivian Rufiyaa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,'MRO','Mauritanian Ouguiya','0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,'MUR','Mauritian Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,'MXN','Mexican Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,'MDL','Moldovan Leu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,'MNT','Mongolian Tugrik','0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,'MAD','Moroccan Dirham','0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,'MZM','Mozambican Metical','0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,'MMK','Myanmar Kyat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,'NAD','Namibian Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,'NPR','Nepalese Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,'ANG','Netherlands Antillean Guilder','0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,'TWD','New Taiwan Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,'NZD','New Zealand Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,'NIO','Nicaraguan CÃ³rdoba','0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,'NGN','Nigerian Naira','0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,'KPW','North Korean Won','0000-00-00 00:00:00','0000-00-00 00:00:00'),(111,'NOK','Norwegian Krone','0000-00-00 00:00:00','0000-00-00 00:00:00'),(112,'OMR','Omani Rial','0000-00-00 00:00:00','0000-00-00 00:00:00'),(113,'PKR','Pakistani Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(114,'PAB','Panamanian Balboa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(115,'PGK','Papua New Guinean Kina','0000-00-00 00:00:00','0000-00-00 00:00:00'),(116,'PYG','Paraguayan Guarani','0000-00-00 00:00:00','0000-00-00 00:00:00'),(117,'PEN','Peruvian Nuevo Sol','0000-00-00 00:00:00','0000-00-00 00:00:00'),(118,'PHP','Philippine Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(119,'PLN','Polish Zloty','0000-00-00 00:00:00','0000-00-00 00:00:00'),(120,'QAR','Qatari Rial','0000-00-00 00:00:00','0000-00-00 00:00:00'),(121,'RON','Romanian Leu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(122,'RUB','Russian Ruble','0000-00-00 00:00:00','0000-00-00 00:00:00'),(123,'RWF','Rwandan Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(124,'SVC','Salvadoran ColÃ³n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(125,'WST','Samoan Tala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(126,'SAR','Saudi Riyal','0000-00-00 00:00:00','0000-00-00 00:00:00'),(127,'RSD','Serbian Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(128,'SCR','Seychellois Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(129,'SLL','Sierra Leonean Leone','0000-00-00 00:00:00','0000-00-00 00:00:00'),(130,'SGD','Singapore Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(131,'SKK','Slovak Koruna','0000-00-00 00:00:00','0000-00-00 00:00:00'),(132,'SBD','Solomon Islands Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(133,'SOS','Somali Shilling','0000-00-00 00:00:00','0000-00-00 00:00:00'),(134,'ZAR','South African Rand','0000-00-00 00:00:00','0000-00-00 00:00:00'),(135,'KRW','South Korean Won','0000-00-00 00:00:00','0000-00-00 00:00:00'),(136,'XDR','Special Drawing Rights','0000-00-00 00:00:00','0000-00-00 00:00:00'),(137,'LKR','Sri Lankan Rupee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(138,'SHP','St. Helena Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(139,'SDG','Sudanese Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(140,'SRD','Surinamese Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(141,'SZL','Swazi Lilangeni','0000-00-00 00:00:00','0000-00-00 00:00:00'),(142,'SEK','Swedish Krona','0000-00-00 00:00:00','0000-00-00 00:00:00'),(143,'CHF','Swiss Franc','0000-00-00 00:00:00','0000-00-00 00:00:00'),(144,'SYP','Syrian Pound','0000-00-00 00:00:00','0000-00-00 00:00:00'),(145,'STD','São Tomé and Príncipe Dobra','0000-00-00 00:00:00','0000-00-00 00:00:00'),(146,'TJS','Tajikistani Somoni','0000-00-00 00:00:00','0000-00-00 00:00:00'),(147,'TZS','Tanzanian Shilling','0000-00-00 00:00:00','0000-00-00 00:00:00'),(148,'THB','Thai Baht','0000-00-00 00:00:00','0000-00-00 00:00:00'),(149,'TOP','Tongan pa\'anga','0000-00-00 00:00:00','0000-00-00 00:00:00'),(150,'TTD','Trinidad & Tobago Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(151,'TND','Tunisian Dinar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(152,'TRY','Turkish Lira','0000-00-00 00:00:00','0000-00-00 00:00:00'),(153,'TMT','Turkmenistani Manat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(154,'UGX','Ugandan Shilling','0000-00-00 00:00:00','0000-00-00 00:00:00'),(155,'UAH','Ukrainian Hryvnia','0000-00-00 00:00:00','0000-00-00 00:00:00'),(156,'AED','United Arab Emirates Dirham','0000-00-00 00:00:00','0000-00-00 00:00:00'),(157,'UYU','Uruguayan Peso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(158,'USD','US Dollar','0000-00-00 00:00:00','0000-00-00 00:00:00'),(159,'UZS','Uzbekistan Som','0000-00-00 00:00:00','0000-00-00 00:00:00'),(160,'VUV','Vanuatu Vatu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(161,'VEF','Venezuelan BolÃ­var','0000-00-00 00:00:00','0000-00-00 00:00:00'),(162,'VND','Vietnamese Dong','0000-00-00 00:00:00','0000-00-00 00:00:00'),(163,'YER','Yemeni Rial','0000-00-00 00:00:00','0000-00-00 00:00:00'),(164,'ZMK','Zambian Kwacha','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_countries`
--

DROP TABLE IF EXISTS `currency_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `code` varchar(2) COLLATE utf8mb3_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_countries`
--

LOCK TABLES `currency_countries` WRITE;
/*!40000 ALTER TABLE `currency_countries` DISABLE KEYS */;
INSERT INTO `currency_countries` VALUES (1,'Andorra','AD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Afghanistan','AF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Åland Islands','AX','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Albania','AL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Algeria','DZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'American Samoa','AS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'Angola','AO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Anguilla','AI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'Antarctica','AQ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'Antigua and Barbuda','AG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'Argentina','AR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'Armenia','AM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'Aruba','AW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'Australia','AU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'Austria','AT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'Azerbaijan','AZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'Bahamas','BS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'Bahrain','BH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'Bangladesh','BD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'Barbados','BB','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'Belarus','BY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'Belgium','BE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'Belize','BZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'Benin','BJ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'Bermuda','BM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'Bhutan','BT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'Bolivia (Plurinational State of)','BO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'Bonaire, Sint Eustatius and Saba','BQ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'Bosnia and Herzegovina','BA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'Botswana','BW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'Bouvet Island','BV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'Brazil','BR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'British Indian Ocean Territory','IO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'Brunei Darussalam','BN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'Bulgaria','BG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'Burkina Faso','BF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'Burundi','BI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'Cabo Verde','CV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'Cambodia','KH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'Cameroon','CM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'Canada','CA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'Cayman Islands','KY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'Central African Republic','CF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'Chad','TD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'Chile','CL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'China','CN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'Christmas Island','CX','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'Cocos (Keeling) Islands','CC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'Colombia','CO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'Comoros','KM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'Congo','CG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'Congo (Democratic Republic of the)','CD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'Cook Islands','CK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'Costa Rica','CR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'Côte d\'Ivoire','CI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'Croatia','HR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'Cuba','CU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'Curaçao','CW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'Cyprus','CY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'Czech Republic','CZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'Denmark','DK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'Djibouti','DJ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,'Dominica','DM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,'Dominican Republic','DO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'Ecuador','EC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,'Egypt','EG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,'El Salvador','SV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,'Equatorial Guinea','GQ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,'Eritrea','ER','0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,'Estonia','EE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,'Ethiopia','ET','0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,'Falkland Islands (Malvinas)','FK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,'Faroe Islands','FO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,'Fiji','FJ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,'Finland','FI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,'France','FR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,'French Guiana','GF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,'French Polynesia','PF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,'French Southern Territories','TF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,'Gabon','GA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,'Gambia','GM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,'Georgia','GE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,'Germany','DE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,'Ghana','GH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,'Gibraltar','GI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,'Greece','GR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,'Greenland','GL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,'Grenada','GD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,'Guadeloupe','GP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,'Guam','GU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,'Guatemala','GT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,'Guernsey','GG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,'Guinea','GN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,'Guinea-Bissau','GW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,'Guyana','GY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,'Haiti','HT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,'Heard Island and McDonald Islands','HM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,'Holy See','VA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,'Honduras','HN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,'Hong Kong','HK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,'Hungary','HU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,'Iceland','IS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,'India','IN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,'Indonesia','ID','0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,'Iran (Islamic Republic of)','IR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,'Iraq','IQ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,'Ireland','IE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,'Isle of Man','IM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,'Israel','IL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,'Italy','IT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(111,'Jamaica','JM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(112,'Japan','JP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(113,'Jersey','JE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(114,'Jordan','JO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(115,'Kazakhstan','KZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(116,'Kenya','KE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(117,'Kiribati','KI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(118,'Korea (Democratic People\'s Republic of)','KP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(119,'Korea (Republic of)','KR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(120,'Kuwait','KW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(121,'Kyrgyzstan','KG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(122,'Lao People\'s Democratic Republic','LA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(123,'Latvia','LV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(124,'Lebanon','LB','0000-00-00 00:00:00','0000-00-00 00:00:00'),(125,'Lesotho','LS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(126,'Liberia','LR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(127,'Libya','LY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(128,'Liechtenstein','LI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(129,'Lithuania','LT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(130,'Luxembourg','LU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(131,'Macao','MO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(132,'Macedonia (the former Yugoslav Republic of)','MK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(133,'Madagascar','MG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(134,'Malawi','MW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(135,'Malaysia','MY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(136,'Maldives','MV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(137,'Mali','ML','0000-00-00 00:00:00','0000-00-00 00:00:00'),(138,'Malta','MT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(139,'Marshall Islands','MH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(140,'Martinique','MQ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(141,'Mauritania','MR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(142,'Mauritius','MU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(143,'Mayotte','YT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(144,'Mexico','MX','0000-00-00 00:00:00','0000-00-00 00:00:00'),(145,'Micronesia (Federated States of)','FM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(146,'Moldova (Republic of)','MD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(147,'Monaco','MC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(148,'Mongolia','MN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(149,'Montenegro','ME','0000-00-00 00:00:00','0000-00-00 00:00:00'),(150,'Montserrat','MS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(151,'Morocco','MA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(152,'Mozambique','MZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(153,'Myanmar','MM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(154,'Namibia','NA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(155,'Nauru','NR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(156,'Nepal','NP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(157,'Netherlands','NL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(158,'New Caledonia','NC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(159,'New Zealand','NZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(160,'Nicaragua','NI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(161,'Niger','NE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(162,'Nigeria','NG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(163,'Niue','NU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(164,'Norfolk Island','NF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(165,'Northern Mariana Islands','MP','0000-00-00 00:00:00','0000-00-00 00:00:00'),(166,'Norway','NO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(167,'Oman','OM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(168,'Pakistan','PK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(169,'Palau','PW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(170,'Palestine, State of','PS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(171,'Panama','PA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(172,'Papua New Guinea','PG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(173,'Paraguay','PY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(174,'Peru','PE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(175,'Philippines','PH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(176,'Pitcairn','PN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(177,'Poland','PL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(178,'Portugal','PT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(179,'Puerto Rico','PR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(180,'Qatar','QA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(181,'Réunion','RE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(182,'Romania','RO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(183,'Russian Federation','RU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(184,'Rwanda','RW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(185,'Saint Barthélemy','BL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(186,'Saint Helena, Ascension and Tristan da Cunha','SH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(187,'Saint Kitts and Nevis','KN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(188,'Saint Lucia','LC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(189,'Saint Martin (French part)','MF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(190,'Saint Pierre and Miquelon','PM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(191,'Saint Vincent and the Grenadines','VC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(192,'Samoa','WS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(193,'San Marino','SM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(194,'Sao Tome and Principe','ST','0000-00-00 00:00:00','0000-00-00 00:00:00'),(195,'Saudi Arabia','SA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(196,'Senegal','SN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(197,'Serbia','RS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(198,'Seychelles','SC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(199,'Sierra Leone','SL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(200,'Singapore','SG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(201,'Sint Maarten (Dutch part)','SX','0000-00-00 00:00:00','0000-00-00 00:00:00'),(202,'Slovakia','SK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(203,'Slovenia','SI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(204,'Solomon Islands','SB','0000-00-00 00:00:00','0000-00-00 00:00:00'),(205,'Somalia','SO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(206,'South Africa','ZA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(207,'South Georgia and the South Sandwich Islands','GS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(208,'South Sudan','SS','0000-00-00 00:00:00','0000-00-00 00:00:00'),(209,'Spain','ES','0000-00-00 00:00:00','0000-00-00 00:00:00'),(210,'Sri Lanka','LK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(211,'Sudan','SD','0000-00-00 00:00:00','0000-00-00 00:00:00'),(212,'Suriname','SR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(213,'Svalbard and Jan Mayen','SJ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(214,'Swaziland','SZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(215,'Sweden','SE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(216,'Switzerland','CH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(217,'Syrian Arab Republic','SY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(218,'Taiwan, Province of China','TW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(219,'Tajikistan','TJ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(220,'Tanzania, United Republic of','TZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(221,'Thailand','TH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(222,'Timor-Leste','TL','0000-00-00 00:00:00','0000-00-00 00:00:00'),(223,'Togo','TG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(224,'Tokelau','TK','0000-00-00 00:00:00','0000-00-00 00:00:00'),(225,'Tonga','TO','0000-00-00 00:00:00','0000-00-00 00:00:00'),(226,'Trinidad and Tobago','TT','0000-00-00 00:00:00','0000-00-00 00:00:00'),(227,'Tunisia','TN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(228,'Turkey','TR','0000-00-00 00:00:00','0000-00-00 00:00:00'),(229,'Turkmenistan','TM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(230,'Turks and Caicos Islands','TC','0000-00-00 00:00:00','0000-00-00 00:00:00'),(231,'Tuvalu','TV','0000-00-00 00:00:00','0000-00-00 00:00:00'),(232,'Uganda','UG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(233,'Ukraine','UA','0000-00-00 00:00:00','0000-00-00 00:00:00'),(234,'United Arab Emirates','AE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(235,'United Kingdom of Great Britain and Northern Ireland','GB','0000-00-00 00:00:00','0000-00-00 00:00:00'),(236,'United States Minor Outlying Islands','UM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(237,'United States of America','US','0000-00-00 00:00:00','0000-00-00 00:00:00'),(238,'Uruguay','UY','0000-00-00 00:00:00','0000-00-00 00:00:00'),(239,'Uzbekistan','UZ','0000-00-00 00:00:00','0000-00-00 00:00:00'),(240,'Vanuatu','VU','0000-00-00 00:00:00','0000-00-00 00:00:00'),(241,'Venezuela (Bolivarian Republic of)','VE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(242,'Viet Nam','VN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(243,'Virgin Islands (British)','VG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(244,'Virgin Islands (U.S.)','VI','0000-00-00 00:00:00','0000-00-00 00:00:00'),(245,'Wallis and Futuna','WF','0000-00-00 00:00:00','0000-00-00 00:00:00'),(246,'Western Sahara','EH','0000-00-00 00:00:00','0000-00-00 00:00:00'),(247,'Yemen','YE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(248,'Zambia','ZM','0000-00-00 00:00:00','0000-00-00 00:00:00'),(249,'Zimbabwe','ZW','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `currency_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_paginators`
--

DROP TABLE IF EXISTS `custom_paginators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_paginators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_paginators`
--

LOCK TABLES `custom_paginators` WRITE;
/*!40000 ALTER TABLE `custom_paginators` DISABLE KEYS */;
INSERT INTO `custom_paginators` VALUES (1,'Doctor',8,NULL,'2021-10-26 04:32:30'),(2,'Blog',6,NULL,'2021-10-26 04:32:30'),(3,'Department',6,NULL,'2021-10-26 04:32:30'),(4,'Service',6,NULL,'2021-10-26 04:32:30'),(6,'Testimonial',6,NULL,'2021-10-26 08:15:35');
/*!40000 ALTER TABLE `custom_paginators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custome_pages`
--

DROP TABLE IF EXISTS `custome_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custome_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `seo_title` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custome_pages`
--

LOCK TABLES `custome_pages` WRITE;
/*!40000 ALTER TABLE `custome_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `custome_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `days`
--

DROP TABLE IF EXISTS `days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `days` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_day` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `days`
--

LOCK TABLES `days` WRITE;
/*!40000 ALTER TABLE `days` DISABLE KEYS */;
INSERT INTO `days` VALUES (1,'Saturday','Saturday',NULL,'2021-07-15 02:27:30'),(2,'Sunday','Sunday',NULL,'2021-07-15 02:27:35'),(3,'Monday','Monday',NULL,'2021-07-15 02:27:39'),(4,'Tuesday','Tuesday',NULL,'2021-07-15 02:27:45'),(5,'Wednesday','Wednesday',NULL,'2021-07-15 02:27:49'),(6,'Thursday','Thursday',NULL,'2021-07-15 02:27:53'),(7,'Friday','Friday',NULL,'2021-07-15 02:27:58');
/*!40000 ALTER TABLE `days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_faqs`
--

DROP TABLE IF EXISTS `department_faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_faqs`
--

LOCK TABLES `department_faqs` WRITE;
/*!40000 ALTER TABLE `department_faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_images`
--

DROP TABLE IF EXISTS `department_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int NOT NULL,
  `small_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `large_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_images`
--

LOCK TABLES `department_images` WRITE;
/*!40000 ALTER TABLE `department_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `thumbnail_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_homepage` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (22,'Urological Surgery','urological-surgery','<p>Urological Surgery<br></p>','Urological Surgery','Urological Surgery','uploads/custom-images/department-feature-2024-01-21-05-13-42-7223.jpg',1,1,'2024-01-22 00:13:42','2024-01-22 00:13:42'),(23,'Therapeutic Nutrition','therapeutic-nutrition','<p>Therapeutic Nutrition<br></p>','Therapeutic Nutrition','Therapeutic Nutrition','uploads/custom-images/department-feature-2024-01-21-05-15-02-9539.jpg',1,1,'2024-01-22 00:15:02','2024-01-22 00:15:02'),(24,'Pediatrics','pediatrics','<p>Pediatrics<br></p>','Pediatrics','Pediatrics','uploads/custom-images/department-feature-2024-01-21-05-15-37-2867.jpg',1,1,'2024-01-22 00:15:37','2024-01-22 00:15:37'),(25,'Vascular Surgery','vascular-surgery','<p>Vascular Surgery<br></p>','Vascular Surgery','Vascular Surgery','uploads/custom-images/department-feature-2024-01-21-05-16-02-2254.jpg',0,1,'2024-01-22 00:16:02','2024-01-22 00:16:02'),(26,'Gastroenterology and Liver','gastroenterology-and-liver','<p>Gastroenterology and Liver<br></p>','Gastroenterology and Liver','Gastroenterology and Liver','uploads/custom-images/department-feature-2024-01-21-05-16-25-6144.jpg',0,1,'2024-01-22 00:16:26','2024-01-22 00:16:26'),(27,'General Surgery','general-surgery','<p>General Surgery<br></p>','General Surgery','General Surgery','uploads/custom-images/department-feature-2024-01-21-05-16-51-3554.jpg',0,1,'2024-01-22 00:16:51','2024-01-22 00:16:51'),(28,'Obesity Surgery','obesity-surgery','<p>Obesity Surgery<br></p>','Obesity Surgery','Obesity Surgery','uploads/custom-images/department-feature-2024-01-21-05-17-18-6312.jpg',0,1,'2024-01-22 00:17:18','2024-01-22 00:17:18'),(29,'Internal Medicine','internal-medicine','<p>Internal Medicine<br></p>','Internal Medicine','Internal Medicine','uploads/custom-images/department-feature-2024-01-21-05-17-51-5441.jpg',0,1,'2024-01-22 00:17:51','2024-01-22 00:17:51'),(30,'Neurosurgery','neurosurgery','<p>Neurosurgery<br></p>','Neurosurgery','Neurosurgery','uploads/custom-images/department-feature-2024-01-21-05-19-10-2432.jpg',0,1,'2024-01-22 00:19:10','2024-01-22 00:19:10'),(31,'Pain Treatment','pain-treatment','<p>Pain Treatment<br></p>','Pain Treatment','Pain Treatment','uploads/custom-images/department-feature-2024-01-21-05-19-33-6403.jpg',0,1,'2024-01-22 00:19:33','2024-01-22 00:19:33'),(32,'Orthopedic Surgery','orthopedic-surgery','<p>Orthopedic Surgery<br></p>','Orthopedic Surgery','Orthopedic Surgery','uploads/custom-images/department-feature-2024-01-21-05-19-52-8848.jpg',0,1,'2024-01-22 00:19:52','2024-01-22 00:19:52');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_social_links`
--

DROP TABLE IF EXISTS `doctor_social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_social_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` int NOT NULL,
  `social_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_social_links`
--

LOCK TABLES `doctor_social_links` WRITE;
/*!40000 ALTER TABLE `doctor_social_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor_social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int DEFAULT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci,
  `educations` longtext COLLATE utf8mb4_unicode_ci,
  `designations` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `experience` longtext COLLATE utf8mb4_unicode_ci,
  `qualifications` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `show_homepage` tinyint NOT NULL,
  `forget_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `doctors_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (11,'Dr. Amr El-Khouly','dr-amr-el-khouly','Dr. Amr El-Khouly','Dr. Amr El-Khouly','amr@gmail.com','$2y$10$zrvFvOzR7Nqi7MDq5ZduB.fdkYYzAlYlLRtxMTF7Tu1nDK.b9j.6m',10,1,'569-487-8541',22,'Eastern Cairo','<p style=\"text-align: left;\"><font color=\"#000000\" face=\"Roboto, sans-serif\"><span style=\"font-size: 17px;\">Professor of Urology and Male Infertility.</span></font><br></p>','MBBS, FCPS, FRCS','<p style=\"text-align: left;\"><font color=\"#000000\" face=\"Roboto, sans-serif\"><span style=\"font-size: 17px;\">Professor of Urology and Male Infertility.</span></font><br></p>','<p style=\"text-align: left;\"><font color=\"#000000\" face=\"Roboto, sans-serif\"><span style=\"font-size: 17px;\">Professor of Urology and Male Infertility.</span></font><br></p>','<p style=\"text-align: left;\"><font color=\"#000000\" face=\"Roboto, sans-serif\"><span style=\"font-size: 17px;\">Professor of Urology and Male Infertility.</span></font><br></p>','uploads/custom-images/doctor-2024-01-21-05-37-24-3803.jpg',1,1,NULL,NULL,'2021-10-26 06:14:11','2024-01-22 00:37:24','https://www.facebook.com','https://www.twitter.com','https://www.linkedin.com',NULL,'1'),(12,'Prof. Mahmoud Shokry El-Adawy','prof-mahmoud-shokry-el-adawy','Prof. Mahmoud Shokry El-Adawy','Prof. Mahmoud Shokry El-Adawy','mahmoud@gmail.com','$2y$10$SQN51sAlLa3orxxsYXkXs.PwO1GjBvUlSP45mfx65xL8RiDe2xNle',65,1,'251-654-9632',22,'Doctorate in Kidney, Urology, and Reproductive Surgery from Cairo University, Consultant and Assistant Professor in Urology and Male Health at the Faculty of Medicine, and Member of the American and European Urological Associations.','<ul><li>Doctorate in Kidney, Urology, and Reproductive Surgery from Cairo University,</li><li> Consultant and Assistant Professor in Urology and Male Health at the Faculty of Medicine,</li><li><span style=\"font-size: 1rem;\">Member of the American and European Urological Associations.</span></li></ul>','MBBS, FCPS, FRCS','<p>Eastern Cairo<br></p>','<ul><li>Doctorate in Kidney, Urology, and Reproductive Surgery from Cairo University,</li><li>Consultant and Assistant Professor in Urology and Male Health at the Faculty of Medicine,</li><li><span style=\"font-size: 1rem;\">Member of the American and European Urological Associations.</span></li></ul>','<ul><li>Doctorate in Kidney, Urology, and Reproductive Surgery from Cairo University,</li><li>Consultant and Assistant Professor in Urology and Male Health at the Faculty of Medicine,</li><li><span style=\"font-size: 1rem;\">Member of the American and European Urological Associations.</span></li></ul>','uploads/custom-images/doctor-2024-01-21-05-34-12-1172.jpg',1,1,NULL,NULL,'2021-10-26 06:16:32','2024-01-22 00:34:12','https://www.facebook.com','https://www.twitter.com','https://www.linkedin.com',NULL,'1'),(13,'Dr. Hamada Youssef','dr-hamada-youssef','Dr. Hamada Youssef','Lecturer in Urology and Male Infertility at the Faculty of Medicine, Consultant in Male Infertility and Men\'s Health, Consultant in Flexible and Hydraulic Penile Implants for Erectile Dysfunction, and Member of the European Association of Urology and Sexual Dysfunction, and Infertility.','hamada@gmail.com','$2y$10$I.vbes2onoc/5jGSS0W/EOCOo8NUeRniPZpNrI9agGZJbZVlWvsiu',42,1,'455-698-4587',22,'Lecturer in Urology and Male Infertility at the Faculty of Medicine, Consultant in Male Infertility and Men\'s Health, Consultant in Flexible and Hydraulic Penile Implants for Erectile Dysfunction, and Member of the European Association of Urology and Sexual Dysfunction, and Infertility.','<ul><li>Lecturer in Urology and Male Infertility at the Faculty of Medicine</li><li>Consultant in Male Infertility and Men\'s Health</li><li>Consultant in Flexible and Hydraulic Penile Implants for Erectile Dysfunction</li><li>Member of the European Association of Urology and Sexual Dysfunction, and Infertility.<br></li></ul>','MBBS, FCPS, FRCS','<p>Eastern Cairo<br></p>','<ul><li>Lecturer in Urology and Male Infertility at the Faculty of Medicine</li><li>Consultant in Male Infertility and Men\'s Health</li><li>Consultant in Flexible and Hydraulic Penile Implants for Erectile Dysfunction</li><li>Member of the European Association of Urology and Sexual Dysfunction, and Infertility.</li></ul>','<ul><li>Lecturer in Urology and Male Infertility at the Faculty of Medicine</li><li>Consultant in Male Infertility and Men\'s Health</li><li>Consultant in Flexible and Hydraulic Penile Implants for Erectile Dysfunction</li><li>Member of the European Association of Urology and Sexual Dysfunction, and Infertility.</li></ul>','uploads/custom-images/doctor-2024-01-18-05-42-28-4610.jpg',1,1,NULL,NULL,'2021-10-26 06:18:25','2024-01-22 00:31:29','https://www.facebook.com','https://www.twitter.com','https://www.linkedin.com',NULL,'1'),(26,'Prof. Ahmed El-Shal','prof-ahmed-el-shal','Prof. Ahmed El-Shal','Prof. Ahmed El-Shal','ahmed-elsahl@gmail.com','$2y$10$1VIAmN6HsCUWB7VC6cYzU.u1TLEJKcVWdowvSD/xjIXJz1Rbqxll6',50,1,'+201091456172',22,'Professor of Kidney Endoscopy and Urology, Laser Prostate Surgery Consultant at Mansoura University Kidney Center.','<p>Professor of Kidney Endoscopy and Urology, Laser Prostate Surgery Consultant at Mansoura University Kidney Center.<br></p>','Urological Surgery','<p>Eastern Cairo</p>','<p>Professor of Kidney Endoscopy and Urology, Laser Prostate Surgery Consultant at Mansoura University Kidney Center.<br></p>','<p>Professor of Kidney Endoscopy and Urology, Laser Prostate Surgery Consultant at Mansoura University Kidney Center.<br></p>','uploads/custom-images/doctor-2024-01-21-05-41-28-4176.png',0,0,NULL,NULL,'2024-01-22 00:41:28','2024-01-22 07:28:32','https://www.facebook.com','https://www.twitter.com','https://www.linkedin.com/in',NULL,NULL),(32,'Muhammed Saber','muhammed-saber',NULL,NULL,'muhammed.saber385@gmail.com','$2y$10$Bmq0BEgc1V0zBn38rGJ/5u2VEAipTMKd2tGcQycNLVfyeHSR8B.32',0,1,'01067348998',27,NULL,NULL,'test',NULL,NULL,NULL,'0',0,0,NULL,NULL,'2024-01-22 07:37:03','2024-01-22 07:37:03',NULL,NULL,NULL,'pkY2cv5lazqxQFPZzL2rsaPLl9eS5cIMhjHe8NDmXNFpPpSNgADvMVgVWqrZeZy8M5mAKilirEiYenDyF1w1jgoIydlPMlF7nRAc',NULL),(33,'Oprah Crosby','oprah-crosby',NULL,NULL,'gaze@mailinator.com','$2y$10$qIQCTtm/5PkJvw49rItcauXrz8fYuP/gNR.5g4y/0Ie4r5mU0V3Cu',0,1,'+1 (335) 323-4908',27,NULL,NULL,'Similique ipsum dese',NULL,NULL,NULL,'0',0,0,NULL,NULL,'2024-01-25 17:31:54','2024-01-25 17:31:54',NULL,NULL,NULL,'NrEXH7Vf50T0bNigIs1RrTBKxbM2QfrW0EB212MzfgyntgGOrvk45mjlaOQZ74gVUmM4Bq0tVRiTzFmYVNej5EHwPQz6Bv1KScDw',NULL);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_configurations`
--

DROP TABLE IF EXISTS `email_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_configurations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mail_type` tinyint DEFAULT NULL,
  `mail_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_configurations`
--

LOCK TABLES `email_configurations` WRITE;
/*!40000 ALTER TABLE `email_configurations` DISABLE KEYS */;
INSERT INTO `email_configurations` VALUES (1,NULL,'smtp.gmail.com','587','support@elofok.com',NULL,'01026897931ahmed@gmail.com','cfhhtopqrtzbiwan','tls',NULL,'2024-01-25 17:53:00');
/*!40000 ALTER TABLE `email_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'Password Reset','Password Reset','<h4>Dear <b>{{name}}</b>,</h4>\r\n    <p>Do you want to reset your password? Please Click the following link and Reset Your Password.</p>',NULL,'2021-07-04 02:21:18'),(2,'contact email','Contact Email','<p><span style=\"font-size: 1rem;\">Name: {{name}}</span></p><p><span style=\"font-size: 1rem;\">Email: {{email}}</span><br></p>\r\n<p>Phone: {{phone}}</p>\r\n<p>Subject: {{subject}}</p>\r\n<p>Message: {{message}}</p>',NULL,'2021-07-13 06:59:36'),(3,'doctor login information','Doctor Login Information','<h4>Hi, <b>{{doctor_name}}</b></h4>\r\n<p>Your Account has been created successfully. Your login info here</p>\r\n<p>Email: <b>{{email}}</b></p>\r\n<p>Password: <b>{{password}}</b></p>',NULL,'2021-10-23 06:39:40'),(4,'subscribe notification','Subscribe Notification','<h2>Hi there,</h2>\r\n<p>Congratulations! Your Subscription has been created successfully. Please Click the following link and Verified Your Subscription. If you won\'t approve this link, after 24hourse your subscription will be denay</p>',NULL,'2021-10-24 10:02:24'),(5,'user verification','User Verification','<h4>Dear <b>{{user_name}}</b>,</h4>\n<p>Congratulations! Your Account has been created successfully. Please Click the following link and Active your Account.</p>',NULL,'2021-10-24 10:04:04'),(6,'order successfull','Order Successfull','<h4>Dear <b>{{patient_name}}</b>,</h4><p> Thanks for your new order. Your order id is <b>{{orderId}}</b>. </p><p>\nPayment Method :<b> {{payment_method}}</b>\n</p><p>Total amount:<b> {{amount}}</b></p><p><b>{{order_details}}</b></p><p><b><br></b></p>',NULL,'2021-10-24 10:06:48'),(7,'pre notification for appointment','Pre-Notification for Appointment','<p>hi {{patient_name}},</p><p>your schedule time is&nbsp; {{schedule}}</p><p>Date:&nbsp;<span style=\"font-size: 1rem;\">{{date}}</span></p><p>Doctor: {{doctor_name}}</p>',NULL,'2021-10-26 08:15:52'),(8,'Zoom Meeting','Zoom Meeting','<p>Hi {{patient_name}},</p><p>{{doctor_name}} has created a zoom meeting. if you want to join the meeting, please click here</p><p>Meeting Schedule:&nbsp;<span style=\"font-size: 1rem;\">{{meeting_schedule}}</span></p>',NULL,'2021-10-24 10:18:25'),(9,'Doctor verification','Doctor verification','<h4>Dear <b>{{user_name}}</b>,</h4>\n<p>Congratulations! Your Account has been created successfully. Please Click the following link and Active your Account.</p>',NULL,NULL),(10,'Doctor Withdraw','Doctor Withdraw Approval','<p>Hi <strong>{{doctor_name}}</strong>,</p>\n<p>Your withdraw Request Approval successfully. Please check your account.</p>\n<p>Withdraw method : <strong>{{withdraw_method}}</strong>,</p>\n<p>Total Amount :<strong> {{total_amount}}</strong>,</p>\n<p>Withdraw charge : <strong>{{withdraw_charge}}</strong>,</p>\n<p>Withdraw&nbsp; Amount : <strong>{{withdraw_amount}}</strong>,</p>\n<p>Approval Date :<strong> {{approval_date}}</strong></p>',NULL,NULL),(11,'Doctor verification','Doctor verification','<h4>Dear <b>{{user_name}}</b>,</h4>\r\n    <p>Congratulations! Your Account has been created successfully. Please Click the following link and Active your Account.</p>','2023-11-19 03:53:15','2023-11-19 03:53:15'),(12,'Doctor Withdraw','Doctor Withdraw Approval','<p>Hi <strong>{{doctor_name}}</strong>,</p>\n    <p>Your withdraw Request Approval successfully. Please check your account.</p>\n    <p>Withdraw method : <strong>{{withdraw_method}}</strong>,</p>\n    <p>Total Amount :<strong> {{total_amount}}</strong>,</p>\n    <p>Withdraw charge : <strong>{{withdraw_charge}}</strong>,</p>\n    <p>Withdraw&nbsp; Amount : <strong>{{withdraw_amount}}</strong>,</p>\n    <p>Approval Date :<strong> {{approval_date}}</strong></p>','2023-11-19 03:54:14','2023-11-19 03:54:14');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'General Questions','general-questions',1,'2021-07-13 15:24:44','2021-07-13 15:24:44'),(2,'Payment Related Questions','payment-related-questions',1,'2021-07-13 15:25:04','2021-07-13 15:25:04'),(3,'Appointment Related Questions','appointment-related-questions',1,'2021-07-13 15:25:10','2021-07-13 15:25:10');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,1,'Lorem ipsum dolor sit amet per mollis?','<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu.&nbsp;<span style=\"font-size: 1rem;\">Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</span></p>',1,'2021-07-13 15:25:48','2021-09-13 06:14:32'),(2,1,'Ut alterum dissentiunt eam nobis audire?','<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>',1,'2021-07-13 15:26:06','2021-07-13 15:26:06'),(3,1,'Est odio quaeque legimus ad?','<p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro.<br></p>',1,'2021-07-13 15:26:17','2021-07-13 15:26:17'),(4,2,'Amet facer eripuit cu his mea at quis?','<p>Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>',1,'2021-07-13 15:26:39','2021-07-13 15:26:39'),(5,2,'Mei dicat labore in te atqui aliquip?','<p>Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea.<br></p>',1,'2021-07-13 15:26:58','2021-07-13 15:26:58'),(6,2,'Qui populo oporteat eu sea no semper?','<p>Qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.<br></p>',1,'2021-07-13 15:27:17','2021-07-13 15:27:17'),(7,3,'Ne primis electram reformidans pro mea?','<p>Ne primis electram reformidans pro, mea perpetua senserit ea, sit eu prompta intellegebat. Et vel stet exerci consequat, per dignissim repudiandae ea.<br></p>',1,'2021-07-13 15:27:41','2021-07-13 15:27:41'),(8,3,'Sensibus sententiae voluptatibus duo ad?','<p>Sensibus sententiae voluptatibus duo ad. Ut clita scribentur quo. In movet reprehendunt vis, iriure sanctus te nec. At pro possim detraxit sadipscing, iudico laoreet ullamcorper an nec.<br></p>',1,'2021-07-13 15:27:53','2021-07-13 15:27:53');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,'Accessible Location','In the heart of Cairo.','uploads/custom-images/featur-bg-2021-10-26-11-13-15-5862.jpg','fas fa-map-marker',1,'2021-07-13 10:12:13','2024-01-18 20:26:42'),(2,'Emergency Services','fully equipped to receive Urology & Nephrology emergency cases around the clock, seven days a week (24/7).','uploads/custom-images/featur-bg-2021-10-26-11-13-44-9584.jpg','fas fa-hand-holding-medical',1,'2021-07-13 10:14:44','2024-01-18 20:28:11'),(3,'Qualified Doctors','We have the best qualified doctors to serve our valuable patients','uploads/custom-images/featur-bg-2021-10-26-11-14-19-2740.jpg','fas fa-user-md',1,'2021-07-13 10:15:19','2021-10-26 05:14:22');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flutterwaves`
--

DROP TABLE IF EXISTS `flutterwaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flutterwaves` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flutterwaves`
--

LOCK TABLES `flutterwaves` WRITE;
/*!40000 ALTER TABLE `flutterwaves` DISABLE KEYS */;
INSERT INTO `flutterwaves` VALUES (1,'FLWPUBK_TEST-5760e3ff9888aa1ab5e5cd1ec3f99cb1-X','FLWSECK_TEST-81cb5da016d0a51f7329d4a8057e766d-X','DocMent','uploads/website-images/flutterwave-2021-12-29-03-22-52-7552.jpg',1,'NG','NGN',4.84,NULL,'2022-03-06 02:53:43');
/*!40000 ALTER TABLE `flutterwaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habits`
--

DROP TABLE IF EXISTS `habits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `habit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habits`
--

LOCK TABLES `habits` WRITE;
/*!40000 ALTER TABLE `habits` DISABLE KEYS */;
INSERT INTO `habits` VALUES (2,'Walking','2021-07-13 18:56:47','2021-07-13 18:56:47'),(3,'Smoking','2021-07-13 18:56:47','2021-07-13 18:56:47'),(4,'Alcohol','2021-07-13 18:56:47','2021-07-13 18:56:47');
/*!40000 ALTER TABLE `habits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_sections`
--

DROP TABLE IF EXISTS `home_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `section_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_type` tinyint NOT NULL,
  `show_homepage` tinyint NOT NULL,
  `content_quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_sections`
--

LOCK TABLES `home_sections` WRITE;
/*!40000 ALTER TABLE `home_sections` DISABLE KEYS */;
INSERT INTO `home_sections` VALUES (1,NULL,NULL,NULL,'feature section',1,1,6,NULL,'2021-07-13 10:16:23'),(2,'How','We Work','Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.','work section',2,0,NULL,NULL,'2024-01-18 21:15:28'),(3,'Our','Services','Elofok Medical Center Serves His Patients With Outpatient Clinics In Different Specialties','service section',3,1,10,NULL,'2024-01-18 16:31:54'),(4,'Our','Departments','Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.','department ',4,0,6,NULL,'2024-01-18 15:10:06'),(5,'Our','Patients','Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.','patient section',5,1,4,NULL,'2021-07-13 15:48:43'),(6,'Our','Doctors','Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.','doctor section',6,1,6,NULL,'2021-10-21 06:59:02'),(7,'Our','Blog','Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.','blog section',7,1,5,NULL,'2021-07-14 17:28:13');
/*!40000 ALTER TABLE `home_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instamojo_payments`
--

DROP TABLE IF EXISTS `instamojo_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instamojo_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `api_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `account_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sandbox',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instamojo_payments`
--

LOCK TABLES `instamojo_payments` WRITE;
/*!40000 ALTER TABLE `instamojo_payments` DISABLE KEYS */;
INSERT INTO `instamojo_payments` VALUES (1,'test_5f4a2c9a58ef216f8a1a688910f','test_994252ada69ce7b3d282b9941c2',0.88,'Sandbox',1,NULL,'2022-03-06 04:01:35');
/*!40000 ALTER TABLE `instamojo_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaves`
--

DROP TABLE IF EXISTS `leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaves` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` int NOT NULL,
  `date` date NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaves`
--

LOCK TABLES `leaves` WRITE;
/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
INSERT INTO `leaves` VALUES (1,2,'2021-07-21',0,'2021-07-15 02:31:33','2021-10-24 01:42:55'),(2,2,'2021-10-29',0,'2021-10-24 01:42:42','2021-10-24 01:42:42'),(3,2,'2023-11-07',0,'2023-11-07 12:35:31','2023-11-07 12:35:31');
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Eastern Cairo',1,'2021-07-13 16:31:32','2024-01-18 15:36:05'),(2,'Chicago',0,'2021-07-13 16:31:38','2024-01-18 15:35:22'),(4,'Boston',0,'2021-07-13 16:31:59','2024-01-18 15:35:22'),(5,'Los Angeles',0,'2021-07-13 16:32:05','2024-01-18 15:35:23');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage_navigations`
--

DROP TABLE IF EXISTS `manage_navigations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage_navigations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `show_homepage` tinyint NOT NULL DEFAULT '1',
  `show_aboutus` tinyint NOT NULL DEFAULT '1',
  `show_doctor` tinyint NOT NULL DEFAULT '1',
  `show_department` tinyint NOT NULL DEFAULT '1',
  `show_service` tinyint NOT NULL DEFAULT '1',
  `show_testimonial` tinyint NOT NULL DEFAULT '1',
  `show_faq` tinyint NOT NULL DEFAULT '1',
  `show_blog` tinyint NOT NULL DEFAULT '1',
  `show_contactus` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_navigations`
--

LOCK TABLES `manage_navigations` WRITE;
/*!40000 ALTER TABLE `manage_navigations` DISABLE KEYS */;
INSERT INTO `manage_navigations` VALUES (1,1,1,1,1,1,1,1,1,1,NULL,'2024-01-18 16:14:33');
/*!40000 ALTER TABLE `manage_navigations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage_pages`
--

DROP TABLE IF EXISTS `manage_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `home_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactus_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactus_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_pages`
--

LOCK TABLES `manage_pages` WRITE;
/*!40000 ALTER TABLE `manage_pages` DISABLE KEYS */;
INSERT INTO `manage_pages` VALUES (1,'Elofok - Home','A Urology & Andrology Center of Excellent for all therapeutic & surgical treatments in the eastern area of Cairo, with a strategic location in the middle of Maadi, Tagamoa, Nasr City, and both old and new Cairo.','Elofok - About','A Urology & Andrology Center of Excellent for all therapeutic & surgical treatments in the eastern area of Cairo, with a strategic location in the middle of Maadi, Tagamoa, Nasr City, and both old and new Cairo.','Elofok - Docotrs','Our Advisory Doctors','Elofok - Service','Elofok Medical Center Serves His Patients With Outpatient Clinics In Different Specialties','DocMent - Departments','Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.','Elofok - Testimonails','Patients Reviews','Elofok - FAQ','FAQ Questions','Elofok - Blog','Stay Updated With Our Latest Articles','Elofok - Contact','We are here and always ready to help you. Let us know how we serve you and we’ll get back within no time.',NULL,'2024-01-18 16:14:33');
/*!40000 ALTER TABLE `manage_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage_texts`
--

DROP TABLE IF EXISTS `manage_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage_texts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=594 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_texts`
--

LOCK TABLES `manage_texts` WRITE;
/*!40000 ALTER TABLE `manage_texts` DISABLE KEYS */;
INSERT INTO `manage_texts` VALUES (1,'dashboard','Dashboard','Dashboard','2021-10-25 06:37:46',NULL),(2,'admin_login','Admin Login','Admin Login',NULL,NULL),(3,'doctor_login','Doctor Login','Doctor Login','2021-10-25 06:37:46',NULL),(4,'email','Email','Email',NULL,NULL),(5,'pass','Password','Password',NULL,NULL),(6,'confirm_pass','Confirmed Password','Confirmed Password',NULL,NULL),(7,'login','Login','Login',NULL,NULL),(8,'reg','Register','Register',NULL,NULL),(9,'forget_pass','Forget Password','Forget Password',NULL,NULL),(10,'forget_your_pass','Forget your password?','Forget your password?',NULL,NULL),(11,'reset_pass','Reset Password','Reset Password',NULL,NULL),(12,'login_here','Login here','Login here',NULL,NULL),(13,'new_app','New Appointment','New Appointment',NULL,NULL),(14,'pending_order','Pending Orders','Pending Orders',NULL,NULL),(15,'success_app','SUCCESSFULL APPOINTMENT\r\n','SUCCESSFULL APPOINTMENT',NULL,NULL),(16,'total_patient','Total Patient','Total Patient',NULL,NULL),(17,'total_doc','Total Doctor','Total Doctor',NULL,NULL),(18,'earnings','Earnings','Earnings',NULL,NULL),(19,'monthly','Monthly','Monthly',NULL,NULL),(20,'total','Total','Total',NULL,NULL),(21,'total_subscriber','Total Subscriber','Total Subscriber',NULL,NULL),(22,'doc_payment_in','Doctor Payment In ','Doctor Payment In','2021-10-25 06:37:26',NULL),(23,'earnings_in','Earnings In','Earnings In',NULL,NULL),(24,'serial','Serial','Serial',NULL,NULL),(25,'name','Name','Name',NULL,NULL),(26,'email','Email','Email',NULL,NULL),(27,'phone','Phone','Phone',NULL,NULL),(28,'date','Date','Date',NULL,NULL),(29,'payment','Payment','Payment',NULL,NULL),(30,'action','Action','Action',NULL,NULL),(31,'pending','Pending','Pending',NULL,NULL),(32,'success','Success','Success',NULL,NULL),(33,'active','Active','Active',NULL,NULL),(34,'inactive','Inactive','Inactive',NULL,NULL),(35,'status','Status','Status',NULL,NULL),(36,'order_id','Order Id','Order Id',NULL,NULL),(37,'patient_info','Patient Information','Patient Information',NULL,NULL),(38,'billing_info','Billing Information','Billing Information',NULL,NULL),(39,'app_info','Appointment Information','Appointment Information',NULL,NULL),(40,'fee','Fee','Fee',NULL,NULL),(41,'payment_method','Payment Method','Payment Method',NULL,NULL),(42,'des','Description','Description',NULL,NULL),(43,'payment_status','Payment Status	','Payment Status','2021-10-25 06:37:26',NULL),(44,'doc_name','Doctor Name','Doctor Name',NULL,NULL),(45,'schedule','Schedule','Schedule',NULL,NULL),(46,'age','Age','Age',NULL,NULL),(47,'delete_order','Delete Order','Delete Order',NULL,NULL),(48,'order','Order','Order',NULL,NULL),(49,'payment_accept','Payment Accept','Payment Accept',NULL,NULL),(50,'tran_id','Transaction Id','Transaction Id',NULL,NULL),(51,'last_4','Last 4 digit of Stripe Card','Last 4 digit of Stripe Card',NULL,NULL),(52,'app','Appointment','Appointment',NULL,NULL),(53,'disabilities','Disabilities','Disabilities',NULL,NULL),(54,'gender','Gender','Gender',NULL,NULL),(55,'already_treated','Already Treated','Already Treated',NULL,NULL),(56,'yes','Yes','Yes',NULL,NULL),(57,'no','No','No',NULL,NULL),(58,'app_history','Appointment History','Appointment History',NULL,NULL),(59,'treated','Treated','Treated',NULL,NULL),(60,'from','From','From',NULL,NULL),(61,'to','To','To',NULL,NULL),(62,'doctor','Doctor','Doctor',NULL,NULL),(63,'select_doc','Select Doctor','Select Doctor',NULL,NULL),(64,'search','Search','Search',NULL,NULL),(65,'prescription_history','Prescription History','Prescription History',NULL,NULL),(66,'patient_name','Patient Name','Patient Name',NULL,NULL),(67,'problem','Problems','Problems',NULL,NULL),(68,'days','Days','Days',NULL,NULL),(69,'signature','Signature','Signature',NULL,NULL),(70,'print','Print','Print',NULL,NULL),(71,'prescription','Prescription','Prescription',NULL,NULL),(72,'test','Test','Test',NULL,NULL),(73,'advice','Advice','Advice',NULL,NULL),(74,'patient','Patient','Patient',NULL,NULL),(75,'patient','Patients','Patients',NULL,NULL),(76,'patient_table','Patient Table','Patient Table',NULL,NULL),(77,'reg_date','Registration Date','Registration Date',NULL,NULL),(78,'delete_confirm','Delete Confirmation','Delete Confirmation',NULL,NULL),(79,'close','Close','Close',NULL,NULL),(80,'yes','Yes','Yes',NULL,NULL),(81,'no','No','No',NULL,NULL),(82,'delete','Delete','Delete',NULL,NULL),(83,'all_patient','All Patient','All Patient',NULL,NULL),(84,'photo','Photo','Photo',NULL,NULL),(85,'guardian_name','Guardian Name','Guardian Name',NULL,NULL),(86,'guardian_phone','Guardian Phone','Guardian Phone',NULL,NULL),(87,'occupation','Occupation','Occupation',NULL,NULL),(88,'dob','Date Of Birth	','Date Of Birth','2021-10-25 06:37:26',NULL),(89,'weight','Weight','Weight',NULL,NULL),(90,'height','Height','Height',NULL,NULL),(91,'disability','Disability','Disability',NULL,NULL),(92,'helft_ins_num','Helth Insurance Number	','Helth Insurance Number','2021-10-25 06:37:26',NULL),(93,'helth_card_num','Helth Card Number','Helth Card Number',NULL,NULL),(94,'helth_card_pro','Helth Card Provider','Helth Card Provider',NULL,NULL),(95,'all_patient','All Patient','All Patient',NULL,NULL),(96,'photo','Photo','Photo',NULL,NULL),(97,'guardian_name','Guardian Name','Guardian Name',NULL,NULL),(98,'guardian_phone','Guardian Phone','Guardian Phone',NULL,NULL),(99,'occupation','Occupation','Occupation',NULL,NULL),(100,'dob','Date Of Birth	','Date Of Birth','2021-10-25 06:37:26',NULL),(101,'weight','Weight','Weight',NULL,NULL),(102,'height','Height','Height',NULL,NULL),(103,'disability','Disability','Disability',NULL,NULL),(104,'helth_ins_num','Helth Insurance Number	','Helth Insurance Number','2021-10-25 06:37:26',NULL),(105,'helth_card_num','Helth Card Number','Helth Card Number',NULL,NULL),(106,'helth_card_pro','Helth Card Provider','Helth Card Provider',NULL,NULL),(107,'payment_history','Payment History','Payment History',NULL,NULL),(108,'schedule','Schedule','Schedule',NULL,NULL),(109,'create','Create','Create',NULL,NULL),(110,'schedule_table','Schedule Table','Schedule Table',NULL,NULL),(111,'sit_qty','Sit Quantity','Sit Quantity',NULL,NULL),(112,'time','Time','Time',NULL,NULL),(113,'day','Day','Day',NULL,NULL),(114,'select_day','Select Day','Select Day',NULL,NULL),(115,'start_time','Start Time','Start Time',NULL,NULL),(116,'end_time','End Time','End Time',NULL,NULL),(117,'save','Save','Save',NULL,NULL),(118,'update','Update','Update',NULL,NULL),(119,'schedule_form','Schedule Form','Schedule Form',NULL,NULL),(120,'all_schedule','All Schedule','All Schedule',NULL,NULL),(121,'default_day','Default Day','Default Day',NULL,NULL),(122,'custom_day','Custom Day','Custom Day',NULL,NULL),(123,'day_form','Day Form','Day Form',NULL,NULL),(124,'day_table','Day Table','Day Table',NULL,NULL),(125,'habit_table','Habit Table','Habit Table',NULL,NULL),(126,'habit','Habit','Habit',NULL,NULL),(127,'habit_form','Habit Form','Habit Form',NULL,NULL),(128,'zoom_meeting','Zoom Meeting','Zoom Meeting',NULL,NULL),(129,'upcoming_meeting','Upcoming Meeting','Upcoming Meeting',NULL,NULL),(130,'previous_meeting','Previous Meeting','Previous Meeting',NULL,NULL),(131,'patient','Paitent','Paitent',NULL,NULL),(132,'duration','Duration','Duration',NULL,NULL),(133,'minute','minutes','minutes',NULL,NULL),(134,'service','Service','Service',NULL,NULL),(135,'all_service','All Service','All Service',NULL,NULL),(136,'slug','Slug','Slug',NULL,NULL),(137,'others','Others','Others',NULL,NULL),(138,'manage_img','Manage Image','Manage Image',NULL,NULL),(139,'manage_video','Manage Video','Manage Video',NULL,NULL),(140,'manage_faq','Manage FAQ','Manage FAQ',NULL,NULL),(141,'service_form','Service Form','Service Form',NULL,NULL),(142,'header','Header','Header',NULL,NULL),(143,'icon','Icon','Icon',NULL,NULL),(144,'images','Images','Images',NULL,NULL),(145,'short_des','Short Descriptoin','Short Descriptoin',NULL,NULL),(146,'long_des','Long Description','Long Description',NULL,NULL),(147,'show_homepage','Show Homepage','Show Homepage',NULL,NULL),(148,'seo_title','Seo Title','Seo Title',NULL,NULL),(149,'seo_des','Seo Description','Seo Description',NULL,NULL),(150,'service_img','Service Image','Service Image',NULL,NULL),(151,'img','Image','Image',NULL,NULL),(152,'img_not_found','Image Not Found','Image Not Found',NULL,NULL),(153,'service_video','Service Video','Service Video',NULL,NULL),(154,'select_service','Select Service','Select Service',NULL,NULL),(155,'service_video','Service Video','Service Video',NULL,NULL),(156,'link','Link','Link',NULL,NULL),(157,'service_faq','Service FAQ','Service FAQ',NULL,NULL),(158,'qus','Question','Question',NULL,NULL),(159,'ans','Answer','Answer',NULL,NULL),(160,'faq','FAQ','FAQ',NULL,NULL),(161,'faq_cat','FAQ Categories','FAQ Categories',NULL,NULL),(162,'faq_cat_form','FAQ Category Form','FAQ Category Form',NULL,NULL),(163,'faq_table','FAQ Table','FAQ Table',NULL,NULL),(164,'faq_form','FAQ Form','FAQ Form',NULL,NULL),(165,'cat','Category','Category',NULL,NULL),(166,'testi','Testimonial','Testimonial',NULL,NULL),(167,'testi_table','Testimonial Table','Testimonial Table',NULL,NULL),(168,'designation','Designation','Designation',NULL,NULL),(169,'testi_form','Testimonial Form','Testimonial Form',NULL,NULL),(170,'exist_img','Exist Image','Exist Image',NULL,NULL),(171,'about','About','About',NULL,NULL),(172,'mission','Mission','Mission',NULL,NULL),(173,'vision','Vision','Vision',NULL,NULL),(174,'new_img','New Image','New Image',NULL,NULL),(175,'exist_bg_img','Existing Background Image','Existing Background Image',NULL,NULL),(176,'custom_page','Custom Page','Custom Page',NULL,NULL),(177,'page_name','Page Name','Page Name',NULL,NULL),(178,'custom_page_table','Custom Page Table','Custom Page Table',NULL,NULL),(179,'custom_page_form','Custom Page Form','Custom Page Form',NULL,NULL),(180,'all_custom_page','Custom Pages','Custom Pages',NULL,NULL),(181,'term_and_cond','Terms and Condition ','Terms and Condition','2021-10-25 06:37:26',NULL),(182,'privacy_policy','Privacy Policy','Privacy Policy',NULL,NULL),(183,'medicine','Medicine','Medicine',NULL,NULL),(184,'medicine_table','Medicine Table','Medicine Table',NULL,NULL),(185,'medicine_form','Medicine Form','Medicine Form',NULL,NULL),(186,'all_medicine','All Medicine','All Medicine',NULL,NULL),(187,'medicine_type','Medicine Type','Medicine Type',NULL,NULL),(188,'medicine_type_form','Medicine Type','Medicine Type',NULL,NULL),(189,'dep','Department','Department',NULL,NULL),(190,'dep_table','Department Table','Department Table',NULL,NULL),(191,'dep_form','Department Form','Department Form',NULL,NULL),(192,'thumb_img','Thumbnail Image','Thumbnail Image',NULL,NULL),(193,'all_dep','All Department ','All Department','2021-10-25 06:37:26',NULL),(194,'dep_img','Department Images','Department Images',NULL,NULL),(195,'slider_img','Slider Image','Slider Image',NULL,NULL),(196,'location','Location','Location',NULL,NULL),(197,'loc_table','Location Table','Location Table',NULL,NULL),(198,'loc_form','Location Form','Location Form',NULL,NULL),(199,'doc_table','Doctor Table','Doctor Table',NULL,NULL),(200,'all_doc','All Doctor','All Doctor',NULL,NULL),(201,'doc_form','Doctor Form','Doctor Form',NULL,NULL),(202,'select_dep','Select Department','اختر التخصص','2024-01-24 02:30:48',NULL),(203,'select_loc','Select Location','Select Location',NULL,NULL),(204,'facebook','Facebook','Facebook',NULL,NULL),(205,'twitter','Twitter','Twitter',NULL,NULL),(206,'linkedin','LinkedIn','LinkedIn',NULL,NULL),(207,'education','Education','Education',NULL,NULL),(208,'experience','Experiences','Experiences',NULL,NULL),(209,'qualification','Qualifications','Qualifications',NULL,NULL),(210,'address','Address','Address',NULL,NULL),(211,'slider','Slider','Slider',NULL,NULL),(212,'manage_slider_content','Manage Slider Content','Manage Slider Content',NULL,NULL),(213,'feature_table','Feature Table','Feature Table',NULL,NULL),(214,'feature','Feature','Feature',NULL,NULL),(215,'title','Title','Title',NULL,NULL),(216,'logo','Logo','Logo',NULL,NULL),(217,'feature_form','Feature Form','Feature Form',NULL,NULL),(218,'work_section','Work Section','Work Section',NULL,NULL),(219,'video_link','Video Link','Video Link',NULL,NULL),(220,'work_faq','Work FAQ','Work FAQ',NULL,NULL),(221,'overview','Overview','Overview',NULL,NULL),(222,'qty','Quantity','Quantity',NULL,NULL),(223,'icon','Icon','Icon',NULL,NULL),(224,'overview_table','Overview Table','Overview Table',NULL,NULL),(225,'overview_form','Overview Form','Overview Form',NULL,NULL),(226,'partner','Partner','Partner',NULL,NULL),(227,'partner_table','Partner Table','Partner Table',NULL,NULL),(228,'profile_link','Profile Link','Profile Link',NULL,NULL),(229,'partner_form','Partner Form','Partner Form',NULL,NULL),(230,'home_section','Home Section','Home Section',NULL,NULL),(231,'section_name','Section Name','Section Name',NULL,NULL),(232,'first_header','First Header','First Header',NULL,NULL),(233,'second_header','Second Header','Second Header',NULL,NULL),(234,'content_qty','Content Quantity','Content Quantity',NULL,NULL),(235,'all_section','All Section','All Section',NULL,NULL),(236,'general_setting','General Setting','General Setting',NULL,NULL),(237,'old_logo','Old Logo','Old Logo',NULL,NULL),(238,'logo','Logo','Logo',NULL,NULL),(239,'old_favicon','Old Favicon','Old Favicon',NULL,NULL),(240,'favicon','Favicon','Favicon',NULL,NULL),(241,'email_send','Email For Send Contact Message','Email For Send Contact Message',NULL,NULL),(242,'save_contact_msg','Save Contact Message in Database?','Save Contact Message in Database?',NULL,NULL),(243,'patient_can_login','Patient Can Register/Login ?','Patient Can Register/Login ?',NULL,NULL),(244,'layout','Layout','Layout',NULL,NULL),(245,'ltr','LTR(left to right)','LTR(left to right)',NULL,NULL),(246,'rtl','RTL(right to left)','RTL(right to left)',NULL,NULL),(247,'currency_name','Currency Name','Currency Name',NULL,NULL),(248,'currency_icon','Currency Icon','Currency Icon',NULL,NULL),(249,'app_pre_notify','Appointment Pre Notification Hour','Appointment Pre Notification Hour',NULL,NULL),(250,'timezone','TimeZone','TimeZone',NULL,NULL),(251,'blog_comment','Blog Comment','Blog Comment',NULL,NULL),(252,'comment_type','Comment Type','Comment Type',NULL,NULL),(253,'custom_comment','Custom Comment','Custom Comment',NULL,NULL),(254,'facebook_comment','Facebook Comment','Facebook Comment',NULL,NULL),(255,'fb_app_id','Facebook App Id','Facebook App Id',NULL,NULL),(256,'cookie_consent','Cookie Consent','Cookie Consent',NULL,NULL),(257,'allow_consent_modal','Allow Cookie Consent Modal','Allow Cookie Consent Modal',NULL,NULL),(258,'cookie_text','Cookie Text','Cookie Text',NULL,NULL),(259,'button_text','Button Text','Button Text',NULL,NULL),(260,'google_captcha','Google Captcha','Google Captcha',NULL,NULL),(261,'allow_captcha','Allow Google Recaptcha','Allow Google Recaptcha',NULL,NULL),(262,'recaptcha_site_key','Recaptcha Site Key','Recaptcha Site Key',NULL,NULL),(263,'recaptcha_secret_key','Recaptcha Secret Key','Recaptcha Secret Key',NULL,NULL),(264,'clear_database','Clear Database','Clear Database',NULL,NULL),(265,'clear_all_data','Clear All Data','Clear All Data',NULL,NULL),(266,'payment_account','Payment Account','Payment Account',NULL,NULL),(267,'account_mode','Paypal Account Mode','Paypal Account Mode',NULL,NULL),(268,'sandbox','Sandbox','Sandbox',NULL,NULL),(269,'live','Live','Live',NULL,NULL),(270,'paypal_client_id','Paypal Client Id','Paypal Client Id',NULL,NULL),(271,'paypal_secret','Paypal Secret Key','Paypal Secret Key',NULL,NULL),(272,'stripe_key','Stripe Key','Stripe Key',NULL,NULL),(273,'stripe_secret','Stripe Secret','Stripe Secret',NULL,NULL),(274,'bank_account','Bank Account Detail','Bank Account Detail',NULL,NULL),(275,'tawk_live','Tawk Live Chat','Tawk Live Chat',NULL,NULL),(276,'chat_link','Tawk Live Direct Chat Link','Tawk Live Direct Chat Link',NULL,NULL),(277,'preloader','Preloader','Preloader',NULL,NULL),(278,'allow_preloader','Allow Preloader','Allow Preloader',NULL,NULL),(279,'google_analytic','Google Analytic','Google Analytic',NULL,NULL),(280,'allow_analytic','Allow Google Analytic','Allow Google Analytic',NULL,NULL),(281,'tracking_id','Analytic Tracking Id','Analytic Tracking Id',NULL,NULL),(282,'theme_color','Theme Color','Theme Color',NULL,NULL),(283,'color_one','Theme Color One','Theme Color One',NULL,NULL),(284,'color_two','Theme Color Two','Theme Color Two',NULL,NULL),(285,'email_template','Email Template','Email Template',NULL,NULL),(286,'subject','Subject','Subject',NULL,NULL),(287,'go_back','Go Back','Go Back',NULL,NULL),(288,'variable','Variable','Variable',NULL,NULL),(289,'meaning','Meaning','Meaning',NULL,NULL),(290,'user_name','User Name','User Name',NULL,NULL),(291,'patient_name','Patient Name','Patient Name',NULL,NULL),(292,'patient_email','Patient Email','Patient Email',NULL,NULL),(293,'patient_phone','Patient phone','Patient phone',NULL,NULL),(294,'msg_subject','Message Subject','Message Subject',NULL,NULL),(295,'msg','Message','Message',NULL,NULL),(296,'doctor_name','Doctor Name','Doctor Name',NULL,NULL),(297,'doctor_email','Doctor Email','Doctor Email',NULL,NULL),(298,'doc_pass','Doctor Password','Doctor Password',NULL,NULL),(299,'amount','Amount','Amount',NULL,NULL),(300,'order_detail','Order Detail','Order Detail',NULL,NULL),(301,'schedule_time','Schedule Time\r\n','Schedule Time',NULL,NULL),(302,'schedule_date','Schedule Date','Schedule Date',NULL,NULL),(303,'email_config','Email Configuration','Email Configuration',NULL,NULL),(304,'mail_host','Mail Host','Mail Host',NULL,NULL),(305,'send_email_form','Send Email From','Send Email From',NULL,NULL),(306,'smtp_username','SMTP Username','SMTP Username',NULL,NULL),(307,'smtp_pass','SMTP Password','SMTP Password',NULL,NULL),(308,'mail_port','Mail Port','Mail Port',NULL,NULL),(309,'mail_encryption','Mail Encryption','Mail Encryption',NULL,NULL),(310,'tls','TLS','TLS',NULL,NULL),(311,'ssl','SSL','SSL',NULL,NULL),(312,'banner_img','Banner Image','Banner Image',NULL,NULL),(313,'about_us','About Us','About Us',NULL,NULL),(314,'subscribe_us','Subscribe Us','Subscribe Us',NULL,NULL),(315,'profile','Profile','Profile',NULL,NULL),(316,'patient_auth','Patient Authentication','Patient Authentication',NULL,NULL),(317,'patient_payment','Patient Payment','Patient Payment',NULL,NULL),(318,'blog','Blog','Blog',NULL,NULL),(319,'home_overview','Home Overview Background','Home Overview Background',NULL,NULL),(320,'contact','Contact','Contact',NULL,NULL),(321,'login_img','Login Image','Login Image',NULL,NULL),(322,'admin_login','Admin Login','Admin Login',NULL,NULL),(323,'doc_login','Doctor Login','Doctor Login',NULL,NULL),(324,'default_profile_img','Default Profile Image','Default Profile Image',NULL,NULL),(325,'admin','Admin','Admin',NULL,NULL),(326,'admin_table','Admin Table','Admin Table',NULL,NULL),(327,'all_admin','All Admin','All Admin',NULL,NULL),(328,'admin_form','Admin Form','Admin Form',NULL,NULL),(329,'blog_cat','Blog Category','Blog Category',NULL,NULL),(330,'blog_cat_table','Blog Category Table','Blog Category Table',NULL,NULL),(331,'cat_form','Category Form','Category Form',NULL,NULL),(332,'all_cat','All Category','All Category',NULL,NULL),(333,'blog_table','Blog Table','Blog Table',NULL,NULL),(334,'blog_form','Blog Form','Blog Form',NULL,NULL),(335,'all_blog','All Blog','All Blog',NULL,NULL),(336,'show_featured','Show Featured Blog','Show Featured Blog',NULL,NULL),(337,'select_cat','Select Category','Select Category',NULL,NULL),(338,'view','View','View',NULL,NULL),(339,'comment','Comment','Comment',NULL,NULL),(340,'prescription_contact','Prescription Contact','Prescription Contact',NULL,NULL),(341,'topbar_contact','Top Bar Contact','Top Bar Contact',NULL,NULL),(342,'pinterest','Pinterest','Pinterest',NULL,NULL),(343,'youtube','YouTube','YouTube',NULL,NULL),(344,'contact_info','Contact Information','Contact Information',NULL,NULL),(345,'contact_header','Contact Header','Contact Header',NULL,NULL),(346,'contact_des','Contact Description','Contact Description',NULL,NULL),(347,'footer_about','Footer About','Footer About',NULL,NULL),(348,'copyright','Copyright','Copyright',NULL,NULL),(349,'google_map','Google Map Embed Code','Google Map Embed Code',NULL,NULL),(350,'contact_msg','Contact Message','Contact Message',NULL,NULL),(351,'msg_from','Message From','Message From',NULL,NULL),(352,'subscribers','Subscribers','Subscribers',NULL,NULL),(353,'verified','Verified','Verified',NULL,NULL),(354,'email_for_sub','Mail For Subscriber','Mail For Subscriber',NULL,NULL),(355,'sub_content','Subscriber Content','Subscriber Content',NULL,NULL),(356,'send_email','Send Email','Send Email',NULL,NULL),(357,'all_order','All Order','All Order',NULL,NULL),(358,'all_app','All Appointment','All Appointment',NULL,NULL),(359,'setup_page','Setup Pages','Setup Pages',NULL,NULL),(360,'seo_setup','SEO Setup','SEO Setup',NULL,NULL),(361,'language','Language','Language',NULL,NULL),(362,'home_section','Home Section','Home Section',NULL,NULL),(363,'setting','Setting','Setting',NULL,NULL),(364,'home_page','Home Page','Home Page',NULL,NULL),(365,'contact_us','Contact Us','Contact Us',NULL,NULL),(366,'navbar','Navbar','Navbar',NULL,NULL),(367,'website_lang','Website Language','Website Language',NULL,NULL),(368,'notify_lang','Notification Language','Notification Language',NULL,NULL),(369,'valid_lang','Validation Language','Validation Language',NULL,NULL),(370,'section_control','Section Control','Section Control',NULL,NULL),(371,'live_chat','Live Chat','Live Chat',NULL,NULL),(372,'new_order_from','New Order from','New Order from',NULL,NULL),(373,'show_all_order','Show All Order','Show All Order',NULL,NULL),(374,'order_center','Order Center','Order Center',NULL,NULL),(375,'msg_center','Message Center','Message Center',NULL,NULL),(376,'read_more_msg','Read More Messages','Read More Messages',NULL,NULL),(377,'profile','Profile','Profile',NULL,NULL),(378,'logout','Logout','Logout',NULL,NULL),(379,'new_msg_from','New Message From','New Message From',NULL,NULL),(380,'meta_des','Meta Description','Meta Description',NULL,NULL),(381,'show_navbar','Show Navbar?','Show Navbar?',NULL,NULL),(382,'about_us','About Us','About Us',NULL,NULL),(383,'pages','Pages','Pages',NULL,NULL),(384,'login','Login','Login',NULL,NULL),(385,'register','Register','Register',NULL,NULL),(386,'today_app','Today Appointment','Today Appointment',NULL,NULL),(387,'select_schedule','Select Schedule','Select Schedule',NULL,NULL),(388,'app_not_found','Appointment Not Found','Appointment Not Found',NULL,NULL),(389,'app_history','Appointment History','Appointment History',NULL,NULL),(390,'treatment','Treatment','Treatment',NULL,NULL),(391,'history_here','History Here','History Here',NULL,NULL),(392,'old_app_history','Old Appointment History','Old Appointment History',NULL,NULL),(393,'physical_info','Patient Physical Information','Patient Physical Info',NULL,NULL),(394,'weight','Weight','weight',NULL,NULL),(395,'blood_pressure','Blood Pressure','Blood Pressure',NULL,NULL),(396,'pulse_rate','Pulse Rate','Pulse Rate',NULL,NULL),(397,'temp','Temperature','Temperature',NULL,NULL),(398,'problem_des','Problem Description','Problem Description',NULL,NULL),(399,'select_habit','Select Habit','Select Habit',NULL,NULL),(400,'prescribe','Prescribe','Prescribe',NULL,NULL),(401,'type','Type','Type',NULL,NULL),(402,'select_medicine','Select Medicine','Select Medicine',NULL,NULL),(403,'dosage','Dosage','Dosage',NULL,NULL),(404,'after_meal','After Meal','After Meal',NULL,NULL),(405,'before_meal','Before Meal','Before Meal',NULL,NULL),(406,'advice','Advice','Advice',NULL,NULL),(407,'test_des','Test Description','Test Description',NULL,NULL),(408,'edit','Edit','Edit',NULL,NULL),(409,'live_consult','Live Consultation','Live Consultation',NULL,NULL),(410,'meeting','Meeting','Meeting',NULL,NULL),(411,'meeting_table','Meeting Table','Meeting Table',NULL,NULL),(412,'meeting_list','Meeting List','Meeting List',NULL,NULL),(413,'meeting_form','Meeting Form','Meeting Form',NULL,NULL),(414,'topic','Topic','Topic',NULL,NULL),(415,'select_patient','Select Patient','Select Patient',NULL,NULL),(416,'meeting_id','Meeting Id','Meeting Id',NULL,NULL),(417,'all_patient','All Patient','All Patient',NULL,NULL),(418,'meeting_history','Meeting History','Meeting History',NULL,NULL),(419,'zoom_setting','Zoom Setting','Zoom Setting',NULL,NULL),(420,'zoom_api_key','Zoom Api Key','Zoom Api Key',NULL,NULL),(421,'zoom_api_key','Zoom API Secret','Zoom API Secret',NULL,NULL),(422,'zoom_setting','Zoom Setting','Zoom Setting',NULL,NULL),(423,'zoom_api_key','Zoom Api Key','Zoom Api Key',NULL,NULL),(424,'zoom_api_secret','Zoom API Secret','Zoom API Secret',NULL,NULL),(425,'manage_leave','Manage Leave','Manage Leave',NULL,NULL),(426,'doc_leave_table','Doctor Leave Table','Doctor Leave Table',NULL,NULL),(427,'doc_leave_table','Doctor Leave Table','Doctor Leave Table',NULL,NULL),(428,'manage_leave','Manage Leave','Manage Leave',NULL,NULL),(429,'doc_leave_table','Doctor Leave Table','Doctor Leave Table',NULL,NULL),(430,'leave_entry_form','Leave Entry Form','Leave Entry Form',NULL,NULL),(431,'last_30','Earnings (Last 30Days)','Earnings (Last 30Days)',NULL,NULL),(432,'patient_last_30','Total Patient (last 30 days)','Total Patient (last 30 days)',NULL,NULL),(433,'last_30','Earnings (Last 30Days)','Earnings (Last 30Days)',NULL,NULL),(434,'patient_last_30','Total Patient (last 30 days)','Total Patient(last30 days)',NULL,NULL),(435,'search_30','Earnings (Search Result)','Earnings (Search Result)',NULL,NULL),(436,'patient_30','Total Patient (Search Result)','Total Patient (Search Result)',NULL,NULL),(437,'week_day','Week Day','Week Day',NULL,NULL),(438,'schedule_list','Schedule List','Schedule List',NULL,NULL),(439,'send','Send','Send',NULL,NULL),(440,'change_pass','Change Password','Change Password',NULL,NULL),(441,'manage_app','Manage Appointment','Manage Appointment',NULL,NULL),(442,'my_schedule','My Schedule','My Schedule',NULL,NULL),(443,'create_app','Create Appointment','Create Appointment',NULL,NULL),(444,'select_doc','Select Doctor','Select Doctor',NULL,NULL),(445,'select_date','Select Date','Select Date',NULL,NULL),(446,'select_loc','Select Location','Select Location',NULL,NULL),(447,'submit','Submit','Submit',NULL,NULL),(448,'service_details','Service Details','Service Details',NULL,NULL),(449,'see_details','See details','See Details',NULL,NULL),(450,'details','Details','Details',NULL,NULL),(451,'important_link','Important Links','Important Links',NULL,NULL),(452,'recent_post','Recent Posts','Recent Posts',NULL,NULL),(453,'email_address','Email Address','Email Address',NULL,NULL),(454,'subscribe','Subscribe','Subscribe',NULL,NULL),(455,'schedule_not_found','Schedule Not Found','Schedule Not Found',NULL,NULL),(456,'doc_not_found','Doctor Not Found','Doctor Not Found',NULL,NULL),(457,'blog_not_found','Blog Not Found','Blog Not Found',NULL,NULL),(458,'comments','Comments','Comments',NULL,NULL),(459,'submit_a_comment','Submit A Comment','Submit A Comment',NULL,NULL),(460,'recent_post','Recent Post','Recent Post',NULL,NULL),(461,'doctor_info','Doctor Information','Doctor Info',NULL,NULL),(462,'working_hour','Working Hours','Working Hours',NULL,NULL),(463,'send_msg','Send Message','Send Message',NULL,NULL),(464,'department_doctor','Department Doctor','Department Doctor',NULL,NULL),(465,'faqs','Frequently Asked Questions','Frequently Asked Questions',NULL,NULL),(466,'related_video','Related Video','Related Video',NULL,NULL),(467,'quick_contact','Quick Contact','Quick Contact',NULL,NULL),(468,'reg_here','You have no account ? please register here','You have no account ? please register here',NULL,NULL),(469,'exist_login','Existing Account ? Login here','Existing Account ? Login here',NULL,NULL),(470,'register','Register','Register',NULL,NULL),(471,'patient_id','Patient Id','Patient Id',NULL,NULL),(472,'my_profile','My Profile','My Profile',NULL,NULL),(473,'app_list','Appointment List','Appointment List',NULL,NULL),(474,'order_list','Order List','Order List',NULL,NULL),(475,'total_order','Total Order','Total Order',NULL,NULL),(476,'pending_app','Pending Appointment','Pending Appointment',NULL,NULL),(477,'total_app','Total Appointment','Total Appointment',NULL,NULL),(478,'join_link','Join Link','Join Link',NULL,NULL),(479,'occuupation','Occupation','Occupation',NULL,NULL),(480,'male','Male','Male',NULL,NULL),(481,'female','Female','Female',NULL,NULL),(482,'others','Others','Others',NULL,NULL),(483,'country','Country','Country',NULL,NULL),(484,'height','Height','Height',NULL,NULL),(485,'select_gender','Select Gender','Select Gender',NULL,NULL),(486,'city','City','City',NULL,NULL),(487,'blood_group','Blood Group','Blood Group',NULL,NULL),(488,'order_info','Order Information','Order Information',NULL,NULL),(489,'pay_now','Pay Now','Pay Now',NULL,NULL),(490,'stripe','Stripe','Stripe',NULL,NULL),(491,'paypal','Paypal','Paypal',NULL,NULL),(492,'ban_trans','Bank Transfer','Bank Transfer',NULL,NULL),(493,'card_num','Card Number','Card Number',NULL,NULL),(494,'cvc','CVC','CVC',NULL,NULL),(495,'exp_month','Expired Month','Expired Month',NULL,NULL),(496,'exp_year','Expired Year','Expired Year',NULL,NULL),(497,'card_error','Please Insert Valid Card Number','Please Insert Valid Card Number',NULL,NULL),(498,'pay_paypal','Pay With Paypal','Pay With Paypal',NULL,NULL),(499,'tran_info','Transaction Information','Transaction Information',NULL,NULL),(500,'account_info','Account Information','Account Information',NULL,NULL),(501,'pagination','Pagination','Pagination',NULL,NULL),(502,'razorpay','Razorpay','Razorpay',NULL,NULL),(503,'bank','Bank','Bank',NULL,NULL),(504,'razorpay_key','Razorpay Key','Razorpay Key',NULL,NULL),(505,'razorpay_secret_key','Razorpay Secret Key','Razorpay Secret Key',NULL,NULL),(507,'active_currency','Active Currency Rate ( Per INR )','Active Currency Rate ( Per INR )',NULL,NULL),(508,'pay','Pay','Pay',NULL,NULL),(509,'inr','INR','INR',NULL,NULL),(510,'secret_key','Secret key','Secret key',NULL,NULL),(511,'public_key','Public key','Public key',NULL,NULL),(512,'flutterwave','Flutterwave','Flutterwave',NULL,NULL),(513,'pay_with_flutterwave','Pay with Flutterwave','Pay with Flutterwave',NULL,NULL),(514,'currency_rate','Currency Rate (Per USD)','Currency Rate (Per USD)',NULL,NULL),(515,'paystack','Paystack','Paystack',NULL,NULL),(516,'country_name','Country','Country',NULL,NULL),(517,'select_country','Select Country','Select Country',NULL,NULL),(518,'currency_name','Currency','Currency',NULL,NULL),(519,'select_currency','Select Currency','Select Currency',NULL,NULL),(520,'currency_rate_2','Currency Rate','Currency Rate',NULL,NULL),(521,'per','Per','Per',NULL,NULL),(522,'mollie','Mollie','Mollie',NULL,NULL),(523,'mollie_key','Mollie Key','Mollie Key',NULL,NULL),(524,'instamojo','Instamojo','Instamojo',NULL,NULL),(525,'account_mode','Account Mode','Account Mode',NULL,NULL),(526,'api_key','Api key ','Api key ',NULL,NULL),(527,'auth_token','Auth token','Auth token',NULL,NULL),(528,'pay_with_paystack','Pay with Paystack','Pay with Paystack',NULL,NULL),(529,'pay_with_mollie','Pay with Mollie','Pay with Mollie',NULL,NULL),(530,'pay_with_instamojo','Pay with Instamojo','Pay with Instamojo',NULL,NULL),(531,'paymongo','Paymongo','Paymongo',NULL,NULL),(532,'grab_pay','GrabPay','GrabPay',NULL,NULL),(533,'gcash','GCash','GCash',NULL,NULL),(534,'pay_with_paymongo','Pay with Paymongo','Pay with Paymongo',NULL,NULL),(535,'card_payment','Card Payment','Card Payment',NULL,NULL),(536,'client_id','Client Id','Client Id',NULL,NULL),(537,'client_secret','Client Secret','Client Secret',NULL,NULL),(538,'minutes','minutes','minutes',NULL,NULL),(542,'login_as_doctor','Login as a doctor','Login as a doctor',NULL,NULL),(543,'doctor_withdraw','Doctor Withdraw','Doctor Withdraw','2023-11-16 04:47:22','2023-11-16 10:47:22'),(544,'doctor','Doctor','Doctor','2023-11-16 04:47:22','2023-11-16 10:47:22'),(545,'withdraw_method','Withdraw Method','Withdraw Method','2023-11-16 04:47:22','2023-11-16 10:47:22'),(546,'charge','Charge','Charge','2023-11-16 04:47:22','2023-11-16 10:47:22'),(547,'total_amount','Total Amount','Total Amount','2023-11-16 04:47:22','2023-11-16 10:47:22'),(548,'withdraw_amount','Withdraw Amount','Withdraw Amount','2023-11-16 04:47:22','2023-11-16 10:47:22'),(549,'success','Success','Success','2023-11-16 04:47:22','2023-11-16 10:47:22'),(550,'sending','Pending','Pending','2023-11-16 04:47:22','2023-11-16 10:47:22'),(551,'show_withdraw','Show Withdraw','Show Withdraw','2023-11-16 04:47:22','2023-11-16 10:47:22'),(552,'withdraw_charge','Withdraw Charge','Withdraw Charge','2023-11-16 04:47:22','2023-11-16 10:47:22'),(553,'withdraw_charge_amount','Withdraw Charge Amount','Withdraw Charge Amount','2023-11-16 04:47:22','2023-11-16 10:47:22'),(554,'status','Status','Status','2023-11-16 04:47:22','2023-11-16 10:47:22'),(555,'requested_date','Requested Date','Requested Date','2023-11-16 04:47:22','2023-11-16 10:47:22'),(556,'approved_date','Approved Date','Approved Date','2023-11-16 04:47:22','2023-11-16 10:47:22'),(557,'account_information','Account Information','Account Information','2023-11-16 04:47:22','2023-11-16 10:47:22'),(558,'approve_withdraw','Approve withdraw','Approve withdraw','2023-11-16 04:47:22','2023-11-16 10:47:22'),(559,'delete_withdraw_request','Delete withdraw request','Delete withdraw request','2023-11-16 04:47:22','2023-11-16 10:47:22'),(560,'withdraw_approved_confirmation','Withdraw Approved Confirmation','Withdraw Approved Confirmation','2023-11-16 04:47:22','2023-11-16 10:47:22'),(561,'are_you_sure_approved_this_withdraw_request','Are you sure approved this withdraw request ?','Are you sure approved this withdraw request ?','2023-11-16 04:47:22','2023-11-16 10:47:22'),(562,'close','Close','Close','2023-11-16 04:47:22','2023-11-16 10:47:22'),(563,'yes_approve','Yes, Approve','Yes, Approve','2023-11-16 04:47:22','2023-11-16 10:47:22'),(564,'create_method','Create Method','Create Method','2023-11-16 04:47:22','2023-11-16 10:47:22'),(565,'create_withdraw_method','Create Withdraw Method','Create Withdraw Method','2023-11-16 04:47:22','2023-11-16 10:47:22'),(566,'name','Name','Name','2023-11-16 04:47:22','2023-11-16 10:47:22'),(567,'minimum_amount','Minimum Amount','Minimum Amount','2023-11-16 04:47:22','2023-11-16 10:47:22'),(568,'maximum_amount','Maximum Amount','Maximum Amount','2023-11-16 04:47:22','2023-11-16 10:47:22'),(569,'edit_method','Edit Method','Edit Method','2023-11-16 04:47:22','2023-11-16 10:47:22'),(570,'edit_withdraw_method','Edit Withdraw Method','Edit Withdraw Method','2023-11-16 04:47:22','2023-11-16 10:47:22'),(571,'doctor_register','Doctor Register','Doctor Register','2023-11-16 04:47:22','2023-11-16 10:47:22'),(572,'designation','Designation','Designation','2023-11-16 04:47:22','2023-11-16 10:47:22'),(573,'email','Email','Email','2023-11-16 04:47:22','2023-11-16 10:47:22'),(574,'phone','Phone','Phone','2023-11-16 04:47:22','2023-11-16 10:47:22'),(575,'password','Password','Password','2023-11-16 04:47:22','2023-11-16 10:47:22'),(576,'department','Department','Department','2023-11-16 04:47:22','2023-11-16 10:47:22'),(577,'location','Location','Location','2023-11-16 04:47:22','2023-11-16 10:47:22'),(578,'existing_account_login_here','Existing Account ? Login here','Existing Account ? Login here','2023-11-16 04:47:22','2023-11-16 10:47:22'),(579,'create_withdraw','Create Withdraw','Create Withdraw','2023-11-16 04:47:22','2023-11-16 10:47:22'),(580,'current_balance','Current Balance','Current Balance','2023-11-16 04:47:22','2023-11-16 10:47:22'),(581,'total_earning','Total Earning','Total Earning','2023-11-16 04:47:22','2023-11-16 10:47:22'),(582,'total_withdraw','Total Withdraw','Total Withdraw','2023-11-16 04:47:22','2023-11-16 10:47:22'),(583,'my_withdraw','My Withdraw','My Withdraw','2023-11-16 04:47:22','2023-11-16 10:47:22'),(584,'select','Select','Select','2023-11-16 04:47:22','2023-11-16 10:47:22'),(585,'send_request','Send Request','Send Request','2023-11-16 04:47:22','2023-11-16 10:47:22'),(586,'withdraw_limit','Withdraw Limit','Withdraw Limit','2023-11-16 04:47:22','2023-11-16 10:47:22'),(587,'new_withdraw','New Withdraw','New Withdraw','2023-11-16 04:47:22','2023-11-16 10:47:22'),(588,'method','Method','Method','2023-11-16 04:47:22','2023-11-16 10:47:22'),(589,'withdraw_payment','Withdraw Payment','Withdraw Payment','2023-11-16 04:47:22','2023-11-16 10:47:22'),(590,'pending_withdraw','Pending Withdraw','Pending Withdraw','2023-11-16 04:47:22','2023-11-16 10:47:22'),(591,'login_as_doctor','Login as a doctor','Login as a doctor','2023-11-16 04:47:22','2023-11-16 10:47:22'),(592,'register_as_a_doctor','Register as a doctor','Register as a doctor','2023-11-16 04:47:22','2023-11-16 10:47:22'),(593,'app_version','Version','Version',NULL,NULL);
/*!40000 ALTER TABLE `manage_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_types`
--

DROP TABLE IF EXISTS `medicine_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_types`
--

LOCK TABLES `medicine_types` WRITE;
/*!40000 ALTER TABLE `medicine_types` DISABLE KEYS */;
INSERT INTO `medicine_types` VALUES (1,'Tab',1,'2021-07-13 17:47:19','2021-07-13 17:47:19'),(2,'Cap',1,'2021-07-13 17:47:23','2021-10-24 06:34:19'),(3,'Syp',1,'2021-07-13 17:47:30','2021-10-24 06:34:22');
/*!40000 ALTER TABLE `medicine_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicines`
--

DROP TABLE IF EXISTS `medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines`
--

LOCK TABLES `medicines` WRITE;
/*!40000 ALTER TABLE `medicines` DISABLE KEYS */;
INSERT INTO `medicines` VALUES (1,'Napa',1,'2021-07-13 17:48:06','2021-07-13 17:48:06'),(2,'Acetaminophen',1,'2021-07-13 17:48:06','2021-07-13 17:48:06'),(3,'Amoxicillin',1,'2021-07-13 18:02:37','2021-07-13 18:02:37'),(4,'Omeprazole',1,'2021-07-13 18:02:37','2021-07-13 18:02:37'),(5,'Doxycycline',1,'2021-07-13 18:02:38','2021-07-13 18:02:38');
/*!40000 ALTER TABLE `medicines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_histories`
--

DROP TABLE IF EXISTS `meeting_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` int NOT NULL,
  `user_id` int NOT NULL,
  `meeting_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_histories`
--

LOCK TABLES `meeting_histories` WRITE;
/*!40000 ALTER TABLE `meeting_histories` DISABLE KEYS */;
INSERT INTO `meeting_histories` VALUES (36,11,1,'89857233273','2024-01-29 09:00:00','15','2024-01-23 21:38:15','2024-01-23 21:38:15'),(37,11,21,'87269641430','2024-01-29 09:00:00','15','2024-01-25 18:12:51','2024-01-25 18:12:51');
/*!40000 ALTER TABLE `meeting_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` int NOT NULL,
  `user_id` int NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_view` tinyint NOT NULL DEFAULT '0',
  `user_view` tinyint NOT NULL DEFAULT '0',
  `send_doctor` int NOT NULL DEFAULT '0',
  `send_user` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (2,2,1,'Hello Sir',1,1,0,1,'2021-07-14 08:56:42','2023-11-08 03:19:39'),(3,2,1,'I want to get treatment from you soon.',1,1,0,1,'2021-07-14 08:57:08','2023-11-08 03:19:39'),(4,2,1,'Can you please provide me your information so that I can contact on your chambers.',1,1,0,1,'2021-07-14 08:58:39','2023-11-08 03:19:39'),(5,1,1,'Hello',1,1,0,1,'2021-07-14 09:00:25','2023-11-08 03:19:38'),(6,2,1,'Yes. You can contact me. My official phone is: 222-2323-1222',1,1,2,0,'2021-07-14 09:01:04','2023-11-08 03:19:39'),(7,2,1,'Thank you very much, sir',1,1,0,1,'2021-07-14 13:53:41','2023-11-08 03:19:39'),(8,2,1,'You are welcome',1,1,2,0,'2021-07-14 13:53:56','2023-11-08 03:19:39'),(9,1,1,'Are you there?',1,1,0,1,'2021-07-14 13:54:10','2023-11-08 03:19:38'),(10,1,1,'yes there',0,1,0,1,'2021-10-21 06:01:27','2023-11-08 03:19:38'),(11,2,1,'lorem ipsum',1,1,2,0,'2021-10-23 02:06:00','2023-11-08 03:19:39'),(12,2,1,'Yes. You can contact me. My official phone is: 222-2323-1222',1,1,2,0,'2021-10-25 09:26:42','2023-11-08 03:19:39'),(13,1,1,'hi',0,1,0,1,'2021-10-26 01:16:13','2023-11-08 03:19:38'),(14,2,1,'hi',1,1,2,0,'2022-01-28 09:43:49','2023-11-08 03:19:39');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (53,'2021_06_07_155525_create_terms_policies_table',13),(55,'2014_10_12_000000_create_users_table',14),(56,'2014_10_12_100000_create_password_resets_table',14),(57,'2019_08_19_000000_create_failed_jobs_table',14),(58,'2021_06_01_154935_create_doctors_table',14),(59,'2021_06_01_154955_create_admins_table',14),(60,'2021_06_02_061442_create_departments_table',14),(61,'2021_06_02_061452_create_department_images_table',14),(62,'2021_06_02_105225_create_locations_table',14),(63,'2021_06_02_113729_create_blog_categories_table',14),(64,'2021_06_02_115615_create_blogs_table',14),(65,'2021_06_03_041937_create_features_table',14),(66,'2021_06_03_060558_create_home_sections_table',14),(67,'2021_06_03_143301_create_services_table',14),(68,'2021_06_03_143735_create_service_images_table',14),(69,'2021_06_03_161038_create_service_faqs_table',14),(70,'2021_06_04_041544_create_department_faqs_table',14),(71,'2021_06_04_053020_create_videos_table',14),(72,'2021_06_06_042100_create_faq_categories_table',14),(73,'2021_06_06_045120_create_faqs_table',14),(74,'2021_06_06_152014_create_blog_comments_table',14),(75,'2021_06_06_152604_create_testimonials_table',14),(76,'2021_06_07_050501_create_abouts_table',14),(77,'2021_06_07_101918_create_doctor_social_links_table',14),(78,'2021_06_07_160726_create_condition_privacies_table',14),(79,'2021_06_09_075611_create_contact_messages_table',15),(82,'2021_06_09_085640_create_contact_us_table',16),(83,'2021_06_09_131532_create_sliders_table',17),(84,'2021_06_10_044031_create_medicines_table',18),(85,'2021_06_10_090440_create_schedules_table',19),(86,'2021_06_10_093637_create_days_table',20),(87,'2021_06_11_083301_create_contact_information_table',21),(88,'2021_06_11_133427_create_works_table',22),(89,'2021_06_11_133553_create_work_faqs_table',22),(90,'2021_06_12_075620_create_appointments_table',23),(91,'2021_06_12_083244_create_leaves_table',23),(92,'2021_06_14_041145_create_habits_table',24),(93,'2021_06_14_050412_create_prescribes_table',25),(94,'2021_06_14_102344_create_advice_table',26),(95,'2021_06_15_111126_create_subscribes_table',27),(96,'2021_06_16_135618_create_payment_accounts_table',28),(97,'2021_06_18_042314_create_settings_table',29),(98,'2021_06_18_052104_create_manage_navigations_table',30),(99,'2021_06_18_052805_create_manage_pages_table',31),(100,'2021_06_19_052404_create_partners_table',32),(102,'2021_06_19_154658_create_custome_pages_table',33),(103,'2021_06_20_163121_create_overviews_table',34),(106,'2021_06_24_005829_create_medicine_types_table',35),(107,'2021_06_24_011107_create_orders_table',35),(111,'2021_06_24_175001_create_cancle_appointments_table',36),(113,'2021_06_25_041121_create_cancel_orders_table',37),(114,'2021_06_27_114416_create_banner_images_table',38),(117,'2021_06_28_100743_create_navigations_table',39),(119,'2021_06_28_110714_create_manage_texts_table',40),(121,'2021_07_01_113430_create_messages_table',41),(123,'2021_07_02_081300_create_manage_texts_table',42),(126,'2021_07_04_073021_create_email_templates_table',43),(128,'2021_07_05_091055_create_manage_texts_table',44),(129,'2021_07_05_153851_create_validation_texts_table',45),(130,'2021_07_06_023416_create_notification_texts_table',46),(131,'2021_07_08_132239_create_subscriber_emails_table',47),(138,'2021_08_22_120625_create_zoom_credentials_table',48),(139,'2021_08_22_121204_create_zoom_meetings_table',48),(140,'2021_09_09_071537_create_email_configurations_table',49),(142,'2021_09_11_135955_create_meeting_histories_table',50),(143,'2021_11_23_120529_create_razorpays_table',51),(144,'2021_12_29_150857_create_flutterwaves_table',52),(145,'2022_03_06_074346_create_paystack_and_mollies_table',53),(146,'2022_03_06_074358_create_instamojo_payments_table',53),(147,'2023_06_06_131128_add_created_at_to_manage_texts',54),(148,'2023_11_08_140406_add_email_verified_token_to_doctors',55),(149,'2023_11_08_140525_add_email_verified_to_doctors',55),(151,'2023_11_08_163518_create_withdraw_methods_table',56),(153,'2023_11_09_102427_create_my_withdraws_table',57),(154,'2023_11_16_133740_add_app_version_to_settings_table',58),(155,'2023_12_13_172436_add_created_at_to_validation_text',59),(156,'2024_01_22_181113_add_otp_columns_to_users_table',60),(157,'2024_01_22_235320_add_account_id_to_zoom_credentials_table',61);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_withdraws`
--

DROP TABLE IF EXISTS `my_withdraws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_withdraws` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` int NOT NULL,
  `method_id` int NOT NULL,
  `total_amount` double NOT NULL,
  `withdraw_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `account_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_withdraws`
--

LOCK TABLES `my_withdraws` WRITE;
/*!40000 ALTER TABLE `my_withdraws` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_withdraws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigations`
--

DROP TABLE IF EXISTS `navigations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navigations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_home` tinyint DEFAULT NULL,
  `about_us` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_aboutus` tinyint DEFAULT NULL,
  `pages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_pages` tinyint DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_department` tinyint DEFAULT NULL,
  `doctor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_doctor` tinyint DEFAULT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_service` tinyint DEFAULT NULL,
  `testimonial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_testimonial` tinyint DEFAULT NULL,
  `faq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_faq` tinyint DEFAULT NULL,
  `contact_us` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_contactus` tinyint DEFAULT NULL,
  `appointment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_appointment` tinyint DEFAULT NULL,
  `dashboard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_dashboard` tinyint DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_payment` tinyint DEFAULT NULL,
  `blog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_blog` tinyint DEFAULT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_login` tinyint DEFAULT NULL,
  `register` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_register` tinyint DEFAULT NULL,
  `terms_and_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_terms_and_condition` tinyint DEFAULT NULL,
  `privacy_policy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_privacy_policy` tinyint DEFAULT NULL,
  `forget_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigations`
--

LOCK TABLES `navigations` WRITE;
/*!40000 ALTER TABLE `navigations` DISABLE KEYS */;
INSERT INTO `navigations` VALUES (1,'Home',1,'About Us',1,'Pages',1,'Departments',1,'Doctors',1,'Services',1,'Testimonials',1,'FAQ',1,'Contact Us',1,'Appointment',1,'Dashboard',1,'Payment',1,'Blog',1,'Login',1,'Register',1,'Terms and Conditions',1,'Privacy Policy',1,'Forget Password','Reset Password',NULL,'2024-01-21 04:35:31');
/*!40000 ALTER TABLE `navigations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_texts`
--

DROP TABLE IF EXISTS `notification_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_texts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_texts`
--

LOCK TABLES `notification_texts` WRITE;
/*!40000 ALTER TABLE `notification_texts` DISABLE KEYS */;
INSERT INTO `notification_texts` VALUES (1,'create','Create Successfully','Create Successfully',NULL,'2021-10-25 06:31:08'),(2,'update','Update Successfully','Update Successfully',NULL,NULL),(3,'delete','Delete Successfully','Delete Successfully',NULL,'2021-10-25 06:31:08'),(4,'active','Active Successfully','Active Successfully',NULL,NULL),(5,'inactive','InActive Successfully','InActive Successfully',NULL,NULL),(6,'login','Login Successfully','Login Successfully',NULL,NULL),(7,'logout','Logout Successfully','Logout Successfully',NULL,NULL),(8,'subscribe','Please check your email and confirm subscription','Please check your email and confirm subscription',NULL,NULL),(9,'already_subscribe','You already have subscribed in this system','You already have subscribed in this system',NULL,NULL),(10,'forget_pass','Forget Password has been Sent to Your Email','Forget Password has been Sent to Your Email',NULL,NULL),(11,'register','Registration successfully. Please check your email and verified your account','Registration successfully. Please check your email and verified your account',NULL,NULL),(12,'credential','Invalid credentials','Invalid credentials',NULL,NULL),(13,'deactive','Deactive your account','Deactive your account',NULL,NULL),(14,'something','Something went wrong','Something went wrong',NULL,NULL),(15,'invalid_email','Invalid Email','Invalid Email',NULL,NULL),(16,'invalid_token','Invalid Token','Invalid Token',NULL,NULL),(17,'reset_pass','Password reset successfully','Password reset successfully',NULL,NULL),(18,'payment_approved','Payment approved successfully','Payment approved successfully',NULL,NULL),(19,'email_send','Email send successfully','Email send successfully',NULL,NULL),(20,'verify','Verify Successfully','Verify Successfully',NULL,NULL),(21,'fill_up','Please fill up the form before payment','Please fill up the form before payment',NULL,NULL),(22,'payment','Payment Successfully','Payment Successfully',NULL,NULL),(23,'payment_faild','Payment Faild','Payment Faild',NULL,NULL),(24,'payment_faild','Payment Failed','Payment Failed',NULL,NULL),(25,'msg','Message Send Successfully','Message Send Successfully',NULL,NULL),(26,'app','Appointment Created Successfully','Appointment Created Successfully',NULL,NULL),(27,'comment','Comment has submited','Comment has submited',NULL,NULL),(28,'valid_card','Please Provide your valid card information.','Please Provide your valid card information.',NULL,NULL),(29,'amont_100','Amount cannot be less than 100₱','Amount cannot be less than 100₱',NULL,NULL),(30,'setup_zoom_first','Please setup the credentials.','Please setup the credentials.',NULL,NULL),(32,'withdraw_request_approval','Withdraw request approval successfully','Withdraw request approval successfully','2023-11-16 04:47:07','2023-11-16 04:47:07'),(33,'name_is_required','Name is required','Name is required','2023-11-16 04:47:07','2023-11-16 04:47:07'),(34,'name_already_exists','Name already exists','Name already exists','2023-11-16 04:47:07','2023-11-16 04:47:07'),(35,'minimum_amount_required','Minimum amount is required','Minimum amount is required','2023-11-16 04:47:07','2023-11-16 04:47:07'),(36,'maximum_amount_required','Maximum amount is required','Maximum amount is required','2023-11-16 04:47:07','2023-11-16 04:47:07'),(37,'withdraw_charge_required','Withdraw charge is required','Withdraw charge is required','2023-11-16 04:47:07','2023-11-16 04:47:07'),(38,'please_provide_valid_charge','Please provide valid charge','Please provide valid charge','2023-11-16 04:47:07','2023-11-16 04:47:07'),(39,'description_required','Description is required','Description is required','2023-11-16 04:47:07','2023-11-16 04:47:07'),(40,'withdraw_method_required','Withdraw method is required','Withdraw method is required','2023-11-16 04:47:07','2023-11-16 04:47:07'),(41,'withdraw_amount_required','Withdraw amount is required','Withdraw amount is required','2023-11-16 04:47:07','2023-11-16 04:47:07'),(42,'please_provide_valid_amount','Please provide valid amount','Please provide valid amount','2023-11-16 04:47:07','2023-11-16 04:47:07'),(43,'account_information_required','Account information is required','Account information is required','2023-11-16 04:47:07','2023-11-16 04:47:07'),(44,'sorry_Your_Payment_request','Sorry! Your Payment request is more then your current balance','Sorry! Your Payment request is more then your current balance','2023-11-16 04:47:07','2023-11-16 04:47:07'),(45,'withdraw_request_send_successfully','Withdraw request send successfully, please wait for admin approval','Withdraw request send successfully, please wait for admin approval','2023-11-16 04:47:07','2023-11-16 04:47:07'),(46,'range_not_available','Your amount range is not available','Your amount range is not available','2023-11-16 04:47:07','2023-11-16 04:47:07'),(47,'doctor_fillup_profile','Please fill up your profile information before payment withdraw','Please fill up your profile information before payment withdraw','2023-11-16 04:47:07','2023-11-16 04:47:07'),(48,'please_provide_valid_fee','Please provide valid fee','Please provide valid fee',NULL,NULL);
/*!40000 ALTER TABLE `notification_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_payment` double NOT NULL,
  `appointment_qty` int NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` tinyint NOT NULL DEFAULT '0',
  `payment_transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_description` text COLLATE utf8mb4_unicode_ci,
  `last4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `show_notification` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (45,1,'#2024014059',65,1,'Bank Transfer',1,NULL,'NBE\r\n2345678765432',NULL,0,1,'2024-01-22 04:32:40','2024-01-22 07:35:51'),(46,1,'#2024012434',10,1,'Stripe',1,'txn_3ObmQeHWLjS9yT0S0JXiGcvi',NULL,'8210',0,1,'2024-01-23 20:02:24','2024-01-24 02:23:56'),(47,1,'#2024015412',10,1,'Stripe',1,'txn_3Obn8fHWLjS9yT0S0yUX0xl3',NULL,'4444',0,1,'2024-01-23 20:47:54','2024-01-24 02:23:56'),(48,1,'#2024013334',10,1,'Stripe',1,'txn_3Obn9JHWLjS9yT0S0MuR2wbQ',NULL,'4444',0,1,'2024-01-23 20:48:33','2024-01-24 02:23:56'),(49,1,'#2024010366',10,1,'Stripe',1,'txn_3ObnCgHWLjS9yT0S1xSunTjo',NULL,'4444',0,1,'2024-01-23 20:52:03','2024-01-24 02:23:56'),(50,1,'#2024011151',10,1,'Stripe',1,'txn_3ObnPOHWLjS9yT0S0i3kyUVU',NULL,'4444',0,1,'2024-01-23 21:05:11','2024-01-24 02:23:56'),(51,1,'#2024015449',10,1,'Stripe',1,'txn_3ObnQ6HWLjS9yT0S14vhkPea',NULL,'3222',0,1,'2024-01-23 21:05:54','2024-01-24 02:23:56'),(52,1,'#2024013170',10,1,'Stripe',1,'txn_3ObnReHWLjS9yT0S11yPoZj4',NULL,'3222',0,1,'2024-01-23 21:07:31','2024-01-24 02:23:56'),(53,1,'#2024010973',10,1,'Stripe',1,'txn_3ObnSGHWLjS9yT0S0y7C2wMm',NULL,'5556',0,1,'2024-01-23 21:08:09','2024-01-24 02:23:56'),(54,1,'#2024013985',10,1,'Stripe',1,'txn_3ObnTiHWLjS9yT0S0dOyQKMU',NULL,'3222',0,1,'2024-01-23 21:09:39','2024-01-24 02:23:56'),(55,1,'#2024012197',10,1,'Stripe',1,'txn_3ObnUPHWLjS9yT0S1M0mrOPt',NULL,'4444',0,1,'2024-01-23 21:10:21','2024-01-24 02:23:56'),(56,1,'#2024011236',10,1,'Stripe',1,'txn_3ObnWBHWLjS9yT0S0acg5Mre',NULL,'4444',0,1,'2024-01-23 21:12:12','2024-01-24 02:23:56'),(57,1,'#2024010882',10,1,'Stripe',1,'txn_3ObndrHWLjS9yT0S1XfgHav0',NULL,'3222',0,1,'2024-01-23 21:20:08','2024-01-24 02:23:56'),(58,1,'#2024010719',10,1,'Stripe',1,'txn_3ObngkHWLjS9yT0S0NS24qad',NULL,'4444',0,1,'2024-01-23 21:23:07','2024-01-24 02:23:56'),(59,1,'#2024014453',10,1,'Stripe',1,'txn_3ObnhLHWLjS9yT0S0pwSA53x',NULL,'4242',0,1,'2024-01-23 21:23:44','2024-01-24 02:23:56'),(60,1,'#2024013133',10,1,'Stripe',1,'txn_3Obnl0HWLjS9yT0S1foOngar',NULL,'4242',0,1,'2024-01-23 21:27:31','2024-01-24 02:23:56'),(61,1,'#2024012116',10,1,'Stripe',1,'txn_3ObnlpHWLjS9yT0S15aeE3xN',NULL,'4242',0,1,'2024-01-23 21:28:21','2024-01-24 02:23:56'),(62,1,'#2024010763',10,1,'Stripe',1,'txn_3ObnmYHWLjS9yT0S0QfnsOlK',NULL,'4242',0,1,'2024-01-23 21:29:07','2024-01-24 02:23:56'),(63,1,'#2024012861',10,1,'Stripe',1,'txn_3ObnqmHWLjS9yT0S0OSedMjh',NULL,'4242',0,1,'2024-01-23 21:33:28','2024-01-24 02:23:56'),(64,1,'#2024012257',10,1,'Stripe',1,'txn_3ObnreHWLjS9yT0S0gpBIzpb',NULL,'4242',0,1,'2024-01-23 21:34:22','2024-01-24 02:23:56'),(65,1,'#2024011888',10,1,'Stripe',1,'txn_3ObnuTHWLjS9yT0S1BuN7CrM',NULL,'4242',0,1,'2024-01-23 21:37:18','2024-01-24 02:23:56'),(66,1,'#2024011360',10,1,'Stripe',1,'txn_3ObnvMHWLjS9yT0S0VeGJqLb',NULL,'4242',0,1,'2024-01-23 21:38:13','2024-01-24 02:23:56'),(67,21,'#2024014971',10,1,'Stripe',1,'txn_3OcTfgHWLjS9yT0S0JOr9Ecf',NULL,'4242',0,0,'2024-01-25 18:12:49','2024-01-25 18:12:49');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overviews`
--

DROP TABLE IF EXISTS `overviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `overviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overviews`
--

LOCK TABLES `overviews` WRITE;
/*!40000 ALTER TABLE `overviews` DISABLE KEYS */;
INSERT INTO `overviews` VALUES (1,'Patients','500','fas fa-hospital-user',1,'2021-07-13 09:41:44','2021-07-13 09:43:15'),(2,'Departments','16','fas fa-hospital-user',1,'2021-07-13 09:44:31','2021-07-13 09:44:31'),(3,'Expert Doctors','50','fas fa-user-md',1,'2021-07-13 09:45:00','2021-07-13 09:45:00'),(5,'Total Labs','120','fas fa-heartbeat',1,'2021-10-26 06:00:10','2021-10-26 06:00:10');
/*!40000 ALTER TABLE `overviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (7,'uploads/custom-images/partner-2024-01-20-10-19-10-9806.jpg',NULL,1,'2024-01-18 20:33:45','2024-01-21 05:19:10'),(8,'uploads/custom-images/partner-2024-01-20-11-25-12-1962.jpg',NULL,1,'2024-01-18 20:33:51','2024-01-21 06:25:12'),(9,'uploads/custom-images/partner-2024-01-20-11-25-48-5568.jpg',NULL,1,'2024-01-18 20:33:56','2024-01-21 06:25:48'),(10,'uploads/custom-images/partner-2024-01-20-11-26-25-7016.jpg',NULL,1,'2024-01-18 20:34:00','2024-01-21 06:26:25'),(11,'uploads/custom-images/partner-2024-01-18-10-34-05-3999.jpg',NULL,1,'2024-01-18 20:34:05','2024-01-18 20:34:05'),(12,'uploads/custom-images/partner-2024-01-18-10-34-13-4667.jpg',NULL,1,'2024-01-18 20:34:13','2024-01-18 20:34:13'),(14,'uploads/custom-images/partner-2024-01-18-10-34-52-2172.jpg',NULL,1,'2024-01-18 20:34:52','2024-01-18 20:34:52'),(16,'uploads/custom-images/partner-2024-01-18-10-35-48-2572.jpg',NULL,1,'2024-01-18 20:35:48','2024-01-18 20:35:48'),(17,'uploads/custom-images/partner-2024-01-18-10-36-26-4304.jpg',NULL,1,'2024-01-18 20:36:26','2024-01-18 20:36:26'),(18,'uploads/custom-images/partner-2024-01-18-10-53-29-6654.jpg',NULL,1,'2024-01-18 20:53:29','2024-01-18 20:53:29'),(19,'uploads/custom-images/partner-2024-01-18-10-53-43-9392.jpg',NULL,1,'2024-01-18 20:53:43','2024-01-18 20:53:43'),(20,'uploads/custom-images/partner-2024-01-18-10-54-10-7114.jpg',NULL,1,'2024-01-18 20:54:10','2024-01-18 20:54:10'),(21,'uploads/custom-images/partner-2024-01-18-10-54-26-3182.jpg',NULL,1,'2024-01-18 20:54:26','2024-01-18 20:54:26'),(22,'uploads/custom-images/partner-2024-01-18-10-55-17-6414.jpg',NULL,1,'2024-01-18 20:55:17','2024-01-18 20:55:17'),(23,'uploads/custom-images/partner-2024-01-18-10-55-58-4610.jpg',NULL,1,'2024-01-18 20:55:58','2024-01-18 20:55:58'),(24,'uploads/custom-images/partner-2024-01-18-10-56-17-1104.jpg',NULL,1,'2024-01-18 20:56:17','2024-01-18 20:56:17'),(25,'uploads/custom-images/partner-2024-01-18-10-56-32-6832.jpg',NULL,1,'2024-01-18 20:56:32','2024-01-18 20:56:32'),(26,'uploads/custom-images/partner-2024-01-18-10-56-53-7801.jpg',NULL,1,'2024-01-18 20:56:53','2024-01-18 20:56:53'),(27,'uploads/custom-images/partner-2024-01-18-10-57-08-3789.jpg',NULL,1,'2024-01-18 20:57:08','2024-01-18 20:57:08'),(28,'uploads/custom-images/partner-2024-01-18-10-57-30-3339.jpg',NULL,1,'2024-01-18 20:57:30','2024-01-18 20:57:30');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_accounts`
--

DROP TABLE IF EXISTS `payment_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_client_id` text COLLATE utf8mb4_unicode_ci,
  `paypal_secret` text COLLATE utf8mb4_unicode_ci,
  `paypal_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_currency_rate` double NOT NULL,
  `stripe_key` text COLLATE utf8mb4_unicode_ci,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci,
  `stripe_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_currency_rate` double NOT NULL,
  `captcha_key` text COLLATE utf8mb4_unicode_ci,
  `captcha_secret` text COLLATE utf8mb4_unicode_ci,
  `bank_account` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_status` int NOT NULL DEFAULT '1',
  `stripe_status` int NOT NULL DEFAULT '1',
  `bank_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_accounts`
--

LOCK TABLES `payment_accounts` WRITE;
/*!40000 ALTER TABLE `payment_accounts` DISABLE KEYS */;
INSERT INTO `payment_accounts` VALUES (1,'sandbox','ATNUEVlu6q5GWK29zJcO7QV989sT9Yno5eumZEnhgTz_89wG3vFKxdsWGWn0U12g0c7RHSdFVtkOLWMg','EFw7ctHHaifC_Ldy-_Hhf4xW8mNVBaywCcupSlA9UW2RTbvazQaj13O33utcIj09s4xOpRPHhYmNzDcT','US','USD',0.012,'pk_test_51HRx1ZHWLjS9yT0SlXNBrziVO9S4zUF6dialYIeewTSKHNAQS6GD4zJw1u1GMuMIDzpUuaYGHE3JdCrN8G3GdlRE009jEZJwkL','sk_test_51HRx1ZHWLjS9yT0SArpDKztTe6M9I8e7pv61S2GSDjCaVtRYpI7ciVCcEnNBr9DBxMczWcWe4DaOGwoAb2JHLjkH00Ywjuxdyq','US','USD',0.012,NULL,NULL,'Bank Name: Your bank name\r\nAccount Number:  Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name',1,1,1,'2021-06-17 10:51:03','2022-03-06 02:49:16');
/*!40000 ALTER TABLE `payment_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymongo_payments`
--

DROP TABLE IF EXISTS `paymongo_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymongo_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `currency_rate` double NOT NULL DEFAULT '1',
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymongo_payments`
--

LOCK TABLES `paymongo_payments` WRITE;
/*!40000 ALTER TABLE `paymongo_payments` DISABLE KEYS */;
INSERT INTO `paymongo_payments` VALUES (1,'sk_test_TUwj85sA6XTn7nHzmP23dg36','pk_test_z9xACSbhH2EuxVdFaxuY8Waf',1,54.9,'PH','PHP','uploads/website-images/paymongo-2022-06-25-11-01-34-8143.png',NULL,'2022-07-02 03:59:50');
/*!40000 ALTER TABLE `paymongo_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paystack_and_mollies`
--

DROP TABLE IF EXISTS `paystack_and_mollies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paystack_and_mollies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mollie_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mollie_status` int NOT NULL DEFAULT '0',
  `mollie_currency_rate` double NOT NULL DEFAULT '1',
  `mollie_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_public_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_currency_rate` double NOT NULL DEFAULT '1',
  `paystack_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paystack_and_mollies`
--

LOCK TABLES `paystack_and_mollies` WRITE;
/*!40000 ALTER TABLE `paystack_and_mollies` DISABLE KEYS */;
INSERT INTO `paystack_and_mollies` VALUES (1,'test_bgtkwz4pErUqqTzW8KyRQKR27WgMuE',1,0.012,'US','USD','pk_test_057dfe5dee14eaf9c3b4573df1e3760c02c06e38','sk_test_77cb93329abbdc18104466e694c9f720a7d69c97',4.83,'NG','NGN',1,NULL,'2022-03-06 02:57:20');
/*!40000 ALTER TABLE `paystack_and_mollies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescribes`
--

DROP TABLE IF EXISTS `prescribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescribes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `appointment_id` int NOT NULL,
  `medicine_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medicine_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescribes`
--

LOCK TABLES `prescribes` WRITE;
/*!40000 ALTER TABLE `prescribes` DISABLE KEYS */;
INSERT INTO `prescribes` VALUES (21,5,'Syp','Acetaminophen','0-1-0','3','test','After Meal','2021-07-26 03:36:06','2021-07-26 03:36:06'),(22,5,'Cap','Napa','1-1-0','8','test','Befor Meal','2021-07-26 03:36:06','2021-07-26 03:36:06'),(27,6,'Cap','Doxycycline','0-0-1','2','test','After Meal','2021-08-07 16:28:27','2021-08-07 16:28:27'),(28,6,'Syp','Acetaminophen','1-0-1','1','test','After Meal','2021-08-07 16:28:27','2021-08-07 16:28:27'),(29,3,'Tab','Amoxicillin','0-1-1','4','test','After Meal','2021-08-07 16:31:26','2021-08-07 16:31:26'),(30,3,'Cap','Napa','1-1-0','1','test','After Meal','2021-08-07 16:31:26','2021-08-07 16:31:26'),(44,13,'Cap','Amoxicillin','0-1-0','3','test','Befor Meal','2021-10-26 07:06:22','2021-10-26 07:06:22'),(45,13,'Cap','Amoxicillin','0-1-0','15','test','Befor Meal','2021-10-26 07:06:22','2021-10-26 07:06:22'),(46,4,'Cap','Amoxicillin','0-1-1','15','test','Befor Meal','2021-10-26 07:06:48','2021-10-26 07:06:48'),(47,4,'Syp','Napa','1-0-1','7','test','After Meal','2021-10-26 07:06:48','2021-10-26 07:06:48'),(54,2,'Tab','Acetaminophen','1-0-1','1','test','Befor Meal','2021-10-26 07:09:24','2021-10-26 07:09:24'),(55,2,'Syp','Amoxicillin','0-1-1','6','test','After Meal','2021-10-26 07:09:24','2021-10-26 07:09:24'),(60,17,'Tab','Acetaminophen','0-0-1','18','test','After Meal','2022-04-12 03:18:01','2022-04-12 03:18:01'),(61,17,'Cap','Omeprazole','0-1-1','19','test','Befor Meal','2022-04-12 03:18:01','2022-04-12 03:18:01'),(66,60,'Tab','Napa','1-1-1','7','test','After Meal','2023-11-08 04:33:25','2023-11-08 04:33:25'),(67,60,'Syp','Omeprazole','1-0-1','15','test','Befor Meal','2023-11-08 04:33:25','2023-11-08 04:33:25');
/*!40000 ALTER TABLE `prescribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `razorpays`
--

DROP TABLE IF EXISTS `razorpays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `razorpays` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `razorpay_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_status` int NOT NULL DEFAULT '1',
  `currency_rate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `razorpays`
--

LOCK TABLES `razorpays` WRITE;
/*!40000 ALTER TABLE `razorpays` DISABLE KEYS */;
INSERT INTO `razorpays` VALUES (1,'rzp_test_YUI9IQMGtQBtrI','yp0k1mh8R3XmGos8eYdZLdiW','DocMent','This is description','uploads/website-images/razorpay-2021-11-25-11-17-18-8920.png','#fc9403',1,'0.88','IN','INR',NULL,'2022-03-06 02:50:55');
/*!40000 ALTER TABLE `razorpays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `day_id` int NOT NULL,
  `doctor_id` int NOT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (20,1,12,'1:00 PM','3:00 PM',2,1,'2024-01-21 04:50:23','2024-01-21 04:50:23'),(21,3,11,'11:00 AM','1:00 PM',1,1,'2024-01-22 18:27:05','2024-01-22 18:27:05');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_faqs`
--

DROP TABLE IF EXISTS `service_faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_faqs`
--

LOCK TABLES `service_faqs` WRITE;
/*!40000 ALTER TABLE `service_faqs` DISABLE KEYS */;
INSERT INTO `service_faqs` VALUES (9,5,'Lorem ipsum dolor sit amet per mollis?','<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br></p>',1,'2021-07-13 15:21:11','2021-07-13 15:21:11'),(10,5,'Ut alterum dissentiunt eam nobis?','<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>',1,'2021-07-13 15:21:30','2021-07-13 15:21:30'),(11,6,'Est odio quaeque legimus ad eu sumo?','<p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>',1,'2021-07-13 15:22:04','2021-07-13 15:22:04'),(12,6,'Simul bonorum his id solum percipit probatus ea?','<p>Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.<br></p>',1,'2021-07-13 15:22:31','2021-07-13 15:22:31');
/*!40000 ALTER TABLE `service_faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_images`
--

DROP TABLE IF EXISTS `service_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int NOT NULL,
  `small_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `large_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_images`
--

LOCK TABLES `service_images` WRITE;
/*!40000 ALTER TABLE `service_images` DISABLE KEYS */;
INSERT INTO `service_images` VALUES (41,6,'uploads/custom-images/service-small-2021-07-14-09-23-08-71440.jpg','uploads/custom-images/service-large-2021-07-14-09-23-08-87050.jpg','2021-07-14 15:23:08','2021-07-14 15:23:08'),(42,6,'uploads/custom-images/service-small-2021-07-14-09-23-08-87771.jpg','uploads/custom-images/service-large-2021-07-14-09-23-08-49781.jpg','2021-07-14 15:23:09','2021-07-14 15:23:09'),(43,6,'uploads/custom-images/service-small-2021-07-14-09-23-09-43482.jpg','uploads/custom-images/service-large-2021-07-14-09-23-09-94342.jpg','2021-07-14 15:23:09','2021-07-14 15:23:09'),(44,6,'uploads/custom-images/service-small-2021-07-14-09-23-09-53803.jpg','uploads/custom-images/service-large-2021-07-14-09-23-09-41493.jpg','2021-07-14 15:23:09','2021-07-14 15:23:09'),(45,6,'uploads/custom-images/service-small-2021-07-14-09-23-09-94704.jpg','uploads/custom-images/service-large-2021-07-14-09-23-09-51764.jpg','2021-07-14 15:23:09','2021-07-14 15:23:09'),(52,9,'uploads/custom-images/service-small-2024-01-18-06-56-58-77070.png','uploads/custom-images/service-large-2024-01-18-06-56-58-43260.png','2024-01-18 16:56:58','2024-01-18 16:56:58'),(53,1,'uploads/custom-images/service-small-2024-01-18-09-18-12-60190.jpg','uploads/custom-images/service-large-2024-01-18-09-18-12-94530.jpg','2024-01-18 19:18:12','2024-01-18 19:18:12'),(54,2,'uploads/custom-images/service-small-2024-01-18-09-22-10-57450.jpg','uploads/custom-images/service-large-2024-01-18-09-22-10-59060.jpg','2024-01-18 19:22:10','2024-01-18 19:22:10'),(55,3,'uploads/custom-images/service-small-2024-01-18-09-24-43-98590.jpg','uploads/custom-images/service-large-2024-01-18-09-24-43-39840.jpg','2024-01-18 19:24:43','2024-01-18 19:24:43'),(56,4,'uploads/custom-images/service-small-2024-01-18-09-26-40-82420.jpg','uploads/custom-images/service-large-2024-01-18-09-26-40-93180.jpg','2024-01-18 19:26:40','2024-01-18 19:26:40'),(57,10,'uploads/custom-images/service-small-2024-01-18-09-30-10-57050.jpg','uploads/custom-images/service-large-2024-01-18-09-30-10-65840.jpg','2024-01-18 19:30:10','2024-01-18 19:30:10'),(58,11,'uploads/custom-images/service-small-2024-01-18-09-34-32-17870.jpg','uploads/custom-images/service-large-2024-01-18-09-34-32-42770.jpg','2024-01-18 19:34:32','2024-01-18 19:34:32'),(59,12,'uploads/custom-images/service-small-2024-01-18-09-36-04-54020.png','uploads/custom-images/service-large-2024-01-18-09-36-04-57450.png','2024-01-18 19:36:04','2024-01-18 19:36:04'),(60,13,'uploads/custom-images/service-small-2024-01-18-09-37-20-10520.png','uploads/custom-images/service-large-2024-01-18-09-37-20-19060.png','2024-01-18 19:37:20','2024-01-18 19:37:20'),(61,14,'uploads/custom-images/service-small-2024-01-18-09-39-11-18440.png','uploads/custom-images/service-large-2024-01-18-09-39-11-68480.png','2024-01-18 19:39:11','2024-01-18 19:39:11'),(62,15,'uploads/custom-images/service-small-2024-01-18-09-41-31-64480.png','uploads/custom-images/service-large-2024-01-18-09-41-31-38750.png','2024-01-18 19:41:31','2024-01-18 19:41:31'),(63,16,'uploads/custom-images/service-small-2024-01-18-09-43-31-67460.jpg','uploads/custom-images/service-large-2024-01-18-09-43-31-25890.jpg','2024-01-18 19:43:32','2024-01-18 19:43:32'),(64,17,'uploads/custom-images/service-small-2024-01-18-09-45-26-90590.jpg','uploads/custom-images/service-large-2024-01-18-09-45-26-62820.jpg','2024-01-18 19:45:26','2024-01-18 19:45:26'),(65,18,'uploads/custom-images/service-small-2024-01-18-09-46-44-51190.jpg','uploads/custom-images/service-large-2024-01-18-09-46-44-89740.jpg','2024-01-18 19:46:44','2024-01-18 19:46:44'),(66,19,'uploads/custom-images/service-small-2024-01-18-09-47-58-10030.jpg','uploads/custom-images/service-large-2024-01-18-09-47-58-32810.jpg','2024-01-18 19:47:59','2024-01-18 19:47:59'),(67,8,'uploads/custom-images/service-small-2024-01-18-09-51-00-17860.jpg','uploads/custom-images/service-large-2024-01-18-09-51-00-58020.jpg','2024-01-18 19:51:00','2024-01-18 19:51:00');
/*!40000 ALTER TABLE `service_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `sort_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_homepage` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Rheumatoid','rheumatoid','fas fa-heart','Rheumatoid','Rheumatoid','We provide top-notch care & treatment for individuals suffering from rheumatoid arthritis.','<div class=\"hf-elementor-layout elementor-element elementor-element-45c5c36e elementor-widget elementor-widget-section_title\" data-id=\"45c5c36e\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"right-text\" style=\"\"><b style=\"\"><font color=\"#085294\">Rheumatoid Clinic</font></b></span></h1><h3 class=\"iq-title iq-heading-title\" style=\"color: var(--global-font-title); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: var(--font-weight-h3); line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"left-text\" style=\"font-weight: var(--font-weight-light);\"></span></h3><p class=\"iq-title-desc\" style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">At our Rheumatoid Clinic, we provide top-notch care &amp; treatment for individuals suffering from rheumatoid arthritis. Our team of experienced and highly skilled rheumatologists are here to improve your quality of life.</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-b47236f elementor-widget elementor-widget-section_title\" data-id=\"b47236f\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><div class=\"iq-title-icon\" style=\"color: rgb(0, 0, 0);\"></div><h5 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><b style=\"\"><font color=\"#085294\"><span class=\"right-text\" style=\"\">Why Choose Our Rheumatoid Clinic?</span><span class=\"left-text\" style=\"\"></span></font></b></h5></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-b1922c3 elementor-widget elementor-widget-text-editor\" data-id=\"b1922c3\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><ul style=\"padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er; color: rgb(0, 0, 0);\">Expertise:</span><span style=\"color: rgb(0, 0, 0);\">&nbsp;Our rheumatologists are experts in the field of rheumatoid arthritis. They have years of experience in diagnosing and treating this complex condition.</span><br><br></li><li style=\"color: rgb(0, 0, 0); list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Comprehensive Care:</span>&nbsp;We offer a wide range of services to meet all your rheumatoid arthritis needs. From diagnosis and medication management to physical therapy.</li></ul></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-27fbca5 elementor-widget elementor-widget-section_title\" data-id=\"27fbca5\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 30px 0px 0px;\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><div class=\"iq-title-icon\" style=\"color: rgb(0, 0, 0);\"></div><h5 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><font color=\"#085294\" style=\"\"><b><span class=\"right-text\" style=\"\">Services Offered At Our Rheumatoid Clinic:</span><span class=\"left-text\" style=\"\"></span></b></font></h5></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-0f090a1 elementor-widget elementor-widget-text-editor\" data-id=\"0f090a1\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><ul style=\"padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er; color: rgb(0, 0, 0);\">Diagnosis and Evaluation:</span><span style=\"color: rgb(0, 0, 0);\">&nbsp;Our rheumatologists will perform a thorough evaluation to accurately diagnose rheumatoid arthritis and assess the severity of your condition.</span><br><br></li><li style=\"color: rgb(0, 0, 0); list-style: inherit;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Medication Management:</span>&nbsp;We offer a variety of treatment options, including disease-modifying antirheumatic drugs (DMARDs), and pain management medications, to help control inflammation and manage symptoms.<br><br></li><li style=\"color: rgb(0, 0, 0); list-style: inherit;\"><a href=\"https://elofok-eg.com/service/pain-management/\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Pain Management</a><span style=\"font-weight: var(--font-weight-bold)er;\"><u>:</u></span>&nbsp;Our expert Pain Management Consultants will work with you to develop the personalized &amp; perfect plan to improve joint function, reduce pain, and increase mobility.</li></ul></div></div>',1,1,'2021-07-13 10:21:36','2024-01-18 19:17:08'),(2,'Internal Medicine','internal-medicine','fas fa-dna','Internal Medicine','Internal Medicine','We provide comprehensive healthcare to all our patients.','<h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize;\"><span class=\"right-text\" style=\"\"><b style=\"\"><font color=\"#085294\">Internal Medicine Clinic:</font></b></span></h1><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize;\"><span class=\"right-text\" style=\"\"><b style=\"\"><font color=\"#085294\"><br></font></b></span></h1><div><span class=\"right-text\" style=\"\"><div class=\"hf-elementor-layout elementor-element elementor-element-2209eb00 elementor-widget elementor-widget-section_title\" data-id=\"2209eb00\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><h3 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: var(--font-weight-h3); line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3); color: var(--global-font-title);\"><span style=\"font-size: 1rem;\">we provide comprehensive healthcare to all our patients. With a team of highly skilled and experienced physicians, we offer a wide range of services to address your medical needs.</span><br></h3></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-da94d2a elementor-widget elementor-widget-text-editor\" data-id=\"da94d2a\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">Our clinic is committed to deliver exceptional healthcare service to each patient as if he is unique, and our doctors take the time to listen to your concerns and develop a customized treatment plan that is tailored to your specific needs.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">Whether you need routine check-ups, preventive care, or management of chronic conditions, our internal medicine specialists are here to provide you with the highest quality of care. They are experts in diagnosing and treating a wide range of medical conditions, including cardiovascular diseases, respiratory disorders, endocrine disorders, Diabetes, gastrointestinal issues, and more.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">Our clinic is highly equipped with modern diagnostic tools and equipment, allowing us to provide accurate and efficient diagnoses. This ensures that you receive the most appropriate and effective treatment for your condition.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">We also believe in the importance of preventive care and promoting overall wellness. Our doctors will work with you to develop a personalized preventive care plan, which may include vaccinations, screenings, and lifestyle modifications. By focusing on prevention, we aim to help you maintain optimal health and prevent the onset of potential health issues.</p></div></div></span></div>',0,1,'2021-07-13 14:27:04','2024-01-18 19:53:48'),(3,'Pain Management','pain-management','fas fa-briefcase-medical','Pain Management','Pain Management','our dedicated Pain Management Clinic for effective relief is what you are looking for. We help you find relief from your pain and improving your quality of life.','<div class=\"hf-elementor-layout elementor-element elementor-element-573697c1 elementor-widget elementor-widget-section_title\" data-id=\"573697c1\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"right-text\" style=\"\"><b style=\"\"><font color=\"#085294\">Pain Management Clinic:</font></b></span></h1><h3 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><b><font color=\"#085294\"><span class=\"left-text\" style=\"\"></span></font></b></h3><div style=\"\"><span class=\"right-text\" style=\"\"><p style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">If you are you tired of living with chronic pain? Then, our dedicated Pain Management Clinic for effective relief is what you are looking for. Our team of highly trained and experienced professionals is committed to helping you find relief from your pain and improving your quality of life</p><p style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">At our clinic, we understand that each patient’s pain is unique, which is why we offer personalized treatment plans tailored to your specific needs. Our comprehensive approach to pain management combines the latest advancements in medical technology with evidence-based therapies to provide you with the best possible outcomes.</p><p style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">Our team works together to develop a holistic treatment plan that addresses the root cause of your pain. We believe in a multidisciplinary approach that may include medication management, physical therapy, and other non-invasive techniques.We can diagnose and treat a wide range of conditions that cause pain, such as arthritis, fibromyalgia, migraines, sports injuries, and more. Our goal is to not only alleviate your pain but also to improve your overall function and well-being.</p><p style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\"><br></p><div class=\"hf-elementor-layout elementor-element elementor-element-f6e9557 elementor-widget elementor-widget-text-editor\" data-id=\"f6e9557\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><font color=\"#085294\" style=\"\"><b>Don’t Let Pain Control Your Life Any Longer.</b></font></h2></div></div></span></div></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-f6e9557 elementor-widget elementor-widget-text-editor\" data-id=\"f6e9557\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"></div></div>',0,1,'2021-07-13 14:33:00','2024-01-18 19:53:55'),(4,'Liver & Gastro-Intestinal','liver-gastro-intestinal','fas fa-eye','Liver & Gastro-Intestinal','We are dedicated to provide comprehensive and personalized care for all gastro-intestinal and liver conditions.','We are dedicated to provide comprehensive and personalized care for all gastro-intestinal and liver conditions.','<div><br></div><div><div class=\"hf-elementor-layout elementor-element elementor-element-3a1ac219 elementor-widget elementor-widget-section_title\" data-id=\"3a1ac219\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><b style=\"\"><font color=\"#085294\"><span class=\"right-text\" style=\"\">Liver &amp; Gastro-Intestinal Clinic:</span></font></b></h1></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-6130727 elementor-widget elementor-widget-text-editor\" data-id=\"6130727\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">We understand the importance of a healthy digestive system and how it can impact your overall well-being. That’s why we are dedicated to provide comprehensive and personalized care for all gastro-intestinal and liver conditions.</p><p style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">Our team of highly skilled and experienced medical professionals specializes in diagnosing and treating a wide range of conditions affecting the digestive system and liver. From common complaints like acid reflux and irritable bowel syndrome to more complex conditions such as Crohn’s disease and liver cirrhosis, we are here to help.</p><p style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">Our team will work closely with you to develop a customized treatment plan tailored to your specific needs.</p><p style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">In addition to our medical expertise, we also emphasize the importance of patient education and preventive care. We offer educational resources, tips, and lifestyle recommendations with our Clinical nutritionists, to help you maintain a healthy digestive system and prevent future issues.</p></div></div></div>',0,1,'2021-07-13 14:33:37','2024-01-18 19:56:38'),(6,'Pediatric Surgery','pediatric-surgery','fas fa-ambulance','Pediatric Surgery','We provide exceptional pediatric surgical care for children of all ages.','We provide exceptional pediatric surgical care for children of all ages.','<div class=\"hf-elementor-layout elementor-element elementor-element-7b347eaa elementor-widget elementor-widget-section_title\" data-id=\"7b347eaa\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"right-text\" style=\"\"><b style=\"\"><font color=\"#085294\">Pediatric Surgery Clinic:</font></b></span></h1><h3 class=\"iq-title iq-heading-title\" style=\"color: var(--global-font-title); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: var(--font-weight-h3); line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"left-text\" style=\"font-weight: var(--font-weight-light);\"></span></h3><p class=\"iq-title-desc\" style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">At our clinic, we provide exceptional pediatric surgical care for children of all ages. Our team of highly skilled and experienced surgeons are dedicated to deliver the highest standard of medical expertise and compassionate care. We understand that your child’s health is your top priority, and it is ours too.</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-021ee7a elementor-widget elementor-widget-text-editor\" data-id=\"021ee7a\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">Our Pediatric Surgery Clinic offers a wide range of surgical services tailored specifically for children. Whether your child requires a routine procedure or a complex surgery, our team is equipped to handle it with precision and expertise. We specialize in various pediatric surgical areas including but not limited to:</p><ol style=\"padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">General Pediatric Surgery:</span>&nbsp;Our surgeons are trained to perform a wide range of general pediatric surgical procedures, such as male circumcision, appendectomy, hernia repair, and gallbladder surgery.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Neonatal Surgery:</span>&nbsp;We have extensive experience in performing surgical interventions on newborns and premature infants, including procedures to correct congenital abnormalities or treat conditions such as intestinal obstruction.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Minimally Invasive Surgery:</span>&nbsp;Our clinic is at the forefront of utilizing minimally invasive techniques, such as laparoscopy and endoscopy, to minimize scarring and promote faster recovery for our young patients.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Pediatric Urology:</span>&nbsp;We specialize in diagnosing and treating urological conditions in children, including urinary tract infections, kidney disorders, and congenital abnormalities, like lower urethra &amp; Undescended testicles.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Pediatric Orthopedic Surgery:</span>&nbsp;Our orthopedic surgeons are skilled in addressing musculoskeletal conditions in children, ranging from fractures and sports injuries to congenital deformities and scoliosis.<br><br></li></ol><p style=\"margin: 15px 0px; line-height: 1.66em;\">By the end, our clinic is committed to provide a comfortable and child-friendly environment. We understand that children may feel anxious or scared about surgery, so we strive to create a warm and welcoming atmosphere to alleviate their fears. Our team takes the time to explain procedures to both parents and children, ensuring that you are well-informed and prepared every step of the way.</p></div></div>',1,1,'2021-07-13 14:35:24','2024-01-18 19:27:51'),(8,'General Urology','general-urology','fas fa-kidney','General Urology','The Urology Clinic provides all the medical & surgical solutions for our patients with different urology complains.','The Urology Clinic provides all the medical & surgical solutions for our patients with different urology complains.','<p><br></p><h3 class=\"iq-title iq-heading-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; color: var(--global-font-title);\"><b><span class=\"right-text\" style=\"\">General Urology Clinic:</span><span class=\"left-text\" style=\"\"></span></b></h3><p class=\"iq-title-desc\" style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">The Urology Clinic provides all the medical &amp; surgical solutions for our patients with different urology complains, that may include:</p><ul><li style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Urology Tract infections</span></li><li style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Urinary Incontinence, taking in consideration that we have female consultants that can serve our female patients without any embarrassment</span></li><li style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Kidney, Urethral &amp; bladder Stones</span></li><li style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Urologic Cancers</span></li><li style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Reconstructive Urology</span></li><li style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">hematuria (blood in the urine)</span></li><li style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">interstitial cystitis (also called painful bladder syndrome)</span></li><li style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Prostatitis</span></li><li style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Benign Prostatic hyperplasia</span></li><li style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Prostate Cancer<br></span><br></li><div class=\"hf-elementor-layout elementor-element elementor-element-36bbecb elementor-widget elementor-widget-text-editor\" data-id=\"36bbecb\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 800.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">This department to act as a piece of art &amp; offer a comprehensive service for our patients, it accompanied with The&nbsp;<a href=\"https://elofok-eg.com/en/service/general-urology/#\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Urodynamic Unit</a>, that test ability of bladder to hold &amp; empty Urine steadily and completely. &amp;&nbsp;<a href=\"https://elofok-eg.com/en/service/general-urology/#\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Extracorporeal Shock Wave Lithotripsy (ESWL) Unit</a>, which is A noninvasive procedure to break down the Urinary System stones, &amp;&nbsp;<a href=\"https://elofok-eg.com/en/service/general-urology/#\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Prostate Unit</a>, that serve patients with all investigations, therapeutic &amp; surgical treatments for benign &amp; malignant prostate diseases, Ultrasound services Unit, Testicular Ultrasound Unit, Penile Doppler &amp; Interventional Radiology services.</p></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-3a80e8c elementor-widget elementor-widget-text-editor\" data-id=\"3a80e8c\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 800.656px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">And we cannot deny the effective role of the Clinical Nutrition clinic at Elofok Medical Center in supporting patients with urological conditions, especially patients with stones, by providing healthy dietary systems that ensure them a healthy life &amp; avoid the recurrence of stones after their fragmentation.</p></div></div></ul>',1,1,'2024-01-18 16:30:58','2024-01-18 19:58:13'),(9,'Pediatric Urology','pediatric-urology','fas fa-liver','Pediatric Urology','The Pediatric Urology Clinic at Elofok Medical Center provides special care for children with Urinary System health problems.','The Pediatric Urology Clinic at Elofok Medical Center provides special care for children with Urinary System health problems.','<h2><b><font color=\"#085294\">Pediatric Urology Clinic:</font></b></h2><p><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">The Pediatric Urology Clinic at Elofok Medical Center provides special care for children with Urinary System health problems, whether they are congenital defects discovered during pregnancy or after birth, or problems that occur during childhood years. These problems may include:</span><br></p><ul><li style=\"margin-left: 50px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">Kidney, bladder, and ureteral stones.</span></li><li style=\"margin-left: 50px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">Hernias</span></li><li style=\"margin-left: 50px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">Daytime and nighttime pediatric urinary incontinence.</span></li><li style=\"margin-left: 50px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">Urinary tract infections</span></li><li style=\"margin-left: 50px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">Ureteropelvic junction obstruction</span></li><li style=\"margin-left: 50px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">Hypospadias, a condition where the opening of the urethra is not at the tip of the penis.\"</span></li><li style=\"margin-left: 50px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">Epispadias</span></li><li style=\"margin-left: 50px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">Undescended testicle</span></li><li style=\"margin-left: 50px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">Vesicoureteral reflux (the backward flow of urine from the bladder to the kidneys)</span></li><li style=\"margin-left: 50px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">Testicular tumors.</span></li><li style=\"margin-left: 50px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">Reconstruction of the urinary system.</span></li><li style=\"margin-left: 50px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">Kidney &amp; bladder tumors in children</span></li><li style=\"margin-left: 50px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 1rem;\">Ureterovesical junction obstruction</span></li></ul><p style=\"margin-left: 25px;\"><span style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 1rem;\"><br></span></p><p style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">To provide comprehensive care to our patients, the center is equipped with a&nbsp;<a href=\"https://elofok-eg.com/en/service/pediatric-urology/#\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Urodynamic unit</a>&nbsp;that tests the ability of bladder to hold &amp; empty Urine steadily and completely, &amp; help evaluating cases of urinary incontinence in children. We also have an&nbsp;<a href=\"https://elofok-eg.com/en/service/pediatric-urology/#\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\"><span style=\"font-weight: var(--font-weight-bold)er;\"><u>Extracorporeal Shock Wave Lithotripsy (ESWL) unit</u></span></a>&nbsp;for breaking up kidney and bladder stones with a non-invasive, limited intervention approach, with ultrasound guidance to avoid exposure to radiations.</p><p style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\">We cannot deny the effective role of the Clinical Nutrition Clinic at Elofok Medical Center in supporting children with urological disorders, especially those with kidney and bladder stones, by providing healthy dietary systems that suit the child’s health condition to ensure a healthy life and avoid the recurrence of stone formation after their dissolution.”</p>',0,1,'2024-01-18 16:56:58','2024-01-18 19:58:38'),(10,'Cardiovascular','cardiovascular','fas fa-heart','Cardiovascular','We offer a comprehensive range of services to help you maintain a healthy heart and improve your overall well-being.','We offer a comprehensive range of services to help you maintain a healthy heart and improve your overall well-being.','<div class=\"hf-elementor-layout elementor-element elementor-element-7e598cd8 elementor-widget elementor-widget-section_title\" data-id=\"7e598cd8\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"right-text\" style=\"\"><font color=\"#085294\" style=\"\"><b>Cardiovascular Clinic:</b></font></span></h1><h3 class=\"iq-title iq-heading-title\" style=\"color: var(--global-font-title); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: var(--font-weight-h3); line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"left-text\" style=\"font-weight: var(--font-weight-light);\"></span></h3><p class=\"iq-title-desc\" style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">We offer a comprehensive range of services to help you maintain a healthy heart and improve your overall well-being. From preventive care and diagnostic testing to advanced treatment options, we have the expertise and resources to address all your cardiovascular needs.</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-2d8f797 elementor-widget elementor-widget-text-editor\" data-id=\"2d8f797\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">Our clinic is served with eminent cardiologists, who perform accurate and efficient diagnosis of various heart conditions. Whenever you require a cardiologist, to give you a precise &amp; tailored treatment plan that is best suited for you.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">Our team will work closely with you to develop an individualized treatment plan that focuses on your specific needs and goals.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">At our cardiovascular clinic, we prioritize patient comfort and convenience. Our friendly and compassionate staff are dedicated to ensuring a positive and stress-free experience during your visit. We strive to create a warm and welcoming environment where you feel heard, respected, and well-cared for.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">Whether you are seeking preventive care, managing a chronic heart condition, or exploring treatment options for a cardiovascular issue, our Cardiovascular Clinic is here to support you every step of the way. Schedule an appointment today and let us help you achieve optimal heart health.</p></div></div>',1,1,'2024-01-18 19:30:10','2024-01-18 19:30:10'),(11,'General Surgery','general-surgery','fas fa-heart','General Surgery','We provide comprehensive and cutting-edge surgical care that is tailored to meet the unique needs of each patient.','We provide comprehensive and cutting-edge surgical care that is tailored to meet the unique needs of each patient.','<div class=\"hf-elementor-layout elementor-element elementor-element-7e9216ab elementor-widget elementor-widget-section_title\" data-id=\"7e9216ab\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"right-text\" style=\"\"><font color=\"#085294\" style=\"\"><b>General Surgery Clinic:</b></font></span></h1><h3 class=\"iq-title iq-heading-title\" style=\"color: var(--global-font-title); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: var(--font-weight-h3); line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"left-text\" style=\"font-weight: var(--font-weight-light);\"></span></h3><p class=\"iq-title-desc\" style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">We provide comprehensive and cutting-edge surgical care that is tailored to meet the unique needs of each patient. Our team of highly skilled and experienced surgeons is dedicated to delivering the highest quality of care, ensuring optimal outcomes for our patients.</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-59c7196 elementor-widget elementor-widget-section_title\" data-id=\"59c7196\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><div class=\"iq-title-icon\" style=\"color: rgb(0, 0, 0);\"></div><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><font color=\"#085294\" style=\"\"><b><span class=\"right-text\" style=\"\">Why Choose Our General Surgery Clinic?</span></b></font></h2></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-c4decb3 elementor-widget elementor-widget-text-editor\" data-id=\"c4decb3\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0);\"><span style=\"font-weight: var(--font-weight-bold)er;\">1. Expertise:</span>&nbsp;Our surgeons are experts in the field of general surgery, equipped with the knowledge and skills to perform a wide range of surgical procedures. From routine surgeries to complex cases, our team is committed to delivering outstanding surgical care.</p><p style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0);\"><span style=\"font-weight: var(--font-weight-bold)er;\">2. State-of-the-art Capsule Operation Rooms:</span>&nbsp;We take pride in our modern and well-equipped operation rooms, which are designed to provide a comfortable and safe environment for our patients. Our advanced surgical technology enables us to perform procedures with precision and efficiency.</p><p style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0);\"><span style=\"font-weight: var(--font-weight-bold)er;\">3. Compassionate Care:</span>&nbsp;We understand that undergoing surgery can be a stressful and overwhelming experience. That’s why we prioritize the emotional well-being of our patients, providing them with compassionate care and support throughout their surgical journey.</p><p style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0);\"><span style=\"font-weight: var(--font-weight-bold)er;\">4. Collaborative Approach:</span>&nbsp;We believe in a multidisciplinary approach to healthcare. Our surgeons work closely with other medical specialists, including radiologists, anesthesiologists, and nurses, to provide comprehensive and coordinated care for our patients.</p></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-a710c06 elementor-widget elementor-widget-section_title\" data-id=\"a710c06\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 30px 0px 0px;\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><div class=\"iq-title-icon\" style=\"color: rgb(0, 0, 0);\"></div><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><font color=\"#085294\" style=\"\"><b><span class=\"right-text\" style=\"\">Services Offered At Our General Surgery Clinic:</span></b></font></h2><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><font color=\"#085294\" style=\"\"><b><span class=\"right-text\" style=\"\"><br></span></b></font></h2><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 25px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><ol style=\"padding-left: 25px; margin-bottom: 1em; color: rgb(0, 0, 0); text-transform: none;\"><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Minimally Invasive Surgery:</span>&nbsp;We specialize in minimally invasive surgical techniques, which offer numerous benefits, including smaller incisions, less pain, and faster recovery times. Our surgeons are skilled in performing laparoscopic surgeries.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Abdominal Surgery:</span>&nbsp;Our team is experienced in performing a wide range of abdominal surgeries, including appendectomies, hernia repairs, gallbladder removals, colon &amp; rectal surgeries.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Gastrointestinal Surgery:</span>&nbsp;We provide surgical management for various gastrointestinal conditions.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Breast Surgery:</span>&nbsp;We offer comprehensive breast surgical services, including breast cancer surgery, lumpectomies, mastectomies, and breast reconstruction.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Endocrine Surgery:</span>&nbsp;Our surgeons are skilled in performing surgeries involving the endocrine system, including thyroidectomies and parathyroidectomies.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Vascular surgeries &amp; Diabetic foot.</span></li></ol></h2></div></div></div>',1,1,'2024-01-18 19:34:32','2024-01-18 19:34:32'),(12,'Plastic Surgery','plastic-surgery','fas fa-heart','Plastic Surgery','We are dedicated to help you enhance your natural beauty and achieve your desired aesthetic goals.','We are dedicated to help you enhance your natural beauty and achieve your desired aesthetic goals.','<div class=\"hf-elementor-layout elementor-element elementor-element-7e9216ab elementor-widget elementor-widget-section_title\" data-id=\"7e9216ab\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"right-text\" style=\"\"><b style=\"\"><font color=\"#085294\">Plastic Surgery Clinic:</font></b></span></h1><h3 class=\"iq-title iq-heading-title\" style=\"color: var(--global-font-title); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: var(--font-weight-h3); line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"left-text\" style=\"font-weight: var(--font-weight-light);\"></span></h3><p class=\"iq-title-desc\" style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">At our Plastic Surgery Clinic, we are dedicated to help you enhance your natural beauty and achieve your desired aesthetic goals. With a team of highly skilled and experienced plastic surgeons, we offer a wide range of cosmetic and reconstructive procedures to help you look and feel your best.</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-59c7196 elementor-widget elementor-widget-section_title\" data-id=\"59c7196\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><div class=\"iq-title-icon\" style=\"color: rgb(0, 0, 0);\"></div><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><b style=\"\"><span class=\"right-text\" style=\"\"><font color=\"#085294\">Why Choose Our Plastic Surgery Clinic?</font></span></b></h2></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-c4decb3 elementor-widget elementor-widget-text-editor\" data-id=\"c4decb3\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><ol style=\"padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Expertise:</span>&nbsp;Our plastic surgeons are board-certified and have years of experience in performing various plastic surgeries. They stay up to date with the latest advancements in the field to provide you with the highest quality care and results.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Personalized Approach:</span>&nbsp;We understand that everyone is unique, and we take the time to listen to your concerns and goals. Our plastic surgeons will work closely with you to develop a personalized outcome that caters to your specific needs and desires.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Comprehensive Services:</span>&nbsp;From facelifts and breast augmentation to tummy tucks and rhinoplasty, our Plastic Surgery Clinic offers a comprehensive range of procedures to address various cosmetic concerns. Whether you are looking to enhance your features or restore your appearance after an injury or illness, we have the expertise to help you.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">State-of-the-Art Operation Rooms:</span>&nbsp;Our Plastic Surgery Clinic is equipped with modern technology and state-of-the-art operation Room to ensure your safety and comfort throughout your surgical journey. We maintain the highest standards of cleanliness and adhere to strict protocols to provide you with a safe and welcoming environment.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Compassionate Care:</span>&nbsp;We understand that undergoing plastic surgery can be a life-changing decision, and we are committed to provide you with compassionate care every step of the way. Our friendly and caring staff will support you throughout your journey, from your initial consultation to your post-operative care.</li></ol></div></div>',0,1,'2024-01-18 19:36:04','2024-01-18 19:54:11'),(13,'Bariatric Surgery','bariatric-surgery','fas fa-heart','Bariatric Surgery','Our dedicated team of experienced surgeons and healthcare professionals are here to provide you with exceptional care and support throughout your weight loss journey.','Our dedicated team of experienced surgeons and healthcare professionals are here to provide you with exceptional care and support throughout your weight loss journey.','<div class=\"hf-elementor-layout elementor-element elementor-element-7e9216ab elementor-widget elementor-widget-section_title\" data-id=\"7e9216ab\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><b style=\"\"><font color=\"#085294\"><span class=\"right-text\" style=\"\">Bariatric Surgery Clinic:</span></font></b></h1><p class=\"iq-title-desc\" style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">Looking for a trusted and reliable bariatric surgery clinic? Look no further! Our dedicated team of experienced surgeons and healthcare professionals are here to provide you with exceptional care and support throughout your weight loss journey.</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-c4decb3 elementor-widget elementor-widget-text-editor\" data-id=\"c4decb3\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">At our bariatric surgery clinic, we understand the challenges that come with obesity and the impact it can have on your overall health and quality of life. That’s why we offer a comprehensive range of surgical options to help you achieve long-term weight loss and improve your health.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">Our skilled surgeons specialize in various bariatric procedures, including gastric bypass, gastric sleeve, and adjustable gastric banding. These procedures have proven to be highly effective in helping patients achieve significant weight loss and manage obesity-related conditions such as diabetes, high blood pressure, and sleep apnea.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">But it’s not just about the surgery. We believe in a holistic approach to weight loss, focusing on providing you with the tools and support you need to make lasting lifestyle changes. Our dedicated team of clinical nutritionists, will be with you every step of the way, offering guidance, education, and encouragement to help you achieve your weight loss goals.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">At our bariatric surgery clinic, your safety and well-being are our top priorities. We have state-of-the-art operation room, adhering to the highest standards of hygiene and patient care. Our surgeons are certified and have extensive experience in performing bariatric surgeries, ensuring that you receive the highest quality of care.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">If you’re ready to take control of your weight and improve your health, contact our bariatric surgery clinic today. Our friendly staff will be happy to answer any questions you may have and schedule a consultation with one of our experienced surgeons.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">Don’t let obesity hold you back any longer. Trust our bariatric surgery clinic to help you achieve long-term weight loss and regain your health and confidence. Contact us now and take the first step towards a healthier &amp; happier you.</p></div></div>',0,1,'2024-01-18 19:37:20','2024-01-18 19:55:43'),(14,'Pediatric','pediatric','fas fa-heart','Pediatric','As a leading Pediatric Clinic, we are dedicated to ensuring the health and well-being of children in our community.','As a leading Pediatric Clinic, we are dedicated to ensuring the health and well-being of children in our community.','<div class=\"hf-elementor-layout elementor-element elementor-element-33610fc elementor-widget elementor-widget-section_title\" data-id=\"33610fc\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><b style=\"\"><font color=\"#085294\"><span class=\"right-text\" style=\"\">Pediatric Clinic:</span></font></b></h1><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><b style=\"\"><font color=\"#085294\"><span class=\"right-text\" style=\"\"><br></span></font></b></h1><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><p style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0); text-transform: none;\">We understand the importance of providing exceptional pediatric care for your little ones. As a leading Pediatric Clinic, we are dedicated to ensuring the health and well-being of children in our community.</p></h1></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-750f72c elementor-widget elementor-widget-text-editor\" data-id=\"750f72c\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">Our team of highly skilled and compassionate pediatric consultants is committed to provide comprehensive healthcare services for infants, children, and adolescents. With years of experience, we strive to deliver personalized and individualized care to each child we serve.</p></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-7e9216ab elementor-widget elementor-widget-section_title\" data-id=\"7e9216ab\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 35px 0px 0px;\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><div class=\"iq-title-icon\" style=\"color: rgb(0, 0, 0);\"></div><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><b style=\"\"><font color=\"#085294\"><span class=\"right-text\" style=\"\">Why Choose Our Pediatric Clinic?</span></font></b></h2><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><b style=\"\"><font color=\"#085294\"><span class=\"right-text\" style=\"\"><br></span></font></b></h2><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 25px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><ol style=\"padding-left: 25px; margin-bottom: 1em; color: rgb(0, 0, 0); text-transform: none;\"><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Specialized Pediatric Care:</span>&nbsp;Our clinic specializes in providing medical care exclusively for children. We have a deep understanding of the unique needs and challenges that children face, and we are equipped to address them effectively.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er; font-size: 1rem;\"><a href=\"https://elofok-eg.com/en/service/pediatric/#\" style=\"color: var(--sub-title-color); font-size: var(--font-size-body); transition: all 0.5s ease-in-out 0s; outline: none; box-shadow: none;\">Compassionate &amp; Caring Staff</a>:&nbsp;</span><span style=\"font-size: 1rem;\">We have a team of compassionate and caring healthcare professionals who genuinely care about the well-being of your child. Our friendly staff creates a warm and welcoming environment to ensure a positive experience for both children and parents.<br><br></span></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Comprehensive Services:</span>&nbsp;From routine check-ups and vaccinations to diagnosis and treatment of illnesses, we offer a wide range of pediatric services to address all aspects of your child’s health.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Holistic Approach</span>: We believe in taking a holistic approach to pediatric care. Our pediatric consultants not only focus on treating illnesses but also emphasize preventive care and overall health promotion. We work closely with parents to educate and empower them to make informed decisions regarding their child’s health.</li></ol></h2></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-349941b elementor-widget elementor-widget-text-editor\" data-id=\"349941b\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">At Elofok Medical Center, your child’s health and well-being are our top priorities. We are committed to provide an outstanding pediatric care in a comfortable and nurturing environment. Schedule an appointment with our experienced pediatric consultants &amp; let us be your partner in ensuring your child’s optimal health.</p></div></div>',0,1,'2024-01-18 19:39:11','2024-01-18 19:55:34'),(15,'Clinical Nutrition','clinical-nutrition','fas fa-heart','Clinical Nutrition','We are dedicated to providing you with personalized and evidence-based nutrition guidance to help you achieve your health goals.','We are dedicated to providing you with personalized and evidence-based nutrition guidance to help you achieve your health goals.','<div class=\"hf-elementor-layout elementor-element elementor-element-926b1cd elementor-widget elementor-widget-section_title\" data-id=\"926b1cd\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><b style=\"\"><font color=\"#085294\"><span class=\"right-text\" style=\"\">Clinical Nutrition Clinic:</span></font></b></h1><p class=\"iq-title-desc\" style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">Your Path to Optimal Health!</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-70dc0c4 elementor-widget elementor-widget-text-editor\" data-id=\"70dc0c4\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">At our Clinical Nutrition Clinic, we are dedicated to providing you with personalized and evidence-based nutrition guidance to help you achieve your health goals. Whether you are looking to manage a specific health condition, improve your athletic performance, or simply optimize your weight, our team of experienced and highly qualified clinical nutritionists is here to assist you every step of the way.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">At our clinic, we understand that everybody has unique nutritional needs and goals. That’s why our approach is tailored to your specific requirements. Our clinical nutritionists will conduct a comprehensive assessment of your current health status, including your medical history, lifestyle, dietary habits, and any specific concerns or conditions you may have. Based on this assessment, we will develop a personalized nutrition plan that will empower you to make informed choices about your diet and lifestyle.</p></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-108d2e7 elementor-widget elementor-widget-section_title\" data-id=\"108d2e7\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 35px 0px 0px;\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><div class=\"iq-title-icon\" style=\"color: rgb(0, 0, 0);\"></div><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><b style=\"\"><font color=\"#085294\"><span class=\"right-text\" style=\"\">Services We Offer:</span></font></b></h2><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><b style=\"\"><font color=\"#085294\"><span class=\"right-text\" style=\"\"><br></span></font></b></h2><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><p style=\"margin: 15px 0px; line-height: 1.66em; color: rgb(0, 0, 0); text-transform: none;\">Our Clinical Nutrition Clinic offers a wide range of services to address your specific needs. These include:</p><ol style=\"padding-left: 25px; margin-bottom: 1em; color: rgb(0, 0, 0); text-transform: none;\"></ol></h2></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-1bf7ac6 elementor-widget elementor-widget-text-editor\" data-id=\"1bf7ac6\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><ol style=\"color: rgb(0, 0, 0); padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Nutritional Counseling:</span>&nbsp;Our clinical nutritionists will provide you with expert guidance on how to improve your diet to meet your specific goals, whether it’s weight management, managing food allergies, or promoting overall well-being.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Medical Nutrition Therapy:</span>&nbsp;If you have a medical condition such as diabetes, heart disease, or gastrointestinal disorders, our clinical nutritionists will work closely with you and your healthcare team to develop a customized nutrition plan that complements your medical treatment.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Sports Nutrition:</span>&nbsp;For athletes and fitness enthusiasts, our clinical nutritionists can help optimize your performance and recovery through personalized meal plans, supplementation guidance, and hydration strategies.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Weight Management:</span>&nbsp;If you’re struggling with weight issues, our clinical nutritionists will provide you with the tools and support you need to achieve your weight loss goals. We will help you develop healthy eating habits, set realistic goals, and provide ongoing guidance and motivation.</li></ol></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-4d74136e elementor-widget elementor-widget-section_title\" data-id=\"4d74136e\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 35px 0px 0px;\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><div class=\"iq-title-icon\" style=\"color: rgb(0, 0, 0);\"></div><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><span class=\"right-text\" style=\"\"><b style=\"\"><font color=\"#085294\">Why Choose Us:</font></b></span></h2><h5 class=\"iq-title iq-heading-title\" style=\"color: var(--global-font-title); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: var(--font-weight-h5); line-height: var(--font-line-height-h5); font-size: var(--font-size-h5); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h5);\"><span class=\"left-text\" style=\"font-weight: var(--font-weight-light);\"></span></h5></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-4d5e083 elementor-widget elementor-widget-text-editor\" data-id=\"4d5e083\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><ol style=\"padding-left: 25px; margin-bottom: 1em;\"><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Expertise:</span>&nbsp;Our clinical nutritionists are highly trained and experienced in the field of nutrition. They stay up-to-date with the latest research and guidelines to provide you with the most accurate and effective advice.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Personalized Approach:</span>&nbsp;We understand that nutrition is not a one-size-fits-all approach. That’s why we take the time to understand your unique needs and develop a customized nutrition plan specifically for you.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Holistic Perspective:</span>&nbsp;Our Clinical Nutrition Clinic takes a holistic approach to health, considering not only your dietary choices but also other factors such as stress, sleep, and exercise. We believe that true health encompasses all aspects of your lifestyle.<br><br></li><li style=\"list-style: decimal;\"><span style=\"font-weight: var(--font-weight-bold)er;\">Long-Term Support:</span>&nbsp;We are committed to your long-term success. Our clinical nutritionists will provide ongoing support and guidance, helping you navigate any challenges and ensure that you stay on track towards achieving your health goals.<br><br>Take the first step towards optimal health today by scheduling an appointment at our Clinical Nutrition Clinic. Our team is ready to empower you with the knowledge and tools you need to make lasting changes for a healthier, happier you.</li></ol></div></div>',0,1,'2024-01-18 19:41:31','2024-01-18 19:55:24'),(16,'Orthopedic','orthopedic','fas fa-heart','Orthopedic','Our dedicated team of orthopedic experts is committed to helping you regain your mobility, relieve pain, and improve your quality of life.','Our dedicated team of orthopedic experts is committed to helping you regain your mobility, relieve pain, and improve your quality of life.','<div><br></div><div><div class=\"hf-elementor-layout elementor-element elementor-element-5159d0e3 elementor-widget elementor-widget-section_title\" data-id=\"5159d0e3\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><b style=\"\"><font color=\"#085294\"><span class=\"right-text\" style=\"\">Orthopedic Clinic:</span></font></b></h1><p class=\"iq-title-desc\" style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">where we provide top-notch orthopedic care. Our dedicated team of orthopedic experts is committed to helping you regain your mobility, relieve pain, and improve your quality of life.</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-eaae1f2 elementor-widget elementor-widget-text-editor\" data-id=\"eaae1f2\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">At our clinic, we understand that orthopedic issues can significantly impact your daily activities and overall well-being. That’s why we offer a comprehensive range of orthopedic services, tailored to meet your specific needs. Whether you’re dealing with a sports injury, chronic joint pain, our skilled orthopedic consultants are here to provide you with the highest standard of care.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">Our orthopedic consultants have years of experience and expertise in diagnosing and treating a wide range of musculoskeletal conditions. From fractures and sprains to joint diseases, we employ advanced diagnostic techniques and evidence-based treatment options to ensure optimal outcomes for our patients.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">We understand that choosing the right orthopedic clinic is crucial for your health and well-being. That’s why we pride ourselves on creating a warm and welcoming environment for our patients. Our friendly and compassionate staff will guide you through every step of your orthopedic care, from scheduling appointments to post-operative rehabilitation.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">When you visit our Orthopedic Clinic, you can expect personalized attention, comprehensive care, and a commitment to excellence. We are dedicated to helping you get back to doing the things you love, free from pain and limitations.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">Contact us to schedule an appointment and experience the exceptional orthopedic care our clinic provides. Let us be your trusted partner in your journey towards improved mobility and a better quality of life.</p></div></div></div>',0,1,'2024-01-18 19:43:31','2024-01-18 19:55:15'),(17,'Neurology','neurology','fas fa-heart','Neurology','Our dedicated team of board-certified neurologists is committed to providing exceptional medical expertise and personalized attention to every patient.','Our dedicated team of board-certified neurologists is committed to providing exceptional medical expertise and personalized attention to every patient.','<div class=\"hf-elementor-layout elementor-element elementor-element-484793f6 elementor-widget elementor-widget-section_title\" data-id=\"484793f6\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"right-text\" style=\"\"><b style=\"\"><font color=\"#085294\">Neurology Clinic:</font></b></span></h1><h3 class=\"iq-title iq-heading-title\" style=\"color: var(--global-font-title); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: var(--font-weight-h3); line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"left-text\" style=\"font-weight: var(--font-weight-light);\"></span></h3><p class=\"iq-title-desc\" style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">Your trusted destination for comprehensive and advanced neurological care. Our dedicated team of board-certified neurologists is committed to providing exceptional medical expertise and personalized attention to every patient.</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-b1360ed elementor-widget elementor-widget-text-editor\" data-id=\"b1360ed\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">At our Neurology Clinic, we understand the impact that neurological conditions can have on your daily life. That’s why we offer a wide range of specialized services to effectively diagnose, treat, and manage various neurological disorders. Whether you’re dealing with chronic migraines, epilepsy, multiple sclerosis, Parkinson’s disease, or any other condition affecting the nervous system, our experienced neurologists are here to help.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">We pride ourselves on staying at the forefront of medical advancements in the field of neurology.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">At our Neurology Clinic, we believe in a multidisciplinary approach to patient care. Our team works closely with other specialists, including physical therapists, to provide comprehensive care and optimize your overall well-being.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">Your comfort and convenience are important to us. Our friendly and compassionate staff is dedicated to creating a warm and welcoming environment for all our patients. We strive to provide efficient appointment scheduling, minimal wait times, and clear communication throughout your treatment journey.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">As part of our commitment to excellence, we also place a strong emphasis on patient education. We believe that informed patients are empowered to make better decisions about their health. Through educational resources and open communication, we ensure that you have a clear understanding of your condition and the available treatment options.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">Choosing the right neurology clinic is a critical decision for your neurological health. Trust our Neurology Clinic to provide you with the highest quality care, cutting-edge treatments, and compassionate support.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">Contact us to schedule your appointment and take the first step towards a healthier, more vibrant life.</p></div></div>',1,1,'2024-01-18 19:45:26','2024-01-18 19:45:26'),(18,'Chest','chest','fas fa-heart','Chest','Our team of experienced medical professionals provides top-quality diagnosis, treatment, and support for various chest-related conditions.','Our team of experienced medical professionals provides top-quality diagnosis, treatment, and support for various chest-related conditions.','<div class=\"hf-elementor-layout elementor-element elementor-element-484793f6 elementor-widget elementor-widget-section_title\" data-id=\"484793f6\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"right-text\" style=\"\"><b style=\"\"><font color=\"#085294\">Chest Clinic:</font></b></span></h1><h3 class=\"iq-title iq-heading-title\" style=\"color: var(--global-font-title); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: var(--font-weight-h3); line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"left-text\" style=\"font-weight: var(--font-weight-light);\"></span></h3><p class=\"iq-title-desc\" style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">your trusted destination for comprehensive chest care. Our team of experienced medical professionals provides top-quality diagnosis, treatment, and support for various chest-related conditions. Whether you’re dealing with respiratory issues, chest pain, or any other chest-related concerns, we are here to help.</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-b1360ed elementor-widget elementor-widget-text-editor\" data-id=\"b1360ed\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">At our Chest Clinic, we understand the importance of personalized care. Our experts conduct thorough evaluations to accurately diagnose your condition and develop a tailored treatment plan that meets your specific needs. We offer a wide range of services, including advanced diagnostic testing, treatments, &amp; ongoing management to ensure optimal chest health.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">Our highly skilled pulmonologists and respiratory therapists are committed to staying up to date with the latest advancements in chest medicine. Using advanced techniques and cutting-edge technology, we deliver precise and effective care to our patients. Our goal is to provide you with the highest level of care and support throughout your journey to better chest health.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">In addition to our medical expertise, we prioritize patient education and empowerment. We believe that informed patients make better decisions about their health. That’s why we take the time to explain your condition, treatment options, and preventive measures in a clear and concise manner. We want you to feel confident and empowered in managing your chest health.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">When it comes to chest care, trust the experts at our Chest Clinic. Contact us to schedule an appointment and take the first step towards better chest health. We are here to provide the compassionate, comprehensive care you deserve.</p></div></div>',0,1,'2024-01-18 19:46:44','2024-01-18 19:55:03'),(19,'Andrology','andrology','fas fa-heart','Andrology','We provide comprehensive and specialized care for men\'s health.','We provide comprehensive and specialized care for men\'s health.','<div class=\"hf-elementor-layout elementor-element elementor-element-46850ff6 elementor-widget elementor-widget-section_title\" data-id=\"46850ff6\" data-element_type=\"widget\" data-widget_type=\"section_title.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><div class=\"iq-title-box iq-befor-line\" style=\"margin-bottom: 35px;\"><h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: var(--font-weight-h3); line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"right-text\" style=\"\"><font color=\"#085294\">Andrology Clinic:</font></span></h1><h3 class=\"iq-title iq-heading-title\" style=\"color: var(--global-font-title); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: var(--font-weight-h3); line-height: var(--font-line-height-h3); font-size: var(--font-size-h3); font-family: var(--highlight-font-family); font-stretch: condensed; clear: both; word-break: break-word; text-transform: capitalize; letter-spacing: var(--font-letter-spacing-h3);\"><span class=\"left-text\" style=\"font-weight: var(--font-weight-light);\"></span></h3><p class=\"iq-title-desc\" style=\"color: rgb(0, 0, 0); margin: 15px 0px; line-height: 1.66em;\">At our Andrology Clinic, we provide comprehensive and specialized care for men’s health. Our team of highly skilled and experienced professionals is committed to addressing a wide range of male-specific conditions and concerns.</p></div></div></div><div class=\"hf-elementor-layout elementor-element elementor-element-29c9c90 elementor-widget elementor-widget-text-editor\" data-id=\"29c9c90\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"--flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; width: 911px; margin-block-end: 20px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif;\"><div class=\"elementor-widget-container\" style=\"transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);\"><p style=\"margin: 15px 0px; line-height: 1.66em;\">We understand that men’s health issues can be sensitive and require personalized care. That is why we prioritize confidentiality and create a comfortable environment where you can openly discuss your concerns. Our Andrology Clinic offers a wide range of services to ensure that all aspects of your health are addressed.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">Our services include diagnostic evaluations, treatment options, and preventive care for various conditions such as erectile dysfunction, male infertility, prostate health, hormone imbalances, and sexual health concerns. We utilize the latest advancements in medical technology and adhere to evidence-based practices to provide accurate diagnoses and effective treatments.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">Our team of experts consists of urologists, are committed to staying current with the latest research and advancements in the field of andrology to provide you with the best possible care.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">At our Andrology Clinic, we believe in a multidisciplinary approach to care. We work closely with other healthcare professionals, including nutritionists, to ensure that all aspects of your health are addressed. Our goal is to provide comprehensive care that improves your overall well-being.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">Whether you are experiencing a specific health concern or seeking preventive care, our Andrology Clinic is here to support you. We are committed to helping you achieve optimal health and improve your quality of life.</p><p style=\"margin: 15px 0px; line-height: 1.66em;\">Contact us to schedule an appointment and take the first step towards better health. Our friendly staff is ready to assist you and answer any questions you may have. Trust our Andrology Clinic to provide the specialized care you deserve.</p></div></div>',0,1,'2024-01-18 19:47:58','2024-01-18 19:54:51');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe_description` text COLLATE utf8mb4_unicode_ci,
  `slider_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_description` text COLLATE utf8mb4_unicode_ci,
  `show` tinyint DEFAULT '1',
  `patient_can_register` int DEFAULT '1',
  `save_contact_message` int DEFAULT '0',
  `comment_type` int DEFAULT '1',
  `preloader` int DEFAULT '1',
  `preloader_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_comment_script` text COLLATE utf8mb4_unicode_ci,
  `cookie_text` text COLLATE utf8mb4_unicode_ci,
  `cookie_button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_cookie_consent` int DEFAULT '0',
  `captcha_key` text COLLATE utf8mb4_unicode_ci,
  `captcha_secret` text COLLATE utf8mb4_unicode_ci,
  `allow_captcha` int NOT NULL DEFAULT '0',
  `live_chat` int NOT NULL DEFAULT '0',
  `livechat_script` text COLLATE utf8mb4_unicode_ci,
  `text_direction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL DEFAULT '0',
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytic` int NOT NULL DEFAULT '0',
  `google_analytic_code` text COLLATE utf8mb4_unicode_ci,
  `theme_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prescription_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prescription_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenotification_hour` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `app_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2.5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (10,'uploads/website-images/logo-2024-01-18-05-01-53-3568.png','uploads/website-images/favicon-2024-01-18-05-01-53-5029.png','support@elofok.com','subscribe us','sum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argum','Search The Best Doctors','Find out department and location based doctors near your area',1,1,0,1,0,'uploads/website-images/preloader_image-2021-07-13-11-56-58-8326.gif','882238482112522','We use cookies to personalize content and ads, to provide social media features and to analyze our traffic. We also share information about your use of our site with our social media, advertising and analytics partners who may combine it with other information that you’ve provided to them or that they’ve collected from your use of their services.','Accept',1,'6Lc9gjUbAAAAAN3s1TaTyOrE1hDdCUfg5ErMP9cy','6Lc9gjUbAAAAABUslqC9XkznczQBeMU5dQSsvfoM',0,1,'https://embed.tawk.to/5a7c31ded7591465c7077c48/default','LTR','$','USD',1,'UTC',0,'UA-84213520-6','#50af31','#004b85','010 1111 9691','prescription_contact@gmail.com',3,'2021-06-18 09:25:14','2024-01-21 07:30:21','2.5');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (22,'uploads/website-images/slider-2024-01-18-05-30-21-1122.jpg',1,'2024-01-18 15:30:21','2024-01-18 15:30:21'),(23,'uploads/website-images/slider-2024-01-18-05-30-29-6585.jpg',1,'2024-01-18 15:30:30','2024-01-18 15:30:30'),(24,'uploads/website-images/slider-2024-01-18-05-30-38-2087.jpg',1,'2024-01-18 15:30:38','2024-01-18 15:30:38'),(25,'uploads/website-images/slider-2024-01-18-05-30-46-6552.jpg',1,'2024-01-18 15:30:46','2024-01-18 15:30:46');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriber_emails`
--

DROP TABLE IF EXISTS `subscriber_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriber_emails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriber_emails`
--

LOCK TABLES `subscriber_emails` WRITE;
/*!40000 ALTER TABLE `subscriber_emails` DISABLE KEYS */;
INSERT INTO `subscriber_emails` VALUES (1,'','',NULL,'2021-07-13 02:54:37');
/*!40000 ALTER TABLE `subscriber_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribes`
--

DROP TABLE IF EXISTS `subscribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verify_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribes`
--

LOCK TABLES `subscribes` WRITE;
/*!40000 ALTER TABLE `subscribes` DISABLE KEYS */;
INSERT INTO `subscribes` VALUES (1,'arefin2k@gmail.com',NULL,1,'2021-07-13 02:24:05','2021-07-13 02:25:01'),(4,'aa@gmail.com','zZnyV3whLojgPjJSTMbY9mH0b',0,'2021-07-25 06:02:56','2021-07-25 06:02:56'),(7,'riponchandra667@gmail.com','QxvXwLF1beYmvvGQo91hZ5l3i',0,'2023-11-07 11:43:58','2023-11-07 11:43:58');
/*!40000 ALTER TABLE `subscribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms_policies`
--

DROP TABLE IF EXISTS `terms_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terms_policies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `terms_condition` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_policy` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms_policies`
--

LOCK TABLES `terms_policies` WRITE;
/*!40000 ALTER TABLE `terms_policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `terms_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_homepage` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (5,'Majed Ahmed','uploads/custom-images/testimonial-2024-01-18-10-06-37-7700.jpg','CEO, ABC IT Limited','I can\'t speak highly enough about the exceptional care I received at [Medical Center]. The medical team, led by Dr. [Doctor\'s Name], was not only highly knowledgeable but also incredibly compassionate. From the moment I walked in, I felt reassured and supported. The state-of-the-art facilities and personalized attention made my experience truly positive. Thank you to the entire staff for providing top-notch healthcare!',1,1,'2024-01-18 20:06:37','2024-01-18 20:06:37'),(6,'Ahmed Alaa','uploads/custom-images/testimonial-2024-01-18-10-07-59-2068.jpg','CEO, ABC IT Limited','My recent visit to [Medical Center] was nothing short of outstanding. The staff went above and beyond to ensure my comfort and well-being.  They took the time to thoroughly explain my diagnosis and treatment options, making me feel completely at ease. The seamless coordination among the medical professionals and the warm, friendly atmosphere make Elofok a standout in healthcare. I highly recommend their services.',1,1,'2024-01-18 20:07:59','2024-01-18 20:07:59'),(7,'Abd El-Hady','uploads/custom-images/testimonial-2024-01-18-10-08-37-1459.jpg','CEO, ABC IT Limited','Choosing [Medical Center] for my healthcare needs was the best decision I made. The entire team, from the front desk to the medical staff, demonstrated a level of professionalism and care that surpassed my expectations. Dr. [Doctor\'s Name] is not only a skilled practitioner but also a compassionate and understanding physician. The positive and welcoming environment at [Medical Center] made my visits stress-free. I\'m grateful for the excellent care I\'ve received and wouldn\'t hesitate to recommend [Medical Center] to others.',1,1,'2024-01-18 20:08:37','2024-01-18 20:08:37');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health_insurance_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health_card_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health_card_provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabilities` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` int NOT NULL DEFAULT '0',
  `forget_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ready_for_appointment` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2107141535','Harold Lujan','patient@gmail.com','111-222-3398','uploads/custom-images/Harold Lujan-2021-10-26-02-10-46-6997.jpg','3130 Bungalow Road Omaha, NE 68114','Omaha','USA','Robert Santiago','111-222-3433',NULL,NULL,NULL,'Student','20',NULL,'female','50kg',NULL,NULL,NULL,NULL,1,'1UIuJzZQddqKT5h7FR97xz50Mb6Z7zR1F1P1JoeqCl6gX6yBZyVtDfdoXLTUnk76eFqnZtG5S0oKf7IzJaabROvp1J9a5Ner0o2C','$2y$10$WG6VE8A0ZMESGyGCP0GacOKgMqYAGZq1HgK.XaJto38Ct/4v2iNT6',1,1,NULL,'2021-07-13 18:15:35','2023-12-13 04:23:42',NULL,'0'),(2,'2108080736','William Sophia','patient3@gmail.com','125-985-4587',NULL,'Auburn','New York','USA','Harold Lujan','125-985-4587',NULL,NULL,NULL,'Student','23','1999-10-12','male','80','58',NULL,NULL,'clJbzMjEfnzMickQIIZSmAxlJiHxioX5jYG0owA47WixCpqfDyp3xnvcv6ce8kCGMk9Sr0vDKJHCAtZkmLBBevQzcWWCVgXcqfpU',1,NULL,'$2y$10$5SNOR7yOr/s1FcMCq2IieubD.82W2ayHHxZO2Q3YMkhTYVkzskWtK',1,1,NULL,'2021-08-07 18:07:36','2021-10-26 08:01:08',NULL,'0'),(6,'2110265304','Alexander Henry','patient1@gmail.com','123-343-4444','uploads/custom-images/listkhoj-2021-10-26-12-41-07-5864.jpg','Albany','New York','USA','William Sophia','123-343-4444',NULL,NULL,NULL,'Teacher','32','2021-10-27','male','33',NULL,NULL,NULL,NULL,1,NULL,'$2y$10$vARbqZsGXe6ZnzuwK1luV.3xyYwLgohK54QwCVNbi/oAzUhc7SfjW',1,1,NULL,'2021-10-26 02:53:04','2021-10-26 08:03:47',NULL,'0'),(7,'2110265002','Oliver Ilva','patient2@gmail.com','125-985-4587',NULL,'Hempstead','New York','USA','Benjamin Amelia','125-985-4587',NULL,NULL,NULL,'Student','33','2021-10-10','male','58','68',NULL,'yes',NULL,1,NULL,'$2y$10$s3xgASKVqPgrNHxARGKOGetKZk0r057of.nP0FSYhj00HqYUqFhLG',1,1,NULL,'2021-10-26 06:50:02','2022-04-12 03:18:01',NULL,'0'),(8,'2401211244','Majed Ahmed','majed@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9SxXXAMPzVDPYW6pXNScS22caJCOL88ikDUd6XEyytU3R4apGnznB8lrWcTvW8D5HlSIMbDyGSVqT962opWcDeRUIgQyYIObXOcD',0,NULL,'$2y$10$GQcpgdgjCEHEy241SLDHJOQM.BBkD8wYudxjItscST4MCTDUo4676',0,0,NULL,'2024-01-22 04:12:44','2024-01-22 04:12:44',NULL,'0'),(9,'2401211752','Walter Allen','wocovonuqy@mailinator.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'UcLCdPVNIfr72okoeME0QyNasw8BR8MbYawlExBt5F8rNdJYXzlvYzrt3ggzjrogmj8Pb0CN6pKpPTqLfQXxdbnJy08RLOpNSuJH',0,NULL,'$2y$10$pxbsU8zGQFZoKKfORJXkLuqVOi6TafAJ7Y65gPcQ3YZ.me3AzYkf2',0,0,NULL,'2024-01-22 04:17:52','2024-01-22 04:17:52',NULL,'0'),(10,'2401211940','Scarlett Sherman','wopiv@mailinator.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TCnwlp1quRZ8br5XsFIez95QcdgqwLSU5rXlvqjoNVQEwzWPnwKgXkZG1iKxduZ8t9NV2xWIpl3Op8rg7wYopGzMmzYFBayyNml8',0,NULL,'$2y$10$PBK/QkfvSy7TDPbEmtJ5/.VvXzKahY3p8kuyeynPe2UpCK1WoXOa2',0,0,NULL,'2024-01-22 04:19:40','2024-01-22 04:19:40',NULL,'0'),(11,'2401212013','Kylan Macdonald','lyfopa@mailinator.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lblOnlsOChprSHCuuNmNrWQ8H2BY2KEwBx8QemVUrdwKEmG5VebyzfR5Pjx8EZFn80vYcwPkLeAVPzfWLG6RostWZAblQc5ZqFuw',0,NULL,'$2y$10$YFC9BqGXsRnn50JRJ2CZ3.DUtKUHmtGKAePsErRbAIDefcAct.lee',0,0,NULL,'2024-01-22 04:20:13','2024-01-22 04:20:13',NULL,'0'),(12,'2401212138','Abdelrahman Mohamed','abdelrahman@thelean.live',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Yg4MxnZO4Aq4yxbz2eJCUbCe3NwKqQGsSOtuc8Tls6wdDSXU4buS950jEfAvZnFfwvNowlHjQtFPJqflkEDRaB43vhbLAd6hFsF4',0,NULL,'$2y$10$RWq9m6CtyxUha9Z9QFhs2ecUZkH7Qy82H4wurqx8JxyKZ44voMhby',0,0,NULL,'2024-01-22 04:21:38','2024-01-22 04:21:38',NULL,'0'),(21,'2401250626','Rhea Mathews','muhammed.saber385@gmail.com','+18534494597',NULL,'Dolor id mollitia e','Ishqoshim','Tajikistan',NULL,NULL,NULL,NULL,NULL,'test','25',NULL,'male',NULL,NULL,NULL,NULL,NULL,1,NULL,'$2y$10$Oh/HeUl6.H1OS5i9JUGyRen5gPf9HyqQ8sG8NW2hwaDsQyPn/YhLe',1,1,NULL,'2024-01-25 18:06:26','2024-01-25 18:11:10',NULL,'0');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validation_texts`
--

DROP TABLE IF EXISTS `validation_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `validation_texts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validation_texts`
--

LOCK TABLES `validation_texts` WRITE;
/*!40000 ALTER TABLE `validation_texts` DISABLE KEYS */;
INSERT INTO `validation_texts` VALUES (1,'name','Name field is required','Name field is required','2021-10-25 06:26:46',NULL),(2,'email','Email is required','Email is required','2021-10-25 06:26:46',NULL),(3,'phone','Phone is required','Phone is required',NULL,NULL),(4,'unique_name','Name already exist','Name already exist',NULL,NULL),(5,'unique_email','Email already exist','Email already exist',NULL,NULL),(6,'des','Description is required','Description is required',NULL,NULL),(7,'pass','Password is required','Password is required',NULL,NULL),(8,'confirm_pass','Confirm password Does not match','Confirm password Does not match',NULL,NULL),(9,'img','Image is required','Image is required',NULL,NULL),(10,'are_you_sure','Are you sure?','Are you sure?',NULL,NULL),(11,'title','Title is required','Title is required',NULL,NULL),(12,'unique_title','Title already exist','Title already exist',NULL,NULL),(13,'category','Category is required','Category is required',NULL,NULL),(14,'short_des','Short Description is required','Short Description is required',NULL,NULL),(15,'privacy_policy','Privacy policy is required','Privacy policy is required',NULL,NULL),(16,'terms_condition','Terms and condition is required','Terms and condition is required',NULL,NULL),(17,'header','Header is required','Header is required',NULL,NULL),(18,'address','Address is required','Address is required',NULL,NULL),(19,'about','About is required','About is required',NULL,NULL),(20,'google_map','Google map is required','Google map is required',NULL,NULL),(21,'copyright','Copyright is required','Copyright is required',NULL,NULL),(22,'page_name','Page name is reqquired','Page name is reqquired',NULL,NULL),(23,'custom_day','Custom Day is required','Custom Day is required',NULL,NULL),(24,'thumb_img','Thumbnail Image is required','Thumbnail Image is required',NULL,NULL),(25,'qus','Question is required','Question is required',NULL,NULL),(26,'ans','Answer is required','Answer is required',NULL,NULL),(27,'unique_qus','Question already exist','Question already exist',NULL,NULL),(28,'link','Link is required','Link is required',NULL,NULL),(29,'designation','Designation is required','Designation is required',NULL,NULL),(30,'fee','Fee is required','Fee is required',NULL,NULL),(31,'department','Department is required','Department is required',NULL,NULL),(32,'location','Location is required','Location is required',NULL,NULL),(33,'mail_host','Mail host is required','Mail host is required',NULL,NULL),(34,'mail_port','Mail Port is required','Mail Port is required',NULL,NULL),(35,'mail_encryption','Mail Encryption is required','Mail Encryption is required',NULL,NULL),(36,'smtp_username','Smtp user name is required','Smtp user name is required',NULL,NULL),(37,'smtp_password','Smtp password is required','Smtp password is required',NULL,NULL),(38,'logo','Logo is required','Logo is required',NULL,NULL),(39,'habit','Habit is required','Habit is required',NULL,NULL),(40,'first_header','First header is required','First header is required',NULL,NULL),(41,'second_header','Second header is required','Second header is required',NULL,NULL),(42,'content_quantity','Content Quantity is required','Content Quantity is required',NULL,NULL),(43,'unique_location','Location already exist','Location already exist',NULL,NULL),(44,'unique_type','Type already exist','Type already exist',NULL,NULL),(45,'type','Type is required','Type is required',NULL,NULL),(46,'icon','Icon is required','Icon is required',NULL,NULL),(47,'qty','Quantity is required','Quantity is required',NULL,NULL),(48,'account_mode','Account mode is required','Account mode is required',NULL,NULL),(49,'paypal_client_id','Paypal client id is required','Paypal client id is required',NULL,NULL),(50,'paypal_secret','Paypal secret is required','Paypal secret is required',NULL,NULL),(51,'stripe_key','Stripe key is required','Stripe key is required',NULL,NULL),(52,'stripe_secret','Stripe secret is required','Stripe secret is required',NULL,NULL),(53,'bank_account','Bank account is required','Bank account is required',NULL,NULL),(54,'doctor','Doctor is required','Doctor is required',NULL,NULL),(55,'day','Day is required','Day is required',NULL,NULL),(56,'start_time','Start time is required','Start time is required',NULL,NULL),(57,'end_time','End time is required','End time is required',NULL,NULL),(58,'quantity','Quantity is required','Quantity is required',NULL,NULL),(59,'currency_name','Currency name is required','Currency name is required',NULL,NULL),(60,'currency_icon','currency Icon is required','currency Icon is required',NULL,NULL),(61,'prenotification_hour','Pre notification is required','Pre notification is required',NULL,NULL),(62,'facebook_comment_script','Facebook app id is required','Facebook app id is required',NULL,NULL),(63,'cookie_text','Cookie text is required','Cookie text is required',NULL,NULL),(64,'cookie_button_text','Cookie button text is required','Cookie button text is required',NULL,NULL),(65,'captcha_key','Recaptcha Site Key is required','Recaptcha site key is required',NULL,NULL),(66,'captcha_secret','Recaptcha Secret Key is required','Recaptcha Secret Key is required',NULL,NULL),(67,'livechat_script','Tawk Live Direct Chat Link is required','Tawk Live Direct Chat Link is required',NULL,NULL),(68,'google_analytic_code','Analytic Tracking Id is required','Analytic Tracking Id is required',NULL,NULL),(69,'subject','Subject is required','Subject is required',NULL,NULL),(70,'slider_heading','Slider heading is required','Slider heading is required',NULL,NULL),(71,'slider_des','Slider Description is required','Slider Description is required',NULL,NULL),(72,'subscribe_heading','Subscriber heading is required','Subscriber heading is required',NULL,NULL),(73,'subscribe_description','Subscriber description is required','Subscriber description is required',NULL,NULL),(74,'msg','Message is required','Message is required',NULL,NULL),(75,'video','Video is required','Video is required',NULL,NULL),(76,'topic','Topic is required','Topic is required',NULL,NULL),(77,'start_time','Start time is required','Start time is required',NULL,NULL),(78,'duration','Duration is required','Duration is required',NULL,NULL),(79,'patient','Patient is required','Patient is required',NULL,NULL),(80,'zoom_api_key','Zoom api key is required','Zoom api key is required',NULL,NULL),(81,'zoom_secret','Zoom api secret key is required','Zoom api secret key is required',NULL,NULL),(82,'date','Date is required','Date is required',NULL,NULL),(83,'education','Education is required','Education is required',NULL,NULL),(84,'experience','Experience is required','Experience is required',NULL,NULL),(85,'qualification','Qualification is required','Qualification is required',NULL,NULL),(86,'from_date','From Date Is Required','From Date Is Required',NULL,NULL),(87,'all_req','Every fields is required','Every fields is required',NULL,NULL),(88,'schedule','Schedule is required','Schedule is required',NULL,NULL),(89,'from','From is required','From is required',NULL,NULL),(90,'age','Age is required','Age is required',NULL,NULL),(91,'occupation','Occupation is required','Occupation is required',NULL,NULL),(92,'gender','Gender is required','Gender is required',NULL,NULL),(93,'country','Country is required','Country is required',NULL,NULL),(94,'city','City is required','City is required',NULL,NULL),(95,'tran','Transaction is required','Transaction is required',NULL,NULL),(96,'comment','Comment is required','Comment is required',NULL,NULL),(97,'razorpay_key','Razorpay key is required','Razorpay key is required',NULL,NULL),(98,'razorpay_secret','Razorpay Secret key is required','Razorpay Secret key is required',NULL,NULL),(99,'currency_rate','Currency rate is required','Currency rate is required',NULL,NULL),(100,'secret_key','Secret key is required','Secret key is required',NULL,NULL),(101,'public_key','Public key is required','Public key is required',NULL,NULL),(102,'currency','Currency field is required','Currency field is required',NULL,NULL),(103,'country','Country field is required','Country field is required',NULL,NULL),(104,'mollie_key','Mollie key is required','Mollie key is required',NULL,NULL),(105,'api_key','Api key is required','Api key is required',NULL,NULL),(106,'auth_token','Auth token is required','Auth token is required',NULL,NULL),(107,'please_provide_valid_fee','Please provide valid fee','Please provide valid fee',NULL,NULL);
/*!40000 ALTER TABLE `validation_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `video_category` int NOT NULL,
  `department_id` int DEFAULT '0',
  `service_id` int DEFAULT '0',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (13,1,1,0,'https://www.youtube.com/watch?v=L6S7pFEX8hQ',0,'2021-07-14 16:58:42','2021-10-23 04:41:33'),(14,1,1,0,'https://www.youtube.com/watch?v=kvB2fOFV5IA',1,'2021-07-14 16:58:42','2021-07-14 16:58:42'),(15,1,2,0,'https://www.youtube.com/watch?v=bzW1ynK_J28',1,'2021-07-14 16:59:25','2021-07-14 16:59:25'),(16,1,2,0,'https://www.youtube.com/watch?v=3wpT-4bSmoU',1,'2021-07-14 16:59:25','2021-07-14 16:59:25'),(17,1,3,0,'https://www.youtube.com/watch?v=Aq3bCNGz_2E',1,'2021-07-14 17:00:09','2021-07-14 17:00:09'),(18,1,3,0,'https://www.youtube.com/watch?v=tbtoUn2IhTA',1,'2021-07-14 17:00:09','2021-07-14 17:00:09'),(19,1,4,0,'https://www.youtube.com/watch?v=KligsSBGk1s',1,'2021-07-14 17:00:54','2021-07-14 17:00:54'),(20,1,4,0,'https://www.youtube.com/watch?v=YnbcVw9Zm20',1,'2021-07-14 17:00:54','2021-07-14 17:00:54'),(21,1,5,0,'https://www.youtube.com/watch?v=39GQvW27Tx8',1,'2021-07-14 17:01:18','2021-07-14 17:01:18'),(24,1,6,0,'https://www.youtube.com/watch?v=Yyehg2FL73c',1,'2021-07-14 17:01:40','2021-07-14 17:01:40');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_methods`
--

DROP TABLE IF EXISTS `withdraw_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraw_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amount` double NOT NULL DEFAULT '0',
  `max_amount` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_methods`
--

LOCK TABLES `withdraw_methods` WRITE;
/*!40000 ALTER TABLE `withdraw_methods` DISABLE KEYS */;
INSERT INTO `withdraw_methods` VALUES (2,'Bank Payment',10,100,10,'<!-- x-tinymce/html --><p>Bank Name: Your bank name</p>\r\n<p><span style=\"background-color: transparent;\">Account Number:&nbsp; Your bank account number</span></p>\r\n<p>Routing Number: Your bank routing number</p>\r\n<p>Branch: Your bank branch name</p>',1,'2023-11-08 12:17:43','2023-11-09 08:02:37'),(4,'Paypal',5,50,5,'<p>Bank Name: Your bank name</p><p><span style=\"background-color: transparent;\">Account Number:&nbsp; Your bank account number</span></p><p>Routing Number: Your bank routing number</p><p><!-- x-tinymce/html -->\r\n\r\n\r\n</p><p>Branch: Your bank branch name</p>',1,'2023-11-08 12:19:00','2023-11-09 07:00:27');
/*!40000 ALTER TABLE `withdraw_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_faqs`
--

DROP TABLE IF EXISTS `work_faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_faqs`
--

LOCK TABLES `work_faqs` WRITE;
/*!40000 ALTER TABLE `work_faqs` DISABLE KEYS */;
INSERT INTO `work_faqs` VALUES (1,'Who Are Our Patients?','<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br></p>',1,'2021-07-13 14:04:05','2021-10-21 09:58:09'),(2,'When Is A Doctor Available?','<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>',1,'2021-07-13 14:04:27','2021-07-13 14:04:27'),(3,'How Do I Register In This System?','<p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>',1,'2021-07-13 14:04:48','2021-07-13 14:04:48');
/*!40000 ALTER TABLE `work_faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `works` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES (3,'uploads/website-images/work-background-2021-10-26-11-17-16-4012.jpg','https://www.youtube.com/watch?v=G07V0aOmWTI','Get our medical service and ensure your physical health','A Urology & Andrology Center of Excellent for all therapeutic & surgical treatments in the eastern area of Cairo, with a strategic location in the middle of Maadi, Tagamoa, Nasr City, and both old and new Cairo.\r\nIt has outpatient clinics in all specialties, equipped with a laboratory and a radiology center at the highest level to provide all medical investigations.','2021-06-11 08:43:51','2024-01-18 20:30:55');
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zoom_credentials`
--

DROP TABLE IF EXISTS `zoom_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoom_credentials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` int NOT NULL DEFAULT '0',
  `zoom_api_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zoom_api_secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zoom_credentials`
--

LOCK TABLES `zoom_credentials` WRITE;
/*!40000 ALTER TABLE `zoom_credentials` DISABLE KEYS */;
INSERT INTO `zoom_credentials` VALUES (7,11,'K6xJIATvSmW4EfZVRUxZRQ','iqyUiF5tc1ZgGFvdLrJEoyJZ4thP9JJ0','2024-01-22 18:45:45','2024-01-22 23:06:24','B35ItR81RKyfVqLsNk3ERQ');
/*!40000 ALTER TABLE `zoom_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zoom_meetings`
--

DROP TABLE IF EXISTS `zoom_meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoom_meetings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` int NOT NULL DEFAULT '0',
  `topic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zoom_meetings`
--

LOCK TABLES `zoom_meetings` WRITE;
/*!40000 ALTER TABLE `zoom_meetings` DISABLE KEYS */;
INSERT INTO `zoom_meetings` VALUES (53,11,'Doctor appointment','2024-01-29 09:00:00','15','89857233273','No Password','https://us06web.zoom.us/j/89857233273','2024-01-23 21:38:15','2024-01-23 21:38:15'),(54,11,'Doctor appointment','2024-01-29 09:00:00','15','87269641430','No Password','https://us06web.zoom.us/j/87269641430','2024-01-25 18:12:51','2024-01-25 18:12:51');
/*!40000 ALTER TABLE `zoom_meetings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-25 16:24:54
