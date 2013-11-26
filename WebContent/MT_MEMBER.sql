/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : database_1124

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2013-11-26 23:47:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mt_member
-- ----------------------------
DROP TABLE IF EXISTS `mt_member`;
CREATE TABLE `mt_member` (
  `MEMBER_ID` varchar(10) NOT NULL DEFAULT '',
  `MEMBER_LOGIN_ID` varchar(20) NOT NULL,
  `MEMBER_LOGIN_PW` varchar(20) NOT NULL,
  `MEMBER_NICK_NAME` varchar(20) NOT NULL,
  `MEMBER_MAIL` varchar(50) NOT NULL,
  `MEMBER_REGISTER_IP` varchar(15) DEFAULT NULL,
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
  `DELETE_FLG` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
