-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 185.86.148.231    Database: bitcoin
-- ------------------------------------------------------
-- Server version	5.1.73

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
  `Username` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Password` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `Name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `IsDelete` tinyint(4) DEFAULT NULL,
  `Mobile` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','12345','Administrator',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminwallet`
--

LOCK TABLES `adminwallet` WRITE;
/*!40000 ALTER TABLE `adminwallet` DISABLE KEYS */;
INSERT INTO `adminwallet` VALUES (1,'13BNJyo1YBJG35Aa1ga7rrBTYaw1yyN7DX'),(2,'13BNJyo1YBJG36Aa1ga7rrBTYaw1yyN7DX'),(3,'14BNJyo1YBJG36Aa1ga7rrBTYaw1yyN7DX'),(4,'19BNJyo1YBJG36Aa1ga7rrBTYad31yyN7DX'),(5,'14ANJyo1YBJG36Aa1ga7rrBTYad31yyN7DX');
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
  `CreatedDate` datetime DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'thanh','1','nguyenthanhuet@gmail.com',NULL,NULL,'','$2a$10$1qAz2wSx3eDc4rFv5tGb5eefTzKCx/LNf./BqxzudS.QZxVA6PX66','123456','01687522330',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(144,'Thành 2','thanh2','nguyenthanhuet2016@gmail.com',NULL,NULL,'1','$2a$10$1qAz2wSx3eDc4rFv5tGb5eprWkuXd.sGMPxStzeRB/KZ92jOLNvZa','123456','1687522330',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'DHKEMBNMHJHHHhhdsdsd34344',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(145,'Thành 3 ','thanh10021992','pentest317@gmail.com',NULL,NULL,'1','$2a$10$1qAz2wSx3eDc4rFv5tGb5eefTzKCx/LNf./BqxzudS.QZxVA6PX66','123456','1687522330',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'dsdsds?sd dsdsdsdsdsdsdddsdssdsdsdsd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(146,'fucked','uuuu','thanh0102@gmail.com',NULL,NULL,'','$2a$10$1qAz2wSx3eDc4rFv5tGb5eprWkuXd.sGMPxStzeRB/KZ92jOLNvZa','123456','1687522344',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'12Ajksdsdssds56564645dfdfdfdfd21323',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(147,'thanh nguyen','fuckyou','nguyenthanhuet1111@gmail.com',NULL,NULL,'','$2a$10$1qAz2wSx3eDc4rFv5tGb5eprWkuXd.sGMPxStzeRB/KZ92jOLNvZa','12345','23232321',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'sadsdasdsd2323dsdsd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(148,'aaa','aaa','aaa@gmail.com',NULL,NULL,'thanh2','$2a$10$1qAz2wSx3eDc4rFv5tGb5eefTzKCx/LNf./BqxzudS.QZxVA6PX66','123456','19023123312',NULL,NULL,NULL,NULL,NULL,NULL,144,NULL,NULL,'13GoNBG9S3NnzzJhszuDa9tUPKnnUPgKuH',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  `transaction_typ` int(11) DEFAULT '0',
  `amount` double DEFAULT '0',
  `recived` double DEFAULT '0',
  `duration` int(11) DEFAULT '0',
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='bảng phí cho các loại giao dịch : 1 ngày, 3 ngày, 5 ngày';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeamount`
--

LOCK TABLES `feeamount` WRITE;
/*!40000 ALTER TABLE `feeamount` DISABLE KEYS */;
INSERT INTO `feeamount` VALUES (1,1,0.01,0.015,3,'spin 1 day'),(2,2,0.3,0.4,5,'spin 2 day'),(3,3,0.5,0.7,7,'spin 3 day'),(4,4,0,0.02,3,'bonus from f1');
/*!40000 ALTER TABLE `feeamount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) DEFAULT NULL,
  `question` text CHARACTER SET utf8,
  `senddate` datetime DEFAULT NULL,
  `answer` text CHARACTER SET utf8,
  `status` int(11) DEFAULT NULL COMMENT '0: chưa trả lời\n1: trả lời',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,144,'test message','2017-01-06 16:24:04','Ok guy ! Please help me, I can not invest money to you !',1),(2,144,'test message','2017-01-06 16:27:28','sdsad',1),(3,144,'test message','2017-01-06 16:39:46','dfdf',1),(4,144,'Please help me, I can not invest money to you !','2017-01-06 17:21:20','s?dsdf',1),(5,144,'thành test unicode','2017-01-06 20:29:20','trả lời ',1),(6,145,'thành test new','2017-01-06 20:33:20','',0),(7,144,'fgfgfdf fdf dfdf','2017-01-07 20:42:00','',0),(8,144,'4343','2017-01-09 14:28:58','',0);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_gh`
--

DROP TABLE IF EXISTS `transaction_gh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_gh` (
  `CustomerID` int(11) DEFAULT '0',
  `amount` double DEFAULT '0',
  `senddate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '1: waiting\n2:confirmed\n3:sendmoney',
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_typ` int(11) DEFAULT '0' COMMENT '1: 3days\n2: 5days\n3: 7days\n4: bonus from f1',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `del_flg` int(11) DEFAULT '0',
  `bonus_from` int(11) DEFAULT NULL COMMENT 'f1 ID',
  `bonus_from_transgh` int(11) DEFAULT NULL COMMENT 'bonus from transaction gh nào?',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user send admin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_gh`
--

LOCK TABLES `transaction_gh` WRITE;
/*!40000 ALTER TABLE `transaction_gh` DISABLE KEYS */;
INSERT INTO `transaction_gh` VALUES (144,0.18,'2017-01-05 14:36:09',3,'D:/images/\\144\\170105020201010808.jpg',2,1,0,NULL,NULL),(144,0.15,'2017-01-05 14:50:09',2,'D:/images/\\144\\170105020201010909.jpg',1,2,1,NULL,NULL),(144,0.15,'2017-01-05 14:50:11',2,'D:/images/\\144\\170105020201011111.jpg',1,3,1,NULL,NULL),(144,0.15,'2017-01-05 14:51:15',2,'D:/images/\\144\\170105020201011515.jpg',1,4,1,NULL,NULL),(144,0.15,'2017-01-05 16:29:46',1,'D:\\work\\xampp2\\htdocs\\bitcoin\\application/../public/upload/image/\\144\\170105040401014646.jpg',1,5,1,NULL,NULL),(144,0.15,'2017-01-05 17:39:50',3,'\\144\\170105050501014949.jpg',1,6,0,NULL,NULL),(144,0.15,'2017-01-05 17:43:34',1,'\\144\\170105050501013434.jpg',1,7,1,NULL,NULL),(144,0.15,'2017-01-05 17:44:23',3,'\\144\\170105050501012323.jpg',1,8,0,NULL,NULL),(145,0.15,'2017-01-05 18:32:35',2,'\\145\\170105060601013535.jpg',1,9,1,NULL,NULL),(144,0.15,'2017-01-06 13:37:21',2,'\\144\\170106010101012121.jpg',1,10,1,NULL,NULL),(145,0.15,'2017-01-06 22:13:52',2,'\\145\\170106101001015252.jpg',1,11,1,NULL,NULL),(147,0.15,'2017-01-06 23:09:37',1,'\\147\\170106111101013737.jpg',1,12,1,NULL,NULL),(144,0.15,'2017-01-08 20:18:18',2,'\\144\\170108080801011717.jpg',1,13,1,NULL,NULL),(144,0.15,'2017-01-08 21:27:12',2,'\\144\\170108090901011212.jpg',1,14,1,NULL,NULL),(144,0.15,'2017-01-09 13:31:07',2,'\\144\\170109010101010707.jpg',1,15,1,NULL,NULL),(1,0,'2017-01-09 13:58:09',2,'',4,18,1,144,15),(1,0,'2017-01-09 14:17:59',2,'',4,19,1,145,11),(144,0.15,'2017-01-09 14:21:26',3,'\\144\\170109020201012626.xlsx',1,20,0,NULL,NULL),(1,0,'2017-01-10 00:27:39',3,'',4,25,0,144,20),(1,0,'2017-01-10 00:30:09',3,'',4,26,0,144,14),(1,0,'2017-01-10 00:31:18',3,'',4,27,0,144,13),(1,0,'2017-01-09 21:29:48',2,'',4,28,1,144,10),(144,0.5,'2017-01-09 22:17:26',1,'/var/www/html/bitcoin/application/../public/upload/customer/144/170110101001012626.png',3,31,1,NULL,NULL),(148,0.15,'2017-01-10 09:47:59',1,'/var/www/html/bitcoin/application/../public/upload/customer/148/170110090901015959.jpg',1,32,1,NULL,NULL),(148,0.3,'2017-01-10 09:51:29',3,'/var/www/html/bitcoin/application/../public/upload/customer/148/170110090901012929.jpg',2,33,0,NULL,NULL),(144,0,'2017-01-10 09:52:03',3,'',4,34,0,148,33),(148,0.5,'2017-01-10 10:01:42',3,'/var/www/html/bitcoin/application/../public/upload/customer/148/170110101001014242.jpg',3,35,0,NULL,NULL),(144,0,'2017-01-10 10:02:13',3,'',4,36,0,148,35),(148,0.15,'2017-01-10 10:13:15',3,'/var/www/html/bitcoin/application/../public/upload/customer/148/170110101001011515.jpg',1,37,0,NULL,NULL),(144,0,'2017-01-10 10:14:19',2,'',4,38,0,148,37),(148,0.01,'2017-01-10 10:27:19',3,'/var/www/html/bitcoin/application/../public/upload/customer/148/170110101001011818.png',1,39,0,NULL,NULL),(144,0,'2017-01-10 10:29:39',2,'',4,40,0,148,39),(148,0.01,'2017-01-10 11:02:45',3,'/var/www/html/bitcoin/application/../public/upload/customer/148/170110111101014545.jpg',1,41,0,NULL,NULL),(144,0,'2017-01-10 11:03:25',2,'',4,42,0,148,41);
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
  `customerID` int(11) DEFAULT '0',
  `amount` double DEFAULT '0',
  `level` int(11) DEFAULT '0' COMMENT '1: F0, 2:F1, 3:F2',
  `senddate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `issuccess` int(11) DEFAULT '0',
  `gh_id` int(11) DEFAULT '0' COMMENT 'Khi GH dc confirm thì PH sẽ tạo 1 bản ghi tương ứng transaction_ph.gh_id= transaction_gh.ID \nVà bản ghi này có issuccess = 0 ( chưa hoàn thành hay chưa chueyern tiền). Sau này khi chuyển tiền thành công thi issuccess =1',
  `del_flg` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='admin send user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_ph`
--

LOCK TABLES `transaction_ph` WRITE;
/*!40000 ALTER TABLE `transaction_ph` DISABLE KEYS */;
INSERT INTO `transaction_ph` VALUES (1,144,0.18,1,'2017-01-04 00:00:00',NULL,0,NULL,1),(2,145,0.4,1,'2017-01-04 00:00:00',NULL,1,0,0),(3,144,0.015,2,'2017-01-04 00:00:00',NULL,1,NULL,0),(4,144,0.015,2,'2017-01-04 00:00:00',NULL,1,8,0),(5,144,0.15,0,'2017-01-08 23:26:47',0,0,6,0),(6,144,0.3,0,'2017-01-10 00:21:47',0,0,1,0),(7,1,0,1,'2017-01-10 00:34:07',0,0,27,0),(8,1,0,1,'2017-01-10 00:35:03',0,0,26,0),(9,1,0,1,'2017-01-10 00:35:36',0,0,25,0),(10,144,0.15,0,'2017-01-10 00:55:13',0,0,20,0),(11,144,0,1,'2017-01-10 09:53:43',0,0,34,0),(12,148,0.3,0,'2017-01-10 09:54:27',0,0,33,0),(13,148,0.5,0,'2017-01-10 10:02:28',0,0,35,0),(14,144,0,1,'2017-01-10 10:02:37',0,0,36,0),(15,148,0.01,0,'2017-01-10 10:18:33',0,1,37,0),(16,148,0.01,0,'2017-01-10 10:30:39',0,1,39,0),(17,148,0.01,0,'2017-01-10 10:31:41',0,1,39,0),(18,148,0.01,0,'2017-01-10 11:03:46',0,1,41,0);
/*!40000 ALTER TABLE `transaction_ph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bitcoin'
--
/*!50003 DROP PROCEDURE IF EXISTS `getInforWebsite` */;
ALTER DATABASE `bitcoin` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getInforWebsite`(IN menu varchar(100))
BEGIN
	SELECT 
		tbl_about.*
	FROM
		tbl_about
	WHERE
		tbl_about.del_flg = 1
	ORDER BY tbl_about.about_id
	LIMIT 1
	;
    
    
	SELECT 
		tbl_news.*
	FROM
		tbl_news
			LEFT JOIN
		tbl_menu ON tbl_news.cate_id = tbl_menu.menu_id
			LEFT JOIN
		tbl_status ON tbl_news.news_action_id = tbl_status.status_id
	WHERE
		tbl_news.del_flg = 1
			AND tbl_menu.del_flag = 0
			AND tbl_status.status_id = 5
			AND tbl_menu.url LIKE concat('%', menu, '%')
	ORDER BY CASE
		WHEN tbl_news.upd_date IS NULL THEN tbl_news.inp_date
		ELSE tbl_news.upd_date
	END DESC
	LIMIT 5
		;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `bitcoin` CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `GET_FEE_AMOUNT_LIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GET_FEE_AMOUNT_LIST`()
BEGIN
SELECT 
    *
    FROM feeamount;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_CHANGE_PASSWORD_CUS` */;
ALTER DATABASE `bitcoin` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_CHANGE_PASSWORD_CUS`(IN
	userName	VARCHAR(100)
,	password_new VARCHAR(100)
)
BEGIN
	UPDATE customer
    SET customer.Password =  password_new
    WHERE customer.UserName = userName;
    
    SELECT 1 AS success;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `bitcoin` CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_DUPLICATE_CUSTOMER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_DUPLICATE_CUSTOMER`(IN
	userName varchar(100)
,	email varchar(100)
,	sponsor varchar(100)
)
BEGIN
	IF (SELECT COUNT(customer.ID) FROM customer WHERE customer.UserName = userName OR customer.Email = email) =  0 THEN 
		IF(SELECT COUNT(customer.ID) FROM customer WHERE customer.UserName = sponsor || sponsor = '' ) =  0  THEN
			SELECT -2 As success;
		ELSE
			SELECT 1 As success;
		END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_GET_ADMIN_TICKET_LIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_GET_ADMIN_TICKET_LIST`()
BEGIN
	SELECT
		ticket.ID
	,	ticket.CustomerID
    ,	ticket.question
    ,	ticket.senddate
    ,	ticket.answer
    ,	customer.UserName
    ,	customer.Email
    ,	ticket.status AS status_val
    ,	CASE
			WHEN ticket.status = 1 THEN 'Answered'
            ELSE 'Waiting answer'
		END 	AS status
	,	CASE
			WHEN ticket.status = 1 THEN 'color-success'
            ELSE 'color-default'
		END 	AS color
    FROM ticket
    LEFT JOIN customer ON
		ticket.CustomerID = customer.ID
	ORDER BY
		ticket.ID DESC
	,	ticket.CustomerID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_GET_BUSSINESS_REPORT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_GET_BUSSINESS_REPORT`(IN
P_CustomerID	INT
)
BEGIN
	DECLARE totalInvest INT DEFAULT 0;
    DECLARE waitingInvest INT DEFAULT 0;
    DECLARE confirmedInvest INT DEFAULT 0;
    DECLARE amountInvest DECIMAL(18,2) DEFAULT 0;
    DECLARE amountWaitingInvest DECIMAL(18,2) DEFAULT 0;
    DECLARE amountConfirmedInvest DECIMAL(18,2) DEFAULT 0;
    
    DECLARE totalRecived INT DEFAULT 0;
    DECLARE errorRecived INT DEFAULT 0;
    DECLARE successRecived INT DEFAULT 0;
    DECLARE amountRecived DECIMAL(18,2) DEFAULT 0;
    DECLARE amountErrorRecived DECIMAL(18,2) DEFAULT 0;
    DECLARE amountSuccessRecived DECIMAL(18,2) DEFAULT 0;
    SET totalInvest = 
    (SELECT
		 COUNT(1)
    FROM transaction_gh
    WHERE transaction_gh.CustomerID = P_customerID
    AND transaction_gh.del_flg <> 1);
	
    
    SET waitingInvest = 
    (SELECT
		 COUNT(1)
    FROM transaction_gh
    WHERE transaction_gh.CustomerID = P_customerID
    AND transaction_gh.status = 1
    AND transaction_gh.del_flg <> 1);
	
    SET confirmedInvest = 
    (SELECT
		 COUNT(1)
    FROM transaction_gh
    WHERE transaction_gh.CustomerID = P_customerID
    AND transaction_gh.status = 2
    AND transaction_gh.del_flg <> 1);
    
    
    SET amountInvest = 
    (SELECT
		 SUM(transaction_gh.amount)
    FROM transaction_gh
    WHERE transaction_gh.CustomerID = P_customerID
    AND transaction_gh.del_flg <> 1);
	
    SET amountWaitingInvest = 
    (SELECT
		 SUM(transaction_gh.amount)
    FROM transaction_gh
    WHERE transaction_gh.CustomerID = P_customerID
     AND transaction_gh.status = 1
    AND transaction_gh.del_flg <> 1);
    
    SET amountConfirmedInvest = 
    (SELECT
		 SUM(transaction_gh.amount)
    FROM transaction_gh
    WHERE transaction_gh.CustomerID = P_customerID
     AND transaction_gh.status = 2
    AND transaction_gh.del_flg <> 1);
    
    SET totalRecived = 
    (SELECT
		 COUNT(1)
    FROM transaction_ph
    WHERE transaction_ph.CustomerID = P_customerID
    AND transaction_ph.del_flg <> 1);
    
    SET errorRecived = 
    (SELECT
		 COUNT(1)
    FROM transaction_ph
    WHERE transaction_ph.CustomerID = P_customerID
    AND transaction_ph.issuccess = 0
    AND transaction_ph.del_flg <> 1);
    
    SET successRecived = 
    (SELECT
		 COUNT(1)
    FROM transaction_ph
    WHERE transaction_ph.CustomerID = P_customerID
    AND transaction_ph.issuccess = 1
    AND transaction_ph.del_flg <> 1);
    
    SET amountRecived = 
    (SELECT
		 SUM(transaction_ph.amount)
    FROM transaction_ph
    WHERE transaction_ph.CustomerID = P_customerID
    AND transaction_ph.del_flg <> 1);
    
    SET amountErrorRecived = 
    (SELECT
		 SUM(transaction_ph.amount)
    FROM transaction_ph
    WHERE transaction_ph.CustomerID = P_customerID
    AND transaction_ph.issuccess = 0
    AND transaction_ph.del_flg <> 1);
    
    SET amountSuccessRecived = 
    (SELECT
		 SUM(transaction_ph.amount)
    FROM transaction_ph
    WHERE transaction_ph.CustomerID = P_customerID
    AND transaction_ph.issuccess = 1
    AND transaction_ph.del_flg <> 1);
    
    SELECT 
		totalInvest,
		waitingInvest,
		confirmedInvest, 
		amountInvest,
		amountWaitingInvest,
		amountConfirmedInvest, 
		totalRecived,
		errorRecived, 
		successRecived,
		amountRecived,
		amountErrorRecived,
		amountSuccessRecived;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_GET_DASHBOARD_DATA_INFO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_GET_DASHBOARD_DATA_INFO`()
BEGIN
	DECLARE total_recived_blance 	DOUBLE DEFAULT 0;
    DECLARE total_send_balance		DOUBLE DEFAULT 0;
    DECLARE total_waiting			INT DEFAULT 0;
    DECLARE total_confrimed			INT DEFAULT 0;
    DECLARE total_PH				INT DEFAULT 0;
 
    SET total_recived_blance = (
    SELECT
		SUM(bh.amount)
    FROM transaction_gh AS bh
    WHERE 
    bh.status = 2
    AND bh.del_flg <> 1
    );
    SET total_send_balance =
	(SELECT
		SUM(ph.amount)
    FROM transaction_ph AS ph
    WHERE issuccess = 1
     AND ph.del_flg <> 1
    ); 
    SET total_waiting = (
    SELECT
		COUNT(1)
    FROM transaction_gh AS bh
    WHERE 
    bh.status = 1
    AND bh.del_flg <> 1
    );
    SET total_confrimed = (
    SELECT
		COUNT(1)
    FROM transaction_gh AS bh
    WHERE 
    bh.status = 2
    AND bh.del_flg <> 1
    );
    SET total_PH = (
    SELECT
		COUNT(1)
    FROM transaction_gh AS bh
    WHERE 
    bh.status = 3
    AND bh.del_flg <> 1
    );
    SELECT
		total_recived_blance As total_recived_blance
	,	total_send_balance	AS total_send_balance
    ,	total_waiting		AS total_waiting
    ,	total_confrimed		AS total_confrimed
    ,	total_PH			AS total_PH;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_GET_DATA_INFO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_GET_DATA_INFO`(IN
P_customerID INT
)
BEGIN
	DECLARE invest_blance DOUBLE DEFAULT 0;
    DECLARE bonus_balance		DOUBLE DEFAULT 0;
    DECLARE total_teferrals		DOUBLE DEFAULT 0;
    DECLARE investValidDay		INT	DEFAULT	0;
    DECLARE investValid			INT	DEFAULT	1;
    DECLARE countChild			INT	DEFAULT	0;
    SET bonus_balance = 
    (SELECT
		 SUM(ph.amount)
    FROM transaction_ph AS ph
    WHERE ph.CustomerID = P_customerID
    AND ph.del_flg <> 1
    AND ph.issuccess = 1
    GROUP BY ph.CustomerID);
    SET invest_blance = (
    SELECT
		SUM(bh.amount)
    FROM transaction_gh AS bh
    WHERE bh.CustomerID = P_customerID
    AND bh.del_flg <> 1
    GROUP BY bh.CustomerID
    );
    SET total_teferrals =
	(SELECT
		SUM(ph.amount)
    FROM transaction_ph AS ph
    WHERE ph.CustomerID = P_customerID
    AND ph.del_flg <> 1
    AND ph.level > 1
    GROUP BY ph.CustomerID); -- neu customer hien tại là F1, F2
    
    
    SET countChild = 
    (
		SELECT COUNT(1)
        FROM customer
        WHERE customer.ParentID = P_customerID
    );
    
    SET investValidDay = 
    (
		SELECT COUNT(1)
        FROM transaction_gh
        WHERE transaction_gh.customerID = P_customerID
        /*AND DATE(transaction_gh.senddate) = CURDATE()*/
        AND transaction_gh.status = 1
        AND transaction_gh.del_flg <> 1
    );
    IF(countChild >= 2 AND countChild<4) THEN
		SET investValid = 2 - investValidDay;
	ELSEIF (countChild >=4  AND countChild< 8) THEN
		SET investValid = 3 - investValidDay;
	ELSEIF (countChild >=8) THEN
		SET investValid = 4 - investValidDay;
	else SET investValid = 1 - investValidDay;
	END IF;
    SELECT
		invest_blance As invest_blance
	,	bonus_balance	AS bonus_balance
    ,	total_teferrals	AS total_teferrals
    ,	investValid		AS invest_valid; -- so lan invest con lai
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_GET_FEE_BY_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_GET_FEE_BY_ID`(IN
P_ID	INT
)
BEGIN
	SELECT * FROM feeamount WHERE feeamount.ID = P_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_GET_RAND_ADMIN_WALLET` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_GET_RAND_ADMIN_WALLET`(IN
P_customerID INT
)
BEGIN
	DECLARE investValidDay		INT	DEFAULT	0;
    DECLARE investValid			INT	DEFAULT	1;
    DECLARE countChild			INT	DEFAULT	0;
    
	DECLARE adminWallet VARCHAR(500) DEFAULT '';
    SET adminWallet =  (SELECT adminwallet.wallet FROM adminwallet ORDER BY RAND() LIMIT 1);
    
    SET countChild = 
    (
		SELECT COUNT(1)
        FROM customer
        WHERE customer.ParentID = P_customerID
    );
    
    SET investValidDay = 
    (
		SELECT COUNT(1)
        FROM transaction_gh
        WHERE transaction_gh.customerID = P_customerID
        /*AND DATE(transaction_gh.senddate) = CURDATE()*/
        AND transaction_gh.status = 1
        AND transaction_gh.del_flg <> 1
    );
    IF(countChild >= 2 AND countChild<4) THEN
		SET investValid = 2 - investValidDay;
	ELSEIF (countChild >=4  AND countChild< 8) THEN
		SET investValid = 3 - investValidDay;
	ELSEIF (countChild >=8) THEN
		SET investValid = 4 - investValidDay;
	ELSE 
		SET investValid = 1 - investValidDay;
	END IF;
    SELECT
		investValid	AS invest_valid
	,	adminWallet AS admin_wallet;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_GET_TICKET_LIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_GET_TICKET_LIST`(IN
P_CustomerID	INT
)
BEGIN
	SELECT
		ticket.ID
	,	ticket.CustomerID
    ,	ticket.question
    ,	ticket.senddate
    ,	ticket.answer
    ,	CASE
			WHEN ticket.status = 1 THEN 'Answered'
            ELSE 'Have sent'
		END 	AS status
	,	CASE
			WHEN ticket.status = 1 THEN 'color-success'
            ELSE 'color-default'
		END 	AS color
    FROM ticket
    WHERE ticket.CustomerID = P_CustomerID
    ORDER BY	ticket.senddate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_GET_TRANS_CONFIRMED` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_GET_TRANS_CONFIRMED`()
BEGIN
	SELECT
		transaction_gh.ID
    ,	transaction_gh.CustomerID
    ,	transaction_gh.amount
    ,	transaction_gh.senddate
    ,	transaction_gh.image
    ,	transaction_gh.transaction_typ
    ,	customer.UserName
    ,	customer.Email
	,	customer.Mobile
    ,	CASE
			WHEN transaction_gh.status = 1 THEN 'Waiting Approve'
            WHEN transaction_gh.status = 2 THEN 'Confirmed'
            WHEN transaction_gh.status = 3 THEN 'Successfull'
		END  AS status
	,	CASE
			WHEN transaction_gh.status = 1 THEN 'label-warning'
            WHEN transaction_gh.status = 2 THEN 'label-success'
            WHEN transaction_gh.status = 3 THEN 'label-violet'
		END  AS color
    ,	feeamount.recived AS bonus
    ,	feeamount.duration
    ,	cus2.UserName AS bonus_from
    ,	transaction_gh.bonus_from_transgh
    FROM transaction_gh
    INNER JOIN customer ON
		transaction_gh.CustomerID = customer.ID
	LEFT JOIN feeamount ON
		transaction_gh.transaction_typ = feeamount.transaction_typ
	LEFT JOIN customer AS cus2 ON
			cus2.ID = transaction_gh.bonus_from
	WHERE transaction_gh.status = 2 
    AND transaction_gh.del_flg <> 1
    ORDER BY transaction_gh.senddate DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_GET_TRANS_GH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_GET_TRANS_GH`(
IN customerId	INT
)
BEGIN
	SELECT transaction_gh.CustomerID
    ,	transaction_gh.amount
    ,	transaction_gh.senddate
    ,	transaction_gh.image
    ,	transaction_gh.transaction_typ
    ,	feeamount.duration
    ,	CASE
			WHEN transaction_gh.status = 1 THEN 'Waiting Approve'
            WHEN transaction_gh.status = 2 THEN 'Confirmed'
            WHEN transaction_gh.status = 3 THEN 'success'
		END  AS status
	,	CASE
			WHEN transaction_gh.status = 1 THEN 'label-warning'
            WHEN transaction_gh.status = 2 THEN 'label-success'
            WHEN transaction_gh.status = 3 THEN 'label-success'
		END  AS color
    ,	feeamount.recived AS bonus
    FROM transaction_gh 
     LEFT JOIN feeamount ON
		transaction_gh.transaction_typ = feeamount.transaction_typ
    WHERE transaction_gh.CustomerID =  customerId
    AND transaction_gh.del_flg <> 1
    ORDER BY transaction_gh.senddate DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_GET_TRANS_PH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_GET_TRANS_PH`(
IN customerId	INT
)
BEGIN
	SELECT transaction_ph.CustomerID
    ,	transaction_ph.amount
    ,	transaction_ph.senddate
    ,	CASE
			WHEN transaction_ph.issuccess = 1 THEN 'Success'
            ELSE   'Waiting'
		END  AS issuccess
	,	CASE
			WHEN transaction_ph.level = 1 THEN 'Me'
            WHEN transaction_ph.level = 2 THEN 'From F1'
		END  AS level
	,	CASE
			WHEN transaction_ph.issuccess = 1 THEN 'label-success'
            ELSE  'label-warning'
		END  AS color
    
    FROM transaction_ph 
    WHERE transaction_ph.CustomerID =  customerId
    AND transaction_ph.del_flg <> 1
    ORDER BY transaction_ph.senddate DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_GET_TRANS_SUCCESS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_GET_TRANS_SUCCESS`()
BEGIN
	SELECT
		transaction_ph.ID
    ,	transaction_ph.CustomerID
    ,	feeamount.amount
    ,	transaction_ph.senddate AS admin_senddate
    ,	transaction_gh.senddate
    ,	transaction_gh.image
    ,	transaction_gh.transaction_typ
    ,	customer.UserName
    ,	customer.Email
	,	customer.Mobile
    ,	CASE
            WHEN transaction_ph.issuccess = 1 THEN 'Successfull'
            ELSE 'No Successfull'
		END  AS status
	,	CASE
			WHEN transaction_ph.issuccess = 1 THEN 'label-success'
            ELSE 'label-warning'
		END  AS color
    ,	feeamount.recived AS bonus
    FROM transaction_ph
    INNER JOIN customer ON
		transaction_ph.CustomerID = customer.ID
	LEFT JOIN transaction_gh ON
		transaction_gh.ID = transaction_ph.gh_id
	AND transaction_gh.del_flg <> 1
	AND transaction_gh.status = 3
    LEFT JOIN feeamount ON
		transaction_gh.transaction_typ = feeamount.transaction_typ
    WHERE transaction_ph.del_flg <> 1
    ORDER BY	transaction_ph.senddate DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_GET_TRANS_WAITING` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_GET_TRANS_WAITING`()
BEGIN
	SELECT
		transaction_gh.ID
    ,	transaction_gh.CustomerID
    ,	transaction_gh.amount
    ,	transaction_gh.senddate
    ,	transaction_gh.image
    ,	transaction_gh.transaction_typ
    ,	customer.UserName
    ,	customer.Email
	,	customer.Mobile
    ,	CASE
			WHEN transaction_gh.status = 1 THEN 'Waiting Approve'
            WHEN transaction_gh.status = 2 THEN 'Confirmed'
            WHEN transaction_gh.status = 3 THEN 'Successfull'
		END  AS status
	,	CASE
			WHEN transaction_gh.status = 1 THEN 'label-warning'
            WHEN transaction_gh.status = 2 THEN 'label-success'
            WHEN transaction_gh.status = 3 THEN 'label-violet'
		END  AS color
    ,	feeamount.recived AS bonus
    ,	feeamount.duration
    FROM transaction_gh
    INNER JOIN customer ON
		transaction_gh.CustomerID = customer.ID
	LEFT JOIN feeamount ON
		transaction_gh.transaction_typ = feeamount.transaction_typ
	WHERE transaction_gh.status = 1 
    AND transaction_gh.del_flg <> 1
    ORDER BY transaction_gh.senddate DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_GET_WALLET_BY_TRAN_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_GET_WALLET_BY_TRAN_ID`(IN
TranGHID	INT
)
BEGIN
	SELECT transaction_gh.CustomerID
    ,	transaction_gh.amount
    ,	transaction_gh.senddate
    ,	transaction_gh.transaction_typ
    ,	feeamount.duration
    ,	transaction_gh.status = 1
    ,	feeamount.recived
    ,	customer.WalletAddress AS wallet_address
    FROM transaction_gh 
	LEFT JOIN feeamount ON
		transaction_gh.transaction_typ = feeamount.transaction_typ
	LEFT JOIN customer ON
		transaction_gh.CustomerID = customer.ID
    WHERE transaction_gh.ID =  TranGHID
    AND transaction_gh.del_flg <> 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_LOGIN_ADMIN_LST1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_LOGIN_ADMIN_LST1`(IN
	userName varchar(100)
,	password_in varchar(100)
)
BEGIN
	SELECT
		c1.ID
	,	c1.Name
	,	c1.Email
    ,	c1.UserName
    ,	c1.Mobile
    ,	c1.Password
	,	1 AS islogin
	FROM admin AS c1
	WHERE	c1.UserName = userName COLLATE utf8_unicode_ci
		AND c1.Password = password_in COLLATE utf8_unicode_ci
	LIMIT 1;
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_LOGIN_CUSTOMER_LST1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_LOGIN_CUSTOMER_LST1`(IN
	userName varchar(100)
,	password_in varchar(100)
)
BEGIN
	DECLARE adminWallet VARCHAR(500) DEFAULT '';
    SET adminWallet =  (SELECT adminwallet.wallet FROM adminwallet ORDER BY RAND() LIMIT 1);
	SELECT
		c1.ID
	,	c1.FullName
	,	c1.Email
    ,	c1.UserName
    ,	c1.PeoplesIdentity
    ,	c1.Mobile
    ,	c1.WalletAddress
    ,	c1.Password
	,	1 AS islogin
	,	adminWallet AS adminWallet
	FROM customer AS c1
	WHERE	c1.UserName = userName
		AND c1.Password = password_in
	LIMIT 1;
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_REGIS_CUSTOMER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_REGIS_CUSTOMER`(IN
	username	varchar(100)		
,	fullname 	varchar(100)
,	password_in	varchar(100)	
,	pin			varchar(255)
,	mobile		varchar(50)
,	email		varchar(100)
,	bitaddress	varchar(500)
,	referer		varchar(100)
)
BEGIN
	DECLARE ParentID INT(11) DEFAULT  0;
    SET	ParentID	=	(SELECT customer.ID FROM customer WHERE customer.UserName = referer);
	INSERT INTO customer(
		FullName  
	,	UserName  
	,	Email 
	,	PeoplesIdentity
	,	Password
	,	PasswordSalt
    ,   WalletAddress
	,	Mobile
    ,	ParentID
    )
    SELECT
		fullname
	,	username
	,	email
    ,	referer
    ,	password_in
    ,	pin
    ,	bitaddress
    ,	mobile
    ,	ParentID;
    SELECT 1 As success; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_RESETPASS_CUSTOMER` */;
ALTER DATABASE `bitcoin` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_RESETPASS_CUSTOMER`(IN
	userName	VARCHAR(100)
,	password_new VARCHAR(100)
)
BEGIN
	UPDATE customer
    SET customer.Password =  password_new	
    WHERE customer.UserName = userName;
    
    SELECT
		1 AS success
	,	customer.Email
    ,	customer.FullName
    FROM customer
    WHERE customer.UserName = userName; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `bitcoin` CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_SAVE_POLICY_ACT1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_SAVE_POLICY_ACT1`(IN
	P_ID		INT
,	P_duration 	INT
,	P_amount 	DOUBLE
,	P_recived 	DOUBLE
)
BEGIN
	DECLARE amount DOUBLE DEFAULT 0;
    UPDATE feeamount
    SET feeamount.amount = P_amount
    ,	feeamount.recived = P_recived
    ,	feeamount.duration	=	P_duration
    WHERE feeamount.ID = P_ID;
    SELECT 1 AS success;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_SEND_ADMIN_TICKET` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_SEND_ADMIN_TICKET`(IN
	P_comment		TEXT
,	P_customerID 	INT
)
BEGIN
	INSERT INTO ticket(
		CustomerID
    ,	question
    ,	senddate
    ,	answer
    ,	status
    )
    SELECT
		P_customerID
	,	P_comment
    ,	NOW()
    ,	''
	,	0;
    SELECT 1 AS success;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_TICKET_ANSWER_ACT1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_TICKET_ANSWER_ACT1`(IN
	Id 			INT
,	P_comment	TEXT
)
BEGIN
	UPDATE ticket
    SET ticket.answer = P_comment
    ,	ticket.status = 1
    WHERE ticket.ID = Id;
    SELECT 1 AS success;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_TRANSACTION_APPROVED_ACT1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_TRANSACTION_APPROVED_ACT1`(IN
	P_ID	INT
)
BEGIN
	DECLARE P_Parent INT  DEFAULT 0;
    DECLARE amount DOUBLE  DEFAULT 0;
    DECLARE customerID INT  DEFAULT 0;
	
    SET customerID = (
		SELECT transaction_gh.CustomerID
	FROM transaction_gh
	WHERE transaction_gh.ID =  P_ID
	AND transaction_gh.del_flg <> 1
    );
	SET P_Parent = (
    SELECT customer.ParentID
	FROM customer
	WHERE customer.ID = customerID);
    
	UPDATE transaction_gh
    SET transaction_gh.status = 2
    WHERE transaction_gh.ID = P_ID
    AND transaction_gh.del_flg <> 1;

    /* INSERT BONUS TO Parent*/
    IF P_Parent IS NOT NULL AND P_Parent <> 0 THEN
		SET amount = (SELECT feeamount.amount FROM feeamount WHERE feeamount.transaction_typ = 4 LIMIT 1);
		INSERT INTO transaction_gh(
			CustomerID
		,	amount
		,	senddate
		,	status
		,	image
		,	transaction_typ
		,	del_flg
        ,	bonus_from
        ,	bonus_from_transgh
		)
		SELECT
			P_Parent
		,	amount
		,	NOW()
		,	2 -- confirmed
		,	''
		,	4 -- bonus from f1
		,	0
        ,	customerID
        ,	P_ID;

	END IF;
    SELECT 1 As success;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_TRANSACTION_DELETE_GH_ACT1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_TRANSACTION_DELETE_GH_ACT1`(IN
	P_ID	INT
)
BEGIN
	UPDATE  transaction_gh
    SET transaction_gh.del_flg = 1
    WHERE transaction_gh.ID = P_ID;
    --
    UPDATE transaction_ph
    SET transaction_ph.del_flg = 1
    WHERE transaction_ph.gh_id = P_ID;
    SELECT 1 As success;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_TRANSACTION_DELETE_PH_ACT1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_TRANSACTION_DELETE_PH_ACT1`(IN
	P_ID	INT
)
BEGIN
	UPDATE  transaction_gh
    SET transaction_gh.del_flg = 1
    WHERE transaction_gh.ID = P_ID;
    --
    UPDATE transaction_ph
    SET transaction_ph.del_flg = 1
    WHERE transaction_ph.gh_id = P_ID;
    SELECT 1 As success;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_TRANSACTION_SENDMONEY_ACT1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_TRANSACTION_SENDMONEY_ACT1`(IN
	P_ID	INT
,	issuccess	INT	
)
BEGIN
	DECLARE P_customerID INT DEFAULT 0;
    DECLARE amount DOUBLE DEFAULT 0;
    DECLARE P_bonus INT DEFAULT 0;
    DECLARE P_level INT DEFAULT 0;
    
    SET P_customerID = (
    SELECT transaction_gh.CustomerID 
    FROM transaction_gh 
    WHERE  transaction_gh.ID = P_ID 
    AND transaction_gh.del_flg <> 1
    LIMIT 1
    );
    SET P_bonus = (
    SELECT transaction_gh.bonus_from 
    FROM transaction_gh 
    WHERE  transaction_gh.ID = P_ID 
    AND transaction_gh.del_flg <> 1
    LIMIT 1
    );
	IF P_bonus IS NOT NULL AND P_bonus <> 0 THEN
		SET P_level = 1;
    ELSE
		SET P_level= 0;
    END IF;
    
    SET amount = (
    SELECT feeamount.amount FROM transaction_gh 
    INNER JOIN feeamount ON
			transaction_gh.transaction_typ = feeamount.transaction_typ
    WHERE transaction_gh.ID = P_ID
    AND transaction_gh.del_flg <> 1
    LIMIT 1);
    
    UPDATE transaction_gh
    SET transaction_gh.status = 3
    WHERE transaction_gh.ID = P_ID
    AND transaction_gh.del_flg <> 1;
    
    INSERT INTO  transaction_ph(
		customerID
	,	amount
    ,	level
    ,	senddate
    ,	status
    ,	issuccess
    ,	gh_id
    ,	del_flg
    )
    SELECT
		P_customerID
	,	amount
    ,	P_level
    ,	NOW()
    ,	0
    ,	issuccess
    ,	P_ID
    ,	0;

    SELECT 1 As success; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SPC_UPDATE_TRANSACTION_GH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_UPDATE_TRANSACTION_GH`(IN
	userID	INT
,	filePath VARCHAR(200)
,	transaction_typ INT
)
BEGIN
	DECLARE amount DOUBLE DEFAULT 0;
    SET amount = (SELECT feeamount.amount FROM feeamount WHERE feeamount.transaction_typ = transaction_typ LIMIT 1);
	INSERT INTO transaction_gh(
		CustomerID
	,	amount
    ,	senddate
    ,	status
    ,	image
    ,	transaction_typ
    ,	del_flg
    )
    SELECT
		userID
	,	amount
    ,	NOW()
    ,	1 -- waiting
    ,	filePath
    ,	transaction_typ
	,	0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-11  0:06:44
