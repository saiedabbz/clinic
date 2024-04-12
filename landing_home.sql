-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: saeid_db
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Home',7,'add_home'),(26,'Can change Home',7,'change_home'),(27,'Can delete Home',7,'delete_home'),(28,'Can view Home',7,'view_home'),(29,'Can add Config',8,'add_config'),(30,'Can change Config',8,'change_config'),(31,'Can delete Config',8,'delete_config'),(32,'Can view Config',8,'view_config');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$vEAfg4c9lX9FYYcqUv8zpn$+6MceYuNOJuOQYVOXW+YLt8aJLmrh8VflvQ0woiS4+8=',NULL,1,'saeid','','','admin@mail.com',1,1,'2024-04-03 11:19:57.164759'),(2,'pbkdf2_sha256$600000$ToIwXGhyp48qly3r2f5qm6$8wvyqOLCuUDnZZYFsoFlMZhELG3Fdgk7Y+4oWjTY2J0=','2024-04-03 13:50:59.967553',1,'saeidab1','','','',1,1,'2024-04-03 12:26:16.490634'),(3,'pbkdf2_sha256$600000$mLhicFmyXt8j9EDAMupEns$vTOfr5jzOPKoFdbQqlM+hHggijYZGbSTkf9iYLU/okM=','2024-04-10 16:51:38.734569',1,'admin','','','',1,1,'2024-04-09 17:37:37.255490');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_config`
--

DROP TABLE IF EXISTS `config_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `description` longtext,
  `slug` varchar(50) DEFAULT NULL,
  `value` int DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `config_config_slug_02a58942` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_config`
--

LOCK TABLES `config_config` WRITE;
/*!40000 ALTER TABLE `config_config` DISABLE KEYS */;
INSERT INTO `config_config` VALUES (1,'icon 192','','icon_192',NULL,'config_img/favicon192.png');
/*!40000 ALTER TABLE `config_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-04-03 12:49:25.979040','1','Saeid Abbaszadeh',1,'[{\"added\": {}}]',7,2),(2,'2024-04-03 12:49:39.672794','1','Saeid Abbaszadeh',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,2),(3,'2024-04-03 13:51:09.883349','1','Saeid Abbaszadeh',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,2),(4,'2024-04-03 13:51:17.629063','1','Saeid Abbaszadeh',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,2),(5,'2024-04-03 13:59:05.584526','1','Saeid Abbaszadeh',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,2),(6,'2024-04-03 13:59:17.946460','1','Saeid Abbaszadeh',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,2),(7,'2024-04-09 18:22:18.908187','1','icon 192',1,'[{\"added\": {}}]',8,3),(8,'2024-04-09 18:38:31.675423','1','icon 192',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',8,3),(9,'2024-04-09 18:38:55.427646','1','icon 192',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',8,3),(10,'2024-04-10 15:17:19.132165','1','Saeid Abbaszadeh',3,'',7,3),(11,'2024-04-10 15:19:02.043128','2','لیفتینگ صورت',1,'[{\"added\": {}}]',7,3),(12,'2024-04-10 16:04:20.255930','3','هایفوتراپی',1,'[{\"added\": {}}]',7,3),(13,'2024-04-10 16:46:51.018678','2','لیفتینگ صورت',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,3),(14,'2024-04-10 16:47:21.535955','2','لیفتینگ صورت',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,3),(15,'2024-04-10 16:52:02.855924','3','هایفوتراپی',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,3),(16,'2024-04-10 16:53:17.096304','2','لیفتینگ صورت',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,3),(17,'2024-04-10 16:53:36.199102','2','لیفتینگ صورت',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,3),(18,'2024-04-10 16:54:05.996628','3','هایفوتراپی',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,3),(19,'2024-04-10 17:21:28.287558','2','لیفتینگ صورت',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,3),(20,'2024-04-10 17:21:34.940428','3','هایفوتراپی',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',7,3);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'config','config'),(5,'contenttypes','contenttype'),(7,'landing','home'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-04-03 11:16:39.604244'),(2,'auth','0001_initial','2024-04-03 11:16:42.788219'),(3,'admin','0001_initial','2024-04-03 11:16:43.475827'),(4,'admin','0002_logentry_remove_auto_add','2024-04-03 11:16:43.516323'),(5,'admin','0003_logentry_add_action_flag_choices','2024-04-03 11:16:43.543511'),(6,'contenttypes','0002_remove_content_type_name','2024-04-03 11:16:43.896805'),(7,'auth','0002_alter_permission_name_max_length','2024-04-03 11:16:44.190901'),(8,'auth','0003_alter_user_email_max_length','2024-04-03 11:16:44.271852'),(9,'auth','0004_alter_user_username_opts','2024-04-03 11:16:44.300622'),(10,'auth','0005_alter_user_last_login_null','2024-04-03 11:16:44.544458'),(11,'auth','0006_require_contenttypes_0002','2024-04-03 11:16:44.561661'),(12,'auth','0007_alter_validators_add_error_messages','2024-04-03 11:16:44.603021'),(13,'auth','0008_alter_user_username_max_length','2024-04-03 11:16:44.944324'),(14,'auth','0009_alter_user_last_name_max_length','2024-04-03 11:16:45.258210'),(15,'auth','0010_alter_group_name_max_length','2024-04-03 11:16:45.346111'),(16,'auth','0011_update_proxy_permissions','2024-04-03 11:16:45.371950'),(17,'auth','0012_alter_user_first_name_max_length','2024-04-03 11:16:45.670531'),(18,'sessions','0001_initial','2024-04-03 11:16:45.860537'),(19,'landing','0001_initial','2024-04-03 12:29:54.097223'),(20,'landing','0002_alter_home_slug','2024-04-03 12:49:16.368204'),(21,'landing','0003_alter_home_image','2024-04-03 13:58:43.530648'),(22,'config','0001_initial','2024-04-09 17:29:07.147555'),(23,'landing','0004_alter_home_slug','2024-04-10 17:36:30.726366'),(24,'landing','0005_alter_home_slug','2024-04-10 17:42:33.338971');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('411jdb5yp4igl88z9h0a2yugcrgqquo2','.eJxVjEEOwiAQRe_C2hCgUNCle89AhplBqgaS0q6Md7dNutDtf-_9t4iwLiWunec4kbgII06_WwJ8ct0BPaDem8RWl3lKclfkQbu8NeLX9XD_Dgr0stWogiUH1mVraEBrYORAKrtxIJ-DVYadz2Q8aNSYLGsKOtGZYetQB_H5AuptOF4:1rs0RU:rVvoGhRRLW2Wxmq4xu2at2TBtfTYwUD8xI29i4ci9L4','2024-04-17 13:14:16.215068'),('6o9qx52l407k0sxbki2kt9h4q0lyd6w3','.eJxVjEEOwiAQRe_C2hCgUNCle89AhplBqgaS0q6Md7dNutDtf-_9t4iwLiWunec4kbgII06_WwJ8ct0BPaDem8RWl3lKclfkQbu8NeLX9XD_Dgr0stWogiUH1mVraEBrYORAKrtxIJ-DVYadz2Q8aNSYLGsKOtGZYetQB_H5AuptOF4:1rs0fF:AM_UqnJQvgC1vQ3E7jutpgav_3hEjAe0O9COP-QqMgw','2024-04-17 13:28:29.429191'),('99s3khknlm9ybcei15iuoj8jomk6edo6','.eJxVjEEOwiAQRe_C2hCgUNCle89AhplBqgaS0q6Md7dNutDtf-_9t4iwLiWunec4kbgII06_WwJ8ct0BPaDem8RWl3lKclfkQbu8NeLX9XD_Dgr0stWogiUH1mVraEBrYORAKrtxIJ-DVYadz2Q8aNSYLGsKOtGZYetQB_H5AuptOF4:1rs01m:8dZcrODt5h4wlo2LSWbXaqelU6k1Irpr77qlh_LwGoI','2024-04-17 12:47:42.216630'),('9bx81i52roxamt3pubnui1sx1evibrwl','.eJxVjMEOwiAQRP-FsyHgAi0evfsNBHYXqRpISnsy_rtt0oNmbvPezFuEuC4lrJ3nMJG4CBCn3y5FfHLdAT1ivTeJrS7zlOSuyIN2eWvEr-vh_h2U2Mu2HkZGcIm8hwQWFHhvOBunjdHEiJy3WG0VuxzVeAZFzianAYjMwCg-X-PyOAw:1rubAf:cpM36yJdjmK-5Apw-FdwcrTGB4vJTPBpxrP-V-GoXLg','2024-04-24 16:51:37.904154'),('fs8frdh87fgg0rcylbac45alocvdd1dc','.eJxVjMEOwiAQRP-FsyHgAi0evfsNBHYXqRpISnsy_rtt0oNmbvPezFuEuC4lrJ3nMJG4CBCn3y5FfHLdAT1ivTeJrS7zlOSuyIN2eWvEr-vh_h2U2Mu2HkZGcIm8hwQWFHhvOBunjdHEiJy3WG0VuxzVeAZFzianAYjMwCg-X-PyOAw:1ruFPt:79rLkGjFmTSQfNhB5INUtFqzsCCffZF5Gl3APOsFwOM','2024-04-23 17:37:53.681212'),('hh9gl6i7ejsonghriuoc5ydialv0cyee','.eJxVjEEOwiAQRe_C2hCgUNCle89AhplBqgaS0q6Md7dNutDtf-_9t4iwLiWunec4kbgII06_WwJ8ct0BPaDem8RWl3lKclfkQbu8NeLX9XD_Dgr0stWogiUH1mVraEBrYORAKrtxIJ-DVYadz2Q8aNSYLGsKOtGZYetQB_H5AuptOF4:1rs111:RxHKU8VDeWf7bSPCvgfcyzveBDCSwEphoF68CMpQmNw','2024-04-17 13:50:59.988994'),('owtr268qru3yphd0r1bmzqzor1vzqn0x','.eJxVjMEOwiAQRP-FsyHgAi0evfsNBHYXqRpISnsy_rtt0oNmbvPezFuEuC4lrJ3nMJG4CBCn3y5FfHLdAT1ivTeJrS7zlOSuyIN2eWvEr-vh_h2U2Mu2HkZGcIm8hwQWFHhvOBunjdHEiJy3WG0VuxzVeAZFzianAYjMwCg-X-PyOAw:1rubAg:76l7bOuqFpkMtex4KTEcGnqn2ifJEwNWK_Y5FkLc0KQ','2024-04-24 16:51:38.752389'),('qgsrni25cthm3grujcqm6ayxyc0ujxof','.eJxVjEEOwiAQRe_C2hCgUNCle89AhplBqgaS0q6Md7dNutDtf-_9t4iwLiWunec4kbgII06_WwJ8ct0BPaDem8RWl3lKclfkQbu8NeLX9XD_Dgr0stWogiUH1mVraEBrYORAKrtxIJ-DVYadz2Q8aNSYLGsKOtGZYetQB_H5AuptOF4:1rrzhL:kF0fJmMlBB1ymI8K-yz-WysAiAZOXrdxkcNOfPuJgIo','2024-04-17 12:26:35.696963');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_home`
--

DROP TABLE IF EXISTS `landing_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_home` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` longtext,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `landing_home_slug_9027387a_uniq` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_home`
--

LOCK TABLES `landing_home` WRITE;
/*!40000 ALTER TABLE `landing_home` DISABLE KEYS */;
INSERT INTO `landing_home` VALUES (2,'لیفتینگ صورت','face-lifting','لیفت صورت (Face Lift) یک تکنیک زیبایی است که با برداشتن پوست اضافی، از بین بردن چین‌وچروک و سفت کردن بافت صورت به جوان‌سازی آن کمک می‌کند. شما با انجام لیفت‌صورت می‌توانید تا 10 سال جوان‌تر به‌نظر برسید.','images/lifting_EUxAk2J.jpg'),(3,'هایفوتراپی','hifu-therapy','هایفو یک روش نسبتا جدید است و برای جوانسازی و سفت‌کردن پوست کاربرد دارد. این روش از امواج پرانرژی اولتراسوند برای تحریک کلاژن سازی استفاده می‌کند که در نهایت به داشتنی پوستی سفت‌تر می‌انجامد.','images/Hifu_UsffcjM.jpg');
/*!40000 ALTER TABLE `landing_home` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-11 18:02:12
