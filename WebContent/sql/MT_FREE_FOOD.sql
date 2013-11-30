/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : database_1124

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2013-11-26 23:47:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mt_free_food
-- ----------------------------
DROP TABLE IF EXISTS `mt_free_food`;
CREATE TABLE `mt_free_food` (
  `FOOD_ID` varchar(10) NOT NULL,
  `FOOD_NAME` varchar(20) NOT NULL,
  `FOOD_UNIT_PRICE` double(20,2) NOT NULL,
  `REGIST_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `DELETE_FLG` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE mt_free_food ADD INDEX foodid(FOOD_ID(10)); 
