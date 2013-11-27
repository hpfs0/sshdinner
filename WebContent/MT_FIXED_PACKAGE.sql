/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : database_1124

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2013-11-26 23:46:36
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
  `DELETE_FLG` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE mt_fixed_package ADD INDEX fixid(FIXED_ID(10));
