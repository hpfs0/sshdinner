/*
Navicat MySQL Data Transfer

Source Server         : MYDB
Source Server Version : 50701
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50701
File Encoding         : 65001

Date: 2013-12-12 22:46:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mt_fixed_package
-- ----------------------------
DROP TABLE IF EXISTS `mt_fixed_package`;
CREATE TABLE `mt_fixed_package` (
  `FIXED_ID` varchar(10) NOT NULL,
  `FIXED_NAME` varchar(20) NOT NULL,
  `FIXED_TOTAL_PRICE` double(10,0) DEFAULT NULL,
  `REGIST_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `DELETE_FLG` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`FIXED_ID`),
  KEY `fixid` (`FIXED_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for mt_free_food
-- ----------------------------
DROP TABLE IF EXISTS `mt_free_food`;
CREATE TABLE `mt_free_food` (
  `FOOD_ID` varchar(10) NOT NULL,
  `FOOD_NAME` varchar(20) NOT NULL,
  `FOOD_UNIT_PRICE` double(20,2) NOT NULL,
  `FOOD_MEMBER_PRICE` double(20,2) NOT NULL,
  `FOOD_CUISINE_KIND` varchar(2) NOT NULL,
  `FOOD_PUNGENCY_DEGREE` varchar(1) NOT NULL,
  `FOOD_STOCK` int(8) DEFAULT '0' NOT NULL,
  `FOOD_PHOTO_URLPATH` varchar(100),
  `FOOD_SALES_COPIES` int(8) DEFAULT '0',
  `PREFERENTIAL_STATUS` varchar(1) DEFAULT '0',
  `PREFERENTIAL_PRICE` double(20,2),
  `PREFERENTIAL_START_TIME` datetime DEFAULT NULL,
  `PREFERENTIAL_END_TIME` datetime DEFAULT NULL,
  `REGIST_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `DELETE_FLG` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`FOOD_ID`),
  KEY `foodid` (`FOOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for mt_member
-- ----------------------------
DROP TABLE IF EXISTS `mt_member`;
CREATE TABLE `mt_member` (
  `MEMBER_ID` varchar(10) NOT NULL DEFAULT '',
  `MEMBER_LOGIN_ID` varchar(20) NOT NULL,
  `MEMBER_LOGIN_PW` varchar(32) NOT NULL,
  `MEMBER_NICK_NAME` varchar(20) NOT NULL,
  `MEMBER_MAIL` varchar(50) NOT NULL,
  `MEMBER_REGISTER_IP` varchar(15) DEFAULT NULL,
  `MEMBER_LOGIN_MACADDRESS` varchar(20) DEFAULT NULL,
  `MEMBER_LOGIN_COUNT` int(10) DEFAULT NULL,
  `MEMBER_REAL_NAME` varchar(20) NOT NULL,
  `MEMBER_TYPE` tinyint(4) DEFAULT NULL,
  `MEMBER_QQ` varchar(20) DEFAULT NULL,
  `MEMBER_BALANCE` double(20,2) DEFAULT NULL,
  `MEMBER_POINTS` int(10) DEFAULT NULL,
  `MEMBER_TEL` varchar(12) DEFAULT NULL,
  `MEMBER_PHONE` varchar(11) NOT NULL,
  `MEMBER_COMPANY` varchar(50) NOT NULL,
  `REGIST_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `DELETE_FLG` tinyint(4) DEFAULT 0,
  `LOGIN_STATUS` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`MEMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for mt_order
-- ----------------------------
DROP TABLE IF EXISTS `mt_order`;
CREATE TABLE `mt_order` (
  `ORDER_ID` varchar(10) NOT NULL,
  `ORDER_TYPE` tinyint(4) NOT NULL,
  `ORDER_MEMBER_ID` varchar(10) NOT NULL,
  `ORDER_PRICE` double(20,2) DEFAULT NULL,
  `REGIST_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `DELETE_FLG` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`ORDER_ID`),
  KEY `orderid` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for mt_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `mt_order_detail`;
CREATE TABLE `mt_order_detail` (
  `ORDER_DETAIL_ID` varchar(10) NOT NULL,
  `ORDER_ID` tinyint(4) NOT NULL,
  `ORDER_FOOD_ID` varchar(10) DEFAULT NULL,
  `ORDER_FOOD_COUNT` int(10) DEFAULT NULL,
  `ORDER_FIXED_ID` varchar(10) DEFAULT NULL,
  `ORDER_FIXED_COUNT` int(10) DEFAULT NULL,
  `ORDER_DETAIL_PRICE` double(20,2) DEFAULT NULL,
  `REGIST_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `DETAIL_FLG` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`ORDER_DETAIL_ID`),
  KEY `orderdetailid` (`ORDER_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for tt_feedback
-- ----------------------------
DROP TABLE IF EXISTS `tt_feedback`;
CREATE TABLE `tt_feedback` (
  `FEEDBACK_ID` varchar(10) NOT NULL,
  `FEEDBACK_LOGIN_ID` varchar(20) NOT NULL,
  `FEEDBACK_TOPIC` varchar(50) NOT NULL,
  `FEEDBACK_CONTENT` varchar(1000) NOT NULL,
  `FEEDBACK_REAL_NAME` varchar(20) NOT NULL,
  `FEEDBACK_SEX` tinyint(4) NOT NULL,
  `FEEDBACK_PHONE` varchar(11) NOT NULL,
  `FEEDBACK_ADRESS` varchar(100) NOT NULL,
  `REGIST_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `DELETE_FLG` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`FEEDBACK_ID`),
  UNIQUE KEY `INDEX_KEY` (`FEEDBACK_ID`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for mt_message
-- ----------------------------
DROP TABLE IF EXISTS `mt_message`;
CREATE TABLE `mt_message` (
  `MESSAGE_ID` varchar(10) NOT NULL,
  `MESSAGE_TYPE` tinyint(4) NOT NULL,
  `MESSAGE_CONTENT` varchar(2000) NOT NULL,
  `REGIST_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `DELETE_FLG` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for mt_note
-- ----------------------------
DROP TABLE IF EXISTS MT_NOTE;
CREATE TABLE MT_NOTE(
	NOTE_ID varchar(10) NOT NULL,
	NOTE_TOPIC varchar(20) NOT NULL,
	NOTE_CONTENT varchar(500) NOT NULL,
	NOTE_LOGIN_ID varchar(20) NOT NULL,
	NOTE_REAL_NAME varchar(20) NOT NULL,
	NOTE_MAIL varchar(50) DEFAULT NULL,
	NOTE_QQ varchar(20) DEFAULT NULL,
	NOTE_PERSONAL_HOME_PAGE varchar(100) DEFAULT NULL,
	NOTE_MOOD varchar(10) DEFAULT NULL,
	NOTE_SECRET tinyint(4) DEFAULT 0,
	NOTE_TIME datetime DEFAULT NULL,
	UPDATE_TIME datetime DEFAULT NULL,
	DELETE_FLG tinyint(4) DEFAULT 0,
	PRIMARY KEY (NOTE_ID)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

