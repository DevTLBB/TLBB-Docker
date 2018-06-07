/*
Navicat MySQL Data Transfer

Source Server         : Thiên Long
Source Server Version : 50045
Source Host           : 192.168.1.3:3306
Source Database       : web

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-04-02 12:59:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  `password` char(32) NOT NULL,
  `question` varchar(64) default NULL,
  `answer` varchar(64) default NULL,
  `email` varchar(64) default NULL,
  `qq` varchar(16) default NULL,
  `tel` varchar(16) default NULL,
  `id_type` enum('IdCard') default 'IdCard',
  `id_card` varchar(32) default NULL,
  `point` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`,`name`),
  UNIQUE KEY `id` USING BTREE (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '1', 'c4ca4238a0b923820dcc509a6f75849b', null, null, null, null, null, 'IdCard', null, '0');
INSERT INTO `account` VALUES ('2', '2', 'c81e728d9d4c2f636f067f89cc14862c', null, null, null, null, null, 'IdCard', null, '0');
INSERT INTO `account` VALUES ('3', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', null, null, null, null, null, 'IdCard', null, '0');

-- ----------------------------
-- Table structure for pay
-- ----------------------------
DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay` (
  `trade_no` varchar(20) NOT NULL,
  `channel` varchar(10) default NULL,
  `server_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `fee` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `create_time` datetime NOT NULL,
  `pay_time` datetime default NULL,
  PRIMARY KEY  (`trade_no`),
  KEY `trade_no` (`trade_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for server
-- ----------------------------
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  `host` char(60) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of server
-- ----------------------------
INSERT INTO `server` VALUES ('1', '', '127.0.0.1');
