/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2013-11-27 17:19:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tt_feedback
-- ----------------------------
DROP TABLE IF EXISTS `mt_feedback`;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
