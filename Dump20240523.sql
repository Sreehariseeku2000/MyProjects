-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: online_vehicle_rental
-- ------------------------------------------------------
-- Server version	5.7.40-log

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
-- Table structure for table `assistance_msg`
--

DROP TABLE IF EXISTS `assistance_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assistance_msg` (
  `assistance_msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(45) NOT NULL,
  `action` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `booking_id` int(11) NOT NULL,
  PRIMARY KEY (`assistance_msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistance_msg`
--

LOCK TABLES `assistance_msg` WRITE;
/*!40000 ALTER TABLE `assistance_msg` DISABLE KEYS */;
INSERT INTO `assistance_msg` VALUES (6,'i need help','yes please',8,'2024-05-20','12:20:55',5),(8,'Engine fail','i will be there',10,'2024-05-21','13:51:07',8);
/*!40000 ALTER TABLE `assistance_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add assistance msg',7,'add_assistancemsg'),(26,'Can change assistance msg',7,'change_assistancemsg'),(27,'Can delete assistance msg',7,'delete_assistancemsg'),(28,'Can view assistance msg',7,'view_assistancemsg'),(29,'Can add book services',8,'add_bookservices'),(30,'Can change book services',8,'change_bookservices'),(31,'Can delete book services',8,'delete_bookservices'),(32,'Can view book services',8,'view_bookservices'),(33,'Can add booking',9,'add_booking'),(34,'Can change booking',9,'change_booking'),(35,'Can delete booking',9,'delete_booking'),(36,'Can view booking',9,'view_booking'),(37,'Can add enquiry',10,'add_enquiry'),(38,'Can change enquiry',10,'change_enquiry'),(39,'Can delete enquiry',10,'delete_enquiry'),(40,'Can view enquiry',10,'view_enquiry'),(41,'Can add feedback',11,'add_feedback'),(42,'Can change feedback',11,'change_feedback'),(43,'Can delete feedback',11,'delete_feedback'),(44,'Can view feedback',11,'view_feedback'),(45,'Can add location',12,'add_location'),(46,'Can change location',12,'change_location'),(47,'Can delete location',12,'delete_location'),(48,'Can view location',12,'view_location'),(49,'Can add login',13,'add_login'),(50,'Can change login',13,'change_login'),(51,'Can delete login',13,'delete_login'),(52,'Can view login',13,'view_login'),(53,'Can add logistics',14,'add_logistics'),(54,'Can change logistics',14,'change_logistics'),(55,'Can delete logistics',14,'delete_logistics'),(56,'Can view logistics',14,'view_logistics'),(57,'Can add payment',15,'add_payment'),(58,'Can change payment',15,'change_payment'),(59,'Can delete payment',15,'delete_payment'),(60,'Can view payment',15,'view_payment'),(61,'Can add provider',16,'add_provider'),(62,'Can change provider',16,'change_provider'),(63,'Can delete provider',16,'delete_provider'),(64,'Can view provider',16,'view_provider'),(65,'Can add services',17,'add_services'),(66,'Can change services',17,'change_services'),(67,'Can delete services',17,'delete_services'),(68,'Can view services',17,'view_services'),(69,'Can add tracking',18,'add_tracking'),(70,'Can change tracking',18,'change_tracking'),(71,'Can delete tracking',18,'delete_tracking'),(72,'Can view tracking',18,'view_tracking'),(73,'Can add uploade image',19,'add_uploadeimage'),(74,'Can change uploade image',19,'change_uploadeimage'),(75,'Can delete uploade image',19,'delete_uploadeimage'),(76,'Can view uploade image',19,'view_uploadeimage'),(77,'Can add user reg',20,'add_userreg'),(78,'Can change user reg',20,'change_userreg'),(79,'Can delete user reg',20,'delete_userreg'),(80,'Can view user reg',20,'view_userreg'),(81,'Can add vehicle',21,'add_vehicle'),(82,'Can change vehicle',21,'change_vehicle'),(83,'Can delete vehicle',21,'delete_vehicle'),(84,'Can view vehicle',21,'view_vehicle'),(85,'Can add verification code',22,'add_verificationcode'),(86,'Can change verification code',22,'change_verificationcode'),(87,'Can delete verification code',22,'delete_verificationcode'),(88,'Can view verification code',22,'view_verificationcode');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_services`
--

DROP TABLE IF EXISTS `book_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_services` (
  `service_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_date` date NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `time` time NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`service_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_services`
--

LOCK TABLES `book_services` WRITE;
/*!40000 ALTER TABLE `book_services` DISABLE KEYS */;
INSERT INTO `book_services` VALUES (1,1,NULL,'2024-06-06',3,'15:32:00','admin'),(2,1,11,'2024-05-28',5,'15:35:00','user'),(3,1,1,'2024-05-01',5,'10:00:00','user');
/*!40000 ALTER TABLE `book_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `Booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(45) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`Booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (5,'Approved',3,'2024-05-05','09:00:00',8),(7,'Rejected',3,'2024-05-19','05:20:00',2),(8,'Approved',5,'2024-05-21','14:00:00',10),(9,'pending',5,'3333-02-01','02:34:00',11),(10,'paid',5,'2024-05-29','11:24:00',11),(11,'paid',5,'2008-02-01','10:00:00',13),(12,'paid',3,'2024-04-23','10:00:00',14),(13,'paid',3,'2024-05-23','10:00:00',15),(14,'pending',5,'2024-05-23','10:34:00',1);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'assistance_msg','assistancemsg'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'booking','booking'),(8,'book_services','bookservices'),(5,'contenttypes','contenttype'),(10,'enquiry','enquiry'),(11,'feedback','feedback'),(12,'location','location'),(13,'login','login'),(14,'logistics','logistics'),(15,'payment','payment'),(16,'provider','provider'),(17,'services','services'),(6,'sessions','session'),(18,'tracking','tracking'),(19,'upload_image','uploadeimage'),(20,'user_reg','userreg'),(21,'vehicle','vehicle'),(22,'verification_code','verificationcode');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-05-06 06:25:32.235108'),(2,'auth','0001_initial','2024-05-06 06:25:32.940070'),(3,'admin','0001_initial','2024-05-06 06:25:33.112461'),(4,'admin','0002_logentry_remove_auto_add','2024-05-06 06:25:33.112461'),(5,'admin','0003_logentry_add_action_flag_choices','2024-05-06 06:25:33.128112'),(6,'assistance_msg','0001_initial','2024-05-06 06:25:33.128112'),(7,'contenttypes','0002_remove_content_type_name','2024-05-06 06:25:33.222667'),(8,'auth','0002_alter_permission_name_max_length','2024-05-06 06:25:33.238182'),(9,'auth','0003_alter_user_email_max_length','2024-05-06 06:25:33.253832'),(10,'auth','0004_alter_user_username_opts','2024-05-06 06:25:33.269458'),(11,'auth','0005_alter_user_last_login_null','2024-05-06 06:25:33.316307'),(12,'auth','0006_require_contenttypes_0002','2024-05-06 06:25:33.331931'),(13,'auth','0007_alter_validators_add_error_messages','2024-05-06 06:25:33.331931'),(14,'auth','0008_alter_user_username_max_length','2024-05-06 06:25:33.347586'),(15,'auth','0009_alter_user_last_name_max_length','2024-05-06 06:25:33.378821'),(16,'auth','0010_alter_group_name_max_length','2024-05-06 06:25:33.395573'),(17,'auth','0011_update_proxy_permissions','2024-05-06 06:25:33.410581'),(18,'auth','0012_alter_user_first_name_max_length','2024-05-06 06:25:33.426215'),(19,'book_services','0001_initial','2024-05-06 06:25:33.426215'),(20,'booking','0001_initial','2024-05-06 06:25:33.441840'),(21,'enquiry','0001_initial','2024-05-06 06:25:33.441840'),(22,'feedback','0001_initial','2024-05-06 06:25:33.441840'),(23,'location','0001_initial','2024-05-06 06:25:33.457462'),(24,'login','0001_initial','2024-05-06 06:25:33.457462'),(25,'logistics','0001_initial','2024-05-06 06:25:33.473088'),(26,'payment','0001_initial','2024-05-06 06:25:33.473088'),(27,'provider','0001_initial','2024-05-06 06:25:33.473088'),(28,'services','0001_initial','2024-05-06 06:25:33.488713'),(29,'sessions','0001_initial','2024-05-06 06:25:33.536216'),(30,'tracking','0001_initial','2024-05-06 06:25:33.536216'),(31,'upload_image','0001_initial','2024-05-06 06:25:33.536216'),(32,'user_reg','0001_initial','2024-05-06 06:25:33.551877'),(33,'vehicle','0001_initial','2024-05-06 06:25:33.551877'),(34,'verification_code','0001_initial','2024-05-06 06:25:33.567474');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5m8klj36gopkchpkjc0q24pbd3eaqqo5','eyJ1aWQiOjF9:1sA5ke:TILaCovgv4cA9BBqpQBQzZMs52F4x0zhFeHHjP8XuL0','2024-06-06 10:32:48.502702'),('caqwoq6hjfm4lh6260jz8j236npbuxi2','eyJ1aWQiOjF9:1s9MHq:Ac-fP-5hoAxZUjd3hAY-ND7HAh8yS7HqQz2YsqTWHME','2024-06-04 10:00:02.369969'),('iog11ngmz8hz6wm90ljaf6ki1fxbn90c','eyJ1aWQiOjF9:1s4bBB:UCAoy4yojqLHtzRYTezZs6UrIThi-mpeOZynWcaVmKs','2024-05-22 06:53:29.663760'),('zg38vbz3mcx7aek1rd4pfcdd4l0rxtbz','eyJ1aWQiOjF9:1s7eSj:XsM-TbFJuslaoizesI8lqqN_2sqe24vnm6o-pIsiB0Y','2024-05-30 17:00:13.909055');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enquiry` (
  `enquiry_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `description` varchar(45) NOT NULL,
  `reply` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`enquiry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry`
--

LOCK TABLES `enquiry` WRITE;
/*!40000 ALTER TABLE `enquiry` DISABLE KEYS */;
INSERT INTO `enquiry` VALUES (1,4,'which type of vehicle is availabe','car and bike','2024-05-11','14:49:33'),(2,1,'helloooo','yes','2024-05-11','15:00:28'),(3,8,'automatic or manuel','hii','2024-05-20','12:46:21'),(4,10,'please come here','ok. i will be there','2024-05-21','15:22:17');
/*!40000 ALTER TABLE `enquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `feedback` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `booking_id` int(11) NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (3,10,'good ..NIce','2024-05-21','15:26:01',8),(4,11,'good.nice','2024-05-22','22:57:21',9);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lattitude` int(11) NOT NULL,
  `longitude` int(11) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'admin','admin','admin',1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistics`
--

DROP TABLE IF EXISTS `logistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logistics` (
  `logistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Contact_number` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Place` varchar(45) NOT NULL,
  `Pin` varchar(45) NOT NULL,
  `District` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `house_name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`logistics_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistics`
--

LOCK TABLES `logistics` WRITE;
/*!40000 ALTER TABLE `logistics` DISABLE KEYS */;
INSERT INTO `logistics` VALUES (1,'hari','male','9999999999','seeku@gmail.com','ayk','673521','kozhikode','25','2024-05-05','aad','ll','123'),(2,'srs','male','9999999999','seeku@gmail.com','sss','sss','kozhikode','25','2024-05-08','aad','ll','123'),(3,'anu','female','9946578562','seeku@gmail.com','payyoli','673521','kozhikode','25','2024-05-01','ack','calicut','123');
/*!40000 ALTER TABLE `logistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `amout` int(11) NOT NULL,
  `cvv` int(11) NOT NULL,
  `cardholder_name` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `booking_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,10000,111,'adwaith',11,'2024-05-23','11:22:13',10),(2,10000,123,'Rahan',13,'2024-05-23','11:38:13',11),(3,10000,123,'adwaith',10,'2024-05-23','11:45:06',8),(4,2000,124,'adwaith',14,'2024-05-23','11:55:47',12),(5,2000,123,'sreehari',15,'2024-05-23','12:13:33',13);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider` (
  `provider_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `service_location` varchar(45) NOT NULL,
  `pin` int(11) NOT NULL,
  `district` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`provider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (1,'seeku','seeku@gmail.com','male','9999999999','hari',673521,'kozhikode','rahan@123'),(2,'amal','sree@gmail.com','male','9946578562','vadakara',673521,'kozhikode','111'),(3,'sneha','seeku@gmail.com','female','9947578562','calicut',673521,'kozhikode','222');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `services_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_type` varchar(45) NOT NULL,
  `Type_of_services` varchar(45) NOT NULL,
  `provider_id` int(11) NOT NULL,
  PRIMARY KEY (`services_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Car','Flat Tyre',2),(2,'Car','Engine Failure',2),(3,'Car','Fuel Empty',2),(4,'Bike','Break Down',2),(5,'Bike','Fuel Empty',2),(6,'Bike','Flat Tyre',2),(7,'Bike','Fuel Empty',3),(8,'Bike','Break Down',2);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking`
--

DROP TABLE IF EXISTS `tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracking` (
  `tracking_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_no` varchar(45) NOT NULL,
  `lattitude` int(11) NOT NULL,
  `longitude` int(11) NOT NULL,
  PRIMARY KEY (`tracking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking`
--

LOCK TABLES `tracking` WRITE;
/*!40000 ALTER TABLE `tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploade_image`
--

DROP TABLE IF EXISTS `uploade_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uploade_image` (
  `upload_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `action` varchar(45) NOT NULL,
  `up_img_2` varchar(45) NOT NULL,
  `upload_image3` varchar(45) NOT NULL,
  `upload_image4` varchar(45) NOT NULL,
  `upload_image5` varchar(45) NOT NULL,
  `upload_image6` varchar(45) NOT NULL,
  `upload_image1` varchar(45) NOT NULL,
  PRIMARY KEY (`upload_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploade_image`
--

LOCK TABLES `uploade_image` WRITE;
/*!40000 ALTER TABLE `uploade_image` DISABLE KEYS */;
INSERT INTO `uploade_image` VALUES (2,10,3,'2024-05-21','13:53:53','Approved','hyundai-elite-i20-fiery-red-dual-tone.webp','169f975f74c1c95aea62e97505f174f0.jpg','creta-right-front-three-quarter.webp','creta-right-front-three-quarter.webp','s3knqbb_1693423.webp','169f975f74c1c95aea62e97505f174f0.jpg');
/*!40000 ALTER TABLE `uploade_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_reg`
--

DROP TABLE IF EXISTS `user_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_reg` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `house_name` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL,
  `pin` int(11) NOT NULL,
  `district` varchar(45) NOT NULL,
  `license_no` varchar(45) NOT NULL,
  `contact_no` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `license_photo` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `license_photo1` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reg`
--

LOCK TABLES `user_reg` WRITE;
/*!40000 ALTER TABLE `user_reg` DISABLE KEYS */;
INSERT INTO `user_reg` VALUES (1,'hari',25,'on','2024-05-08','abc','vtk',673521,'kozhikode','999','22222','sree@gmail.com','20230105_151811.jpg','Approved','123',''),(2,'sreehari',25,'on','2024-05-30','Achankandiyil','payyoli',673521,'kozhikode','5665','9645467267','sreehari.deveyanam@gmail.com','i20-exterior-front-view.webp','Approved','1111',''),(3,'sreeyuktha',20,'on','2000-05-15','deveyanam','payyoli',673521,'kozhikode','5665','9645467267','sreehari.devayanam@gmail.com','i20-exterior-front-view.webp','Approved','222',''),(4,'arun',25,'male','2000-04-12','deveyanam','payyoli',673521,'kozhikode','123456','9645467267','sreehari.devayanam@gmail.com','creta-right-front-three-quarter.webp','Approved','222',''),(5,'sreelakshmi',25,'female','2000-03-02','deveyanam','payyoli',673521,'kozhikode','0','9645467267','sreehari.devayanam@gmail.com','169f975f74c1c95aea62e97505f174f0.jpg','Approved','111',''),(6,'sreeraj',26,'male','1998-07-14','abc','vatakara',673020,'kozhikode','56/8331/2018','9946578562','sreeraj@gmail.com','s3knqbb_1693423.webp','Approved','999',''),(7,'sneha',24,'female','2001-10-02','ccc','vatakara',673020,'kozhikode','44/58/2357','8976543456','sneha@gmail.com','hyundai-alcazar-abyss-black.jpg','Rejected','787',''),(8,'akshay.CK',26,'on','2024-05-01','ccc','vatakara',673521,'kozhikode','56/8331/2018','9999999999','sreehari.devayanam@gmail.com','creta-right-front-three-quarter.webp','Approved','555',''),(9,'sreeyuktha',12,'on','2013-05-15','zzz','aaa',232,'ernakulam','44444','4444455555','sree@gmail.com','169f975f74c1c95aea62e97505f174f0.jpg','','111',''),(10,'adwaith nath R',27,'on','1997-01-18','kunnumal','vatakara',673105,'kozhikode','56/3243/2018','9744465023','adwaith@gmail.com','hyundai-elite-i20-fiery-red-dual-tone.webp','Approved','adw',''),(11,'anu',24,'female','2000-05-30','max','kochi',672021,'ernakulam','KL/56/6776/888','0123456789','sreehari.seeku@gmail.com','s3knqbb_1693423.webp','Approved','090',''),(12,'ram',20,'male','2000-04-12','aaa','eeee',456574,'kozhikode','56/8331/2018','9645467267','sneha@gmail.com','169f975f74c1c95aea62e97505f174f0.jpg','pending','444',''),(13,'Rahan',24,'male','2003-03-04','indeevaram','memunda',673020,'kozhikode','KL/56/7845','9946578562','rahanrajeev003@gmail.com','169f975f74c1c95aea62e97505f174f0.jpg','Approved','111','169f975f74c1c95aea62e97505f174f0.jpg'),(14,'adwaith nath R',26,'male','2000-02-01','aaa','vatakara',673521,'kozhikode','56/8331/2018','9645467267','adwaithbablu333666@gmail.com','creta-right-front-three-quarter.webp','Approved','899','s3knqbb_1693423.webp'),(15,'sreehari',25,'male','2000-05-01','devayanam','payyoli',673521,'kozhikode','56/8331/2018','9645467267','sreehari.devayanam@gmail.com','s3knqbb_1693423.webp','Approved','222','169f975f74c1c95aea62e97505f174f0.jpg');
/*!40000 ALTER TABLE `user_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `Registration_No` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Vehicle_Model` varchar(45) NOT NULL,
  `Vehicle_Type` varchar(45) NOT NULL,
  `Fuel` varchar(45) NOT NULL,
  `image` varchar(450) NOT NULL,
  `price` varchar(45) NOT NULL,
  `latitude` varchar(45) NOT NULL,
  `longitude` varchar(45) NOT NULL,
  `vehicle_no` varchar(45) NOT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (3,'KL11A3246','Bike','Royal Enfield','Himalayan','Petrol','hyundai-elite-i20-fiery-red-dual-tone.webp','2000','11.2597383','75.787568','5'),(5,'KL18AE2143','Car','Tata','Wagon R','Petrol','hyundai-elite-i20-fiery-red-dual-tone.webp','1000','11.5801505','75.6031678','7');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification_code`
--

DROP TABLE IF EXISTS `verification_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification_code` (
  `verification_id` int(11) NOT NULL AUTO_INCREMENT,
  `verification_No` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `user_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  PRIMARY KEY (`verification_id`),
  UNIQUE KEY `verification_No_UNIQUE` (`verification_No`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification_code`
--

LOCK TABLES `verification_code` WRITE;
/*!40000 ALTER TABLE `verification_code` DISABLE KEYS */;
INSERT INTO `verification_code` VALUES (1,'OVN-3SZkUv','2024-05-23','11:23:04',11,5,10),(2,'OVN-9baUNl','2024-05-23','11:39:29',13,5,11),(3,'OVN-V6D1qw','2024-05-23','11:56:23',14,3,12),(4,'OVN-hnSahz','2024-05-23','12:14:12',15,3,13);
/*!40000 ALTER TABLE `verification_code` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-23 16:03:16
