/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50132
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50132
File Encoding         : 65001

Date: 2019-07-02 18:37:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `family` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `major` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `party` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('001', 'admins', 'admins', '12345678', 'admins@qq.com', 'admins', '女', '建筑', '共青团员');
INSERT INTO `admin` VALUES ('002', 'admin', 'admin', '12345', '12345@qq.com', 'admin', '男', '计算机', '党员');

-- ----------------------------
-- Table structure for exaall
-- ----------------------------
DROP TABLE IF EXISTS `exaall`;
CREATE TABLE `exaall` (
  `uid` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id` varchar(3) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `month` varchar(3) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `program` varchar(30) DEFAULT NULL,
  `require` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exaall
-- ----------------------------
INSERT INTO `exaall` VALUES ('01', '001', 'Jack', '1', '2019-09-01', '周会议', '会议笔记');
INSERT INTO `exaall` VALUES ('02', '001', 'Jack', '1', '2019-09-01', '上课情况', '学生学习情况');
INSERT INTO `exaall` VALUES ('03', '001', 'Jack', '1', '2019-09-01', '备课情况', '备课资料及笔记');
INSERT INTO `exaall` VALUES ('04', '001', 'Jack', '1', '2019-09-01', '资料提交', '提交时间及完成度');
INSERT INTO `exaall` VALUES ('05', '001', 'Jack', '2', '2019-10-08', '周会议', '会议笔记');
INSERT INTO `exaall` VALUES ('06', '001', 'Jack', '2', '2019-10-08', '上课情况', '学生学习情况');
INSERT INTO `exaall` VALUES ('07', '001', 'Jack', '2', '2019-10-08', '备课情况', '备课资料及笔记');
INSERT INTO `exaall` VALUES ('08', '001', 'Jack', '2', '2019-10-08', '资料提交', '提交时间及完成度');
INSERT INTO `exaall` VALUES ('09', '001', 'Jack', '3', '2019-11-01', '周会议', '会议笔记');
INSERT INTO `exaall` VALUES ('10', '001', 'Jack', '3', '2019-11-01', '上课情况', '学生学习情况');
INSERT INTO `exaall` VALUES ('11', '002', 'Jack', '3', '2019-11-01', '备课情况', '备课资料及笔记');
INSERT INTO `exaall` VALUES ('12', '002', 'Jack', '3', '2019-11-01', '资料提交', '提交时间及完成度');

-- ----------------------------
-- Table structure for exadet
-- ----------------------------
DROP TABLE IF EXISTS `exadet`;
CREATE TABLE `exadet` (
  `uid` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `month` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `datedet` date DEFAULT NULL,
  `xiang` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `jiyao` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `jieguo` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of exadet
-- ----------------------------
INSERT INTO `exadet` VALUES ('01', '001', 'Jack', '1', '2019-09-01', '周会议', '会议笔记', '笔记具体完整');
INSERT INTO `exadet` VALUES ('02', '001', 'Jack', '1', '2019-09-01', '上课情况', '学生积极性', '学生积极性高');
INSERT INTO `exadet` VALUES ('03', '001', 'Jack', '1', '2019-09-01', '备课情况', '备课资料', '资料完整');
INSERT INTO `exadet` VALUES ('04', '001', 'Jack', '1', '2019-09-01', '资料提交', '提交时间', '规定时间提交');
INSERT INTO `exadet` VALUES ('05', '001', 'Jack', '2', '2019-10-08', '周会议', '会议笔记', '笔记具体完整');
INSERT INTO `exadet` VALUES ('06', '001', 'Jack', '2', '2019-10-08', '上课情况', '学生积极性', '学生积极性高');
INSERT INTO `exadet` VALUES ('07', '001', 'Jack', '2', '2019-10-08', '备课情况', '备课资料', '资料完整');
INSERT INTO `exadet` VALUES ('08', '001', 'Jack', '2', '2019-10-08', '资料提交', '提交时间', '规定时间提交');
INSERT INTO `exadet` VALUES ('09', '001', 'Jack', '3', '2019-11-01', '周会议', '会议笔记', '笔记具体完整');
INSERT INTO `exadet` VALUES ('10', '001', 'Jack', '3', '2019-11-01', '上课情况', '学生积极性', '学生积极性高');
INSERT INTO `exadet` VALUES ('11', '002', 'Jack', '3', '2019-11-01', '备课情况', '备课资料', '资料完整');
INSERT INTO `exadet` VALUES ('12', '002', 'Jack', '3', '2019-11-01', '资料提交', '提交时间', '规定时间提交');
INSERT INTO `exadet` VALUES ('13', '002', 'Alice', '1', '2019-09-01', '周会议', '会议笔记', '笔记具体完整');
INSERT INTO `exadet` VALUES ('14', '002', 'Alice', '1', '2019-09-01', '上课情况', '学生积极性', '学生积极性高');

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `uid` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('01', 'Jack', '580230', '12345678910');
INSERT INTO `exam` VALUES ('02', 'Alice', '123456', '12345678910');
INSERT INTO `exam` VALUES ('03', 'Tom', '147852', '12345678910');
INSERT INTO `exam` VALUES ('04', 'Xiaowang', '000000', '12345678910');
INSERT INTO `exam` VALUES ('05', 'Xiaolee', '111111', '12345678910');
INSERT INTO `exam` VALUES ('06', 'Xiaoxie', '222222', '12345678910');
INSERT INTO `exam` VALUES ('07', 'William', '333333', '12345678910');
INSERT INTO `exam` VALUES ('08', 'Xiaozhou', '444444', '12345678910');
INSERT INTO `exam` VALUES ('09', 'Shasha', '555555', '12345678910');
INSERT INTO `exam` VALUES ('11', 'Lee', '666666', '12345678910');
-- ----------------------------
-- Table structure for exapas
-- ----------------------------
DROP TABLE IF EXISTS `exapas`;
CREATE TABLE `exapas` (
  `uid` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `month` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `date` date DEFAULT NULL,
  `program` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `result` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of exapas
-- ----------------------------
INSERT INTO `exapas` VALUES ('01', '001', 'Jack', '1', '2019-09-01', '周会议', '通过');
INSERT INTO `exapas` VALUES ('02', '001', 'Jack', '1', '2019-09-01', '上课情况', '通过');
INSERT INTO `exapas` VALUES ('03', '001', 'Jack', '2', '2019-10-08', '上课情况', '通过');
INSERT INTO `exapas` VALUES ('04', '001', 'Jack', '2', '2019-10-08', '周会议', '通过');
INSERT INTO `exapas` VALUES ('05', '001', 'Jack', '3', '2019-11-01', '周会议', '通过');
INSERT INTO `exapas` VALUES ('06', '001', 'Jack', '3', '2019-11-01', '上课情况', '通过');
INSERT INTO `exapas` VALUES ('07', '001', 'Jack', '4', '2019-04-01', '周会议', '通过');
INSERT INTO `exapas` VALUES ('08', '001', 'Jack', '4', '2019-04-01', '上课情况', '通过');
INSERT INTO `exapas` VALUES ('09', '001', 'Jack', '5', '2019-05-01', '周会议', '通过');
INSERT INTO `exapas` VALUES ('10', '001', 'Jack', '5', '2019-05-01', '上课情况', '通过');
INSERT INTO `exapas` VALUES ('11', '001', 'Alice', '1', '2019-09-01', '周会议', '通过');
INSERT INTO `exapas` VALUES ('12', '001', 'Alice', '1', '2019-09-01', '上课情况', '通过');

-- ----------------------------
-- Table structure for grdall
-- ----------------------------
DROP TABLE IF EXISTS `grdall`;
CREATE TABLE `grdall` (
  `uid` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `usern` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `tel` date DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `family` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of grdall
-- ----------------------------
INSERT INTO `grdall` VALUES ('01', '001', 'Jack', '1', '2019-09-01', '物联网应用技术大赛', '一等奖', '已审核');
INSERT INTO `grdall` VALUES ('02', '001', 'Jack', '1', '2019-01-11', '蓝桥杯大赛', '二等奖', '已审核');
INSERT INTO `grdall` VALUES ('03', '001', 'Jack', '2', '2019-10-08', '互联网＋', '三等奖', '未审核');
INSERT INTO `grdall` VALUES ('04', '001', 'Jack', '2', '2019-02-11', '蓝桥杯大赛', '一等奖', '已审核');
INSERT INTO `grdall` VALUES ('05', '001', 'Jack', '3', '2019-11-01', 'Android物联网大赛', '二等奖', '已审核');
INSERT INTO `grdall` VALUES ('06', '001', 'Jack', '3', '2019-11-01', 'VR虚拟现实大赛', '三等奖', '未审核');
INSERT INTO `grdall` VALUES ('07', '001', 'Jack', '4', '2019-04-01', '互联网＋', '二等奖', '未审核');
INSERT INTO `grdall` VALUES ('08', '001', 'Jack', '4', '2019-04-01', '蓝桥杯大赛', '三等奖', '已审核');
INSERT INTO `grdall` VALUES ('09', '001', 'Jack', '5', '2019-05-01', '物联网应用技术大赛', '一等奖', '已审核');
INSERT INTO `grdall` VALUES ('10', '001', 'Jack', '5', '2019-05-11', 'Android物联网大赛', '三等奖', '未审核');
INSERT INTO `grdall` VALUES ('11', '002', 'Alice', '1', '2019-09-01', '蓝桥杯大赛', '一等奖', '已审核');
INSERT INTO `grdall` VALUES ('12', '002', 'Alice', '2', '2019-10-08', 'Android物联网大赛', '二等奖', '未审核');
INSERT INTO `grdall` VALUES ('13', '002', 'Alice', '3', '2019-11-01', '互联网＋', '三等奖', '已审核');
INSERT INTO `grdall` VALUES ('14', '003', 'Tom', '1', '2019-09-01', '蓝桥杯大赛', '二等奖', '未审核');
INSERT INTO `grdall` VALUES ('15', '003', 'Tom', '2', '2019-10-08', '互联网＋', '一等奖', '已审核');
-- ----------------------------
-- Table structure for grdbef
-- ----------------------------
DROP TABLE IF EXISTS `grdbef`;
CREATE TABLE `grdbef` (
  `uid` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `month` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `date` date DEFAULT NULL,
  `gradesname` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `bonus` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of grdbef
-- ----------------------------
INSERT INTO `grdbef` VALUES ('01', '001', 'Jack', '1', '2019-09-01', '物联网应用技术大赛', '1000', '已审核');
INSERT INTO `grdbef` VALUES ('02', '001', 'Jack', '1', '2019-01-11', '蓝桥杯大赛', '800', '已审核');
INSERT INTO `grdbef` VALUES ('03', '001', 'Jack', '2', '2019-10-08', '互联网＋', '800', '未审核');
INSERT INTO `grdbef` VALUES ('04', '001', 'Jack', '2', '2019-02-11', '蓝桥杯大赛', '1000', '已审核');
INSERT INTO `grdbef` VALUES ('05', '001', 'Jack', '3', '2019-11-01', 'Android物联网大赛', '200', '已审核');
INSERT INTO `grdbef` VALUES ('06', '001', 'Jack', '3', '2019-03-11', 'VR虚拟现实大赛', '1000', '未审核');
INSERT INTO `grdbef` VALUES ('07', '001', 'Jack', '4', '2019-04-01', '互联网＋', '200', '未审核');
INSERT INTO `grdbef` VALUES ('08', '001', 'Jack', '4', '2019-04-11', '蓝桥杯大赛', '1000', '已审核');
INSERT INTO `grdbef` VALUES ('09', '001', 'Jack', '5', '2019-05-01', '物联网应用技术大赛', '200', '已审核');
INSERT INTO `grdbef` VALUES ('10', '001', 'Jack', '5', '2019-05-11', 'Android物联网大赛', '1000', '未审核');
INSERT INTO `grdbef` VALUES ('11', '001', 'Alice', '1', '2019-09-01', '蓝桥杯大赛', '400', '已审核');
INSERT INTO `grdbef` VALUES ('12', '001', 'Alice', '2', '2019-10-08', 'Android物联网大赛', '1000', '未审核');
INSERT INTO `grdbef` VALUES ('13', '001', 'Alice', '3', '2019-11-01', '互联网＋', '400', '已审核');
INSERT INTO `grdbef` VALUES ('14', '001', 'Tom', '1', '2019-09-01', '蓝桥杯大赛', '1000', '未审核');
INSERT INTO `grdbef` VALUES ('15', '001', 'Tom', '2', '2019-10-08', '互联网＋', '400', '已审核');

-- ----------------------------
-- Table structure for grddet
-- ----------------------------
DROP TABLE IF EXISTS `grddet`;
CREATE TABLE `grddet` (
  `uid` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `month` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `date` date DEFAULT NULL,
  `gradesname` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `unit` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `gradesresult` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `audit` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of grddet
-- ----------------------------
INSERT INTO `grddet` VALUES ('01', '001', 'Jack', '1', '2019-09-01', '物联网应用技术大赛', '四川省教育厅', '一等奖', '已通过');
INSERT INTO `grddet` VALUES ('02', '001', 'Jack', '1', '2019-01-11', '蓝桥杯大赛', '四川省教育厅', '二等奖', '已通过');
INSERT INTO `grddet` VALUES ('03', '001', 'Jack', '2', '2019-10-08', '互联网＋', '四川省教育厅', '三等奖', '未通过');
INSERT INTO `grddet` VALUES ('04', '001', 'Jack', '2', '2019-02-11', '蓝桥杯大赛', '四川省教育厅', '一等奖', '已通过');
INSERT INTO `grddet` VALUES ('05', '001', 'Jack', '3', '2019-11-01', 'Android物联网大赛', '四川省教育厅', '二等奖', '未通过');
INSERT INTO `grddet` VALUES ('06', '001', 'Jack', '3', '2019-11-01', 'VR虚拟现实大赛', '四川省教育厅', '三等奖', '已通过');
INSERT INTO `grddet` VALUES ('07', '001', 'Jack', '4', '2019-04-01', '互联网＋', '四川省教育厅', '二等奖', '未通过');
INSERT INTO `grddet` VALUES ('08', '001', 'Jack', '4', '2019-04-01', '蓝桥杯大赛', '四川省教育厅', '三等奖', '未通过');
INSERT INTO `grddet` VALUES ('09', '001', 'Jack', '5', '2019-05-01', '物联网应用技术大赛', '四川省教育厅', '一等奖', '已通过');
INSERT INTO `grddet` VALUES ('10', '001', 'Jack', '5', '2019-05-11', 'Android物联网大赛', '四川省教育厅', '三等奖', '已通过');
INSERT INTO `grddet` VALUES ('11', '002', 'Alice', '1', '2019-09-01', '蓝桥杯大赛', '四川省教育厅', '一等奖', '已通过');
INSERT INTO `grddet` VALUES ('12', '002', 'Alice', '2', '2019-10-08', 'Android物联网大赛', '四川省教育厅', '二等奖', '已通过');
INSERT INTO `grddet` VALUES ('13', '002', 'Alice', '3', '2019-11-01', '互联网＋', '四川省教育厅', '三等奖', '未通过');
INSERT INTO `grddet` VALUES ('14', '003', 'Tom', '1', '2019-09-01', '蓝桥杯大赛', '四川省教育厅', '二等奖', '未通过');
INSERT INTO `grddet` VALUES ('15', '003', 'Tom', '2', '2019-10-08', '互联网＋', '四川省教育厅', '一等奖', '已通过');

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logs
-- ----------------------------

-- ----------------------------
-- Table structure for ly
-- ----------------------------
DROP TABLE IF EXISTS `ly`;
CREATE TABLE `ly` (
  `ly_id` int(11) NOT NULL AUTO_INCREMENT,
  `head` text NOT NULL,
  `email` text NOT NULL,
  `content` text NOT NULL,
  `type` varchar(20) NOT NULL,
  `hf_content` text NOT NULL,
  `modi_date` datetime NOT NULL,
  PRIMARY KEY (`ly_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly
-- ----------------------------
INSERT INTO `ly` VALUES ('1', 'head/002.gif', '987654321@qq.com', '测试二', '公开', '测试成功', '2019-06-21 21:00:30');
INSERT INTO `ly` VALUES ('2', 'head/008.gif', '111@qq.com', '测试二', '公开', '', '2019-06-24 17:11:01');
INSERT INTO `ly` VALUES ('4', 'head/002.gif', '222@qq.com', '测试4', '仅管理员查看', '', '2019-06-25 08:30:16');
INSERT INTO `ly` VALUES ('5', 'head/001.gif', '333@qq.com', '测试五', '公开', '', '2019-06-25 08:30:49');
INSERT INTO `ly` VALUES ('6', 'head/001.gif', '444@qq.com', '测试六', '仅管理员查看', '', '2019-06-25 08:31:13');
INSERT INTO `ly` VALUES ('7', 'head/011.gif', '111@qq.com', 'asdhadb', '公开', '', '2019-06-27 12:01:59');

-- ----------------------------
-- Table structure for manage_user
-- ----------------------------
DROP TABLE IF EXISTS `manage_user`;
CREATE TABLE `manage_user` (
  `mg_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `user_pw` text NOT NULL,
  `modi_date` datetime NOT NULL,
  PRIMARY KEY (`mg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage_user
-- ----------------------------
INSERT INTO `manage_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2019-06-21 21:00:00');

-- ----------------------------
-- Table structure for salact
-- ----------------------------
DROP TABLE IF EXISTS `salact`;
CREATE TABLE `salact` (
  `uid` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id` varchar(3) DEFAULT NULL,
  `name` varchar(30) DEFAULT '',
  `month` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `salbase` varchar(30) DEFAULT NULL,
  `dedmsg` varchar(30) DEFAULT NULL,
  `salact` varchar(30) DEFAULT NULL,
  `result` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salact
-- ----------------------------
INSERT INTO `salact` VALUES ('01', '001', 'Jack', '1', '2019-09-01', '5000', '400', '4600', '已确认');
INSERT INTO `salact` VALUES ('02', '001', 'Jack', '2', '2019-10-08', '6000', '1000', '5000', '未确认');
INSERT INTO `salact` VALUES ('03', '001', 'Jack', '3', '2019-11-01', '5400', '400', '5000', '已确认');
INSERT INTO `salact` VALUES ('04', '001', 'Jack', '4', '2019-04-01', '5000', '500', '4500', '未确认');
INSERT INTO `salact` VALUES ('05', '001', 'Jack', '5', '2019-05-01', '5000', '400', '4600', '已确认');
INSERT INTO `salact` VALUES ('06', '001', 'Jack', '6', '2019-06-01', '6000', '1000', '5000', '未确认');
INSERT INTO `salact` VALUES ('07', '001', 'Jack', '7', '2019-07-01', '5400', '400', '5000', '已确认');
INSERT INTO `salact` VALUES ('08', '001', 'Jack', '8', '2019-08-01', '5000', '500', '4500', '未确认');
INSERT INTO `salact` VALUES ('09', '001', 'Jack', '9', '2019-09-01', '5000', '400', '4600', '已确认');
INSERT INTO `salact` VALUES ('10', '001', 'Jack', '10', '2019-10-01', '6000', '1000', '5000', '未确认');
INSERT INTO `salact` VALUES ('11', '002', 'Alice', '11', '2019-11-01', '5400', '400', '5000', '已确认');
INSERT INTO `salact` VALUES ('12', '002', 'Alice', '12', '2019-12-01', '5000', '500', '4500', '未确认');

-- ----------------------------
-- Table structure for salall
-- ----------------------------
DROP TABLE IF EXISTS `salall`;
CREATE TABLE `salall` (
  `uid` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(3) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `email` date DEFAULT NULL,
  `family` varchar(30) DEFAULT NULL,
  `sex` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salall
-- ----------------------------
INSERT INTO `salall` VALUES ('01', '001', 'Jack', '1', '2019-09-01', '基础薪资', '5000');
INSERT INTO `salall` VALUES ('02', '001', 'Jack', '1', '2019-09-01', '社保', '200');
INSERT INTO `salall` VALUES ('03', '001', 'Jack', '1', '2019-09-01', '加班工资', '200');
INSERT INTO `salall` VALUES ('04', '001', 'Jack', '1', '2019-09-01', '五险一金', '200');
INSERT INTO `salall` VALUES ('05', '001', 'Jack', '2', '2019-10-08', '基础薪资', '5000');
INSERT INTO `salall` VALUES ('06', '001', 'Jack', '2', '2019-10-08', '社保', '100');
INSERT INTO `salall` VALUES ('07', '001', 'Jack', '2', '2019-10-08', '加班工资', '500');
INSERT INTO `salall` VALUES ('08', '001', 'Jack', '2', '2019-10-08', '五险一金', '300');
INSERT INTO `salall` VALUES ('09', '001', 'Jack', '3', '2019-11-01', '基础薪资', '5000');
INSERT INTO `salall` VALUES ('10', '001', 'Jack', '3', '2019-11-01', '社保', '100');
INSERT INTO `salall` VALUES ('11', '002', 'Jack', '3', '2019-11-01', '加班工资', '500');
INSERT INTO `salall` VALUES ('12', '002', 'Jack', '3', '2019-11-01', '五险一金', '300');
INSERT INTO `salall` VALUES ('13', '002', 'Alice', '1', '2019-09-01', '基础薪资', '5000');
INSERT INTO `salall` VALUES ('14', '003', 'Alice', '1', '2019-09-01', '社保', '100');
INSERT INTO `salall` VALUES ('15', '003', 'Alice', '1', '2019-09-01', '加班工资', '500');
INSERT INTO `salall` VALUES ('16', '003', 'Alice', '1', '2019-09-01', '五险一金', '300');


-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
  `id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `date` date DEFAULT NULL,
  `base` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `five` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `society` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO `salary` VALUES ('001', 'waill', '2019-06-01', '8000', '200', '100');
INSERT INTO `salary` VALUES ('002', 'Alice', '2019-06-02', '6000', '400', '200');
INSERT INTO `salary` VALUES ('003', '3', '2019-06-21', '3', '3', '3');
INSERT INTO `salary` VALUES ('004', '4', '2019-06-21', '4', '4', '3');
INSERT INTO `salary` VALUES ('005', '5', '2019-06-21', '5', '5', '5');

-- ----------------------------
-- Table structure for salded
-- ----------------------------
DROP TABLE IF EXISTS `salded`;
CREATE TABLE `salded` (
  `uid` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id` varchar(3) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tel` varchar(3) DEFAULT NULL,
  `email` date DEFAULT NULL,
  `family` varchar(30) DEFAULT NULL,
  `sex` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salded
-- ----------------------------
INSERT INTO `salded` VALUES ('01', '001', 'Jack', '1', '2019-09-01', '五险一金', '200');
INSERT INTO `salded` VALUES ('02', '001', 'Jack', '1', '2019-09-01', '社保', '200');
INSERT INTO `salded` VALUES ('03', '001', 'Jack', '2', '2019-10-08', '五险一金', '200');
INSERT INTO `salded` VALUES ('04', '001', 'Jack', '2', '2019-10-08', '社保', '200');
INSERT INTO `salded` VALUES ('05', '001', 'Jack', '3', '2019-11-01', '五险一金', '200');
INSERT INTO `salded` VALUES ('06', '001', 'Jack', '3', '2019-11-01', '社保', '200');
INSERT INTO `salded` VALUES ('07', '001', 'Jack', '4', '2019-04-01', '五险一金', '200');
INSERT INTO `salded` VALUES ('08', '001', 'Jack', '4', '2019-04-01', '社保', '200');
INSERT INTO `salded` VALUES ('09', '001', 'Jack', '5', '2019-05-01', '五险一金', '200');
INSERT INTO `salded` VALUES ('10', '001', 'Jack', '5', '2019-05-01', '社保', '200');
INSERT INTO `salded` VALUES ('11', '001', 'Alice', '1', '2019-09-01', '五险一金', '200');
INSERT INTO `salded` VALUES ('12', '001', 'Alice', '1', '2019-09-01', '社保', '200');
INSERT INTO `salded` VALUES ('13', '001', 'Alice', '2', '2019-10-08', '五险一金', '200');
INSERT INTO `salded` VALUES ('14', '001', 'Alice', '2', '2019-10-08', '社保', '200');

-- ----------------------------
-- Table structure for sys_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_info`;
CREATE TABLE `sys_info` (
  `sys_id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_note1` text NOT NULL,
  `sys_note2` text NOT NULL,
  `modi_date` datetime NOT NULL,
  PRIMARY KEY (`sys_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_info
-- ----------------------------
INSERT INTO `sys_info` VALUES ('1', '欢迎使用我的留言本,马上开始留言吧！', '欢迎使用我的留言本,马上开始留言吧！', '2019-06-20 20:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT '',
  `password` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `family` varchar(30) DEFAULT NULL,
  `sex` varchar(30) DEFAULT NULL,
  `major` varchar(30) DEFAULT NULL,
  `party` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('001', 'Jack', 'Jack', '12345678', 'Jack@qq.com', 'Jack', '男', '计算机', '党员');
INSERT INTO `user` VALUES ('002', 'Alice', 'Alice', '12345535', 'Alice@126.com', 'Alice', '女', '农业', '群众');
INSERT INTO `user` VALUES ('003', 'tom', 'Tom', '12312456', '222@qq.com', 'Tom', '男', '建筑', '党员');
INSERT INTO `user` VALUES ('004', '小王', '75757457', '45363215', '555@qq.com', '小王', '男', '计算机', '群众');
INSERT INTO `user` VALUES ('005', '杰克', '57524141', '12312312', '333@qq.com', '杰克', '男', '建筑', '共青团员');
INSERT INTO `user` VALUES ('006', '小李', '66467757', '89645621', '444@qq.com', '小李', '女', '建筑', '群众');
INSERT INTO `user` VALUES ('007', '小谢', '21458678', '56711545', '666@qq.com', '小谢', '女', '建筑', '共青团员');
INSERT INTO `user` VALUES ('008', '小周', '14456677', '78574362', '777@qq.com', '小周', '男', '计算机', '共青团员');
INSERT INTO `user` VALUES ('009', '莎莎', '12345678', '123123123', 'shasha@qq.com', '莎莎', '男', '建筑', '共青团员');
INSERT INTO `user` VALUES ('010', 'lee', '123123123', '123123123', 'lee@qq.com', 'lee', '女', '计算机', '共青团员');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '123', '123', '男');
INSERT INTO `users` VALUES ('2', '456', '456', '女');
INSERT INTO `users` VALUES ('7', '111', '111', '111@qq.com');
INSERT INTO `users` VALUES ('8', '222', '222', '222@qq');
INSERT INTO `users` VALUES ('9', '333', '333', '333@qq');