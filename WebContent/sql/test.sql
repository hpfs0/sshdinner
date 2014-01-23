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
  `DELETE_FLG` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`FIXED_ID`),
  KEY `fixid` (`FIXED_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `DELETE_FLG` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`FOOD_ID`),
  KEY `foodid` (`FOOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `DELETE_FLG` tinyint(4) DEFAULT NULL,
  `LOGIN_STATUS` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`MEMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `DELETE_FLG` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`ORDER_ID`),
  KEY `orderid` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `DETAIL_FLG` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`ORDER_DETAIL_ID`),
  KEY `orderdetailid` (`ORDER_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `DELETE_FLG` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`FEEDBACK_ID`),
  UNIQUE KEY `INDEX_KEY` (`FEEDBACK_ID`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `DETAIL_FLG` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mt_message
-- ----------------------------
INSERT INTO `mt_message` VALUES ('MS00009999', '0', '第一条 会员资格<br/>&nbsp;&nbsp;在您承诺完全同意本服务条款并在天一美食网站完成注册程序后，即可成为本网站会员，享受天一美食网站为您提供的服务。<br/>第二条 会员权限<br/>&nbsp;&nbsp;1．会员无须交纳会员费就能享有本网站提供的服务；<br/>&nbsp;&nbsp;2．任何会员均有义务遵守本规定及其它网络服务的协议、规定、程序及惯例。<br/>第三条 会员资料<br/>&nbsp;&nbsp;1．为了使我们能够更好地为会员提供服务，请您提供详尽准确的个人资料，如更改请及时更新，提供虚假资料所造成的后果由会员承担；<br/>&nbsp;&nbsp;2．会员有责任保管好自己的注册密码并定期修改避免造成损失，由于会员疏忽所造成的损失由会员承担。用户应当对以其用户帐号进行的所有活动和事件负法律责任。<br/>第四条 会员资格的取消 <br/>&nbsp;&nbsp;如发现任何会员有以下故意行为之一，本网保留取消其使用服务的权利，并无需做出任何补偿；<br/>&nbsp;&nbsp;1．可能造成本网站全部或局部的服务受影响，或危害本网站运行；<br/>&nbsp;&nbsp;2．以任何欺诈行为获得会员资格；<br/>&nbsp;&nbsp;3．在本网站内从事非法商业行为，发布涉及敏感政治、宗教或其它违反有关国家法律和政府法规的文字、图片等信息；<br/>&nbsp;&nbsp;4．以任何非法目的而使用网络服务系统。<br/>第五条 服务商的权利<br/>&nbsp;&nbsp;1．有权审核、接受或拒绝会员的入会申请，有权撤销或停止会员的全部或部分服务内容；<br/>&nbsp;&nbsp;2．有权修订会员的权利和义务，有权修改或调整本网站的服务内容；<br/>&nbsp;&nbsp;3．有权将修订的会员的权利和义务以E-mail形式通知会员，会员收到通知后仍继续使用本网站服务者即表示会员同意并遵守新修订内容。<br/>&nbsp;&nbsp;4．本网提供的服务仅供会员独立使用，未经本网授权，会员不得将会员号授予或转移给第三方。会员如果有违此例，本网有权向客户追索商业损失并保留追究法律责任的权利。<br/>第六条 服务商的义务<br/>&nbsp;&nbsp;1．认真做好本网站所涉及的网络及通信系统的技术维护工作，保证本网站的畅通和高效；<br/>&nbsp;&nbsp;2．除不可抗拒的因素导致本网站临时停止或短时间停止服务以外，乙方如需停止本网站的全部或部分服务时，须提前在本网站上发布通知通告会员。<br/>&nbsp;&nbsp;3．如本网站因系统维护或升级等原因需暂停服务，将事先通过主页、电子邮件等方式公告会员；<br/>&nbsp;&nbsp;4．因不可抗力而使本网站服务暂停，所导致会员任何实际或潜在的损失，本网不做任何补偿；<br/>&nbsp;&nbsp;5．本网不承担会员因遗失密码而受到的一切损失。<br/>&nbsp;&nbsp;6．本网仅提供相关的网络服务，除此之外与相关网络服务有关的设备（如电脑、调制解调器及其他与接入互联网有关的装置）及所需的费用（如为接入互联网而支付的电话费及上网费）均应由用户自行负担。<br/>第七条 附则<br/>&nbsp;&nbsp;1．以上规定的范围仅限于天一美食网站；<br/>&nbsp;&nbsp;2．本网会员因违反以上规定而触犯有关法律法规，一切后果自负，湖北省金属网站不承担任何责任；<br/>&nbsp;&nbsp;3．本规则未涉及之问题参见有关法律法规，当本规定与有关法律法规冲突时，以相应的法律法规为准。在本条款规定范围内，天一美食网站拥有最终解释权。', '2013-12-04 10:50:30', '2013-12-04 10:50:33', '0');

