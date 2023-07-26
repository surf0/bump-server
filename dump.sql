-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bumpserver
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ck_announcements`
--

DROP TABLE IF EXISTS `ck_announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` varchar(256) NOT NULL DEFAULT 'Beginner',
  `name` varchar(32) NOT NULL,
  `mapname` varchar(128) NOT NULL,
  `mode` int(11) NOT NULL DEFAULT '0',
  `time` varchar(32) NOT NULL,
  `group` int(12) NOT NULL DEFAULT '0',
  `style` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_announcements`
--

LOCK TABLES `ck_announcements` WRITE;
/*!40000 ALTER TABLE `ck_announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_bonus`
--

DROP TABLE IF EXISTS `ck_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_bonus` (
  `steamid` varchar(32) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `mapname` varchar(32) NOT NULL,
  `runtime` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `velStartXY` smallint(6) NOT NULL DEFAULT '0',
  `velStartXYZ` smallint(6) NOT NULL DEFAULT '0',
  `velStartZ` smallint(6) NOT NULL DEFAULT '0',
  `velEndXY` smallint(6) NOT NULL DEFAULT '0',
  `velEndXYZ` smallint(6) NOT NULL DEFAULT '0',
  `velEndZ` smallint(6) NOT NULL DEFAULT '0',
  `zonegroup` int(12) NOT NULL DEFAULT '1',
  `style` int(11) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`steamid`,`mapname`,`zonegroup`,`style`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_bonus`
--

LOCK TABLES `ck_bonus` WRITE;
/*!40000 ALTER TABLE `ck_bonus` DISABLE KEYS */;
INSERT INTO `ck_bonus` VALUES ('STEAM_1:1:149373424','YOSHI','bump_basics',4.171875,1142,1544,1039,0,0,0,1,0,'2022-09-05 17:32:59');
/*!40000 ALTER TABLE `ck_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_checkpoints`
--

DROP TABLE IF EXISTS `ck_checkpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_checkpoints` (
  `steamid` varchar(32) NOT NULL,
  `mapname` varchar(32) NOT NULL,
  `cp1` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp2` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp3` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp4` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp5` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp6` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp7` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp8` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp9` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp10` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp11` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp12` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp13` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp14` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp15` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp16` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp17` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp18` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp19` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp20` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp21` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp22` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp23` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp24` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp25` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp26` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp27` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp28` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp29` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp30` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp31` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp32` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp33` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp34` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `cp35` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `zonegroup` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`steamid`,`mapname`,`zonegroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_checkpoints`
--

LOCK TABLES `ck_checkpoints` WRITE;
/*!40000 ALTER TABLE `ck_checkpoints` DISABLE KEYS */;
INSERT INTO `ck_checkpoints` VALUES ('STEAM_1:1:149373424','bump_basics',4.640625,10.375000,16.109375,164.140625,177.140625,196.437500,269.765625,467.250000,548.140625,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0),('STEAM_1:1:149373424','bump_basics',0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,1),('STEAM_1:1:149373424','bump_how2bump',2.156250,6.171875,10.734375,16.687500,37.328125,68.640625,90.093750,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0),('STEAM_1:1:149373424','bump_school',3.484375,9.296875,14.734375,33.984375,45.828125,68.921875,150.671875,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0);
/*!40000 ALTER TABLE `ck_checkpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_latestrecords`
--

DROP TABLE IF EXISTS `ck_latestrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_latestrecords` (
  `steamid` varchar(32) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `runtime` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `map` varchar(32) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`steamid`,`map`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_latestrecords`
--

LOCK TABLES `ck_latestrecords` WRITE;
/*!40000 ALTER TABLE `ck_latestrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_latestrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_maptier`
--

DROP TABLE IF EXISTS `ck_maptier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_maptier` (
  `mapname` varchar(54) NOT NULL,
  `tier` int(12) DEFAULT NULL,
  `maxvelocity` float NOT NULL DEFAULT '3500',
  `announcerecord` int(11) NOT NULL DEFAULT '0',
  `gravityfix` int(11) NOT NULL DEFAULT '1',
  `ranked` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mapname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_maptier`
--

LOCK TABLES `ck_maptier` WRITE;
/*!40000 ALTER TABLE `ck_maptier` DISABLE KEYS */;
INSERT INTO `ck_maptier` VALUES ('bump_advanced',3,3500,0,1,1),('bump_basics',1,3500,0,1,1),('bump_how2bump',1,3500,0,1,1),('bump_release',2,3500,0,1,1),('bump_school',1,3500,0,1,1);
/*!40000 ALTER TABLE `ck_maptier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_newmaps`
--

DROP TABLE IF EXISTS `ck_newmaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_newmaps` (
  `mapname` varchar(32) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mapname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_newmaps`
--

LOCK TABLES `ck_newmaps` WRITE;
/*!40000 ALTER TABLE `ck_newmaps` DISABLE KEYS */;
INSERT INTO `ck_newmaps` VALUES ('bump_advanced','2022-09-05 17:24:34'),('bump_basics','2022-09-04 16:19:24'),('bump_how2bump','2022-09-04 16:38:04');
/*!40000 ALTER TABLE `ck_newmaps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_playeroptions2`
--

DROP TABLE IF EXISTS `ck_playeroptions2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_playeroptions2` (
  `steamid` varchar(32) NOT NULL DEFAULT '',
  `timer` int(11) NOT NULL DEFAULT '1',
  `hide` int(11) NOT NULL DEFAULT '0',
  `sounds` int(11) NOT NULL DEFAULT '1',
  `chat` int(11) NOT NULL DEFAULT '0',
  `viewmodel` int(11) NOT NULL DEFAULT '1',
  `autobhop` int(11) NOT NULL DEFAULT '1',
  `checkpoints` int(11) NOT NULL DEFAULT '1',
  `gradient` int(11) NOT NULL DEFAULT '3',
  `speedmode` int(11) NOT NULL DEFAULT '0',
  `centrespeed` int(11) NOT NULL DEFAULT '0',
  `centrehud` int(11) NOT NULL DEFAULT '1',
  `teleside` int(11) NOT NULL DEFAULT '0',
  `module1c` int(11) NOT NULL DEFAULT '1',
  `module2c` int(11) NOT NULL DEFAULT '2',
  `module3c` int(11) NOT NULL DEFAULT '3',
  `module4c` int(11) NOT NULL DEFAULT '4',
  `module5c` int(11) NOT NULL DEFAULT '5',
  `module6c` int(11) NOT NULL DEFAULT '6',
  `sidehud` int(11) NOT NULL DEFAULT '1',
  `module1s` int(11) NOT NULL DEFAULT '5',
  `module2s` int(11) NOT NULL DEFAULT '0',
  `module3s` int(11) NOT NULL DEFAULT '0',
  `module4s` int(11) NOT NULL DEFAULT '0',
  `module5s` int(11) NOT NULL DEFAULT '0',
  `prestrafe` int(11) NOT NULL DEFAULT '0',
  `cpmessages` int(11) NOT NULL DEFAULT '1',
  `wrcpmessages` int(11) NOT NULL DEFAULT '1',
  `hints` int(11) NOT NULL DEFAULT '1',
  `csd_update_rate` int(11) NOT NULL DEFAULT '1',
  `csd_pos_x` float NOT NULL DEFAULT '0.5',
  `csd_pos_y` float NOT NULL DEFAULT '0.3',
  `csd_r` int(11) NOT NULL DEFAULT '255',
  `csd_g` int(11) NOT NULL DEFAULT '255',
  `csd_b` int(11) NOT NULL DEFAULT '255',
  `prespeedmode` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`steamid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_playeroptions2`
--

LOCK TABLES `ck_playeroptions2` WRITE;
/*!40000 ALTER TABLE `ck_playeroptions2` DISABLE KEYS */;
INSERT INTO `ck_playeroptions2` VALUES ('STEAM_1:0:128728870',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:0:153240757',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:0:505582711',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:0:507333223',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:0:509124568',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:0:509748040',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:0:511075659',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:0:570529582',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:0:580763002',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:0:647053603',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:0:676890926',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:0:691437355',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:0:71235334',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:120095982',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:149373424',1,0,1,0,1,1,1,5,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:158186681',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:168365125',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:168887656',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:185045286',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:195841051',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:245563945',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:40266303',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:445647133',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:47508934',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:523347195',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:555182575',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:573575889',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:581458823',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:600002808',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:647231141',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:66321980',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1),('STEAM_1:1:79223917',1,0,1,0,1,1,1,3,0,0,1,0,1,2,3,4,5,6,1,5,0,0,0,0,0,1,1,1,1,0.5,0.3,255,255,255,1);
/*!40000 ALTER TABLE `ck_playeroptions2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_playerrank`
--

DROP TABLE IF EXISTS `ck_playerrank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_playerrank` (
  `steamid` varchar(32) NOT NULL DEFAULT '',
  `steamid64` varchar(64) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL,
  `countryCode` varchar(3) DEFAULT NULL,
  `continentCode` varchar(3) DEFAULT NULL,
  `points` int(12) DEFAULT '0',
  `wrpoints` int(12) NOT NULL DEFAULT '0',
  `wrbpoints` int(12) NOT NULL DEFAULT '0',
  `wrcppoints` int(11) NOT NULL DEFAULT '0',
  `top10points` int(12) NOT NULL DEFAULT '0',
  `groupspoints` int(12) NOT NULL DEFAULT '0',
  `mappoints` int(11) NOT NULL DEFAULT '0',
  `bonuspoints` int(12) NOT NULL DEFAULT '0',
  `finishedmaps` int(12) DEFAULT '0',
  `finishedmapspro` int(12) DEFAULT '0',
  `finishedbonuses` int(12) NOT NULL DEFAULT '0',
  `finishedstages` int(12) NOT NULL DEFAULT '0',
  `wrs` int(12) NOT NULL DEFAULT '0',
  `wrbs` int(12) NOT NULL DEFAULT '0',
  `wrcps` int(12) NOT NULL DEFAULT '0',
  `top10s` int(12) NOT NULL DEFAULT '0',
  `groups` int(12) NOT NULL DEFAULT '0',
  `lastseen` int(64) DEFAULT NULL,
  `joined` int(64) NOT NULL,
  `timealive` int(64) NOT NULL DEFAULT '0',
  `timespec` int(64) NOT NULL DEFAULT '0',
  `connections` int(64) NOT NULL DEFAULT '1',
  `readchangelog` int(11) NOT NULL DEFAULT '0',
  `style` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`steamid`,`style`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_playerrank`
--

LOCK TABLES `ck_playerrank` WRITE;
/*!40000 ALTER TABLE `ck_playerrank` DISABLE KEYS */;
INSERT INTO `ck_playerrank` VALUES ('STEAM_1:1:149373424','76561198259012577','YOSHI','Germany',NULL,NULL,1075,750,250,0,0,0,75,0,3,3,1,32,3,1,32,3,0,1665105671,1662386218,14203,177,31,0,0);
/*!40000 ALTER TABLE `ck_playerrank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_playertemp`
--

DROP TABLE IF EXISTS `ck_playertemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_playertemp` (
  `steamid` varchar(32) NOT NULL,
  `mapname` varchar(32) NOT NULL,
  `cords1` float NOT NULL DEFAULT '-1',
  `cords2` float NOT NULL DEFAULT '-1',
  `cords3` float NOT NULL DEFAULT '-1',
  `angle1` float NOT NULL DEFAULT '-1',
  `angle2` float NOT NULL DEFAULT '-1',
  `angle3` float NOT NULL DEFAULT '-1',
  `EncTickrate` int(12) DEFAULT '-1',
  `runtimeTmp` float NOT NULL DEFAULT '-1',
  `Stage` int(11) DEFAULT NULL,
  `zonegroup` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`steamid`,`mapname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_playertemp`
--

LOCK TABLES `ck_playertemp` WRITE;
/*!40000 ALTER TABLE `ck_playertemp` DISABLE KEYS */;
INSERT INTO `ck_playertemp` VALUES ('STEAM_1:0:153240757','bump_basics',-560.713,-1577.38,83.2878,10.2398,-7.17873,0,3520,220.688,4,0),('STEAM_1:0:580763002','bump_basics',2292,-213.002,320.031,15.6774,10.0435,0,3520,219.75,3,0),('STEAM_1:0:691437355','bump_basics',-800.371,-1625.45,32.0312,14.1999,5.17987,0,3520,535.016,4,0),('STEAM_1:1:149373424','bump_basics',-535.679,-2714.7,88.0312,24.387,13.728,0,3520,235.422,5,0),('STEAM_1:1:245563945','bump_basics',5608.06,-142.716,1268.03,23.8151,0.445002,0,3520,200.281,3,0),('STEAM_1:1:573575889','bump_basics',-44.7165,-1480.83,384.031,15.465,1.09968,0,3520,369.047,4,0),('STEAM_1:1:600002808','bump_basics',-988.47,-1420.49,32.0312,5.44502,3.49027,0,3520,190.641,4,0);
/*!40000 ALTER TABLE `ck_playertemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_playertimes`
--

DROP TABLE IF EXISTS `ck_playertimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_playertimes` (
  `steamid` varchar(32) NOT NULL,
  `mapname` varchar(32) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `runtimepro` float NOT NULL DEFAULT '-1',
  `velStartXY` smallint(6) NOT NULL DEFAULT '0',
  `velStartXYZ` smallint(6) NOT NULL DEFAULT '0',
  `velStartZ` smallint(6) NOT NULL DEFAULT '0',
  `style` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`steamid`,`mapname`,`style`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_playertimes`
--

LOCK TABLES `ck_playertimes` WRITE;
/*!40000 ALTER TABLE `ck_playertimes` DISABLE KEYS */;
INSERT INTO `ck_playertimes` VALUES ('STEAM_1:1:149373424','bump_basics','YOSHI',785.281,958,1209,737,0),('STEAM_1:1:149373424','bump_how2bump','YOSHI',220.031,1253,1401,626,0),('STEAM_1:1:149373424','bump_school','YOSHI',170.359,1135,1504,987,0);
/*!40000 ALTER TABLE `ck_playertimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_prinfo`
--

DROP TABLE IF EXISTS `ck_prinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_prinfo` (
  `steamid` varchar(32) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `mapname` varchar(32) NOT NULL,
  `runtime` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `zonegroup` int(12) NOT NULL DEFAULT '0',
  `PRtimeinzone` decimal(12,6) NOT NULL DEFAULT '0.000000',
  `PRcomplete` float NOT NULL DEFAULT '0',
  `PRattempts` float NOT NULL DEFAULT '0',
  `PRstcomplete` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`steamid`,`mapname`,`zonegroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_prinfo`
--

LOCK TABLES `ck_prinfo` WRITE;
/*!40000 ALTER TABLE `ck_prinfo` DISABLE KEYS */;
INSERT INTO `ck_prinfo` VALUES ('STEAM_1:0:128728870','david |ãƒ‡ãƒ“ãƒƒãƒ‰','bump_basics',0.000000,0,236.843750,0,32,0),('STEAM_1:0:128728870','david |ãƒ‡ãƒ“ãƒƒãƒ‰','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:0:153240757','Change','bump_basics',0.000000,0,220.671875,0,2,0),('STEAM_1:0:153240757','Change','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:0:505582711','ButterBrot','bump_basics',0.000000,0,33.031250,0,1,0),('STEAM_1:0:505582711','ButterBrot','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:0:507333223','Labada','bump_basics',0.000000,0,123.734375,0,4,0),('STEAM_1:0:507333223','Labada','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:0:509124568','T2K-.-RT','bump_basics',0.000000,0,0.000000,0,0,0),('STEAM_1:0:509124568','T2K-.-RT','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:0:509748040','DarkVektor1','bump_basics',0.000000,0,403.781250,0,21,0),('STEAM_1:0:509748040','DarkVektor1','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:0:511075659','GlobÃ¡lf_o_xhun','bump_basics',0.000000,0,59.328125,0,14,0),('STEAM_1:0:511075659','GlobÃ¡lf_o_xhun','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:0:570529582','ð•„ð•£.Hð”¼â„•ð•‹ð”¸ð•€','bump_basics',0.000000,0,53.375000,0,31,0),('STEAM_1:0:570529582','ð•„ð•£.Hð”¼â„•ð•‹ð”¸ð•€','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:0:580763002','ç‘ªæ‹‰äº”','bump_basics',0.000000,0,246.812500,0,15,0),('STEAM_1:0:580763002','ç‘ªæ‹‰äº”','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:0:647053603','naruto','bump_basics',0.000000,0,0.000000,0,1,0),('STEAM_1:0:647053603','naruto','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:0:676890926','Udo_Lindenberg','bump_basics',0.000000,0,215.875000,0,5,0),('STEAM_1:0:676890926','Udo_Lindenberg','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:0:691437355','nissne69','bump_basics',0.000000,0,539.171875,0,3,0),('STEAM_1:0:691437355','nissne69','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:0:71235334','synt4cs','bump_basics',0.000000,0,168.843750,0,18,0),('STEAM_1:0:71235334','synt4cs','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:120095982','CheesedToMeetYou','bump_basics',0.000000,0,13.625000,0,7,0),('STEAM_1:1:120095982','CheesedToMeetYou','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:149373424','YOSHI','bump_advanced',0.000000,0,10.359375,0,4,0),('STEAM_1:1:149373424','YOSHI','bump_basics',0.000000,0,9761.343750,2,142,7290.55),('STEAM_1:1:149373424','YOSHI','bump_basics',220.031250,1,54.687500,2,13,17.5312),('STEAM_1:1:149373424','YOSHI','bump_how2bump',170.359375,0,1684.703125,2,14,1158),('STEAM_1:1:149373424','YOSHI','bump_island',0.000000,0,0.000000,0,0,0),('STEAM_1:1:149373424','YOSHI','bump_release',0.000000,0,852.093750,0,26,0),('STEAM_1:1:149373424','YOSHI','bump_school',964.109375,0,3047.531250,2,29,2859.72),('STEAM_1:1:149373424','YOSHI','bump_structuredouble',0.000000,0,0.000000,0,0,0),('STEAM_1:1:158186681','wispY','bump_basics',0.000000,0,1.968750,0,1,0),('STEAM_1:1:158186681','wispY','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:168365125','Hudson Hornet','bump_basics',0.000000,0,378.734375,0,2,0),('STEAM_1:1:168365125','Hudson Hornet','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:168887656','Vautex','bump_basics',0.000000,0,104.937500,0,1,0),('STEAM_1:1:168887656','Vautex','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:185045286','Kobayashi','bump_basics',0.000000,0,9.265625,0,12,0),('STEAM_1:1:185045286','Kobayashi','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:195841051','BETON PITON','bump_basics',0.000000,0,1.296875,0,2,0),('STEAM_1:1:195841051','BETON PITON','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:245563945','Deutschman','bump_basics',0.000000,0,202.406250,0,7,0),('STEAM_1:1:245563945','Deutschman','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:40266303','âœª Perfecto','bump_basics',0.000000,0,0.000000,0,0,0),('STEAM_1:1:40266303','âœª Perfecto','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:445647133','Aspect.','bump_basics',0.000000,0,80.734375,0,52,0),('STEAM_1:1:445647133','Aspect.','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:47508934','gustavo','bump_basics',0.000000,0,3.937500,0,9,0),('STEAM_1:1:47508934','gustavo','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:523347195','Biviyt','bump_basics',0.000000,0,215.500000,0,5,0),('STEAM_1:1:523347195','Biviyt','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:555182575','Atsaldenis_banditcamp.com','bump_basics',0.000000,0,589.046875,0,3,0),('STEAM_1:1:555182575','Atsaldenis_banditcamp.com','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:573575889','BluePanter29','bump_basics',0.000000,0,382.796875,0,7,0),('STEAM_1:1:573575889','BluePanter29','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:581458823','â„¢Bot Domaaâ˜žDomii','bump_basics',0.000000,0,108.343750,0,14,0),('STEAM_1:1:581458823','â„¢Bot Domaaâ˜žDomii','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:600002808','got nae naed','bump_basics',0.000000,0,948.875000,0,7,0),('STEAM_1:1:600002808','got nae naed','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:647231141','YoiLuu','bump_basics',0.000000,0,62.468750,0,6,0),('STEAM_1:1:647231141','YoiLuu','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:66321980','ã‚·ï¸»ãƒ‡ ä¸€MehmeT å½¡','bump_basics',0.000000,0,133.718750,0,3,0),('STEAM_1:1:66321980','ã‚·ï¸»ãƒ‡ ä¸€MehmeT å½¡','bump_basics',0.000000,1,0.000000,0,0,0),('STEAM_1:1:79223917','lollolgag','bump_basics',0.000000,0,8.125000,0,5,0),('STEAM_1:1:79223917','lollolgag','bump_basics',0.000000,1,0.000000,0,0,0);
/*!40000 ALTER TABLE `ck_prinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_spawnlocations`
--

DROP TABLE IF EXISTS `ck_spawnlocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_spawnlocations` (
  `mapname` varchar(54) NOT NULL,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL,
  `ang_x` float NOT NULL,
  `ang_y` float NOT NULL,
  `ang_z` float NOT NULL,
  `vel_x` float NOT NULL DEFAULT '0',
  `vel_y` float NOT NULL DEFAULT '0',
  `vel_z` float NOT NULL DEFAULT '0',
  `zonegroup` int(12) NOT NULL DEFAULT '0',
  `stage` int(12) NOT NULL DEFAULT '0',
  `teleside` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapname`,`zonegroup`,`stage`,`teleside`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_spawnlocations`
--

LOCK TABLES `ck_spawnlocations` WRITE;
/*!40000 ALTER TABLE `ck_spawnlocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_spawnlocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_vipadmins`
--

DROP TABLE IF EXISTS `ck_vipadmins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_vipadmins` (
  `steamid` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(128) DEFAULT '0',
  `namecolour` int(11) DEFAULT '0',
  `textcolour` int(11) NOT NULL DEFAULT '0',
  `joinmsg` varchar(255) DEFAULT 'none',
  `pbsound` varchar(256) NOT NULL DEFAULT 'none',
  `topsound` varchar(256) NOT NULL DEFAULT 'none',
  `wrsound` varchar(256) NOT NULL DEFAULT 'none',
  `inuse` int(11) DEFAULT '0',
  `vip` int(11) DEFAULT '0',
  `admin` int(11) NOT NULL DEFAULT '0',
  `zoner` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`steamid`),
  KEY `vip` (`steamid`,`vip`,`admin`,`zoner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_vipadmins`
--

LOCK TABLES `ck_vipadmins` WRITE;
/*!40000 ALTER TABLE `ck_vipadmins` DISABLE KEYS */;
/*!40000 ALTER TABLE `ck_vipadmins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_wrcps`
--

DROP TABLE IF EXISTS `ck_wrcps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_wrcps` (
  `steamid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) DEFAULT NULL,
  `mapname` varchar(32) NOT NULL DEFAULT '',
  `runtimepro` decimal(12,6) NOT NULL DEFAULT '-1.000000',
  `velStartXY` smallint(6) NOT NULL DEFAULT '0',
  `velStartXYZ` smallint(6) NOT NULL DEFAULT '0',
  `velStartZ` smallint(6) NOT NULL DEFAULT '0',
  `stage` int(11) NOT NULL,
  `style` int(11) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`steamid`,`mapname`,`stage`,`style`),
  KEY `stagerank` (`mapname`,`runtimepro`,`stage`,`style`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_wrcps`
--

LOCK TABLES `ck_wrcps` WRITE;
/*!40000 ALTER TABLE `ck_wrcps` DISABLE KEYS */;
INSERT INTO `ck_wrcps` VALUES ('STEAM_1:0:128728870','david |ãƒ‡ãƒ“ãƒƒãƒ‰','bump_basics',4.921875,726,1428,1229,1,0,'2022-09-07 17:33:33'),('STEAM_1:0:128728870','david |ãƒ‡ãƒ“ãƒƒãƒ‰','bump_basics',8.687500,250,250,0,2,0,'2022-09-07 17:33:44'),('STEAM_1:0:128728870','david |ãƒ‡ãƒ“ãƒƒãƒ‰','bump_basics',5.062500,865,1473,1193,3,0,'2022-09-07 17:34:27'),('STEAM_1:0:153240757','Change','bump_basics',8.093750,653,1409,1249,1,0,'2022-09-26 19:20:06'),('STEAM_1:0:153240757','Change','bump_basics',5.750000,250,250,0,2,0,'2022-09-26 19:20:46'),('STEAM_1:0:153240757','Change','bump_basics',8.125000,807,1331,1059,3,0,'2022-09-26 19:22:07'),('STEAM_1:0:505582711','ButterBrot','bump_basics',4.828125,989,1428,1029,1,0,'2022-09-10 14:24:02'),('STEAM_1:0:505582711','ButterBrot','bump_basics',3.500000,908,1375,1032,2,0,'2022-09-10 14:24:08'),('STEAM_1:0:507333223','Labada','bump_basics',3.406250,976,1514,1157,1,0,'2022-09-12 17:11:54'),('STEAM_1:0:507333223','Labada','bump_basics',8.390625,245,374,283,2,0,'2022-09-12 17:12:05'),('STEAM_1:0:507333223','Labada','bump_basics',4.140625,798,1506,1277,3,0,'2022-09-12 17:12:16'),('STEAM_1:0:509748040','DarkVektor1','bump_basics',5.625000,786,1248,970,1,0,'2022-09-05 20:47:10'),('STEAM_1:0:509748040','DarkVektor1','bump_basics',11.125000,201,798,-773,2,0,'2022-09-05 20:45:08'),('STEAM_1:0:509748040','DarkVektor1','bump_basics',3.015625,955,1520,1183,3,0,'2022-09-05 20:47:35'),('STEAM_1:0:509748040','DarkVektor1','bump_basics',5.812500,1055,1325,802,4,0,'2022-09-05 20:50:47'),('STEAM_1:0:511075659','GlobÃ¡lf_o_xhun','bump_basics',3.343750,1108,1537,1065,1,0,'2022-09-09 14:24:19'),('STEAM_1:0:511075659','GlobÃ¡lf_o_xhun','bump_basics',4.593750,245,245,0,2,0,'2022-09-09 14:28:13'),('STEAM_1:0:580763002','ç‘ªæ‹‰äº”','bump_basics',5.562500,899,1201,797,1,0,'2022-10-01 09:06:36'),('STEAM_1:0:580763002','ç‘ªæ‹‰äº”','bump_basics',37.281250,245,245,0,2,0,'2022-10-01 09:07:18'),('STEAM_1:0:676890926','Udo_Lindenberg','bump_basics',5.718750,721,1506,1322,1,0,'2022-09-06 00:33:56'),('STEAM_1:0:676890926','Udo_Lindenberg','bump_basics',5.484375,293,373,231,2,0,'2022-09-06 00:34:12'),('STEAM_1:0:676890926','Udo_Lindenberg','bump_basics',5.062500,790,1361,1109,3,0,'2022-09-06 00:34:32'),('STEAM_1:0:691437355','nissne69','bump_basics',6.343750,659,1507,1356,1,0,'2022-10-01 11:16:50'),('STEAM_1:0:691437355','nissne69','bump_basics',6.968750,250,250,0,2,0,'2022-10-01 11:17:07'),('STEAM_1:0:691437355','nissne69','bump_basics',4.609375,935,1476,1142,3,0,'2022-10-01 11:20:02'),('STEAM_1:1:149373424','YOSHI','bump_basics',3.125000,854,1419,1133,0,0,'2022-09-04 16:17:49'),('STEAM_1:1:149373424','YOSHI','bump_basics',2.609375,1236,1380,614,1,0,'2022-09-05 18:20:46'),('STEAM_1:1:149373424','YOSHI','bump_basics',2.015625,932,1416,1066,2,0,'2022-09-05 18:15:44'),('STEAM_1:1:149373424','YOSHI','bump_basics',2.640625,1157,1557,1043,3,0,'2022-09-05 12:18:22'),('STEAM_1:1:149373424','YOSHI','bump_basics',3.234375,1244,1342,502,4,0,'2022-09-05 16:08:07'),('STEAM_1:1:149373424','YOSHI','bump_basics',6.296875,1202,1343,599,5,0,'2022-09-06 23:26:46'),('STEAM_1:1:149373424','YOSHI','bump_basics',8.765625,245,245,0,6,0,'2022-09-06 23:27:13'),('STEAM_1:1:149373424','YOSHI','bump_basics',4.765625,1230,1336,524,7,0,'2022-09-06 23:28:09'),('STEAM_1:1:149373424','YOSHI','bump_basics',8.390625,1255,1341,473,8,0,'2022-09-05 16:15:45'),('STEAM_1:1:149373424','YOSHI','bump_basics',6.921875,1229,1310,454,9,0,'2022-09-05 18:11:00'),('STEAM_1:1:149373424','YOSHI','bump_basics',11.843750,1252,1327,440,10,0,'2022-09-05 16:22:01'),('STEAM_1:1:149373424','YOSHI','bump_how2bump',2.812500,699,1199,974,0,0,'2022-09-04 16:36:01'),('STEAM_1:1:149373424','YOSHI','bump_how2bump',1.859375,1169,1370,716,1,0,'2022-09-05 14:01:51'),('STEAM_1:1:149373424','YOSHI','bump_how2bump',2.000000,1229,1346,549,2,0,'2022-09-05 14:01:57'),('STEAM_1:1:149373424','YOSHI','bump_how2bump',2.531250,1206,1361,631,3,0,'2022-09-05 14:02:49'),('STEAM_1:1:149373424','YOSHI','bump_how2bump',2.984375,926,1603,1309,4,0,'2022-09-05 13:26:23'),('STEAM_1:1:149373424','YOSHI','bump_how2bump',5.609375,606,1433,1299,5,0,'2022-09-05 13:26:31'),('STEAM_1:1:149373424','YOSHI','bump_how2bump',9.578125,297,1126,1086,6,0,'2022-09-05 13:48:14'),('STEAM_1:1:149373424','YOSHI','bump_how2bump',12.406250,502,1390,1296,7,0,'2022-09-05 16:29:02'),('STEAM_1:1:149373424','YOSHI','bump_how2bump',14.734375,617,1376,1230,8,0,'2022-09-05 13:56:57'),('STEAM_1:1:149373424','YOSHI','bump_release',18.156250,220,220,0,1,0,'2022-09-05 17:28:33'),('STEAM_1:1:149373424','YOSHI','bump_release',26.812500,737,1515,1323,2,0,'2022-09-25 16:28:08'),('STEAM_1:1:149373424','YOSHI','bump_release',106.890625,1312,1413,523,3,0,'2022-09-05 17:01:40'),('STEAM_1:1:149373424','YOSHI','bump_release',20.640625,245,245,0,4,0,'2022-09-05 17:02:36'),('STEAM_1:1:149373424','YOSHI','bump_school',1.875000,1118,1305,674,1,0,'2022-09-05 14:26:18'),('STEAM_1:1:149373424','YOSHI','bump_school',3.515625,1017,1498,1100,2,0,'2022-09-05 16:24:03'),('STEAM_1:1:149373424','YOSHI','bump_school',2.593750,1127,1464,934,3,0,'2022-09-05 18:17:12'),('STEAM_1:1:149373424','YOSHI','bump_school',5.843750,953,1419,1050,4,0,'2022-09-05 18:17:33'),('STEAM_1:1:149373424','YOSHI','bump_school',5.968750,48,1330,1329,5,0,'2022-09-05 15:47:46'),('STEAM_1:1:149373424','YOSHI','bump_school',5.437500,659,1492,1338,6,0,'2022-09-05 16:25:03'),('STEAM_1:1:149373424','YOSHI','bump_school',8.031250,32,1273,1273,7,0,'2022-09-05 16:26:24'),('STEAM_1:1:149373424','YOSHI','bump_school',6.531250,1159,1452,874,8,0,'2022-09-05 16:26:44'),('STEAM_1:1:168365125','Hudson Hornet','bump_basics',4.000000,1091,1252,613,1,0,'2022-09-11 18:08:50'),('STEAM_1:1:168365125','Hudson Hornet','bump_basics',16.968750,245,245,0,2,0,'2022-09-11 18:09:10'),('STEAM_1:1:168887656','Vautex','bump_basics',3.421875,1094,1488,1009,1,0,'2022-09-13 16:59:05'),('STEAM_1:1:168887656','Vautex','bump_basics',8.046875,545,1040,885,2,0,'2022-09-13 16:59:20'),('STEAM_1:1:185045286','Kobayashi','bump_basics',9.015625,267,419,323,1,4,'2022-09-10 15:34:57'),('STEAM_1:1:185045286','Kobayashi','bump_basics',7.265625,250,422,340,2,4,'2022-09-10 15:35:07'),('STEAM_1:1:245563945','Deutschman','bump_basics',6.281250,633,1447,1301,1,0,'2022-09-26 19:28:33'),('STEAM_1:1:245563945','Deutschman','bump_basics',8.875000,246,286,146,2,0,'2022-09-26 19:28:45'),('STEAM_1:1:523347195','Biviyt','bump_basics',65.171875,930,1209,773,1,0,'2022-09-09 11:23:07'),('STEAM_1:1:523347195','Biviyt','bump_basics',5.375000,245,245,0,2,0,'2022-09-09 11:23:19'),('STEAM_1:1:523347195','Biviyt','bump_basics',4.062500,1007,1527,1147,3,0,'2022-09-09 11:23:37'),('STEAM_1:1:555182575','Atsaldenis_banditcamp.com','bump_basics',4.937500,845,1498,1236,1,0,'2022-09-12 18:53:36'),('STEAM_1:1:555182575','Atsaldenis_banditcamp.com','bump_basics',3.093750,717,1399,1201,2,0,'2022-09-12 19:00:02'),('STEAM_1:1:555182575','Atsaldenis_banditcamp.com','bump_basics',4.218750,900,1475,1169,3,0,'2022-09-12 19:00:16'),('STEAM_1:1:573575889','BluePanter29','bump_basics',7.546875,559,1433,1320,1,0,'2022-10-01 09:37:13'),('STEAM_1:1:573575889','BluePanter29','bump_basics',6.468750,245,311,191,2,0,'2022-10-01 09:37:23'),('STEAM_1:1:573575889','BluePanter29','bump_basics',5.375000,272,375,257,3,0,'2022-10-01 09:39:59'),('STEAM_1:1:581458823','â„¢Bot Domaaâ˜žDomii','bump_basics',6.171875,799,1439,1198,1,0,'2022-09-09 14:26:05'),('STEAM_1:1:581458823','â„¢Bot Domaaâ˜žDomii','bump_basics',8.156250,250,323,-204,2,0,'2022-09-09 14:26:15'),('STEAM_1:1:600002808','got nae naed','bump_basics',5.031250,856,1468,1193,1,0,'2022-09-27 13:48:46'),('STEAM_1:1:600002808','got nae naed','bump_basics',3.906250,245,245,0,2,0,'2022-09-27 13:48:52'),('STEAM_1:1:600002808','got nae naed','bump_basics',4.156250,1128,1587,1117,3,0,'2022-09-27 14:30:00'),('STEAM_1:1:647231141','YoiLuu','bump_basics',5.765625,805,1457,1214,1,0,'2022-09-10 19:20:35'),('STEAM_1:1:647231141','YoiLuu','bump_basics',13.609375,250,330,215,2,0,'2022-09-10 19:20:51'),('STEAM_1:1:66321980','ã‚·ï¸»ãƒ‡ ä¸€MehmeT å½¡','bump_basics',5.968750,669,1424,1257,1,0,'2022-09-10 10:56:34'),('STEAM_1:1:66321980','ã‚·ï¸»ãƒ‡ ä¸€MehmeT å½¡','bump_basics',5.453125,245,245,0,2,0,'2022-09-10 10:56:41'),('STEAM_1:1:66321980','ã‚·ï¸»ãƒ‡ ä¸€MehmeT å½¡','bump_basics',3.468750,925,1475,1149,3,0,'2022-09-10 10:57:40');
/*!40000 ALTER TABLE `ck_wrcps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ck_zones`
--

DROP TABLE IF EXISTS `ck_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ck_zones` (
  `mapname` varchar(54) NOT NULL,
  `zoneid` int(12) NOT NULL DEFAULT '-1',
  `zonetype` int(12) DEFAULT '-1',
  `zonetypeid` int(12) DEFAULT '-1',
  `pointa_x` float DEFAULT '-1',
  `pointa_y` float DEFAULT '-1',
  `pointa_z` float DEFAULT '-1',
  `pointb_x` float DEFAULT '-1',
  `pointb_y` float DEFAULT '-1',
  `pointb_z` float DEFAULT '-1',
  `vis` int(12) DEFAULT '0',
  `team` int(12) DEFAULT '0',
  `zonegroup` int(11) NOT NULL DEFAULT '0',
  `zonename` varchar(128) DEFAULT NULL,
  `hookname` varchar(128) DEFAULT 'None',
  `targetname` varchar(128) DEFAULT 'player',
  `onejumplimit` int(12) NOT NULL DEFAULT '1',
  `prespeed` int(64) NOT NULL DEFAULT '260',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mapname`,`zoneid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ck_zones`
--

LOCK TABLES `ck_zones` WRITE;
/*!40000 ALTER TABLE `ck_zones` DISABLE KEYS */;
INSERT INTO `ck_zones` VALUES ('bump_advanced',0,1,0,-11024,-7374.34,-503.738,-10713.6,-7120.07,-303.969,0,0,0,'Start 0','None','player',1,250,'2022-09-05 17:06:40'),('bump_advanced',1,3,0,13815.7,-7376.07,-343.969,13624.2,-7535.6,-503.969,0,0,0,'Start 0','None','player',1,250,'2022-09-05 17:08:10'),('bump_advanced',2,3,1,13632.3,2720.17,-951.969,13995.8,2967.97,-793.946,0,0,0,'Start 0','None','player',1,250,'2022-09-05 17:09:44'),('bump_advanced',3,3,2,-6704.13,10576,-503.969,-7031.97,10831.6,-315.05,0,0,0,'Start 0','None','player',1,250,'2022-09-05 17:10:58'),('bump_advanced',4,3,3,-10784.3,2871.73,-503.969,-11023,2729.02,-328.829,0,0,0,'Start 0','None','player',1,250,'2022-09-05 17:13:17'),('bump_advanced',5,3,4,-8688.54,-5671.46,-503.969,-8991.97,-5416.16,-331.096,0,0,0,'Start 0','None','player',1,250,'2022-09-05 17:13:52'),('bump_advanced',6,3,5,-10712,-8160.16,-61.9552,-11024,-8417.29,151.608,0,0,0,'Start 0','None','player',1,250,'2022-09-05 17:16:09'),('bump_advanced',7,2,0,9423.97,-10552.5,126.74,8960.03,-10919.5,328.007,0,0,0,'Start 0','None','player',1,250,'2022-09-05 17:24:18'),('bump_basics',0,1,0,-382.802,336.088,64.0312,-1097.3,911.173,296.214,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:07:06'),('bump_basics',1,3,0,-1097.27,65.3119,64.0312,-504.521,-511.969,388.145,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:15:08'),('bump_basics',2,3,1,3119.49,71.9854,320.802,2216.62,-503.952,701.918,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:07:27'),('bump_basics',3,3,2,-625.177,-864.316,32.3555,-1193.19,-1951.97,291.036,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:15:08'),('bump_basics',4,3,3,347.613,-3239.47,88.1568,-1146.7,-2151.53,355.977,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:15:08'),('bump_basics',5,3,4,-4430.31,-3721.03,96.4349,-5047.15,-4807.97,392.454,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:15:08'),('bump_basics',6,3,5,-4425.03,-5278.42,-349.892,-5639.67,-6401.97,-23.4975,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:15:08'),('bump_basics',7,3,6,-2275.03,-6531.52,-1058.38,-3489.28,-7654.97,-706.284,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:15:08'),('bump_basics',8,3,7,-2881.87,-8671.03,-366.825,-4192.97,-9793.58,-107.527,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:15:08'),('bump_basics',9,3,8,-4208.03,-10070.3,-487.971,-5432.3,-11192.7,-115.223,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:15:08'),('bump_basics',10,2,0,8703.17,-5377.11,-95.9688,8066.22,-5887.97,278.532,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:15:08'),('bump_basics',11,1,0,-1056.64,2239.97,857.395,-1642.48,1792.03,1118.83,0,0,1,'bonus 1','None','player',1,250,'2022-09-04 16:15:08'),('bump_basics',12,2,0,2448.4,1792.03,857.389,3035.82,2236.56,1119.97,0,0,1,'bonus 1','None','player',1,250,'2022-09-04 16:15:08'),('bump_how2bump',0,1,0,383.605,383.572,64.0312,-383.969,-381.684,294.39,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:35:22'),('bump_how2bump',1,3,0,512.553,383.73,64.0312,1279.42,-383.969,184.205,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:35:22'),('bump_how2bump',2,3,1,1408.73,383.794,64.0312,2175.65,-383.969,199.845,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:35:22'),('bump_how2bump',3,3,2,2304.62,383.677,64.0312,3071.4,-383.969,188.818,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:35:22'),('bump_how2bump',4,3,3,3328.4,144.65,-427.969,3838.28,-255.102,-607.969,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:35:22'),('bump_how2bump',5,3,4,4734.93,433.251,-607.969,4225.65,832.969,-449.374,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:35:22'),('bump_how2bump',6,3,5,5631.16,-255.013,-607.969,5121.28,144.969,-463.024,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:35:22'),('bump_how2bump',7,3,6,6527.27,-255.215,-607.969,6016.93,144.969,-451.395,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:35:22'),('bump_how2bump',8,2,0,5904.03,3344.17,2081.76,6639.88,4079.97,2303.48,0,0,0,'Start 0','None','player',1,250,'2022-09-04 16:35:22'),('bump_release',0,1,0,-14495.5,12831,1584.03,-14673.3,12769,1712.03,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:38:14'),('bump_release',1,3,0,-13198.9,6176.85,1344.03,-13442.8,6111.03,1466.45,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:39:46'),('bump_release',2,3,1,6176.38,13926.6,1280.03,6112.03,14108.3,1399.28,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:42:05'),('bump_release',3,3,2,447.031,-2542.11,1537.17,576.969,-2782.71,1679.01,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:44:02'),('bump_release',4,3,3,-13217.8,2595.45,-7364.4,-13408,2847.68,-7236.09,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:46:03'),('bump_release',5,3,4,12255.9,-2849.49,1600.03,12321.3,-3079,1728.03,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:48:00'),('bump_release',6,3,5,-14313.5,2273.28,1808.03,-14513,2207.03,1940.98,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:49:26'),('bump_release',7,3,6,-12253.7,-5566.78,1520.03,-12534.9,-5696.97,1652.99,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:50:40'),('bump_release',8,3,7,-13545.4,10273,-14015.8,-13885.4,10015,-13838.4,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:54:04'),('bump_release',9,2,0,9884.27,-11136.6,-13022.9,10226,-11468.9,-12860.3,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:56:54'),('bump_school',0,1,0,-10112,-12255.9,-11487.8,-9089.03,-13311,-11143.1,0,0,0,'Start 0','None','player',1,250,'2022-09-05 14:22:27'),('bump_school',1,3,0,-8095.97,-12288,-11487.8,-7072.28,-13344,-11212.2,0,0,0,'Start 0','None','player',1,250,'2022-09-05 14:22:27'),('bump_school',2,3,1,-5983.93,-12352.1,-11488,-4961.03,-13407.1,-11185.2,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:02:27'),('bump_school',3,3,2,-3903.97,-12320.3,-11487.6,-2881.03,-13374.2,-11164.6,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:02:48'),('bump_school',4,3,3,-1855.97,-12319.5,-11487.7,-832.214,-13376,-11123,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:03:05'),('bump_school',5,3,4,1183.97,-12368.1,-11487.8,160.356,-13376,-11351.4,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:03:11'),('bump_school',6,3,5,3071.76,-12304.2,-11488,2048.65,-13312,-11299.3,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:03:23'),('bump_school',7,3,6,4064.53,-12288.6,-11488,5087.97,-13342.6,-11200.2,0,0,0,'Start 0','None','player',1,250,'2022-09-05 16:03:30'),('bump_school',8,2,0,-495.834,-426.16,450.031,404.554,548.665,0.03125,0,0,0,'Start 0','None','player',1,250,'2022-09-05 14:34:58');
/*!40000 ALTER TABLE `ck_zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-26 16:52:04
