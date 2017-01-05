-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2016 at 10:08 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `honline`
--

DELIMITER $$
--
-- Procedures
--
CREATE  PROCEDURE `getInforWebsite`(IN menu varchar(100))
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
END$$

CREATE  PROCEDURE `getMenu`()
BEGIN
	SELECT 
        tbl_menu.menu_id,
		tbl_menu.menu_name,
		tbl_menu.menu_prentid,
        tbl_menu.url,
        '' AS parent_name,
        GROUP_CONCAT(child.url) AS child_url
	FROM
		tbl_menu
	left join tbl_menu AS child
    on tbl_menu.menu_id = child.menu_prentid
	where
		tbl_menu.del_flag = 0
		and tbl_menu.menu_prentid = 0
	group by  tbl_menu.menu_id
	order by  tbl_menu.menu_id
	;

	SELECT 
		tbl_menu.menu_id,
		tbl_menu.menu_name,
		tbl_menu.menu_prentid,
        tbl_menu.url,
        parent.menu_name AS parent_name
	FROM
		tbl_menu
	left join tbl_menu parent
    on tbl_menu.menu_prentid = parent.menu_id
	WHERE
		tbl_menu.del_flag = 0
			AND tbl_menu.menu_prentid <> 0
	order by  tbl_menu.menu_id
	;
END$$

CREATE  PROCEDURE `getMenuById`(IN menu_id INT(10))
BEGIN
	SELECT 
		tbl_menu.menu_id,
		tbl_menu.menu_name,
		tbl_menu.menu_prentid,
		tbl_menu.url

	FROM
		tbl_menu
	WHERE
		tbl_menu.del_flag = 0
	AND tbl_menu.menu_id = menu_id
;
END$$

CREATE  PROCEDURE `guest_detailNews`(IN news_id int(10), menu varchar(50))
BEGIN
	SELECT 
		tbl_news.*
	FROM
		bvgl.tbl_news
	LEFT JOIN tbl_menu
		ON tbl_news.cate_id = tbl_menu.menu_id
	WHERE tbl_news.del_flg = 1
	AND tbl_news.news_id = news_id
	AND tbl_menu.url LIKE concat('%', menu, '%')
	;
END$$

CREATE  PROCEDURE `guest_getBanner`()
BEGIN
	SELECT 
		tbl_banner.*
	FROM
		tbl_banner
	WHERE tbl_banner.del_flg = 1
	order by 
	CASE 
			WHEN tbl_banner.upd_date IS NULL THEN tbl_banner.inp_date 
			ELSE tbl_banner.upd_date
		END DESC
	LIMIT 1
	;
END$$

CREATE  PROCEDURE `guest_listNews`(IN rowstart int(10), pagesize int(10), menu varchar(50))
BEGIN
	SELECT SQL_CALC_FOUND_ROWS
		tbl_news.*
	FROM
		tbl_news
	LEFT JOIN tbl_menu
	ON tbl_news.cate_id = tbl_menu.menu_id
    left join tbl_status
	on tbl_news.news_action_id = tbl_status.status_id
	WHERE tbl_news.del_flg = 1
	And tbl_menu.del_flag = 0
	AND tbl_menu.url LIKE concat('%', menu, '%')
    AND tbl_status.status_id = 5
	order by tbl_news.news_id DESC
    limit rowstart, pagesize
	;
    
    SELECT FOUND_ROWS() AS total;

END$$

CREATE  PROCEDURE `guest_NewsHome`()
BEGIN
	SELECT
		tbl_news.*
	FROM
		tbl_news
	LEFT JOIN tbl_menu
		ON tbl_news.cate_id = tbl_menu.menu_id
	WHERE tbl_news.del_flg = 1
	AND tbl_menu.url LIKE concat('%', 'home', '%')
	AND tbl_news.news_action_id = 5
	AND tbl_news.news_status_id  = 8
	ORDER by tbl_news.news_id DESC
	LIMIT 4
	;
    
	SELECT
		tbl_news.*
	FROM
		tbl_news
	LEFT JOIN tbl_menu
		ON tbl_news.cate_id = tbl_menu.menu_id
	WHERE tbl_news.del_flg = 1
	AND tbl_menu.url LIKE concat('%', 'home', '%')
	AND tbl_news.news_action_id = 5
	AND tbl_news.news_status_id  = 9
	ORDER by tbl_news.news_id DESC
	LIMIT 4
	;
	SELECT
		tbl_news.*
	FROM
		tbl_news
	LEFT JOIN tbl_menu
		ON tbl_news.cate_id = tbl_menu.menu_id
	WHERE tbl_news.del_flg = 1
	AND tbl_menu.url LIKE concat('%', 'home', '%')
	AND tbl_news.news_action_id = 5
	AND tbl_news.news_status_id  = 10
	ORDER by tbl_news.news_id DESC
	LIMIT 4
	;
	SELECT
		tbl_news.*
	FROM
		tbl_news
	LEFT JOIN tbl_menu
		ON tbl_news.cate_id = tbl_menu.menu_id
	WHERE tbl_news.del_flg = 1
	AND tbl_menu.url LIKE concat('%', 'home', '%')
	AND tbl_news.news_action_id = 5
	AND tbl_news.news_status_id  = 11
	ORDER by tbl_news.news_id DESC
	LIMIT 4
	;
END$$

CREATE  PROCEDURE `guest_search`(IN rowstart int(10), pagesize int(10), str_Keyword nvarchar(200))
BEGIN
	SELECT SQL_CALC_FOUND_ROWS
		tbl_news.*
	FROM
		tbl_news
	LEFT JOIN tbl_menu
	ON tbl_news.cate_id = tbl_menu.menu_id
    left join tbl_status
	on tbl_news.news_action_id = tbl_status.status_id
	WHERE tbl_news.del_flg = 1
	And tbl_menu.del_flag = 0
	AND tbl_news.news_title LIKE concat('%', str_Keyword, '%')
    AND tbl_status.status_id = 5
	order by 	CASE 
			WHEN tbl_news.upd_date IS NULL THEN tbl_news.inp_date 
			ELSE tbl_news.upd_date
		END DESC
    limit rowstart, pagesize
	;
    
SELECT FOUND_ROWS() AS total;
END$$

CREATE  PROCEDURE `guest_singlePage`(IN menu varchar(50))
BEGIN
	SELECT 
		tbl_news.*
	FROM
		bvgl.tbl_news
	LEFT JOIN tbl_menu
		ON tbl_news.cate_id = tbl_menu.menu_id
	WHERE tbl_news.del_flg = 1
	AND tbl_menu.url LIKE concat('%', menu, '%')
    ORDER by tbl_news.news_id DESC
    LIMIT 1
	;
END$$

CREATE  PROCEDURE `guest_topNewsHome`()
BEGIN
	SELECT 
		tbl_news.*
	FROM
		bvgl.tbl_news
	LEFT JOIN tbl_menu
		ON tbl_news.cate_id = tbl_menu.menu_id
	WHERE tbl_news.del_flg = 1
	AND tbl_menu.url LIKE concat('%', 'home', '%')
    AND tbl_news.news_action_id = 5
    AND tbl_news.news_status_id = 4
    ORDER by tbl_news.news_id DESC
    LIMIT 1
	;
END$$

CREATE  PROCEDURE `listMenu`(IN rowstart int(10), pagesize int(10), str_Keyword nvarchar(200))
BEGIN
	
	SELECT 
		count(*) AS total
	FROM
		tbl_menu
			LEFT JOIN
		tbl_menu AS parent ON tbl_menu.menu_prentid = parent.menu_id
	WHERE
		tbl_menu.del_flag = 0
	AND tbl_menu.menu_name LIKE CONCAT('%',str_Keyword,'%')
	;
	SELECT 
		tbl_menu.menu_id,
		tbl_menu.menu_name,
		tbl_menu.menu_prentid,
		tbl_menu.url,
		parent.menu_name AS parent_name

	FROM
		tbl_menu
			LEFT JOIN
		tbl_menu AS parent ON tbl_menu.menu_prentid = parent.menu_id
	WHERE
		tbl_menu.del_flag = 0
	AND tbl_menu.menu_name LIKE CONCAT('%',str_Keyword,'%')
    order by tbl_menu.menu_name ASC
    limit rowstart, pagesize
	;
    
    
    
END$$

CREATE  PROCEDURE `menu_save1`(IN menu_id int(10), menu_name nvarchar(200), menu_prentid int(10))
BEGIN
	DECLARE _rollback BOOL DEFAULT 0;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET _rollback = 1;
    START TRANSACTION;
	update tbl_menu 
    SET tbl_menu.menu_name = menu_name
    ,	tbl_menu.menu_prentid = menu_prentid
    WHERE tbl_menu.menu_id = menu_id
    ;
    IF _rollback THEN
		SELECT 0 AS result;
		ROLLBACK;
	ELSE
		COMMIT;
        SELECT 1 AS result;
	END IF;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE IF NOT EXISTS `tbl_about` (
  `about_id` int(10) NOT NULL AUTO_INCREMENT,
  `about_logo` varchar(1000) DEFAULT NULL,
  `about_name` varchar(1000) DEFAULT NULL,
  `about_email` varchar(1000) DEFAULT NULL,
  `about_website` varchar(1000) DEFAULT NULL,
  `about_address` varchar(500) DEFAULT NULL,
  `about_mobile` varchar(1000) DEFAULT NULL,
  `about_facebook` varchar(1000) DEFAULT NULL,
  `about_twitter` varchar(1000) DEFAULT NULL,
  `about_youtube` varchar(1000) DEFAULT NULL,
  `about_googleplus` varchar(1000) DEFAULT NULL,
  `about_copyright` varchar(1000) DEFAULT NULL,
  `about_content` varchar(1000) DEFAULT NULL,
  `del_flg` int(10) DEFAULT NULL,
  `inp_account_id` int(10) DEFAULT NULL,
  `inp_date` datetime DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  `upd_account_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`about_id`, `about_logo`, `about_name`, `about_email`, `about_website`, `about_address`, `about_mobile`, `about_facebook`, `about_twitter`, `about_youtube`, `about_googleplus`, `about_copyright`, `about_content`, `del_flg`, `inp_account_id`, `inp_date`, `upd_date`, `upd_account_id`) VALUES
(1, '/upload/images/1234.JPG', 'Bệnh viện đa khoa huyện Gia Lâm', 'bvdkgl_soyt@hanoi.gov.vn', 'http://www.bvgialam.com', 'Khu đô thị mới Trâu Quỳ, Gia Lâm, Hà Nội', '0968 059 536', 'https://www.facebook.com/bvgialam/?notif_t=fbpage_fan_invite', 'twitter.com', 'https://www.youtube.com/embed/2Ht4LVickUs', 'plus.com', 'Copyright © 2015 Foretaste of Vietnam.', 'Trang web chính thức của Bệnh viện đa khoa huyện Gia Lâm.\nMọi thông tin của Bệnh viện sẽ được công khai tại website này. Tất cả nguồn tin không xuất phát từ trang web này đều là không chính thống và không có giá trị.', 1, NULL, NULL, '2016-04-07 13:36:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account`
--

CREATE TABLE IF NOT EXISTS `tbl_account` (
  `account_id` int(10) NOT NULL AUTO_INCREMENT,
  `account_fullname` varchar(500) DEFAULT NULL,
  `account_birthday` datetime DEFAULT CURRENT_TIMESTAMP,
  `account_mobile` varchar(500) DEFAULT NULL,
  `account_hobby` varchar(1000) DEFAULT NULL,
  `account_image` varchar(1000) DEFAULT NULL,
  `account_country` varchar(500) DEFAULT NULL,
  `account_about` text,
  `account_website` varchar(500) DEFAULT NULL,
  `account_email` text,
  `account_username` varchar(500) DEFAULT NULL,
  `account_password` varchar(100) DEFAULT NULL,
  `del_flg` int(2) DEFAULT NULL,
  `session_token` text,
  `inp_account_id` int(10) DEFAULT NULL,
  `upd_account_id` int(10) DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  `inp_date` datetime DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_account`
--

INSERT INTO `tbl_account` (`account_id`, `account_fullname`, `account_birthday`, `account_mobile`, `account_hobby`, `account_image`, `account_country`, `account_about`, `account_website`, `account_email`, `account_username`, `account_password`, `del_flg`, `session_token`, `inp_account_id`, `upd_account_id`, `upd_date`, `inp_date`) VALUES
(1, 'Nguyễn Văn Hiệp', '2012-02-27 00:00:00', '0968059536', 'Chatting , karaoke', '/upload/images/hiepnv.jpg', 'Việt Nam', 'Là bệnh viện tuyến huyện có chức trách nhiệm vụ khám chữa bệnh, chăm sóc sức khỏe cho người dân trong địa bàn và khu vực lân cận, rộng hơn là những người có nhu cầu.', 'http://bvgialam.com', 'nguyenhiep2906@gmail.com', 'hiepnv', 'hiepnv', 1, '20160408133359', NULL, 1, '2016-04-07 11:10:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE IF NOT EXISTS `tbl_banner` (
  `banner_id` int(10) NOT NULL,
  `banner_name` varchar(200) DEFAULT NULL,
  `banner_image` longtext,
  `lang_id` int(10) DEFAULT NULL,
  `del_flg` int(2) DEFAULT '1',
  `inp_account_id` int(10) DEFAULT NULL,
  `upd_account_id` int(10) DEFAULT NULL,
  `inp_date` datetime DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`banner_id`, `banner_name`, `banner_image`, `lang_id`, `del_flg`, `inp_account_id`, `upd_account_id`, `inp_date`, `upd_date`) VALUES
(1, 'gialam1', '/upload/files/gialam2.png', 1, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `cate_id` int(10) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(500) DEFAULT NULL,
  `parent_id` int(10) DEFAULT '0',
  `status_id` int(10) DEFAULT NULL,
  `cate_type` int(2) DEFAULT NULL,
  `lang_id` int(10) DEFAULT NULL,
  `del_flg` int(1) DEFAULT NULL,
  `inp_account_id` int(10) DEFAULT NULL,
  `upd_account_id` int(11) DEFAULT NULL,
  `inp_date` datetime DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cate_id`, `cate_name`, `parent_id`, `status_id`, `cate_type`, `lang_id`, `del_flg`, `inp_account_id`, `upd_account_id`, `inp_date`, `upd_date`) VALUES
(1, 'Hộp cứng', 0, 2, 1, 1, 2, 1, 1, '2016-02-16 21:42:39', '2016-02-18 22:21:04'),
(2, 'Sản phẩm đóng gói khác', 0, 2, 1, 1, 1, 1, 1, '2016-02-16 21:42:59', '2016-04-08 10:16:15'),
(3, 'Khay nhựa', 0, 2, 1, 1, 1, 1, NULL, '2016-02-16 21:43:07', NULL),
(10, 'Kinh nghiệm du lịch bụi', 0, 3, 2, 1, 1, 1, 1, '2016-04-08 11:03:52', '2016-04-08 11:03:56'),
(11, 'lập kế hoạch chuyến đi', 10, 3, 2, 1, 1, 1, NULL, '2016-04-08 11:04:24', NULL),
(12, 'kinh nghiệm mu sắm', 10, 3, 2, 1, 1, 1, NULL, '2016-04-08 11:04:40', NULL),
(13, 'sub khay nhựa', 3, 1, 1, 1, 1, 1, NULL, '2016-04-08 11:21:25', NULL),
(14, 'abc', 0, 1, 2, 1, 2, 1, 1, '2016-04-08 13:49:39', '2016-04-08 13:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE IF NOT EXISTS `tbl_color` (
  `color_id` int(10) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(500) DEFAULT NULL,
  `lang_id` int(10) DEFAULT NULL,
  `del_flg` int(1) DEFAULT NULL,
  `inp_account_id` int(10) DEFAULT NULL,
  `upd_account_id` int(11) DEFAULT NULL,
  `inp_date` datetime DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`, `lang_id`, `del_flg`, `inp_account_id`, `upd_account_id`, `inp_date`, `upd_date`) VALUES
(1, 'Xanh', 1, 1, 1, 1, '2015-07-03 22:30:20', '2015-07-03 22:30:58'),
(2, 'Đỏ', 2, 1, 1, 1, '2015-07-03 22:30:28', '2016-02-21 23:21:51'),
(3, 'Tím', 1, 1, 1, NULL, '2015-07-03 22:30:36', NULL),
(4, 'Vàng', 1, 1, 1, NULL, '2015-07-03 22:30:44', NULL),
(5, 'Hồng', 1, 1, 1, NULL, '2015-07-03 22:31:15', '2015-07-04 08:40:32'),
(6, 'Nâu', 1, 1, 1, NULL, '2015-07-03 22:31:20', NULL),
(7, 'Đen', 1, 1, 1, NULL, '2015-07-03 22:31:26', NULL),
(8, 'Trắng', 1, 1, 1, NULL, '2015-07-03 22:31:32', NULL),
(9, 'Đen kít :))---', 1, 2, 1, 1, '2015-07-03 22:32:11', '2015-07-03 22:32:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE IF NOT EXISTS `tbl_item` (
  `item_id` int(10) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(5000) DEFAULT NULL,
  `item_content` varchar(5000) DEFAULT NULL,
  `lang_id` int(10) DEFAULT NULL,
  `del_flg` int(2) DEFAULT NULL,
  `inp_account_id` int(10) DEFAULT NULL,
  `inp_date` datetime DEFAULT NULL,
  `upd_account_id` int(11) DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`item_id`, `item_name`, `item_content`, `lang_id`, `del_flg`, `inp_account_id`, `inp_date`, `upd_account_id`, `upd_date`) VALUES
(1, 'account_login_head', 'Login to your account', 2, 1, NULL, NULL, NULL, NULL),
(2, 'account_login_head', 'Đăng nhập hệ thống', 1, 1, NULL, NULL, NULL, NULL),
(3, 'account_login_lbl_user', 'Username', 2, 1, NULL, NULL, NULL, NULL),
(4, 'account_login_lbl_user', 'Tên đăng nhập', 1, 1, NULL, NULL, NULL, NULL),
(5, 'account_login_lbl_password', 'Mật khẩu', 1, 1, NULL, NULL, NULL, NULL),
(6, 'account_login_lbl_password', 'Password', 2, 1, NULL, NULL, NULL, NULL),
(7, 'account_login_btn_login', 'Đăng nhập', 1, 1, NULL, NULL, NULL, NULL),
(8, 'account_login_btn_login', 'Login', 2, 1, NULL, NULL, NULL, NULL),
(11, 'account_login_title', 'Login', 2, 1, NULL, NULL, NULL, NULL),
(12, 'account_login_title', 'Đăng nhập', 1, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE IF NOT EXISTS `tbl_language` (
  `lang_id` int(10) NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(500) DEFAULT NULL,
  `del_flg` int(1) DEFAULT NULL,
  `inp_account_id` int(10) DEFAULT NULL,
  `upd_account_id` int(11) DEFAULT NULL,
  `inp_date` datetime DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `del_flg`, `inp_account_id`, `upd_account_id`, `inp_date`, `upd_date`) VALUES
(1, 'Tiếng việt', 1, NULL, 1, NULL, '2015-06-27 01:59:45'),
(2, 'Tiếng anh', 1, NULL, 1, NULL, '2015-06-28 18:33:00'),
(3, 'Tiếng nhật', 1, NULL, NULL, NULL, '2015-07-04 08:40:08'),
(4, 'Tiếng hán', 1, 1, 1, '2015-07-03 08:53:40', '2015-07-10 09:14:05'),
(5, 'tiếng phạn', 2, 1, 1, '2015-07-03 08:53:48', '2015-07-03 09:03:33'),
(6, 'tiếng mán', 2, 1, 1, '2015-07-03 08:53:57', '2015-07-03 09:03:40'),
(7, 'tiếng khơ me', 2, 1, 1, '2015-07-03 08:54:04', '2015-07-03 09:03:40'),
(8, 'danh mục 5', 2, 1, 1, '2015-07-03 09:07:28', '2015-07-03 09:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_link`
--

CREATE TABLE IF NOT EXISTS `tbl_link` (
  `link_id` int(10) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(500) DEFAULT NULL,
  `link_image` varchar(1000) DEFAULT NULL,
  `del_flg` int(1) DEFAULT NULL,
  `inp_account_id` int(10) DEFAULT NULL,
  `upd_account_id` int(11) DEFAULT NULL,
  `inp_date` datetime DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manuf`
--

CREATE TABLE IF NOT EXISTS `tbl_manuf` (
  `manuf_id` int(10) NOT NULL AUTO_INCREMENT,
  `manuf_name` varchar(500) DEFAULT NULL,
  `del_flg` int(1) DEFAULT NULL,
  `inp_account_id` int(10) DEFAULT NULL,
  `upd_account_id` int(11) DEFAULT NULL,
  `inp_date` datetime DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`manuf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_manuf`
--

INSERT INTO `tbl_manuf` (`manuf_id`, `manuf_name`, `del_flg`, `inp_account_id`, `upd_account_id`, `inp_date`, `upd_date`) VALUES
(1, 'Panasonic', 1, 1, NULL, '2015-07-07 08:56:19', NULL),
(2, 'Mitsubishi Electric', 1, 1, NULL, '2015-07-07 08:56:32', NULL),
(3, 'KDK', 1, 1, NULL, '2015-07-07 08:56:46', NULL),
(4, 'Komasu', 1, 1, NULL, '2015-07-07 08:56:59', NULL),
(5, 'Asia', 1, 1, NULL, '2015-07-07 08:57:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE IF NOT EXISTS `tbl_menu` (
  `menu_id` int(10) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(200) DEFAULT '0',
  `menu_prentid` int(10) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `router` varchar(500) DEFAULT NULL,
  `status_id` int(10) DEFAULT NULL,
  `del_flag` tinyint(4) DEFAULT '0',
  `inp_account_id` int(11) DEFAULT NULL,
  `inp_date` int(11) DEFAULT NULL,
  `upd_account_id` int(11) DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`menu_id`, `menu_name`, `menu_prentid`, `url`, `router`, `status_id`, `del_flag`, `inp_account_id`, `inp_date`, `upd_account_id`, `upd_date`) VALUES
(1, 'Trang chủ', 0, '#', '#', NULL, 0, NULL, NULL, NULL, NULL),
(2, 'Điểm đến', 0, '#', '#', NULL, 0, NULL, NULL, NULL, NULL),
(3, 'Việt Nam', 2, '#', '#', NULL, 0, NULL, NULL, NULL, NULL),
(4, 'Campuchia', 0, '#', '#', NULL, 0, NULL, NULL, NULL, NULL),
(5, 'Kinh nghiệm du lịch', 0, '#', '#', NULL, 0, NULL, NULL, NULL, NULL),
(6, 'Liên hệ', 0, '#', '#', NULL, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE IF NOT EXISTS `tbl_news` (
  `news_id` int(10) NOT NULL AUTO_INCREMENT,
  `cate_id` int(10) DEFAULT NULL,
  `news_title` varchar(1000) NOT NULL,
  `news_desc` text,
  `news_tag` varchar(500) DEFAULT NULL,
  `news_image` varchar(500) DEFAULT NULL,
  `news_keyword` varchar(500) DEFAULT NULL,
  `news_action_id` int(10) DEFAULT '0',
  `news_content` text,
  `news_status_id` int(10) DEFAULT '0',
  `del_flg` int(2) DEFAULT NULL,
  `inp_account_id` int(11) DEFAULT NULL,
  `inp_date` datetime DEFAULT NULL,
  `upd_account_id` int(11) DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `cate_id`, `news_title`, `news_desc`, `news_tag`, `news_image`, `news_keyword`, `news_action_id`, `news_content`, `news_status_id`, `del_flg`, `inp_account_id`, `inp_date`, `upd_account_id`, `upd_date`) VALUES
(18, 10, 'test điểm đến', 'test mô tả', 'tab,tag', '\n								\n								\n								\n								\n								\n								/upload/files/chat-luong1.jpg																																										', 'điểm đến', 4, '<img alt="" src="/upload/images/PhiPhiIsland-600x330.jpg" style="height:330px; width:600px" />nội dung', 2, 1, 1, '2016-04-07 11:05:03', 1, '2016-04-08 11:38:16'),
(19, 11, 'tiêu đề 2', 'mô tả 2', '', '\n								\n								\n								/upload/images/11911540_1615191452095511_309056661_n.jpg																					', '', 5, 'nội dung', 3, 1, 1, '2016-04-07 13:09:13', 1, '2016-04-08 13:34:32'),
(20, 11, 'có gì đâu', '', '', '\n								\n								/upload/images/12483500_1655530238061632_855884972_n.jpg														', '', 4, '', 0, 1, 1, '2016-04-08 11:22:32', 1, '2016-04-08 11:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `pro_id` int(10) NOT NULL AUTO_INCREMENT,
  `cate_id` int(10) DEFAULT NULL,
  `size_id` int(10) DEFAULT NULL,
  `color_id` int(10) DEFAULT NULL,
  `pro_model` varchar(500) DEFAULT NULL,
  `pro_name` varchar(500) DEFAULT NULL,
  `pro_desc` text,
  `pro_price` decimal(10,3) DEFAULT NULL,
  `pro_quantity` decimal(10,3) DEFAULT NULL,
  `pro_discount` decimal(10,3) DEFAULT '0.000',
  `pro_image` varchar(1000) DEFAULT NULL,
  `pro_image_detail` text,
  `manuf_id` int(10) DEFAULT NULL,
  `status_id` int(2) DEFAULT NULL,
  `pro_tag` varchar(1000) DEFAULT NULL,
  `pro_keyword` varchar(1000) DEFAULT NULL,
  `del_flg` int(2) DEFAULT NULL,
  `inp_account_id` int(10) DEFAULT NULL,
  `upd_account_id` int(10) DEFAULT NULL,
  `inp_date` datetime DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pro_id`, `cate_id`, `size_id`, `color_id`, `pro_model`, `pro_name`, `pro_desc`, `pro_price`, `pro_quantity`, `pro_discount`, `pro_image`, `pro_image_detail`, `manuf_id`, `status_id`, `pro_tag`, `pro_keyword`, `del_flg`, `inp_account_id`, `upd_account_id`, `inp_date`, `upd_date`) VALUES
(1, 3, 4, 3, '', 'test', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '\n								\n								\n								/upload/images/189392-red-rose-transparent_medium.png																					', NULL, 1, 0, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2016-04-08 13:35:23'),
(2, 3, 4, 3, 'aa', '2', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(3, 3, 4, 3, 'aa', '3', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(4, 3, 4, 3, 'aa', '4', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(5, 3, 4, 3, 'aa', '5', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(6, 3, 4, 3, 'aa', '6', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(7, 3, 4, 3, 'aa', '7', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(8, 3, 4, 3, 'aa', '8', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(9, 4, 4, 3, '', '9', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png																					', NULL, 1, NULL, 'hiepvn1,có gì hot', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 16:25:34'),
(10, 3, 4, 3, '', '10', '', '30000.000', '200000.000', '66.000', '\n								\n								\n								\n								\n								\n								/upload/images/189392-red-rose-transparent_medium.png																																										', NULL, 1, 0, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2016-04-08 14:59:10'),
(11, 3, 4, 3, 'aa', '11', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(12, 3, 4, 3, 'aa', '12', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(13, 3, 4, 3, 'aa', '13', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(14, 3, 4, 3, 'aa', '14', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(15, 3, 4, 3, 'aa', '15', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(16, 3, 4, 3, 'aa', '16', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(17, 3, 4, 3, 'aa', '17', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(18, 3, 4, 3, 'aa', '18', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(19, 3, 4, 3, 'aa', '19', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(20, 3, 4, 3, 'aa', '20', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(21, 3, 4, 3, 'aa', '21', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(22, 3, 4, 3, 'aa', '22', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(23, 3, 4, 3, 'aa', '23', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(24, 3, 4, 3, 'aa', '24', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(25, 3, 4, 3, 'aa', '25', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(26, 3, 4, 3, 'aa', '26', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(27, 3, 4, 3, 'aa', '27', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(28, 3, 4, 3, 'aa', '28', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(29, 3, 4, 3, 'aa', '29', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(30, 3, 4, 3, 'aa', '30', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(31, 3, 4, 3, 'aa', '31', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(32, 3, 4, 3, 'aa', '32', 'alsdhfdas<br />\nadjshfad<br />\nsfdas fsdf<br />\n<img alt="" src="/upload/images/189392-red-rose-transparent_medium.png" style="height:117px; width:120px" />', '30000.000', '200000.000', '15.500', '/upload/images/189392-red-rose-transparent_medium.png', NULL, 1, NULL, 'hiepvn1,xxxx,xxxxxxxx', 'bbbbbbbbbb', 1, 1, 1, '2015-07-08 13:17:22', '2015-07-08 13:17:22'),
(33, 9, 1, 6, '', 'xxx', 'adsfdfa', '0.000', '0.000', '0.000', '/upload/images/Capture.JPG', NULL, 0, NULL, 'dà', 'abc', 1, 1, 1, '2015-07-09 11:03:52', '2015-07-09 11:11:59'),
(34, 3, 8, 6, '', 'b', '', '0.000', '0.000', '0.000', '\n															', NULL, 0, NULL, '', '', 1, 1, 1, '2015-07-09 11:11:40', '2015-07-09 11:11:40'),
(35, 13, 8, 6, '', 'abc', '&agrave;dasf', '0.000', '0.000', '0.000', '/upload/images/11938200_1615193015428688_1487375599_n.jpg', NULL, 3, 7, 'ca', 'ab', 1, 1, 1, '2016-04-08 11:45:12', '2016-04-08 13:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE IF NOT EXISTS `tbl_size` (
  `size_id` int(10) NOT NULL AUTO_INCREMENT,
  `size_name` varchar(500) DEFAULT NULL,
  `del_flg` int(1) DEFAULT NULL,
  `inp_account_id` int(10) DEFAULT NULL,
  `upd_account_id` int(11) DEFAULT NULL,
  `inp_date` datetime DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`, `del_flg`, `inp_account_id`, `upd_account_id`, `inp_date`, `upd_date`) VALUES
(1, 'M', 1, NULL, 1, '2015-07-03 17:05:37', '2015-07-10 11:58:24'),
(2, 'L', 1, NULL, 1, '2015-07-03 17:07:09', '2015-07-03 22:38:25'),
(3, 'SM', 1, NULL, NULL, '2015-07-03 17:08:03', NULL),
(4, 'SL', 1, NULL, NULL, '2015-07-03 17:08:10', '2015-07-03 17:08:46'),
(5, 'XL', 1, NULL, NULL, '2015-07-03 17:08:18', NULL),
(6, 'XXL', 1, NULL, NULL, '2015-07-03 17:08:23', '2015-07-03 17:08:57'),
(7, 'XS', 1, NULL, NULL, '2015-07-03 17:08:33', NULL),
(8, 'S', 1, NULL, 1, '2015-07-03 17:09:24', '2015-07-03 22:14:28'),
(9, 'Z', 1, NULL, NULL, '2015-07-05 10:32:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE IF NOT EXISTS `tbl_status` (
  `status_id` int(10) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(500) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `del_flg` int(2) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`status_id`, `status_name`, `status`, `del_flg`) VALUES
(1, 'Tour mới nhất', 1, 1),
(2, 'Điểm đến', 1, 1),
(3, 'Kinh nghiệm du lịch bụi', 1, 1),
(4, 'Hot', 2, 1),
(5, 'Tin thường', 2, 1),
(6, 'Bán chạy', 3, 1),
(7, 'Khuyến mại', 3, 1),
(8, 'Thanh lý', 3, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
