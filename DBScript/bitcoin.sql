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
INSERT INTO `transaction_gh` VALUES (144,0.00003,'2017-01-05 14:36:09','1','D:/images/\\144\\170105020201010808.jpg',NULL,1),(144,0.15,'2017-01-05 14:50:09','1','D:/images/\\144\\170105020201010909.jpg',1,2),(144,0.15,'2017-01-05 14:50:11','1','D:/images/\\144\\170105020201011111.jpg',1,3),(144,0.15,'2017-01-05 14:51:15','1','D:/images/\\144\\170105020201011515.jpg',1,4),(144,0.15,'2017-01-05 16:29:46','1','D:\\work\\xampp2\\htdocs\\bitcoin\\application/../public/upload/image/\\144\\170105040401014646.jpg',1,5),(144,0.15,'2017-01-05 17:39:50','2','\\144\\170105050501014949.jpg',1,6),(144,0.15,'2017-01-05 17:43:34','1','\\144\\170105050501013434.jpg',1,7),(144,0.15,'2017-01-05 17:44:23','3','\\144\\170105050501012323.jpg',1,8),(145,0.15,'2017-01-05 18:32:35','2','\\145\\170105060601013535.jpg',1,9);
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
  `gh_id` int(11) DEFAULT NULL COMMENT 'Khi GH dc confirm thì PH sẽ tạo 1 bản ghi tương ứng transaction_ph.gh_id= transaction_gh.ID \nVà bản ghi này có issuccess = 0 ( chưa hoàn thành hay chưa chueyern tiền). Sau này khi chuyển tiền thành công thi issuccess =1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='admin send user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_ph`
--

LOCK TABLES `transaction_ph` WRITE;
/*!40000 ALTER TABLE `transaction_ph` DISABLE KEYS */;
INSERT INTO `transaction_ph` VALUES (1,144,0.18,1,'2017-01-04 00:00:00',NULL,0,NULL),(2,145,0.4,1,'2017-01-04 00:00:00',NULL,1,0),(3,144,0.015,2,'2017-01-04 00:00:00',NULL,1,NULL),(4,144,0.015,2,'2017-01-04 00:00:00',NULL,1,8);
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_DUPLICATE_CUSTOMER`(IN
	userName varchar(100)
,	email varchar(100)
,	sponsor varchar(100)
)
BEGIN
	IF (SELECT COUNT(customer.ID) FROM customer WHERE customer.UserName = userName OR customer.Email = email) =  0 THEN 
		IF(SELECT COUNT(customer.ID) FROM customer WHERE customer.UserName = sponsor) =  0  THEN
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
ALTER DATABASE `bitcoin` CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
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
    );
    SET total_send_balance =
	(SELECT
		SUM(ph.amount)
    FROM transaction_ph AS ph
    WHERE issuccess = 1); 
    SET total_waiting = (
    SELECT
		COUNT(1)
    FROM transaction_gh AS bh
    WHERE 
    bh.status = 1
    );
    SET total_confrimed = (
    SELECT
		COUNT(1)
    FROM transaction_gh AS bh
    WHERE 
    bh.status = 2
    );
    SET total_PH = (
    SELECT
		COUNT(1)
    FROM transaction_gh AS bh
    WHERE 
    bh.status = 3
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
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_GET_DATA_INFO`(IN
P_customerID INT
)
BEGIN
	DECLARE invest_blance DOUBLE DEFAULT 0;
    DECLARE bonus_balance		DOUBLE DEFAULT 0;
    DECLARE total_teferrals		DOUBLE DEFAULT 0;
    SET bonus_balance = 
    (SELECT
		 SUM(ph.amount)
    FROM transaction_ph AS ph
    WHERE ph.CustomerID = P_customerID
    GROUP BY ph.CustomerID);
    SET invest_blance = (
    SELECT
		SUM(bh.amount)
    FROM transaction_gh AS bh
    WHERE bh.CustomerID = P_customerID
    GROUP BY bh.CustomerID
    );
    SET total_teferrals =
	(SELECT
		SUM(ph.amount)
    FROM transaction_ph AS ph
    WHERE ph.CustomerID = P_customerID
    AND ph.level > 1
    GROUP BY ph.CustomerID); -- neu customer hien tại là F1, F2
    
    SELECT
		invest_blance As invest_blance
	,	bonus_balance	AS bonus_balance
    ,	total_teferrals	AS total_teferrals;
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
	SELECT transaction_gh.CustomerID
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
    ,	CASE
			WHEN transaction_gh.transaction_typ = 1 THEN 0.18
            WHEN transaction_gh.transaction_typ = 3 THEN 0.4
            WHEN transaction_gh.transaction_typ = 3 THEN 0.7
		ELSE 0
		END AS bonus
    FROM transaction_gh
    INNER JOIN customer ON
		transaction_gh.CustomerID = customer.ID
	WHERE transaction_gh.status = 2 ;
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
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
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
    ,	CASE
			WHEN transaction_gh.transaction_typ = 1 THEN 0.18
            WHEN transaction_gh.transaction_typ = 3 THEN 0.4
            WHEN transaction_gh.transaction_typ = 3 THEN 0.7
		ELSE 0
		END AS bonus
    FROM transaction_gh WHERE transaction_gh.CustomerID =  customerId;
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
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
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
            WHEN transaction_ph.issuccess = 2 THEN ''
		END  AS issuccess
	,	CASE
			WHEN transaction_ph.level = 1 THEN 'Me'
            WHEN transaction_ph.level = 2 THEN 'From F1'
		END  AS level
	,	CASE
			WHEN transaction_ph.issuccess = 1 THEN 'label-success'
            WHEN transaction_ph.issuccess = 2 THEN ''
		END  AS color
    
    FROM transaction_ph WHERE transaction_ph.CustomerID =  customerId;
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
	SELECT transaction_ph.CustomerID
    ,	transaction_ph.amount
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
    ,	CASE
			WHEN transaction_gh.transaction_typ = 1 THEN 0.18
            WHEN transaction_gh.transaction_typ = 3 THEN 0.4
            WHEN transaction_gh.transaction_typ = 3 THEN 0.7
		ELSE 0
		END AS bonus
    FROM transaction_ph
    INNER JOIN customer ON
		transaction_ph.CustomerID = customer.ID
	LEFT JOIN transaction_gh ON
		transaction_gh.ID = transaction_ph.gh_id
	AND transaction_gh.status = 3;
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
	SELECT transaction_gh.CustomerID
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
    ,	CASE
			WHEN transaction_gh.transaction_typ = 1 THEN 0.18
            WHEN transaction_gh.transaction_typ = 3 THEN 0.4
            WHEN transaction_gh.transaction_typ = 3 THEN 0.7
		ELSE 0
		END AS bonus
    FROM transaction_gh
    INNER JOIN customer ON
		transaction_gh.CustomerID = customer.ID
	WHERE transaction_gh.status = 1 ;
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
	WHERE	UserName = userName
		AND Password = password_in
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
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SPC_LOGIN_CUSTOMER_LST1`(IN
	userName varchar(100)
,	password_in varchar(100)
)
BEGIN
	DECLARE adminWallet VARCHAR(500) DEFAULT '';
    SET adminWallet =  (SELECT admin.BillingAddress FROM admin WHERE ID=1 LIMIT 1);
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
ALTER DATABASE `bitcoin` CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
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
/*!50003 DROP PROCEDURE IF EXISTS `SPC_UPDATE_TRANSACTION_GH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
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
    )
    SELECT
		userID
	,	amount
    ,	NOW()
    ,	1 -- waiting
    ,	filePath
    ,	transaction_typ;

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

-- Dump completed on 2017-01-06 10:14:36
