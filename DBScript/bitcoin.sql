-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bitcoin
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.19-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Password` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `Name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `IsDelete` tinyint(4) DEFAULT NULL,
  `IsActive` tinyint(4) DEFAULT NULL,
  `CreatedOnUtc` datetime(3) DEFAULT NULL,
  `Mobile` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `BillingAddress` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `TaxCode` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Gender` tinyint(4) DEFAULT NULL,
  `RoleAdmID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','12345','admin',NULL,NULL,NULL,NULL,NULL,NULL,'ADMINXXDSWE2332SSGGDSWE33334FGG',NULL,NULL,NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminwallet`
--

DROP TABLE IF EXISTS `adminwallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminwallet` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `wallet` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminwallet`
--

LOCK TABLES `adminwallet` WRITE;
/*!40000 ALTER TABLE `adminwallet` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminwallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Gender` tinyint(4) DEFAULT NULL,
  `Birthday` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PeoplesIdentity` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PasswordSalt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime(3) DEFAULT NULL,
  `CustomerAvatarID` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CountryID` int(11) DEFAULT NULL,
  `IsActive` tinyint(4) DEFAULT NULL,
  `IsDelete` tinyint(4) DEFAULT NULL,
  `ListCustomerId` longtext COLLATE utf8_unicode_ci,
  `ParentID` int(11) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `SecondPassword` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WalletAddress` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BitcoinQRUrl` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhoneCode` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `ListCustomerRef` longtext COLLATE utf8_unicode_ci,
  `levecustomerRef` int(11) DEFAULT NULL,
  `listPV` longtext COLLATE utf8_unicode_ci,
  `IsPH` tinyint(4) DEFAULT NULL,
  `RankID` int(11) DEFAULT NULL,
  `PercentRank` int(11) DEFAULT NULL,
  `ishappy1` tinyint(4) DEFAULT NULL,
  `ishappy2` tinyint(4) DEFAULT NULL,
  `ishappy3` tinyint(4) DEFAULT NULL,
  `TotalSystemBit` double DEFAULT NULL,
  `TotalF1InMonth` int(11) DEFAULT NULL,
  `TotalF2Inmonth` int(11) DEFAULT NULL,
  `TotMember` int(11) DEFAULT NULL,
  `TopIndex` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'thanh','1','nguyenthanhuet@gmail.com',NULL,NULL,'root','$2a$10$1qAz2wSx3eDc4rFv5tGb5eefTzKCx/LNf./BqxzudS.QZxVA6PX66','123456','01687522330',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(144,'Nguy?n V?n Thành','thanh2','nguyenthanhuet2016@gmail.com',NULL,NULL,'1','$2a$10$1qAz2wSx3eDc4rFv5tGb5eefTzKCx/LNf./BqxzudS.QZxVA6PX66','123456','1687522330',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'DHKEMBNMHJHHHhhdsdsd34344',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(145,'Nguy?n V?n Thành','thanh10021992','pentest317@gmail.com',NULL,NULL,'1','$2a$10$1qAz2wSx3eDc4rFv5tGb5eefTzKCx/LNf./BqxzudS.QZxVA6PX66','123456','1687522330',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'dsdsds?sd dsdsdsdsdsdsdddsdssdsdsdsd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feeamount`
--

DROP TABLE IF EXISTS `feeamount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feeamount` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_typ` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='bảng phí cho các loại giao dịch : 1 ngày, 3 ngày, 5 ngày';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeamount`
--

LOCK TABLES `feeamount` WRITE;
/*!40000 ALTER TABLE `feeamount` DISABLE KEYS */;
INSERT INTO `feeamount` VALUES (1,1,0.15),(2,3,0.3),(3,5,0.5);
/*!40000 ALTER TABLE `feeamount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `ID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `question` text CHARACTER SET latin1,
  `senddate` datetime DEFAULT NULL,
  `answer` text CHARACTER SET latin1,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_gh`
--

DROP TABLE IF EXISTS `transaction_gh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_gh` (
  `CustomerID` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `status` varchar(45) CHARACTER SET latin1 DEFAULT NULL COMMENT '1: waiting\n2:confirmed\n3:sendmoney',
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_typ` int(11) DEFAULT NULL COMMENT '1: 1days\n3: 3days\n5: 5days',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user send admin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_gh`
--

LOCK TABLES `transaction_gh` WRITE;
/*!40000 ALTER TABLE `transaction_gh` DISABLE KEYS */;
INSERT INTO `transaction_gh` VALUES (144,0,'2017-01-05 14:36:09','1','D:/images/\\144\\170105020201010808.jpg',NULL,1),(144,0.15,'2017-01-05 14:50:09','1','D:/images/\\144\\170105020201010909.jpg',1,2),(144,0.15,'2017-01-05 14:50:11','1','D:/images/\\144\\170105020201011111.jpg',1,3),(144,0.15,'2017-01-05 14:51:15','1','D:/images/\\144\\170105020201011515.jpg',1,4),(144,0.15,'2017-01-05 16:29:46','1','D:\\work\\xampp2\\htdocs\\bitcoin\\application/../public/upload/image/\\144\\170105040401014646.jpg',1,5),(144,0.15,'2017-01-05 17:39:50','2','\\144\\170105050501014949.jpg',1,6),(144,0.15,'2017-01-05 17:43:34','1','\\144\\170105050501013434.jpg',1,7),(144,0.15,'2017-01-05 17:44:23','3','\\144\\170105050501012323.jpg',1,8),(145,0.15,'2017-01-05 18:32:35','2','\\145\\170105060601013535.jpg',1,9);
/*!40000 ALTER TABLE `transaction_gh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_ph`
--

DROP TABLE IF EXISTS `transaction_ph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_ph` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `level` int(11) DEFAULT NULL COMMENT '1: F0, 2:F1, 3:F2',
  `senddate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `issuccess` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='admin send user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_ph`
--

LOCK TABLES `transaction_ph` WRITE;
/*!40000 ALTER TABLE `transaction_ph` DISABLE KEYS */;
INSERT INTO `transaction_ph` VALUES (1,144,0.18,1,'2017-01-04 00:00:00',NULL,1),(2,145,0.4,1,'2017-01-04 00:00:00',NULL,1),(3,144,0.015,2,'2017-01-04 00:00:00',NULL,1),(4,144,0.015,2,'2017-01-04 00:00:00',NULL,1);
/*!40000 ALTER TABLE `transaction_ph` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-05 22:03:26
