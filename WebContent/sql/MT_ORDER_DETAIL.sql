/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : database_1124

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2013-11-26 23:47:57
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `DELETE_FLG` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE mt_order_detail ADD INDEX orderdetailid(ORDER_DETAIL_ID(10));
