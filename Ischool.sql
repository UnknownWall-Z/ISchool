/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50712
Source Host           : 127.0.0.1:3306
Source Database       : crm2017

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-10-30 01:29:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attendance
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(30) DEFAULT NULL,
  `currenttime` date DEFAULT NULL,
  `signintime` datetime DEFAULT NULL,
  `signouttime` datetime DEFAULT NULL,
  `ondutystate` varchar(20) DEFAULT NULL,
  `offdutystate` varchar(20) DEFAULT NULL,
  `addsigntime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attendance
-- ----------------------------
INSERT INTO `attendance` VALUES ('1', '2', '2017-08-25', '2017-08-25 08:54:30', '2017-08-25 22:34:13', '正常打卡', '正常打卡', '2017-08-25 23:33:46');
INSERT INTO `attendance` VALUES ('2', '3', '2017-08-25', '2017-08-25 08:57:52', '2017-08-25 22:42:05', '迟到', '正常打卡', '2017-08-25 23:33:54');
INSERT INTO `attendance` VALUES ('3', '4', '2017-08-25', '2017-08-25 08:35:21', '2017-08-25 23:36:01', '正常打卡', '正常打卡', '2017-08-25 23:36:57');
INSERT INTO `attendance` VALUES ('4', '5', '2017-08-25', '2017-08-25 08:38:25', '2017-08-25 23:44:24', '正常打卡', '正常打卡', '2017-08-25 23:40:13');
INSERT INTO `attendance` VALUES ('5', '2', '2017-08-26', '2017-08-26 08:57:19', '2017-08-26 23:57:35', '正常打卡', '正常打卡', '2017-08-26 23:58:28');
INSERT INTO `attendance` VALUES ('6', '3', '2017-08-26', '2017-08-26 08:46:20', '2017-08-26 23:46:39', '正常打卡', '正常打卡', '2017-08-26 23:48:44');
INSERT INTO `attendance` VALUES ('7', '4', '2017-08-26', '2017-08-26 08:49:22', '2017-08-26 23:44:39', '正常打卡', '正常打卡', '2017-08-26 23:55:44');
INSERT INTO `attendance` VALUES ('8', '5', '2017-08-26', '2017-08-26 08:50:49', '2017-08-26 23:51:15', '正常打卡', '正常打卡', '2017-08-26 23:55:44');
INSERT INTO `attendance` VALUES ('9', '6', '2017-08-27', '2017-08-27 08:17:19', '2017-08-27 13:44:24', '正常打卡', '早退', '2017-08-27 23:53:58');
INSERT INTO `attendance` VALUES ('10', '5', '2017-08-27', '2017-08-27 08:36:46', '2017-08-27 23:40:14', '正常打卡', '正常打卡', '2017-08-27 23:53:58');
INSERT INTO `attendance` VALUES ('11', '7', '2017-08-27', '2017-08-27 08:27:19', '2017-08-27 23:58:48', '正常打卡', '正常打卡', '2017-08-27 23:59:08');
INSERT INTO `attendance` VALUES ('12', '7', '2017-08-28', '2017-08-27 08:43:17', '2017-08-27 22:39:32', '正常打卡', '正常打卡', '2017-08-27 22:39:51');
INSERT INTO `attendance` VALUES ('13', '3', '2017-08-27', '2017-08-27 08:41:24', '2017-08-27 23:41:37', '正常打卡', '正常打卡', '2017-08-27 22:42:06');
INSERT INTO `attendance` VALUES ('14', '1', '2017-08-27', '2017-08-27 08:43:12', '2017-08-27 23:43:31', '正常打卡', '正常打卡', '2017-08-27 23:44:12');
INSERT INTO `attendance` VALUES ('15', '4', '2017-08-27', '2017-08-27 08:45:24', '2017-08-27 23:47:06', '正常打卡', '正常打卡', '2017-08-27 23:56:57');
INSERT INTO `attendance` VALUES ('16', '2', '2017-08-27', '2017-08-27 08:45:46', '2017-08-27 22:47:27', '正常打卡', '正常打卡', '2017-08-27 23:57:05');
INSERT INTO `attendance` VALUES ('17', '15', '2017-08-27', '2017-08-27 08:47:00', '2017-08-27 23:47:36', '正常打卡', '正常打卡', '2017-08-27 22:57:22');
INSERT INTO `attendance` VALUES ('18', '1', '2017-08-28', '2017-08-28 08:44:40', '2017-08-28 23:58:17', '正常打卡', '正常打卡', '2017-08-28 23:58:33');
INSERT INTO `attendance` VALUES ('19', '2', '2017-08-28', '2017-08-28 08:38:56', '2017-08-28 23:59:11', '正常打卡', '正常打卡', '2017-08-28 23:59:46');
INSERT INTO `attendance` VALUES ('20', '3', '2017-08-28', '2017-08-28 09:01:17', '2017-08-28 23:01:25', '迟到', '正常打卡', '2017-08-28 23:01:33');
INSERT INTO `attendance` VALUES ('21', '4', '2017-08-28', '2017-08-28 08:02:46', '2017-08-28 23:03:07', '正常打卡', '正常打卡', '2017-08-28 23:03:16');
INSERT INTO `attendance` VALUES ('22', '5', '2017-08-29', '2017-08-29 10:03:26', '2017-08-29 23:03:34', '正常打卡', '正常打卡', '2017-08-29 23:03:42');
INSERT INTO `attendance` VALUES ('23', '6', '2017-08-29', '2017-08-29 10:03:50', '2017-08-29 13:04:55', '正常打卡', '早退', '2017-08-29 23:05:03');
INSERT INTO `attendance` VALUES ('24', '7', '2017-08-29', '2017-08-29 08:05:14', '2017-08-29 23:05:31', '正常打卡', '正常打卡', '2017-08-29 23:05:40');
INSERT INTO `attendance` VALUES ('25', '1', '2017-08-30', '2017-08-30 08:05:52', '2017-08-30 23:05:59', '正常打卡', '正常打卡', '2017-08-30 23:06:06');
INSERT INTO `attendance` VALUES ('26', '2', '2017-08-30', '2017-08-30 08:06:13', '2017-08-30 23:06:19', '正常打卡', '正常打卡', '2017-08-30 23:06:28');
INSERT INTO `attendance` VALUES ('32', '1', '2017-09-01', '2017-09-01 13:24:40', null, '迟到', null, null);
INSERT INTO `attendance` VALUES ('33', '1', '2017-09-01', '2017-09-01 13:35:44', '2017-09-01 13:35:48', '迟到', null, null);
INSERT INTO `attendance` VALUES ('34', '1', '2017-09-01', '2017-09-01 13:41:06', null, '迟到', null, null);
INSERT INTO `attendance` VALUES ('35', '1', '2017-10-29', '2017-10-29 14:15:40', null, '迟到', null, null);
INSERT INTO `attendance` VALUES ('36', '1', '2017-10-29', '2017-10-29 20:51:51', null, '迟到', null, null);
INSERT INTO `attendance` VALUES ('37', '1', '2017-10-29', '2017-10-29 21:55:22', null, '迟到', null, null);
INSERT INTO `attendance` VALUES ('38', '1', '2017-10-30', '2017-10-30 01:18:26', null, '正常打卡', null, null);

-- ----------------------------
-- Table structure for calendar
-- ----------------------------
DROP TABLE IF EXISTS `calendar`;
CREATE TABLE `calendar` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `allDay` varchar(255) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of calendar
-- ----------------------------
INSERT INTO `calendar` VALUES ('10', '1212', 'true', '2017-07-20 20:12:07', null, '', 'gray');
INSERT INTO `calendar` VALUES ('11', '可以了吧', 'true', '2017-07-13 20:13:37', '2017-07-26 20:13:39', 'www.sohu.com', 'blue');
INSERT INTO `calendar` VALUES ('12', '1212121', 'true', '2017-07-12 20:17:38', '2017-07-21 20:17:40', 'www.sohu.com', 'blue');
INSERT INTO `calendar` VALUES ('13', '21', null, '2017-07-12 20:17:58', null, '', null);
INSERT INTO `calendar` VALUES ('14', '星期二', 'true', '2017-07-19 20:28:41', '2017-07-15 20:28:45', 'www.sohu.com', 'gray');
INSERT INTO `calendar` VALUES ('15', '1212121', 'true', '2017-07-26 20:44:22', '2017-07-06 20:44:25', 'www.sohu.com', 'blue');
INSERT INTO `calendar` VALUES ('16', '', null, '2017-07-20 20:45:06', null, '', null);
INSERT INTO `calendar` VALUES ('17', '时间', null, '2017-07-19 20:47:23', '2017-07-21 20:47:25', '', null);
INSERT INTO `calendar` VALUES ('18', '1212', null, '2017-07-19 20:52:04', '2017-07-06 20:52:07', '', null);
INSERT INTO `calendar` VALUES ('19', '', null, '2017-07-19 20:53:31', null, '', null);
INSERT INTO `calendar` VALUES ('20', '干什么', 'true', '2017-07-26 20:55:22', '2017-07-29 20:55:29', 'www.sohu.com', 'red');
INSERT INTO `calendar` VALUES ('21', '不是全天', 'false', '2017-07-30 20:56:10', '2017-07-31 20:56:18', '', 'gray');
INSERT INTO `calendar` VALUES ('22', '1212121', 'true', '2017-07-26 20:58:20', '2017-07-29 20:58:23', '1231231', 'red');
INSERT INTO `calendar` VALUES ('23', '12', 'true', '2017-07-01 20:59:20', '2017-07-03 20:59:24', 'www.baidu.com', 'red');

-- ----------------------------
-- Table structure for checks
-- ----------------------------
DROP TABLE IF EXISTS `checks`;
CREATE TABLE `checks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sn` bigint(255) DEFAULT NULL,
  `inIP` varchar(255) DEFAULT NULL,
  `instate` varchar(255) DEFAULT NULL,
  `outstate` varchar(255) DEFAULT NULL,
  `inTime` datetime DEFAULT NULL,
  `outTime` datetime DEFAULT NULL,
  `repairMan` varchar(255) DEFAULT NULL,
  `repairTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `repairMan_id` (`repairMan`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checks
-- ----------------------------
INSERT INTO `checks` VALUES ('81', 'admin', '1', '192.168.11.130', '迟到', '打完收工', '2017-07-20 18:13:18', '2017-07-20 18:13:27', '超级管理员', '2017-07-20 18:13:45');

-- ----------------------------
-- Table structure for checksout
-- ----------------------------
DROP TABLE IF EXISTS `checksout`;
CREATE TABLE `checksout` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `checksTime` date DEFAULT NULL,
  `lates` tinyint(4) DEFAULT NULL,
  `checksDays` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checksout
-- ----------------------------
INSERT INTO `checksout` VALUES ('15', '1212', '傻逼', '2017-01-21', '2', '2');
INSERT INTO `checksout` VALUES ('16', '1', '小明', '2011-12-12', '2', '31');
INSERT INTO `checksout` VALUES ('17', '1', '小明', '2011-12-12', '2', '31');
INSERT INTO `checksout` VALUES ('18', '1', '小明', '2011-12-12', '2', '31');
INSERT INTO `checksout` VALUES ('19', '1', 'zzc', '2012-12-12', '1', '25');
INSERT INTO `checksout` VALUES ('20', '12', 'sdf', '2012-12-12', '1', '12');
INSERT INTO `checksout` VALUES ('21', '11', '刘德华', '2012-12-12', '2', '2');

-- ----------------------------
-- Table structure for classroom
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `totalSeat` int(10) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `date_state` datetime DEFAULT NULL,
  `schoolClass_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroom
-- ----------------------------
INSERT INTO `classroom` VALUES ('7', '教室1', 'b栋-802', '150', '1', '2017-07-12 00:00:00', '3');
INSERT INTO `classroom` VALUES ('8', '教室2', 'b栋-509', '150', '0', '2017-07-19 11:50:48', null);
INSERT INTO `classroom` VALUES ('12', '教室2', 'b栋-509', '150', '1', '2017-07-11 00:00:00', '5');

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buildTime` date DEFAULT NULL,
  `inputTime` datetime DEFAULT NULL,
  `interviewTime` date DEFAULT NULL,
  `weChat` varchar(255) DEFAULT NULL,
  `age` int(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `workingLife` int(11) DEFAULT NULL,
  `wantedClass_id` bigint(20) DEFAULT NULL,
  `clientType` varchar(255) DEFAULT NULL,
  `startSchoolTime` date DEFAULT NULL,
  `wantedSubject` varchar(255) DEFAULT NULL,
  `marketUser_id` bigint(20) DEFAULT NULL,
  `wantedschool` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `QQ` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `wantedLevel` varchar(255) DEFAULT NULL,
  `inputUser_id` bigint(20) DEFAULT NULL,
  `nextTime` date DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `concern` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `trackTime` int(11) DEFAULT NULL,
  `lastTrackDate` date DEFAULT NULL,
  `inPoolTime` date DEFAULT NULL,
  `schoolname` varchar(255) DEFAULT NULL,
  `inPoolReason` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `trackState` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `marketUser_id` (`marketUser_id`),
  KEY `inputUser_id` (`inputUser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES ('1', '2017-08-27', '2017-08-27 09:28:31', '2017-08-29', 'wcc123', '24', 'freestyle', '本科', '2', '3', '线上客户', '2017-08-08', 'iSO', '3', '深圳校区', 'QQ', '245613', '男', 'otw', '高', '2', '2017-08-30', 'zs', '13924568712', '2564@qq.com', '1', '..', '..', '3', null, null, '西安交大', null, '7', '1');
INSERT INTO `client` VALUES ('2', '2017-08-27', '2017-08-27 18:51:03', '2017-08-29', '546', '23', 'pap', '本科', '2', '2', '线下客户', '2017-08-09', 'c++', '2', '北京校区', '广告', '232325', '女', 'html', '中', '2', '2017-08-30', 'ppp', '15802462154', '632632332@', null, '..', '..', '3', null, null, '四川大学', null, '1', '1');
INSERT INTO `client` VALUES ('3', '2017-08-27', '2017-08-27 15:55:12', null, 'Neld', '18', '拉拉', '研究生', '4', '1', '线上客户', '2017-08-10', 'Java', '1', '广州校区', 'QQ', '46616161', '男', 'Java', '高', '1', null, 'Neld', '13654236987', '616@qq.com', null, '..', '..', '3', null, null, '成都大学', null, '1', '1');
INSERT INTO `client` VALUES ('6', '2017-08-27', '2017-08-29 00:02:01', '2017-08-31', 'Will17', '17', '妥妥', '本科', '6', '3', '线上客户', '2017-08-11', 'iSO', '3', '上海小区', 'QQ', '4279364', '男', 'Java', '高', '3', '2017-08-30', 'Will', '15502233165', '32233@qq.com', null, '..', '..', '1', null, null, '上海交大', null, '1', '1');
INSERT INTO `client` VALUES ('7', '2017-08-27', '2017-08-29 00:11:37', '2017-09-03', 'a123', '21', '千千', '大专', '2', '4', '线上客户', '2017-08-12', 'PHP', '4', '深圳校区', 'QQ', '43242332', '男', 'Java', '中', '4', '2017-08-30', 'ooo', '18923143112', '87923@qq.com', null, '..', '..', '0', null, null, '厦门大学', null, '3', '0');
INSERT INTO `client` VALUES ('8', '2017-08-27', '2017-08-29 00:22:25', '2017-09-03', 'cc666', '24', '吉吉', '大专', '3', '5', '线下客户', '2017-08-13', 'Java', '5', '广州校区', 'QQ', '4297222', '男', 'xxoo', '中', '5', '2017-08-30', 'Bunny', '13902383451', '435463@qq.com', null, '..', '..', '0', null, null, '吉林大学', null, '3', '0');
INSERT INTO `client` VALUES ('9', '2017-08-27', '2017-08-29 00:24:38', '2017-09-07', 'bolo123', '22', '牛牛', '本科', '2', '1', '线下客户', '2017-08-14', 'Java', '6', '深圳校区', 'QQ', '7546353', '女', 'fefe', '中', '6', '2017-09-01', 'Chen', '15502308823', '323423@qq.com', null, '..', '..', '1', '2017-08-27', null, '东北大学', null, '6', '1');
INSERT INTO `client` VALUES ('10', '2017-08-28', '2017-08-29 00:31:13', '2017-09-04', 'gui99', '21', '橙橙', '大专', '1', '2', '线上客户', '2017-08-14', 'Java', '7', '上海校区', 'QQ', '4397233', '男', 'zeze', '高', '7', '2017-09-01', 'Sun', '13805612654', '324234@qq.com', null, '..', '..', '0', null, null, '华东师范', null, '3', '0');
INSERT INTO `client` VALUES ('13', '2017-08-28', '2017-08-29 00:38:56', '2017-09-04', 'shu77', '25', '图图', '本科', '4', '3', '线上客户', '2017-08-14', 'iSO', '11', '北京校区', 'QQ', '3244422', '女', 'wwc', '中', '11', '2017-09-01', 'Wang', '13934323265', '325632@qq.com', null, '..', '..', '0', null, null, '武汉大学', null, '4', '0');
INSERT INTO `client` VALUES ('14', '2017-08-28', '2017-08-29 00:44:23', '2017-09-04', 'le4le4', '23', '乐途', '本科', '3', '4', '线上客户', '2017-08-15', 'Android', '12', '广州校区', 'QQ', '3243926', '女', 'wwt', '中', '12', '2017-09-02', 'He', '15502383265', '435398@qq.com', null, '..', '..', '0', null, null, '华中科技大学', null, '5', '0');
INSERT INTO `client` VALUES ('15', '2017-08-28', '2017-08-29 00:57:02', '2017-09-04', 'Chi99', '22', '串串香', '本科', '3', '2', '线上客户', '2017-08-15', 'iSO', '13', '深圳校区', 'QQ', '2354563', '男', 'OOT', '高', '13', '2017-09-02', 'Tree', '13423421220', '324234@qq.com', null, '..', '..', '0', null, null, '浙江大学', null, '6', '0');
INSERT INTO `client` VALUES ('16', '2017-08-28', '2017-08-29 01:01:46', null, 'Liu1993', '24', '达门', '大专', '3', '3', '线下客户', '2017-08-15', 'Android', '14', '上海校区', 'QQ', '5343234', '女', 'RRW', '中', '14', null, 'Tony', '18923389265', '502023@qq.com', null, '..', '..', '6', null, null, '中山大学', null, '1', '1');
INSERT INTO `client` VALUES ('17', '2017-08-28', '2017-08-29 01:06:28', '2017-09-05', 'Dong666', '23', '毛里求斯', '本科', '2', '1', '线下客户', '2017-08-15', 'Android', '15', '北京校区', 'QQ', '3249318', '男', 'CCM', '中', '15', '2017-09-02', 'John', '13932891265', '795272@qq.com', null, '..', '..', '0', null, null, '湖南大学', null, '1', '0');
INSERT INTO `client` VALUES ('18', '2017-08-31', '2017-08-31 15:58:28', '2017-09-05', 'zzff123', '32', null, '研究生', null, '5', '线下客户', '2017-08-15', 'Java', '1', '深圳校区', '广告', '235252341', '男', 'AAQ', '高', '1', '2017-09-05', 'Xcc', '15524422460', '452005@qq.com', '', '14qeae2341242qewada', '', '1', '2017-08-31', null, '湖北大学', null, null, '1');
INSERT INTO `client` VALUES ('19', '2017-09-01', '2017-09-01 15:20:07', '2017-09-05', 'two22', '25', null, '本科', null, '1', '线上客户', '2017-08-16', 'Java', '1', '上海校区', 'QQ', '32566465', null, 'CCX', '高', '1', '2017-09-14', 'yue', '15902201103', '795621@qq.com', '在校', '..', '..', '1', null, null, '海南大学', null, '2', '1');
INSERT INTO `client` VALUES ('20', '2017-08-30', '2017-08-30 10:29:05', '2017-09-05', 'west666', '23', '西伯利亚', '大专', '1', '1', '线上客户', '2017-08-16', 'Java', null, '上海校区', 'QQ', '46712852', '男', 'otm', '中', '1', '2017-09-03', 'Hong', '13926556205', '412545@qq.com', null, '..', '..', '1', null, '2017-08-31', '甘肃大学', null, '7', '1');
INSERT INTO `client` VALUES ('21', '2017-08-30', '2017-08-30 00:00:00', '2017-09-05', 'yy520', '29', '宾夕法尼亚', '大专', '3', '2', '线上客户', '2017-08-16', 'Java', null, '广州校区', 'QQ', '2452452', '男', 'wop', '高', '1', '2017-09-06', 'Du', '15642111154', '42111@qq.com', null, '..', '..', '3', '2017-08-10', '2017-09-06', '新疆大学', null, '7', '1');
INSERT INTO `client` VALUES ('22', '2017-09-01', '2017-09-01 15:00:45', '2017-09-05', 'java666', '26', '阿尔几内亚', '本科', '2', null, '线下客户', '2017-08-16', 'iSO', null, '北京校区', 'QQ', '2586452', '女', 'xao', '高', '1', '2017-09-03', 'Bob', '15200321541', '546511@qq.com', null, '..', '..', '1', '2017-08-17', '2017-09-04', '南昌大学', null, '7', '1');
INSERT INTO `client` VALUES ('23', '2017-08-30', '2017-08-30 11:12:54', '2017-09-06', 'ogr007', '23', '塔吉克斯坦', '本科', '1', '2', '线上客户', '2017-08-16', 'iSO', null, '北京校区', 'QQ', '2541213', '男', 'OWT', '高', '1', '2017-09-04', 'Tom', '15921215415', '1453154@qq.com', '', '..', '..', '0', null, '2017-09-01', '哈工大', null, '7', '0');
INSERT INTO `client` VALUES ('24', '2017-08-30', '2017-08-30 11:13:35', '2017-09-06', '124121', '22', '莫斯科', '本科', '2', '1', '线下客户', '2017-08-17', 'Android', '2', '深圳校区', '广告', '112122+62', '男', 'SDK', '中', '1', '2017-09-04', 'Shery', '15165165264', '131484@qq.com', '', '..', '..', '0', null, '2017-08-30', '广西大学', null, '7', '0');
INSERT INTO `client` VALUES ('25', '2017-08-30', '2017-08-30 16:30:52', '2017-09-06', 'ddt345', '25', '墨西哥', '大专', '3', '2', '线上客户', '2017-08-17', 'iSO', '3', '广州校区', 'QQ', '59844213', '女', 'UI', '中', '1', '2017-09-04', '2102', '15644231151', '132552@qq.com', '', '..', '..', '0', null, '2017-08-30', '河南大学', null, '7', '0');
INSERT INTO `client` VALUES ('26', '2017-08-31', '2017-08-31 09:54:46', '2017-08-13', '231531', '20', '巴黎', '高中', '1', '3', '线上客户', '2017-08-17', 'Java', '1', '广州校区', 'QQ', '211615', '男', 'NWK', '高', '1', '2017-09-13', '8899', '13923214566', '2324412@qq.com', '毕业设计', '..', '..', '6', '2017-08-03', null, '河北大学', null, '1', '1');
INSERT INTO `client` VALUES ('27', '2017-08-31', '2017-08-31 20:43:59', null, 'adadas', '12', null, '高中', null, null, '线上客户', '2017-08-01', 'Java', '1', '广州校区', 'QQ', '524254345', '女', '12321', '高', '1', null, 'peigen', '213123', '532543', '在校', '', '', '0', null, null, '北大青鸟', null, '1', '0');
INSERT INTO `client` VALUES ('28', '2017-08-31', '2017-08-31 20:49:11', null, 'sdseadef', '12', null, '', null, null, '线下客户', '2017-08-03', 'Java', null, '深圳校区', 'QQ', '1231', '女', '', '高', '1', null, '121', '1211', '12121', '在校', '', '', '0', null, '2017-08-31', '121', null, '7', '0');
INSERT INTO `client` VALUES ('29', '2017-08-31', '2017-08-31 22:49:05', '2017-08-23', '', null, null, '', null, '1', '', null, '', null, '广州校区', '广告', '', null, '', '', '1', null, '', '', '', '', '', '', '3', '2017-08-12', '2017-08-31', '', null, '7', '1');
INSERT INTO `client` VALUES ('30', '2017-08-31', '2017-08-31 23:01:16', '2017-08-31', '123445', '22', null, '高中', null, null, '线上客户', '2017-09-01', 'Java', '1', '北京校区', '广告', '12345678', 'man', '土木工程', '中', '1', '2017-09-02', 'zhangsan', '15911', '123@qq.com', '实习生', '无', '无', '5', '2017-08-29', null, '小码哥', null, '2', '1');
INSERT INTO `client` VALUES ('31', '2017-08-31', '2017-08-31 22:49:13', null, '', null, null, '', null, null, '', null, '', null, '', '', '', null, '', '', '1', null, '', '', '', '', '', '', '0', null, '2017-08-31', '', null, '7', '0');
INSERT INTO `client` VALUES ('32', '2017-08-31', '2017-08-31 22:51:53', null, '432543', '12', null, '大专', null, '1', '线下客户', '2017-08-09', 'c++', null, '广州校区', 'QQ', '45345345', 'man', '', '中', '1', null, '4524524', '54345345', '12345354', '实习生', '', '', '0', null, '2017-09-19', '北大青鸟', null, '7', '0');
INSERT INTO `client` VALUES ('33', '2017-08-31', '2017-08-31 22:52:42', null, '', null, null, '', null, null, '', null, '', null, '', '', '', null, '', '', '1', null, '444', '', '', '', '', '', '0', null, '2017-09-01', '', null, '7', '0');

-- ----------------------------
-- Table structure for clienttrack
-- ----------------------------
DROP TABLE IF EXISTS `clienttrack`;
CREATE TABLE `clienttrack` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `inputTime` date DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `consultWay` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `nextTime` date DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clienttrack
-- ----------------------------
INSERT INTO `clienttrack` VALUES ('2', '2017-08-31', '18', null, '额。。。', '电子邮件', '', '2017-09-05', null);
INSERT INTO `clienttrack` VALUES ('3', '2017-08-31', '30', null, null, null, null, '2017-09-02', null);
INSERT INTO `clienttrack` VALUES ('4', '2017-08-31', '30', null, null, null, null, '2017-09-02', null);
INSERT INTO `clienttrack` VALUES ('6', '2017-08-31', '20', null, null, null, null, '2017-09-03', null);
INSERT INTO `clienttrack` VALUES ('7', null, '3', null, '', '', '', null, null);
INSERT INTO `clienttrack` VALUES ('8', '2017-09-01', '26', null, null, null, null, '2017-09-13', null);
INSERT INTO `clienttrack` VALUES ('9', '2017-09-01', '21', null, null, null, null, '2017-09-06', null);
INSERT INTO `clienttrack` VALUES ('10', '2017-09-01', '19', null, null, null, null, '2017-09-14', null);

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('1', 'java学院');
INSERT INTO `college` VALUES ('2', 'ios学院');
INSERT INTO `college` VALUES ('3', 'ui学院');
INSERT INTO `college` VALUES ('4', '前端学院');

-- ----------------------------
-- Table structure for contract
-- ----------------------------
DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) DEFAULT NULL,
  `signtime` date DEFAULT NULL,
  `saleman_id` bigint(20) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `payment` decimal(10,0) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `editman_id` bigint(20) DEFAULT NULL,
  `edittime` date DEFAULT NULL,
  `state` int(6) DEFAULT NULL,
  `restmoney` decimal(10,0) DEFAULT NULL,
  `customers_id` bigint(20) DEFAULT NULL,
  `audittime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contract
-- ----------------------------
INSERT INTO `contract` VALUES ('1', '2222', '2017-07-04', '2', '6000', '1000', '哈哈哈', '1', '2017-07-20', '1', '5000', '11', '2017-07-19');
INSERT INTO `contract` VALUES ('19', '3333', '2017-07-19', '2', '555', '111', '撒旦法', '6', '2017-07-20', '1', '444', '14', '2017-07-19');
INSERT INTO `contract` VALUES ('24', '4444', '2017-07-20', '6', '555', '112', '111', '2', '2017-07-20', '1', '443', '19', '2017-07-20');

-- ----------------------------
-- Table structure for daytast
-- ----------------------------
DROP TABLE IF EXISTS `daytast`;
CREATE TABLE `daytast` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tastName` varchar(255) DEFAULT NULL,
  `tastDetail` varchar(255) DEFAULT NULL,
  `tastStatus` tinyint(4) DEFAULT NULL,
  `tastDeal_id` bigint(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daytast
-- ----------------------------
INSERT INTO `daytast` VALUES ('1', '111', '做的还好', '1', '1', '2017-07-25 21:28:26');
INSERT INTO `daytast` VALUES ('2', '111', 'HSUA 做的还好', '0', '2', '2017-07-20 21:28:29');
INSERT INTO `daytast` VALUES ('3', '111', 'HSUA 做的还好', '1', '2', '2017-07-20 21:28:32');
INSERT INTO `daytast` VALUES ('4', '1111', 'HSUA 做的还好', '1', '2', '2017-07-02 09:45:57');
INSERT INTO `daytast` VALUES ('5', '111', 'HSUA 做的还好', '1', '1', '2017-07-04 17:46:34');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(10) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `manage_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', 'HUMAN', '人事部', '5', '92', '1');
INSERT INTO `department` VALUES ('2', 'SELL', '销售部', '1', '92', '0');
INSERT INTO `department` VALUES ('3', 'FINANCE', '财务部', '15', '92', '1');
INSERT INTO `department` VALUES ('4', 'PROJECT', '项目部', null, '92', '0');
INSERT INTO `department` VALUES ('5', 'DEVELOP', '开发部', null, '4', '1');
INSERT INTO `department` VALUES ('91', 'TECHNIQUE', '技术部', '2', '4', '1');
INSERT INTO `department` VALUES ('92', 'HIGH-RISE', '红黑会', '1', null, '1');
INSERT INTO `department` VALUES ('93', 'TEACHER', '教育', '14', '92', '1');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `inputtime` date DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `dept_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_emp_dept` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('0', 'flow', '白风', 'zzz', '……', 'k@wall.com', '2009-09-29', '1', '1', '92');
INSERT INTO `employee` VALUES ('1', 'wall', '红黑雨', 'xxx', '130**0', 'z@163.com', '2012-09-20', '1', '1', '92');
INSERT INTO `employee` VALUES ('2', 'xd', '旭东', '1', '1308', 'X@GEmail.com', '2017-04-17', '0', '0', '91');
INSERT INTO `employee` VALUES ('3', 'Cixin', '刘慈欣', '1', '137**8', 'liudh@520it.com', '2017-04-17', '0', '0', '4');
INSERT INTO `employee` VALUES ('5', 'Jackie', '成龙', '1', '1386', 'Jackie@GEmail', '2017-04-19', '0', '0', '4');
INSERT INTO `employee` VALUES ('6', 'Loj', '罗京', '1', '13088888885', 'Loj@GEmail', '2017-06-21', '1', '0', '1');
INSERT INTO `employee` VALUES ('8', 'zhoujl', '周杰伦', '1', '15368463256', 'jay@qq.com', '2017-07-19', '0', '0', '4');
INSERT INTO `employee` VALUES ('9', 'Hal', '海霞', '1932c8892f8202d43cd26ad623c8c308', '186*1', 'Hal@GEamil', '2017-07-20', '0', '0', '1');
INSERT INTO `employee` VALUES ('10', 'LiMel', '李梓萌', '5bf023f3f3e2c00540a256bfbbe94733', '186*2', 'Lzm@GEmail', '2017-07-20', '0', '0', '1');
INSERT INTO `employee` VALUES ('11', 'Oxd', '欧阳夏丹', '8acaa79366bbe06c0ce1aa5b08cb61b2', '111555', 'Oyx@GEmail', '2017-07-20', '0', '0', '2');
INSERT INTO `employee` VALUES ('12', 'Ganqa', '刚强', '7f0cc70f16900810795043a0bb1374c1', '123212', 'Ganq@GEmail', '2017-07-20', '0', '0', '1');
INSERT INTO `employee` VALUES ('13', 'Any', '庵野秀明', '285ab9448d2751ee57ece7f762c39095', '116', 'Any@GEamil', '2017-08-28', '1', '0', '93');
INSERT INTO `employee` VALUES ('14', 'EvaristeGalois', '伽罗瓦', '658d6b7cadbdae42871e796edeeeaa8b', '1001', 'EG@gmail', '2016-10-05', '1', '0', '93');
INSERT INTO `employee` VALUES ('15', 'LoPan', '罗振宇', '7fbe1f27346143ee0df74b4fc0ba509b', '158**11', 'lop@EE.COM', '2016-09-01', '1', '0', '3');
INSERT INTO `employee` VALUES ('16', 'WuD', '吴晓东', 'b093c37857d6bc46f3f1e883b5cb437e', '159*1', 'Wu@gmail', '2016-10-01', '1', '0', '3');
INSERT INTO `employee` VALUES ('17', 'Abel', '阿贝尔', '607fe3624a0f7b23caf51504e5ce04bf', '0002', 'ab@gEmail', '2016-10-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('18', 'GS', '高斯', '149330ccef1e6880f2469636f1993eb6', '003', 'gs@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('19', 'LoBD', '洛必达', '61a820ba9d635d844c18eeca8f034fb2', '004', 'LB@GEmail', '2016-10-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('21', 'Mik', '米开朗基罗', '91f7e9372d9a6f9246a061c3bd9aa99a', '005', 'MJL@gEmail', '2016-10-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('22', 'DaFeq', '达·芬奇', 'c76ff4f2b93f9169085909cc00da2e55', '006', 'DF@GEmail', '2016-10-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('23', 'Ajemd', '阿基米德', 'a94442e93b1509bc8363cc3bde57587b', '007', 'Aj@gEmail', '2016-10-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('24', 'laySer', '老舍', 'd0e85480755e8f3d668655e02909871e', '008', 'layS@GEmail', '2016-10-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('25', 'Binb', '冰心', 'bcdb14238cda3125b4c9b74d52339c66', '009', 'Binb@GEmail', '2016-10-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('26', 'BaMet', '巴金', '5c89dfa31015f0dcfdc2d3c7ff4bebb6', '0001', 'BaMet@GEmail', '2016-10-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('27', 'Gogh', '梵高', 'eff450549493b237ae11c3bd7852ebf0', '0002', 'FnGo@GEmail', '2016-10-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('28', 'BaiSt', '齐白石', 'd6bc9c2979c86adbc0e39c49a872484d', '169', 'BaiSt@GEmail', '2016-10-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('29', 'Newton', '艾萨克·牛顿', '1894a9e0ea3f325021725eeaaab70328', '186……*', 'Newton@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('30', 'Euclid', '欧几里得', '559833b7d93aa3d26d595f2dac6c1d2c', '186……*', 'Euclid@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('31', 'Leibniz', '戈特弗里德·威廉·莱布尼茨', '1a358bd699909d5a263e4fac6a192ab1', '186……*', 'Leibniz@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('32', 'Leibniz', '尼古拉·哥白尼', '1a358bd699909d5a263e4fac6a192ab1', '186……*', 'Leibniz@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('33', 'Descartes', '笛卡儿', 'd948297af1484c8cf5490ab0f9eee8f2', '186……*', 'Descartes@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('34', 'Hegel', '黑格尔', 'ecbb3feb347d9bd9c80a85e613e5cc60', '186……*', 'Hegel@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('35', 'Pythagoras', '毕达哥拉斯', '174f873e444fcfcf4710fdd5d3734980', '186……*', 'Pythagoras@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('36', 'xixy', '西茜', '4fa56f70034179353228b43982638d5e', '186……*', 'xixy@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('37', 'nieer', '聂耳', '63ef79f2d95359d0964177e2a5844844', '186……*', 'nieer@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('38', 'Beethoven', '贝多芬', 'b89492924c4105abcb6e23bca2187b46', '186……*', 'Beethoven@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('39', 'Monet', '克劳德·莫奈', '3f6f820f3e835b3bd7be95dc52274c22', '186……*', 'Monet@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('40', 'Lang', '郎朗', 'e55d33613e9f446a010c46f6272d56ae', '186……*', 'Lang@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('41', 'Mozart', '莫扎特', '4fd1d709c77007dc49cfc1224e3cfb1a', '186……*', 'Mozart@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('42', 'Rj', '阮佳', 'a9b40d7367f2408da46e5c9d66e4f0bb', '186……*', 'Rj@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('43', 'LiM', '黎曼', 'fca5e76b1b718f41c1c504bad11d4086', '186……*', 'LiM@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('44', 'Cauchy', '柯西', '61c13c4e1bcf18adb37ad4673ce6b77f', '186……*', 'Cauchy@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('45', 'Poincaré', '庞加莱', 'c00a4107443f661e6db78d950737827e', '186……*', 'Poincaré@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('46', 'Hilbert', '希尔伯特', 'd5acd14b1ae0cff1eaec957ab9dafd17', '186……*', 'Hilbert@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('47', 'Fermat', '皮耶·德·费玛', '7ea4f631340f2c9237be613554af81a5', '186……*', 'Fermat@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('48', 'Fermat', '狄利克雷', '7ea4f631340f2c9237be613554af81a5', '186……*', 'Fermat@GEmail', '2016-09-01', '1', '0', '93');
INSERT INTO `employee` VALUES ('49', 'Tesla', '尼古拉特斯拉', 'b7ceac655e30baa434688935bc3b7946', '186……*', 'Tesla@GEmail', '2016-09-01', '1', '0', '93');

-- ----------------------------
-- Table structure for employee_role
-- ----------------------------
DROP TABLE IF EXISTS `employee_role`;
CREATE TABLE `employee_role` (
  `employee_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee_role
-- ----------------------------
INSERT INTO `employee_role` VALUES ('8', '4');
INSERT INTO `employee_role` VALUES ('15', '3');
INSERT INTO `employee_role` VALUES ('16', '7');
INSERT INTO `employee_role` VALUES ('17', '10');
INSERT INTO `employee_role` VALUES ('17', '8');
INSERT INTO `employee_role` VALUES ('18', '8');
INSERT INTO `employee_role` VALUES ('18', '10');
INSERT INTO `employee_role` VALUES ('14', '8');
INSERT INTO `employee_role` VALUES ('14', '10');
INSERT INTO `employee_role` VALUES ('19', '10');
INSERT INTO `employee_role` VALUES ('1', '1');
INSERT INTO `employee_role` VALUES ('21', '10');
INSERT INTO `employee_role` VALUES ('22', '10');
INSERT INTO `employee_role` VALUES ('23', '10');
INSERT INTO `employee_role` VALUES ('11', '2');
INSERT INTO `employee_role` VALUES ('10', '2');
INSERT INTO `employee_role` VALUES ('9', '2');
INSERT INTO `employee_role` VALUES ('12', '2');
INSERT INTO `employee_role` VALUES ('6', '2');
INSERT INTO `employee_role` VALUES ('5', '4');
INSERT INTO `employee_role` VALUES ('5', '3');
INSERT INTO `employee_role` VALUES ('5', '7');
INSERT INTO `employee_role` VALUES ('5', '6');
INSERT INTO `employee_role` VALUES ('3', '1');
INSERT INTO `employee_role` VALUES ('2', '1');
INSERT INTO `employee_role` VALUES ('2', '7');
INSERT INTO `employee_role` VALUES ('2', '10');
INSERT INTO `employee_role` VALUES ('13', '1');
INSERT INTO `employee_role` VALUES ('13', '8');
INSERT INTO `employee_role` VALUES ('13', '10');
INSERT INTO `employee_role` VALUES ('24', '10');
INSERT INTO `employee_role` VALUES ('25', '10');
INSERT INTO `employee_role` VALUES ('26', '10');
INSERT INTO `employee_role` VALUES ('27', '10');
INSERT INTO `employee_role` VALUES ('28', '10');
INSERT INTO `employee_role` VALUES ('29', '10');
INSERT INTO `employee_role` VALUES ('30', '10');
INSERT INTO `employee_role` VALUES ('31', '10');
INSERT INTO `employee_role` VALUES ('32', '10');
INSERT INTO `employee_role` VALUES ('33', '10');
INSERT INTO `employee_role` VALUES ('34', '10');
INSERT INTO `employee_role` VALUES ('35', '10');
INSERT INTO `employee_role` VALUES ('36', '10');
INSERT INTO `employee_role` VALUES ('37', '10');
INSERT INTO `employee_role` VALUES ('38', '10');
INSERT INTO `employee_role` VALUES ('39', '10');
INSERT INTO `employee_role` VALUES ('40', '10');
INSERT INTO `employee_role` VALUES ('41', '10');
INSERT INTO `employee_role` VALUES ('42', '10');
INSERT INTO `employee_role` VALUES ('43', '10');
INSERT INTO `employee_role` VALUES ('44', '10');
INSERT INTO `employee_role` VALUES ('45', '10');
INSERT INTO `employee_role` VALUES ('46', '10');
INSERT INTO `employee_role` VALUES ('47', '10');
INSERT INTO `employee_role` VALUES ('48', '10');
INSERT INTO `employee_role` VALUES ('49', '10');

-- ----------------------------
-- Table structure for exammanage
-- ----------------------------
DROP TABLE IF EXISTS `exammanage`;
CREATE TABLE `exammanage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名字',
  `sn` varchar(255) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `examtime` datetime DEFAULT NULL,
  `examresult` bigint(255) DEFAULT NULL,
  `examremark` varchar(255) DEFAULT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exammanage
-- ----------------------------
INSERT INTO `exammanage` VALUES ('1', '1', '1', '1', '2017-07-03 10:02:57', '1', '11', '1');
INSERT INTO `exammanage` VALUES ('2', '11', '11', '11', '2017-07-01 00:00:00', '2', '11', null);
INSERT INTO `exammanage` VALUES ('3', '11', '11', '11', '2017-07-06 00:00:00', '3', '11', null);
INSERT INTO `exammanage` VALUES ('4', '1', '1', '1', '2017-07-03 00:00:00', '4', '', null);
INSERT INTO `exammanage` VALUES ('5', '11', '11', '11', '2017-07-02 00:00:00', '33', '11', null);
INSERT INTO `exammanage` VALUES ('6', '55', '11', '1', '2017-07-04 00:00:00', null, '22', null);
INSERT INTO `exammanage` VALUES ('8', null, null, null, null, null, null, null);
INSERT INTO `exammanage` VALUES ('9', null, null, null, null, null, null, null);
INSERT INTO `exammanage` VALUES ('10', 'java', '11', '1', '2017-07-05 00:00:00', null, '11', '1');
INSERT INTO `exammanage` VALUES ('11', 'java升班考试', '01', '21', '2017-07-31 00:00:00', '90', '', '1');
INSERT INTO `exammanage` VALUES ('12', 'java考试', '12', '16', '2017-07-31 00:00:00', null, '邹', '1');
INSERT INTO `exammanage` VALUES ('13', 'java', '12', '25', '2017-07-31 00:00:00', '90', 'uyg', '1');

-- ----------------------------
-- Table structure for expenditure
-- ----------------------------
DROP TABLE IF EXISTS `expenditure`;
CREATE TABLE `expenditure` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `handler` bigint(20) DEFAULT NULL,
  `cashier` bigint(20) DEFAULT NULL,
  `paymethod` varchar(255) DEFAULT NULL,
  `paytype` varchar(255) DEFAULT NULL,
  `subclass` varchar(255) DEFAULT NULL,
  `documentnumber` varchar(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `auditor` bigint(20) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of expenditure
-- ----------------------------
INSERT INTO `expenditure` VALUES ('1', '2017-08-08', '100000', '一年水电费', '2', '3', '支付宝', '经济萌芽', '经济稳健', '4156465465546456', 'Java', null, '0');
INSERT INTO `expenditure` VALUES ('2', '2017-08-12', '800000', '一年房租费', '4', '5', '银行卡', '通货膨胀', '通货紧缩', '4368125785223112', 'iSO', '1', '1');
INSERT INTO `expenditure` VALUES ('3', '2017-08-14', '50000', '一年物业费', '6', '7', '银行卡', '赤贷危机', '经融风暴', '4365892212222578', 'Java', '8', '0');
INSERT INTO `expenditure` VALUES ('4', '2017-08-15', '30000', '一年卫生费', '5', '6', '银行卡', '经济回调', '经济低迷', '4948863226945115', 'Java', null, '0');
INSERT INTO `expenditure` VALUES ('5', '2017-08-17', '2800000', '一年员工工资', '10', '11', '银行卡', '经济紧缩', '经济萧条', '5611234484545125', 'Java', '1', '1');
INSERT INTO `expenditure` VALUES ('6', '2017-08-18', '500000', '一年办公座椅费', '12', '13', '银行卡', '经济向好', '经济反弹', '4971226655441225', 'iSO', null, '0');
INSERT INTO `expenditure` VALUES ('7', '2017-08-20', '3000000', '一年装修费', '15', '16', '银行卡', '经济震荡', '经济平稳', '6551410054524112', 'Java', '17', '0');
INSERT INTO `expenditure` VALUES ('8', '2017-08-21', '70000', '一年海报印刷费', '18', '19', '银行卡', '经济回落', '经济见底', '4655821123847456', 'Android', null, '0');
INSERT INTO `expenditure` VALUES ('9', '2017-08-22', '80000', '一年校园推介费', '20', '21', '支付宝', '经济复苏', '经济回稳', '4265989115895321', 'Android', '5', '0');
INSERT INTO `expenditure` VALUES ('10', '2017-08-24', '130000', '一年网站维护费', '22', '23', '银行卡', '经济焦灼', '经济调整', '4255513123545321', 'Java', '9', '1');
INSERT INTO `expenditure` VALUES ('11', '2017-08-25', '300000', '一年社保缴纳费', '24', '25', '银行卡', '经济滑坡', '经济跃进', '4562325195662326', 'Java', '11', '0');
INSERT INTO `expenditure` VALUES ('17', '2017-08-12', '800000', '一年房租费', '7', '5', '银行卡', '通货膨胀', '通货紧缩', '4368125785223112', '未审核', null, '0');
INSERT INTO `expenditure` VALUES ('18', '2017-08-12', '100000', '一年水电费', '6', '3', '支付宝', '奋斗奋斗', '奋斗奋斗', '4156465465546456', '未审核', null, '0');
INSERT INTO `expenditure` VALUES ('19', '2017-08-12', '200000', '一年员工差旅费', '7', '5', '银行卡', '通货膨胀', '通货紧缩', '4368125785223112', '未审核', null, '0');
INSERT INTO `expenditure` VALUES ('20', '2017-08-29', '12000', 'aaaa', '2', '5', '发放', '放到', '个人对的', '5264586532325462', 'IOS', null, '0');
INSERT INTO `expenditure` VALUES ('21', '2017-08-31', '200', '一个月水电费', '4', '7', '现金', '月结', '生活费', '12345678', '财务科', null, '0');
INSERT INTO `expenditure` VALUES ('22', '2017-08-31', '10', '垃圾费', '2', '2', '现金', '类型', '小类', '12345678', '财务科', null, '0');
INSERT INTO `expenditure` VALUES ('25', '2017-08-14', '50000', '一年物业费', '6', '7', '银行卡', '赤贷危机', '经融风暴', '4365892212222578', 'Java', null, '0');
INSERT INTO `expenditure` VALUES ('26', '2017-08-15', '30000', '一年卫生费', '5', '3', '银行卡', '经济回调', '经济低迷', '4948863226945115', 'Java', null, '0');
INSERT INTO `expenditure` VALUES ('27', '2017-08-17', '2800000', '一年员工工资', null, '11', '银行卡', '经济紧缩', '经济萧条', '5611234484545125', 'Java', '1', '0');
INSERT INTO `expenditure` VALUES ('28', '2017-08-18', '500000', '一年办公座椅费', '12', '13', '银行卡', '经济向好', '经济反弹', '4971226655441225', 'iSO', null, '0');
INSERT INTO `expenditure` VALUES ('29', '2017-08-20', '3000000', '一年装修费', '15', '16', '银行卡', '经济震荡', '经济平稳', '6551410054524112', 'Java', '17', '0');
INSERT INTO `expenditure` VALUES ('30', '2017-08-21', '70000', '一年海报印刷费', '18', '19', '银行卡', '经济回落', '经济见底', '4655821123847456', 'Android', null, '0');
INSERT INTO `expenditure` VALUES ('31', '2017-08-22', '80000', '一年校园推介费', '20', '21', '支付宝', '经济复苏', '经济回稳', '4265989115895321', 'Android', '5', '0');
INSERT INTO `expenditure` VALUES ('32', '2017-08-24', '130000', '一年网站维护费', '22', '23', '银行卡', '经济焦灼', '经济调整', '4255513123545321', 'Java', null, '0');
INSERT INTO `expenditure` VALUES ('33', '2017-08-25', '300000', '一年社保缴纳费', '24', '25', '银行卡', '经济滑坡', '经济跃进', '4562325195662326', 'Java', '11', '0');
INSERT INTO `expenditure` VALUES ('34', '2017-08-12', '800000', '一年房租费', '7', '5', '银行卡', '通货膨胀', '通货紧缩', '4368125785223112', '未审核', null, '0');
INSERT INTO `expenditure` VALUES ('35', '2017-08-12', '100000', '一年水电费', '6', '3', '支付宝', '奋斗奋斗', '奋斗奋斗', '4156465465546456', '未审核', null, '0');
INSERT INTO `expenditure` VALUES ('36', '2017-08-12', '200000', '一年员工差旅费', '7', '5', '银行卡', '通货膨胀', '通货紧缩', '4368125785223112', '未审核', null, '0');
INSERT INTO `expenditure` VALUES ('38', '2017-08-31', '200', '一个月水电费', '4', '7', '现金', '月结', '生活费', '12345678', '财务科', null, '0');
INSERT INTO `expenditure` VALUES ('39', '2017-08-31', '10', '垃圾费', '2', '2', '现金', '类型', '小类', '12345678', '财务科', null, '0');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` varchar(20) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '系统管理', '/dasssss/system.html', null);
INSERT INTO `menu` VALUES ('2', '员工管理', '/employee_view.do', '1');
INSERT INTO `menu` VALUES ('3', '部门管理', '/department_view.do', '1');
INSERT INTO `menu` VALUES ('6', '角色管理', '/role_view.do', '1');
INSERT INTO `menu` VALUES ('7', '数据字典', '/systemdictionary_view.do', '1');
INSERT INTO `menu` VALUES ('8', '系统日志', '/systemlog_view.do', '1');
INSERT INTO `menu` VALUES ('9', '客户服务', '/dasssss/client.html', null);
INSERT INTO `menu` VALUES ('10', '潜在客户管理', '/client_view.do', '9');
INSERT INTO `menu` VALUES ('11', '学员跟踪', '/clienttrack_view.do', '9');
INSERT INTO `menu` VALUES ('12', '移交历史', '/transfer_view.do', '9');
INSERT INTO `menu` VALUES ('13', '大客户(学校)', '/schoolClient_view.do', '9');
INSERT INTO `menu` VALUES ('14', '学校联系人', '/schoolLinkMan_view.do', '9');
INSERT INTO `menu` VALUES ('15', '学校跟踪', '/schoolTraceLog_view.do', '9');
INSERT INTO `menu` VALUES ('16', '学校移交历史', '/schoolClientTransferLog_view.do', '9');
INSERT INTO `menu` VALUES ('17', '学员管理', '/dasssss/student.html', null);
INSERT INTO `menu` VALUES ('18', '正式学员管理', '/student_view.do', '17');
INSERT INTO `menu` VALUES ('19', '学员升班留级', '/student_upordown.do', '17');
INSERT INTO `menu` VALUES ('20', '收款管理', '/receipt_view.do', '17');
INSERT INTO `menu` VALUES ('21', '学员流失', '/studentloss_view.do', '17');
INSERT INTO `menu` VALUES ('22', '支出管理', '/expenditure_view.do', '17');
INSERT INTO `menu` VALUES ('23', '教务管理', '/dasssss/class.html', null);
INSERT INTO `menu` VALUES ('24', '班级管理', '/studentclass_view.do', '23');
INSERT INTO `menu` VALUES ('25', '课程表管理', '/timetabledictionary_view.do', '23');
INSERT INTO `menu` VALUES ('26', '教室管理', '/roomclass_view.do', '23');
INSERT INTO `menu` VALUES ('27', '日常办公', '/dasssss/day.html', null);
INSERT INTO `menu` VALUES ('28', '工资管理', '/salary_view.do', '27');
INSERT INTO `menu` VALUES ('29', '考勤管理', '/attendance_view.do', '27');
INSERT INTO `menu` VALUES ('30', '报表管理', null, null);
INSERT INTO `menu` VALUES ('31', '正式学员报表', '/studentChart_view.do', '30');
INSERT INTO `menu` VALUES ('32', '音乐', 'http://music.163.com/', null);
INSERT INTO `menu` VALUES ('33', '百度', 'https://www.baidu.com/', null);

-- ----------------------------
-- Table structure for networkdisk
-- ----------------------------
DROP TABLE IF EXISTS `networkdisk`;
CREATE TABLE `networkdisk` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `savepath` varchar(255) DEFAULT NULL,
  `filePrefName` varchar(255) DEFAULT NULL,
  `fileSuffName` varchar(255) DEFAULT NULL,
  `uploadMan` bigint(20) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `smalimge` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of networkdisk
-- ----------------------------
INSERT INTO `networkdisk` VALUES ('1', 'F:\\StudyingRecord\\teacher\\CRM10\\crm\\src\\main\\webapp\\static\\upload/新建文本文档 (2).jpg', '新建文本文档 (2)', '.jpg', '1', '0', '2017-07-20 15:13:09', 'jpg.png');
INSERT INTO `networkdisk` VALUES ('2', 'F:\\StudyingRecord\\teacher\\CRM10\\crm\\src\\main\\webapp\\static\\upload/新建文本文档.txt', '新建文本文档', '.txt', '1', '0', '2017-07-20 15:13:31', 'txt.png');
INSERT INTO `networkdisk` VALUES ('3', 'F:\\StudyingRecord\\teacher\\CRM10\\crm\\src\\main\\webapp\\static\\upload/刘德华.txt', '刘德华', '.txt', '2', '0', '2017-07-20 15:16:09', 'txt.png');
INSERT INTO `networkdisk` VALUES ('4', 'F:\\StudyingRecord\\teacher\\CRM10\\crm\\src\\main\\webapp\\static\\upload/admin.txt', 'admin', '.txt', '1', '1', '2017-07-20 18:16:24', 'txt.png');
INSERT INTO `networkdisk` VALUES ('5', 'F:\\StudyingRecord\\teacher\\CRM10\\crm\\src\\main\\webapp\\static\\upload/admin.txt', 'admin', '.txt', '1', '0', '2017-07-20 18:16:39', 'txt.png');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `resource` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('5', '员工数据', 'employee:list');
INSERT INTO `permission` VALUES ('6', '员工新增', 'employee:save');
INSERT INTO `permission` VALUES ('7', '员工列表', 'employee:index');
INSERT INTO `permission` VALUES ('8', '员工更新', 'employee:update');
INSERT INTO `permission` VALUES ('9', '员工离职', 'employee:quit');

-- ----------------------------
-- Table structure for practicaltrainning
-- ----------------------------
DROP TABLE IF EXISTS `practicaltrainning`;
CREATE TABLE `practicaltrainning` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `effect` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `school_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `school_id` (`school_id`),
  CONSTRAINT `practicaltrainning_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of practicaltrainning
-- ----------------------------
INSERT INTO `practicaltrainning` VALUES ('25', '1', '2017-07-03 00:00:00', '11', '', '1', null);
INSERT INTO `practicaltrainning` VALUES ('26', '1', '2017-07-04 00:00:00', '1', '1', '', null);
INSERT INTO `practicaltrainning` VALUES ('27', '1', '2017-07-04 00:00:00', '1', '', '', null);
INSERT INTO `practicaltrainning` VALUES ('28', '1', '2017-07-04 00:00:00', '', '', '1', null);
INSERT INTO `practicaltrainning` VALUES ('29', '1', '2017-07-03 00:00:00', '1', '1', '', null);
INSERT INTO `practicaltrainning` VALUES ('30', '11', '2017-07-03 00:00:00', '1', '11', '11', '8');

-- ----------------------------
-- Table structure for receipt
-- ----------------------------
DROP TABLE IF EXISTS `receipt`;
CREATE TABLE `receipt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `student` bigint(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `studentclass` varchar(255) DEFAULT NULL,
  `payee` bigint(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `documentnumber` varchar(11) DEFAULT NULL,
  `bill` tinyint(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `marketuser` bigint(255) DEFAULT NULL,
  `classchange` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of receipt
-- ----------------------------
INSERT INTO `receipt` VALUES ('1', '1', '2017-08-15', '1000', '2', '2', '支付宝', '定金', '6541561465', '0', '方法放到方式', '3', '无', '1');
INSERT INTO `receipt` VALUES ('2', '2', '2017-08-16', '2000', '2', '3', '银行卡', '定金', '6541561466', '0', '东边的太阳西边雨', '4', '以前:Java13期,现在:Java14期', '1');
INSERT INTO `receipt` VALUES ('3', '7', '2017-08-17', '1000', '4', '4', '支付宝', '定金', '6541561467', '1', '天外飞仙', '7', '无', null);
INSERT INTO `receipt` VALUES ('4', '4', '2017-08-17', '1000', '3', '5', '支付宝', '定金', '6541561468', '1', '惊天地泣鬼神', '1', '以前:Java10期,现在:Java14期', null);
INSERT INTO `receipt` VALUES ('5', '5', '2017-08-17', '2000', '3', '6', '银行卡', '定金', '6541561469', '0', '苦不苦想想长征两万五', '7', '无', '1');
INSERT INTO `receipt` VALUES ('6', '6', '2017-08-18', '1000', '3', '7', '支付宝', '定金', '65415614670', '0', '万万没想到', '8', '无', '0');
INSERT INTO `receipt` VALUES ('7', '2', '2017-08-15', '2000', '1', '2', '银行卡', 'gf', '5248369', '1', '2222', '3', '以前15期，现在：Java15期', '1');
INSERT INTO `receipt` VALUES ('8', '8', '2017-08-10', '5000', '2', '16', '现金', '学费', '1234577', '0', '太阳当空照，花儿对我笑', '3', '无', '0');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sn` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '系统管理员', 'ADMIN');
INSERT INTO `role` VALUES ('2', '人事专员', 'HR');
INSERT INTO `role` VALUES ('3', '市场部主管', 'MARKET MANAGER');
INSERT INTO `role` VALUES ('4', '市场专员', 'SALE');
INSERT INTO `role` VALUES ('6', '咨询部主管', 'COUNSELOR MANAGER');
INSERT INTO `role` VALUES ('7', '咨询师', 'COUNSELOR');
INSERT INTO `role` VALUES ('8', '班主任', 'TEACHER');
INSERT INTO `role` VALUES ('9', '行政部', 'ADMINISTRATOR');
INSERT INTO `role` VALUES ('10', '教师', 'TEACHER');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `role_id` bigint(20) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('29', '2');
INSERT INTO `role_menu` VALUES ('30', '3');
INSERT INTO `role_menu` VALUES ('32', '3');
INSERT INTO `role_menu` VALUES ('7', '4');
INSERT INTO `role_menu` VALUES ('26', '4');
INSERT INTO `role_menu` VALUES ('27', '4');
INSERT INTO `role_menu` VALUES ('28', '4');
INSERT INTO `role_menu` VALUES ('33', '4');
INSERT INTO `role_menu` VALUES ('34', '4');
INSERT INTO `role_menu` VALUES ('31', '3');
INSERT INTO `role_menu` VALUES ('32', '3');
INSERT INTO `role_menu` VALUES ('36', '3');
INSERT INTO `role_menu` VALUES ('7', '4');
INSERT INTO `role_menu` VALUES ('26', '4');
INSERT INTO `role_menu` VALUES ('27', '4');
INSERT INTO `role_menu` VALUES ('28', '4');
INSERT INTO `role_menu` VALUES ('33', '4');
INSERT INTO `role_menu` VALUES ('34', '4');
INSERT INTO `role_menu` VALUES ('29', '2');
INSERT INTO `role_menu` VALUES ('30', '2');
INSERT INTO `role_menu` VALUES ('31', '2');
INSERT INTO `role_menu` VALUES ('36', '2');
INSERT INTO `role_menu` VALUES ('2', '32');
INSERT INTO `role_menu` VALUES ('2', '29');
INSERT INTO `role_menu` VALUES ('2', '31');
INSERT INTO `role_menu` VALUES ('2', '36');
INSERT INTO `role_menu` VALUES ('2', '7');
INSERT INTO `role_menu` VALUES ('2', '35');
INSERT INTO `role_menu` VALUES ('2', '3');
INSERT INTO `role_menu` VALUES ('2', '4');
INSERT INTO `role_menu` VALUES ('2', '5');
INSERT INTO `role_menu` VALUES ('3', '1');
INSERT INTO `role_menu` VALUES ('3', '8');
INSERT INTO `role_menu` VALUES ('3', '9');
INSERT INTO `role_menu` VALUES ('3', '10');
INSERT INTO `role_menu` VALUES ('3', '11');
INSERT INTO `role_menu` VALUES ('3', '12');
INSERT INTO `role_menu` VALUES ('3', '13');
INSERT INTO `role_menu` VALUES ('3', '2');
INSERT INTO `role_menu` VALUES ('3', '14');
INSERT INTO `role_menu` VALUES ('3', '15');
INSERT INTO `role_menu` VALUES ('3', '16');
INSERT INTO `role_menu` VALUES ('3', '17');
INSERT INTO `role_menu` VALUES ('3', '18');
INSERT INTO `role_menu` VALUES ('3', '19');
INSERT INTO `role_menu` VALUES ('3', '20');
INSERT INTO `role_menu` VALUES ('3', '21');
INSERT INTO `role_menu` VALUES ('3', '22');
INSERT INTO `role_menu` VALUES ('3', '23');
INSERT INTO `role_menu` VALUES ('3', '24');
INSERT INTO `role_menu` VALUES ('3', '25');
INSERT INTO `role_menu` VALUES ('3', '7');
INSERT INTO `role_menu` VALUES ('3', '35');
INSERT INTO `role_menu` VALUES ('3', '3');
INSERT INTO `role_menu` VALUES ('4', '1');
INSERT INTO `role_menu` VALUES ('4', '8');
INSERT INTO `role_menu` VALUES ('4', '9');
INSERT INTO `role_menu` VALUES ('4', '10');
INSERT INTO `role_menu` VALUES ('4', '11');
INSERT INTO `role_menu` VALUES ('4', '12');
INSERT INTO `role_menu` VALUES ('4', '13');
INSERT INTO `role_menu` VALUES ('4', '2');
INSERT INTO `role_menu` VALUES ('4', '14');
INSERT INTO `role_menu` VALUES ('4', '15');
INSERT INTO `role_menu` VALUES ('4', '16');
INSERT INTO `role_menu` VALUES ('4', '17');
INSERT INTO `role_menu` VALUES ('4', '18');
INSERT INTO `role_menu` VALUES ('4', '19');
INSERT INTO `role_menu` VALUES ('4', '20');
INSERT INTO `role_menu` VALUES ('4', '21');
INSERT INTO `role_menu` VALUES ('4', '22');
INSERT INTO `role_menu` VALUES ('4', '23');
INSERT INTO `role_menu` VALUES ('4', '24');
INSERT INTO `role_menu` VALUES ('4', '25');
INSERT INTO `role_menu` VALUES ('4', '7');
INSERT INTO `role_menu` VALUES ('4', '35');
INSERT INTO `role_menu` VALUES ('4', '3');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `role_id` bigint(20) DEFAULT NULL,
  `permission_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('2', '4');
INSERT INTO `role_permission` VALUES ('2', '5');
INSERT INTO `role_permission` VALUES ('2', '6');
INSERT INTO `role_permission` VALUES ('3', '8');
INSERT INTO `role_permission` VALUES ('3', '9');
INSERT INTO `role_permission` VALUES ('3', '10');
INSERT INTO `role_permission` VALUES ('3', '11');
INSERT INTO `role_permission` VALUES ('5', '4');
INSERT INTO `role_permission` VALUES ('5', '5');
INSERT INTO `role_permission` VALUES ('5', '6');
INSERT INTO `role_permission` VALUES ('5', '7');
INSERT INTO `role_permission` VALUES ('10', '7');

-- ----------------------------
-- Table structure for roomclass
-- ----------------------------
DROP TABLE IF EXISTS `roomclass`;
CREATE TABLE `roomclass` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classroom` varchar(255) DEFAULT NULL,
  `roomlocation` varchar(255) DEFAULT NULL,
  `studentclass_id` bigint(20) DEFAULT NULL,
  `totalstudent` bigint(20) DEFAULT NULL,
  `inputdate` date DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roomclass
-- ----------------------------
INSERT INTO `roomclass` VALUES ('1', 'A705', 'A栋705', '5', '120', '2017-08-21', '使用到10月15号');
INSERT INTO `roomclass` VALUES ('2', 'D505', 'D栋505', '4', '122', '2017-05-05', '19期Java待用');
INSERT INTO `roomclass` VALUES ('4', 'B705', 'B栋705', '4', '120', '2017-08-07', '!!!!!!!!!!!!!!!');
INSERT INTO `roomclass` VALUES ('5', 'F302', 'F栋302', '12', '125', '2017-08-08', '!!!!!!!!!!!!!!!!');
INSERT INTO `roomclass` VALUES ('6', 'K402', 'K栋402', '10', '120', '2017-08-21', '!!!!!!!!!');
INSERT INTO `roomclass` VALUES ('7', 'A606', 'A栋606', '4', '110', '2016-08-03', '');
INSERT INTO `roomclass` VALUES ('8', 'A505', 'A栋505', '12', '109', '2015-08-11', '!!!!!!!!!!');
INSERT INTO `roomclass` VALUES ('9', 'X301', 'X栋301', '9', '112', '2014-08-20', '!!!!!!!!!!!!!!!!');
INSERT INTO `roomclass` VALUES ('10', 'D703', 'D栋703', '2', '100', '2017-06-01', '使用到10月中旬');
INSERT INTO `roomclass` VALUES ('11', '201', '东区A栋2楼', '183', '2', '2017-10-30', '不要太寒酸');

-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `salary` decimal(10,0) DEFAULT NULL,
  `balancedate` date DEFAULT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(32) DEFAULT NULL,
  `indays` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO `salary` VALUES ('73', '21000', '2017-09-01', '1', '2017', '8', '3');
INSERT INTO `salary` VALUES ('74', '75000', '2017-09-01', '2', '2017', '8', '5');
INSERT INTO `salary` VALUES ('75', '40000', '2017-09-01', '3', '2017', '8', '2');
INSERT INTO `salary` VALUES ('77', '120000', '2017-09-01', '5', '2017', '8', '4');
INSERT INTO `salary` VALUES ('79', '7000', '2017-09-01', '15', '2017', '8', '1');

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `marketing_id` bigint(20) DEFAULT NULL COMMENT '营销人员',
  `followUp_id` bigint(20) DEFAULT NULL COMMENT '跟进人员',
  `schoolType` varchar(255) DEFAULT NULL COMMENT '学校类型',
  `educationHistory` varchar(255) DEFAULT NULL COMMENT '学历',
  `territory` varchar(255) DEFAULT NULL COMMENT '地域',
  `setUpTime` datetime DEFAULT NULL COMMENT '创立时间',
  `rank` varchar(255) DEFAULT NULL COMMENT '星级',
  `manageDept` varchar(255) DEFAULT NULL COMMENT '管理部门',
  `lengthOfSchooling` varchar(255) DEFAULT NULL COMMENT '学制',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `postalcode` varchar(255) DEFAULT NULL COMMENT '邮政编码',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话',
  `fax` varchar(255) DEFAULT NULL COMMENT '传真',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `principal` varchar(255) DEFAULT NULL COMMENT '校长',
  `numberOfTeacher` int(11) DEFAULT NULL COMMENT '教师数',
  `numberOfStudent` int(11) DEFAULT NULL COMMENT '学生数',
  `numberOfITStudent` int(11) DEFAULT NULL COMMENT 'IT专业学生数',
  `cooperation` tinyint(1) DEFAULT NULL COMMENT '合作高校',
  `numberOfLecture` int(11) DEFAULT NULL,
  `contractAmount` int(11) DEFAULT NULL COMMENT '签约数',
  `hotspot` varchar(255) DEFAULT NULL COMMENT '热点等级',
  `introduction` varchar(255) DEFAULT NULL COMMENT '学校简介',
  `hotspotDescription` varchar(255) DEFAULT NULL COMMENT '热点描述',
  `practicaltrainningNumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `marketing_id` (`marketing_id`),
  KEY `followUp_id` (`followUp_id`),
  CONSTRAINT `school_ibfk_1` FOREIGN KEY (`marketing_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `school_ibfk_2` FOREIGN KEY (`followUp_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('8', '广州大学', '1', '1', '公办学校', '高中', '广东', '2017-06-30 00:00:00', '★★★★★', '', '三年制专科', '', '', '', '', '', '', null, null, '11', null, '11', null, '', '', '11', '11');
INSERT INTO `school` VALUES ('9', '江西大学', '1', '2', '', '', '江西', '2017-06-29 00:00:00', '', '', '', '', '', '', '', '', '', null, '22', null, '1', '22', '22', '', '', '', '22');
INSERT INTO `school` VALUES ('11', '湖北大学', '2', '1', '公办学校', '本科', '湖北', '2017-07-02 00:00:00', '★★★★★', '', '三年制专科', '', '', '', '', '', '', null, null, '1111', null, '11', '11', '热情', '', '', '11');
INSERT INTO `school` VALUES ('15', '华南', '2', '1', '公办学校', '高中', '广东', '2017-07-02 00:00:00', '★★★★★', '', '三年制专科', '', '', '', '', '', '', null, null, null, null, null, null, '普通', '', '', null);
INSERT INTO `school` VALUES ('16', '湖南', null, null, '', '', '湖南', null, '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, '', '', '', null);

-- ----------------------------
-- Table structure for schoolclient
-- ----------------------------
DROP TABLE IF EXISTS `schoolclient`;
CREATE TABLE `schoolclient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `importance` varchar(4) DEFAULT NULL,
  `wantedLevel` varchar(4) DEFAULT NULL,
  `studentNum` int(11) DEFAULT NULL,
  `cooperationNum` tinyint(4) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `education` varchar(4) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `itStudentNum` int(11) DEFAULT NULL,
  `buildingTime` datetime NOT NULL,
  `schooleTel` varchar(20) DEFAULT '',
  `telegraph` varchar(40) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `teacherNum` tinyint(4) DEFAULT NULL,
  `allStudent` smallint(6) DEFAULT NULL,
  `remark` varchar(255) DEFAULT '',
  `introduction` varchar(255) DEFAULT NULL,
  `wantedSubject` varchar(20) DEFAULT NULL,
  `wantedSchool` varchar(20) DEFAULT NULL,
  `recruitre_id` bigint(20) DEFAULT NULL,
  `tracer_id` bigint(20) DEFAULT NULL,
  `lastTraceTime` datetime DEFAULT NULL,
  `nextTraceTime` datetime DEFAULT NULL,
  `clientState` tinyint(1) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schoolclient
-- ----------------------------
INSERT INTO `schoolclient` VALUES ('1', '复旦大学', '21', '重要', '高', '21', null, '私立', '大专', '765@qq.com', '121', '2017-08-31 22:50:13', '12121', '564789', '21', '21', '212', '44', '21', '美术', '深圳校区', '1', '2', null, '2017-09-07 00:00:00', '0', '正常');
INSERT INTO `schoolclient` VALUES ('2', '清华大学', '安徽', '很重要', '低', '333', '2', '民办', '硕士', '222@22.222', '312', '2017-08-26 21:40:32', '11221', '1312', '1212', '127', '12', '888', '1412412', '音乐', '深圳校区', '5', '2', '2017-08-16 16:28:22', '2017-09-01 16:28:27', '1', '正常');
INSERT INTO `schoolclient` VALUES ('3', '北京大学', '沙皇', '有些重要', '高', '2', '3', '私立学校', '3', '222@22.222', '213', '2017-08-27 20:14:20', '423423', '42332', '4', '5', '5', '7', '8', '美术', '深圳校区', '3', null, '2017-08-27 20:14:20', '2017-09-01 00:00:00', '1', '共享');
INSERT INTO `schoolclient` VALUES ('4', '香港大学', '南京', '有些重要', '低', '123', '4', '1', '专科', '222@22.222', '43', '2017-08-28 18:56:42', '123123', '321', '1232345', '88', '435', '123', '888888', '音乐', '广州校区', '2', '1', '2017-08-22 19:18:17', '2017-09-15 00:00:00', '0', '待审核');
INSERT INTO `schoolclient` VALUES ('5', '广州大学', '广州', '很重要', '高', '23', null, '2', '3', '222@22.222', '1', '2017-08-29 21:26:56', '16559', '56231', '2', '1', '3', '231212', '1', '音乐', '深圳校区', '1', null, null, '2017-10-07 00:00:00', '0', '共享');
INSERT INTO `schoolclient` VALUES ('6', '中山大学', '广州', '重要', '很不好', '2', '0', '2', '3', '222@22.222', '1', '2017-08-29 21:26:56', '1123', '1212', '2', '1', '3', '23', '1', '数学', '北京校区', '4', null, '2017-08-29 21:26:56', '2017-09-30 00:00:00', '1', '共享');
INSERT INTO `schoolclient` VALUES ('7', '湖北大学', '白金', '很重要', '高', '345', null, '民办', '硕士', '222@22.222', '312', '2017-08-29 21:27:46', '11221', '1312', '1212', '127', '2222', '888', '1412412', '音乐', '深圳校区', '2', '1', null, '2017-09-23 00:00:00', null, '正常');
INSERT INTO `schoolclient` VALUES ('8', '武汉大学', '白金', '重要', '中', '333', '2', '民办', '硕士', '222@22.222', '312', '2017-08-29 21:27:46', '11221', '1312', '1212', '127', '12', '888', '1412412', '音乐', '广州校区', '3', '1', '2017-08-29 21:27:46', '2017-09-02 00:00:00', null, '正常');
INSERT INTO `schoolclient` VALUES ('9', '云南大学', '天河', '有些重要', '中', '123', '0', '', '大专', '666@qq.com', '123', '2017-08-30 15:16:41', '444', '123', '12', '121', '32', '55', '6666', '数学', '深圳校区', '1', '5', '2017-08-30 15:16:41', '2017-09-07 00:00:00', null, '待审核');
INSERT INTO `schoolclient` VALUES ('10', '南开大学', '安徽', '很重要', '低', '234', null, '', '大专', '666@qq.com', '123', '2017-08-30 15:16:41', '444', '123', '12', '121', '32', '55', '6666', '数学', '广州校区', '2', '4', null, '2017-09-04 00:00:00', '0', '正常');
INSERT INTO `schoolclient` VALUES ('11', '上海交大', '安徽', '重要', '中', '123', '1', '', '大专', '666@qq.com', '123', '2017-08-30 15:34:07', '444', '123', '12', '121', '32', '55', '6666', '数学', '广州校区', '3', null, '2017-08-14 21:21:27', '2017-09-03 00:00:00', '1', '共享');
INSERT INTO `schoolclient` VALUES ('12', '西安交大', '南京', '很重要', '高', '56', '2', '公立', '大专', '666@qq.com', '123', '2017-08-30 15:34:07', '444', '123', '12', '121', '32', '55', '6666', '数学', '深圳校区', '2', '1', '2017-08-14 21:21:33', '2017-09-03 00:00:00', '0', '待审核');
INSERT INTO `schoolclient` VALUES ('13', '同济大学', '安徽', '重要', '中', '234', '0', '', '大专', '666@qq.com', '123', '2017-08-30 15:41:32', '444', '123', '12', '121', '232', '55', '6666', '数学', '北京校区', '3', '5', '2017-08-15 21:21:30', '2017-09-03 00:00:00', '1', '正常');
INSERT INTO `schoolclient` VALUES ('14', '安徽大学', '天河', '有些重要', '中', '123', '0', '', '大专', '666@qq.com', '123', '2017-08-30 15:41:32', '444', '123', '12', '121', '232', '55', '6666', '数学', '深圳校区', '4', '1', '2017-08-30 15:41:32', '2017-09-04 00:00:00', '0', '待审核');
INSERT INTO `schoolclient` VALUES ('15', '湖南大学', '天河', '很重要', '很不好', '567', '0', '', '大专', '666@qq.com', '123', '2017-08-30 16:01:22', '444', '123', '12', '121', '232', '55', '6666', '物理', '北京校区', '2', '3', '2017-08-30 16:01:22', '2017-09-03 00:00:00', '0', '正常');
INSERT INTO `schoolclient` VALUES ('16', '山东大学', '南京', '有些重要', '高', '243', '0', '', '大专', '666@qq.com', '123', '2017-08-30 16:01:22', '444', '123', '12', '121', '232', '55', '6666', '物理', '北京校区', '1', '1', '2017-08-30 16:01:22', '2017-09-03 00:00:00', '1', '待审核');
INSERT INTO `schoolclient` VALUES ('17', '东北大学', '天河', '重要', '中', '123', '0', '', '大专', '666@qq.com', '123', '2017-08-30 16:02:24', '444', '123', '12', '121', '32', '55', '6666', '数学', '深圳校区', '2', '5', '2017-08-31 21:21:38', '2017-09-02 00:00:00', '1', '正常');
INSERT INTO `schoolclient` VALUES ('18', '辽宁大学', '天河', '很重要', '中', '123', null, '私立', '大专', '666@qq.com', '123', '2017-08-30 16:02:24', '444', '123', '12', '121', '32', '55', '6666', '数学', '北京校区', '1', '1', '2017-08-09 21:21:41', '2017-09-20 14:04:14', '0', '正常');
INSERT INTO `schoolclient` VALUES ('19', '12312', '123', '有些重要', '中', '32123', '0', '私立', '大专', '765@qq.com', '123', '2017-08-31 22:46:14', '12312', '12312', '12312', '12', '131', '123123', '13123', '物理', '北京校区', '1', '1', '2017-08-31 22:46:14', '2017-09-23 00:00:00', '0', '正常');
INSERT INTO `schoolclient` VALUES ('20', '12312', '123', '有些重要', '中', '32123', '0', '私立', '大专', '765@qq.com', '123', '2017-08-31 22:46:14', '12312', '12312', '12312', '12', '131', '123123', '13123', '物理', '北京校区', '1', null, '2017-08-31 22:46:14', '2017-09-22 00:00:00', '0', '共享');
INSERT INTO `schoolclient` VALUES ('21', '121', '121', '重要', '中', '1212', '0', '公立', '大专', '765@qq.com', '121', '2017-08-31 22:49:11', '121', '2121', '2121', '121', '2121', '2121', '1212', '数学', '深圳校区', '1', '5', '2017-08-31 22:49:11', '2017-09-01 00:00:00', '0', '正常');
INSERT INTO `schoolclient` VALUES ('22', '121', '121', '重要', '中', '1212', '0', '公立', '大专', '765@qq.com', '121', '2017-08-31 22:49:11', '121', '2121', '2121', '121', '2121', '2121', '1212', '数学', '深圳校区', '1', '1', '2017-08-31 22:49:11', '2017-09-16 00:00:00', '0', '正常');
INSERT INTO `schoolclient` VALUES ('23', '111222221', '21', '重要', '高', '21', '0', '私立', '大专', '765@qq.com', '121', '2017-08-31 22:50:13', '12121', '123321', '21', '21', '212', '44', '21', '语文', '深圳校区', '1', '2', '2017-08-31 22:50:13', '2017-09-08 00:00:00', '0', '正常');
INSERT INTO `schoolclient` VALUES ('25', '清华大学', '', '', '', null, '0', '', '', '', null, '2017-08-31 23:59:56', '', '', '', null, null, '', '', '', '', '1', null, '2017-08-31 23:59:56', null, '1', '签单');
INSERT INTO `schoolclient` VALUES ('30', '天津大学', '', '', '', null, '0', '', '', '', null, '2017-09-01 00:07:25', '', '', '', null, null, '', '', '', '', '1', '1', '2017-09-01 00:07:25', '2017-09-12 00:00:00', '0', '正常');
INSERT INTO `schoolclient` VALUES ('32', '四川大学', '', '', '', null, '0', '', '', '', null, '2017-09-01 00:08:09', '', '', '', null, null, '', '', '', '', '1', '2', '2017-09-01 00:08:09', null, '1', '签单');
INSERT INTO `schoolclient` VALUES ('34', '测试学校', '', '', '', null, '0', '', '', '', null, '2017-09-01 00:14:27', '', '', '', null, null, '', '', '', '', '1', null, '2017-09-01 00:14:27', '2017-09-05 00:00:00', '0', '共享');
INSERT INTO `schoolclient` VALUES ('35', '湖北科技大学', '', '', '', null, '0', '私立', '大专', '', null, '2017-09-01 13:06:45', '', '', '', null, null, '', '', '', '北京校区', '1', '3', '2017-09-01 13:06:45', '2017-09-05 00:00:00', '0', '正常');
INSERT INTO `schoolclient` VALUES ('36', 'fdshjfsdjkhjk', 'gdfgvdfs', '', '', null, '0', '', '高中', '', null, '2017-09-01 13:07:54', '', '', '', '33', '333', '', '', '', '', '1', '1', '2017-09-01 13:07:54', null, '1', '正常');
INSERT INTO `schoolclient` VALUES ('37', 'mmp', '', '', '', null, '0', '', '', '', null, '2017-09-01 13:08:39', '344', '', '', null, null, '', '', 'c++', '北京校区', '1', null, '2017-09-01 13:08:39', '2017-09-16 00:00:00', '0', '正常');

-- ----------------------------
-- Table structure for schoolclienttransferlog
-- ----------------------------
DROP TABLE IF EXISTS `schoolclienttransferlog`;
CREATE TABLE `schoolclienttransferlog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `outEmp_id` bigint(20) DEFAULT NULL,
  `inEmp_id` bigint(20) DEFAULT NULL,
  `inputTime` datetime DEFAULT NULL,
  `auditState` tinyint(1) DEFAULT NULL,
  `clientSchool_id` bigint(20) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `manager_id` bigint(20) DEFAULT NULL,
  `auditTime` datetime DEFAULT NULL,
  `auditMsg` varchar(100) DEFAULT NULL,
  `result` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schoolclienttransferlog
-- ----------------------------
INSERT INTO `schoolclienttransferlog` VALUES ('1', '1', '2', '2017-08-23 01:08:08', '1', '1', 'reamarkl3', '2', '2017-08-29 20:22:21', '12312', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('2', '6', '3', '2017-08-29 11:56:01', '1', '2', '24reamarkl4', '1', '2017-09-01 02:35:02', '121', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('3', '2', '1', '2017-08-21 20:31:51', '1', '1', '242reamarkl', '1', '2017-08-31 23:03:00', 'ihiuho', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('4', '5', '1', '2017-08-24 20:32:37', '1', '2', 'reamarkl2', '2', '2017-08-29 20:38:38', '234234', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('5', '7', '3', '2017-08-23 20:32:40', '1', '2', 'reamarkl3', '1', '2017-08-31 00:42:28', '11111', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('6', '8', '3', '2017-08-09 20:32:43', '0', '3', 'reamarkl1', null, '2017-08-29 16:29:48', '', null);
INSERT INTO `schoolclienttransferlog` VALUES ('7', '2', '3', '2017-08-22 20:32:46', '0', '4', 'reamarkl34', null, '2017-08-29 16:29:48', '', null);
INSERT INTO `schoolclienttransferlog` VALUES ('8', '3', '2', '2017-08-29 16:35:31', '1', '2', null, '1', '2017-08-31 00:44:24', '888', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('9', '4', '2', '2017-08-29 16:35:31', '1', '3', null, '1', '2017-08-31 00:43:30', 'aaaa', '0');
INSERT INTO `schoolclienttransferlog` VALUES ('10', '3', '3', '2017-08-29 22:41:34', '0', null, null, null, null, '11', '0');
INSERT INTO `schoolclienttransferlog` VALUES ('11', null, null, '2017-08-29 23:26:07', '1', '4', '', '3', '2017-08-29 23:26:07', '12', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('12', '2', '3', '2017-08-29 23:26:36', '0', null, null, null, null, '', null);
INSERT INTO `schoolclienttransferlog` VALUES ('13', '3', '3', '2017-08-29 23:27:43', '0', null, null, '2', null, '12312', '0');
INSERT INTO `schoolclienttransferlog` VALUES ('14', null, '1', '2017-08-30 10:54:41', '0', null, null, '4', null, '342423', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('15', '1', null, '2017-08-31 23:08:07', '0', '4', null, '3', null, '345', '0');
INSERT INTO `schoolclienttransferlog` VALUES ('16', null, '1', '2017-08-31 23:10:24', '0', null, null, null, null, '', null);
INSERT INTO `schoolclienttransferlog` VALUES ('17', null, '1', '2017-08-31 23:11:14', '0', null, null, null, null, '', null);
INSERT INTO `schoolclienttransferlog` VALUES ('18', null, '1', '2017-09-01 01:08:27', '1', '4', '123', '1', '2017-09-01 01:08:27', '234', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('19', null, '1', '2017-09-01 01:10:27', '1', '34', '666', '1', '2017-09-01 01:10:27', '234', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('20', '1', null, '2017-09-01 01:10:50', '0', '34', null, '6', null, '234', '0');
INSERT INTO `schoolclienttransferlog` VALUES ('21', '1', '2', '2017-09-24 01:54:08', '0', null, null, null, null, '', null);
INSERT INTO `schoolclienttransferlog` VALUES ('22', '1', null, '2017-09-01 09:48:12', '1', '14', null, '1', '2017-09-01 09:49:05', '1212', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('23', '1', null, '2017-09-01 11:02:51', '0', '4', null, null, null, null, null);
INSERT INTO `schoolclienttransferlog` VALUES ('24', '1', null, '2017-09-01 11:11:54', '1', '4', null, '1', '2017-09-01 11:12:21', '我统一', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('25', '1', null, '2017-09-01 11:32:18', '0', '4', null, null, null, null, null);
INSERT INTO `schoolclienttransferlog` VALUES ('26', '1', null, '2017-09-01 12:18:11', '0', '5', null, null, null, null, null);
INSERT INTO `schoolclienttransferlog` VALUES ('27', '1', null, '2017-09-01 12:21:24', '1', '12', null, '1', '2017-09-01 12:22:22', 'dfsdfsedfasdf', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('28', '1', null, '2017-09-01 12:23:43', '1', '11', null, '1', '2017-09-01 12:24:02', 'asdasd', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('29', null, '1', '2017-09-01 12:26:37', '1', '13', '', '1', '2017-09-01 12:26:37', null, null);
INSERT INTO `schoolclienttransferlog` VALUES ('30', null, '1', '2017-09-01 12:26:37', '1', '16', '', '1', '2017-09-01 12:26:37', null, null);
INSERT INTO `schoolclienttransferlog` VALUES ('31', '1', null, '2017-09-01 12:27:44', '1', '13', null, '1', '2017-09-01 12:28:05', '12121', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('32', '1', null, '2017-09-01 12:27:51', '1', '16', null, '1', '2017-09-01 12:28:14', '12121', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('33', '1', null, '2017-09-01 12:52:07', '0', '16', null, null, null, null, null);
INSERT INTO `schoolclienttransferlog` VALUES ('34', '1', null, '2017-09-01 12:54:22', '1', '11', null, '1', '2017-09-01 12:54:41', '111', '1');
INSERT INTO `schoolclienttransferlog` VALUES ('35', '1', null, '2017-09-01 14:01:48', '0', '12', null, null, null, null, null);
INSERT INTO `schoolclienttransferlog` VALUES ('36', '1', null, '2017-09-01 15:24:16', '0', '13', null, null, null, null, null);
INSERT INTO `schoolclienttransferlog` VALUES ('37', null, '5', '2017-09-01 15:25:43', '1', '13', '', '1', '2017-09-01 15:25:43', null, null);
INSERT INTO `schoolclienttransferlog` VALUES ('38', null, '5', '2017-09-01 15:25:43', '1', '17', '', '1', '2017-09-01 15:25:43', null, null);
INSERT INTO `schoolclienttransferlog` VALUES ('39', null, '5', '2017-09-01 15:25:43', '1', '21', '', '1', '2017-09-01 15:25:43', null, null);

-- ----------------------------
-- Table structure for schoollinkman
-- ----------------------------
DROP TABLE IF EXISTS `schoollinkman`;
CREATE TABLE `schoollinkman` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `school_id` bigint(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `WeChat` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `firstLinkman` tinyint(1) DEFAULT NULL,
  `position` varchar(10) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schoollinkman
-- ----------------------------
INSERT INTO `schoollinkman` VALUES ('1', '5', 'weshin', '17', '0', '616', '818', '123@qq.com', '0', '主管', '人事部', '1999-06-15', '我是一个联系人');
INSERT INTO `schoollinkman` VALUES ('2', '3', 'juice', '19', '0', '121212', '1212131', 'aa@EE.COM', '1', 'ADC', '行政部', '2015-07-09', '和蔼可亲');
INSERT INTO `schoollinkman` VALUES ('3', '7', 'zbay', '12121', '1', '121', '1212', '212', null, '剑圣', '1212', '2017-08-05', '会用剑');

-- ----------------------------
-- Table structure for schooltracelog
-- ----------------------------
DROP TABLE IF EXISTS `schooltracelog`;
CREATE TABLE `schooltracelog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `tracer_id` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `talkTime` datetime DEFAULT NULL,
  `inputTime` datetime DEFAULT NULL,
  `manager_id` bigint(20) DEFAULT NULL,
  `score` int(6) DEFAULT NULL,
  `scoreMsg` varchar(100) DEFAULT NULL,
  `talkWay` varchar(10) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schooltracelog
-- ----------------------------
INSERT INTO `schooltracelog` VALUES ('1', '1', '1', '今天的谈话', '2017-08-15 21:32:08', '2017-08-15 21:32:13', '2', '88', '还算不错', 'qq', '1');
INSERT INTO `schooltracelog` VALUES ('2', '2', '2', '记录我们的谈话', '2017-08-09 00:00:00', '2017-08-23 13:23:12', '1', '88', '10000', 'wecaht', '1');
INSERT INTO `schooltracelog` VALUES ('3', '2', '4', '123123', '2017-08-14 00:00:00', '2017-08-28 17:30:11', null, '5', 'aaaa', 'qq', '1');
INSERT INTO `schooltracelog` VALUES ('4', '2', '4', 'asfwer12313123123123', '2017-08-08 00:00:00', '2017-08-28 17:33:17', null, '3', '', 'qq', '1');
INSERT INTO `schooltracelog` VALUES ('5', '2', '4', '112213', '2017-08-08 00:00:00', '2017-08-28 17:39:48', null, '2323', '42', '1122', '1');
INSERT INTO `schooltracelog` VALUES ('6', '2', '4', '11223322', '2017-08-22 00:00:00', '2017-08-28 17:41:41', null, '99', 'rtyedr', 'phone', '1');
INSERT INTO `schooltracelog` VALUES ('7', '2', '4', '11223322', '2017-08-22 00:00:00', '2017-08-28 17:41:50', null, null, null, 'phone', '0');
INSERT INTO `schooltracelog` VALUES ('8', '2', '4', '88888', '2017-08-08 00:00:00', '2017-08-28 17:43:18', null, null, null, 'qq', '0');
INSERT INTO `schooltracelog` VALUES ('9', '2', '4', '3311', '2017-08-09 00:00:00', '2017-08-28 17:44:00', null, null, null, '1122', '0');
INSERT INTO `schooltracelog` VALUES ('10', '2', '4', '121222222', '2017-08-08 00:00:00', '2017-08-28 18:41:50', null, null, null, 'qq', '0');
INSERT INTO `schooltracelog` VALUES ('11', '2', '4', '12312131', '2017-08-16 00:00:00', '2017-08-28 18:49:12', null, null, null, 'qq', '0');
INSERT INTO `schooltracelog` VALUES ('12', '3', '4', '34234312', '2017-08-16 00:00:00', '2017-08-28 18:50:37', null, null, null, '1212', '0');
INSERT INTO `schooltracelog` VALUES ('13', '3', '4', '213123123', '2017-08-23 00:00:00', '2017-08-28 18:54:14', null, null, null, '8888', '0');
INSERT INTO `schooltracelog` VALUES ('14', null, '4', '1212312', '2017-08-08 00:00:00', '2017-08-29 22:32:55', null, null, null, '123', '0');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `marketuser` bigint(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `admission` date DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `addressnow` varchar(255) DEFAULT NULL,
  `addresshome` varchar(255) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `workinglife` int(11) DEFAULT NULL,
  `englishlevel` varchar(255) DEFAULT NULL,
  `studentclass` bigint(255) DEFAULT NULL,
  `paymethod` varchar(255) DEFAULT NULL,
  `clienttype` varchar(255) DEFAULT NULL,
  `plantuition` decimal(10,0) DEFAULT NULL,
  `discountamount` decimal(10,0) DEFAULT NULL,
  `realtuition` varchar(255) DEFAULT NULL,
  `otherfee` decimal(10,0) DEFAULT NULL,
  `otherdiscount` decimal(10,0) DEFAULT NULL,
  `discountremark` varchar(255) DEFAULT NULL,
  `totalfee` decimal(10,0) DEFAULT NULL,
  `payedfee` decimal(10,0) DEFAULT NULL,
  `ownedfee` decimal(10,0) DEFAULT NULL,
  `finished` tinyint(1) DEFAULT NULL,
  `headimgpath` varchar(255) DEFAULT NULL,
  `idnumber` varchar(255) DEFAULT NULL,
  `emergencycontact` varchar(255) DEFAULT NULL,
  `emergencytel` varchar(255) DEFAULT NULL,
  `workintention` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `workexperience` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `upordowndate` date DEFAULT NULL,
  `oldclass` bigint(20) DEFAULT NULL,
  `lasturgedate` date DEFAULT NULL,
  `urgedate` date DEFAULT NULL,
  `urgetimes` int(11) DEFAULT NULL,
  `lastpaytime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'zmh', '1', '5259', '2017-08-15', '线上', '20', '女', '15612345678', '广州', '湖北', '武汉大学', '国贸', '2', '6级', '1', '支付宝', '', '16990', '1000', '15990', '0', '300', '老学员推荐', '15690', '1000', '14690', '0', '/static/upload/caa1abff-5713-4619-97e3-c112169c242f.jpg', '4211822365896512', '周启云', '15512345678', null, '正常', '2年工作经历', '5616@163.com', '本科', null, null, '2017-08-23', '2017-08-31', '3', '2017-08-26 00:00:00');
INSERT INTO `student` VALUES ('2', '刘德华', '2', '4326', '2017-08-17', '线上', '26', '男', '18912345678', '广州', '香港', '香港大学', '表演', '5', '6级', '4', '微信', '线下客户', '16990', '1000', '15990', '0', '0', '暂无', '15990', '3000', '12990', '0', '/static/upload/c239e1b4-d3a2-4080-922d-0e44ff9cbcca.bmp', '6198411822365895', '刘礼', '18912345678', null, '正常', '5年工作经历', '65451@163.com', '专科', null, '2', '2017-08-22', '2017-08-24', '2', '2017-08-31 00:00:00');
INSERT INTO `student` VALUES ('3', '赵锦', '3', '234', '2017-08-21', '线下', '28', '男', '13412345678', '广州', '云南', '广西大学', '计算机网络', '5', '6级', '1', '刷卡', '', '16990', '1000', '15990', '0', '0', '暂无', '15990', '15990', '0', '1', null, '1234566198411828', '史玉柱', '15812345678', null, '正常', '6年工作经历', '51645@163.com', '本科', null, '8', '2017-08-24', '2017-08-26', '0', '2017-08-29 00:00:00');
INSERT INTO `student` VALUES ('4', '宋小宝', '4', '5732', '2017-08-22', '线上', '27', '男', '15812345678', '广州', '东北', '辽宁大学', '二人转', '18', '4级', '4', '支付宝', '', '16990', '1000', '15990', '0', '0', '暂无', '15990', '3000', '12990', '0', null, '3547516552213512', '宋小宝', '13412345678', null, '正常', '18年工作经历', '2564@163.com', '研究生', null, '1', '2017-09-01', '2017-09-02', '4', '2017-08-31 00:00:00');
INSERT INTO `student` VALUES ('5', '张小天', '5', '3298', '2017-08-22', '线上', '23', '男', '18912345678', '广州', '山西', '西安交大', '体育', '3', '4级', '2', '支付宝', null, '16990', '1000', '15990', '0', '300', '老学员推荐', '15690', '1000', '14690', '0', null, '5298731651524545', '张大天', '13912345678', null, '已流失', '3年工作经历', '15565@163.com', '本科', null, null, '2017-08-28', '2017-08-30', '2', '2017-08-31 09:35:17');
INSERT INTO `student` VALUES ('6', '何小川', '6', '8902', '2017-08-23', '线下', '26', '女', '18612345678', '广州', '江西', '南开大学', '数控模具', '3', '6级', '3', '刷卡', '', '16990', '1000', '15990', '0', '300', '老学员推荐', '15690', '15690', '0', '1', '/static/upload/1e2d0237-f225-4d30-93d6-94699e9ded3f.bmp', '5487135313544121', '何大川', '18912345678', null, '已流失', '3年工作经历', '5512@163.com', '本科', null, null, '2017-08-28', '2017-08-30', '7', '2017-08-31 00:00:00');
INSERT INTO `student` VALUES ('7', '王小虎', '7', '8893', '2017-08-23', '线下', '25', '男', '15912345678', '广州', '广东', '广东大学', '美术', '2', '4级', '4', '刷卡', '', '16990', '1000', '15990', '0', '0', '暂无', '15990', '15990', '0', '1', '/static/upload/a8d868a7-a975-4431-a49f-01da32871c1b.jpg', '8965661315113151', '王大虎', '18012345678', null, '已休学', '2年工作经历', '551545@163.com', '本科', null, null, '2017-08-28', '2017-08-30', '2', '2017-08-31 08:00:00');
INSERT INTO `student` VALUES ('8', '马晓丽', '3', '4209', '2017-08-23', '线上', '22', '女', '13812345678', '广州', '广西', '广西大学', '食品检测', '3', '6级', '5', '刷卡', null, '16990', '1000', '15990', '0', '300', '老学员推荐', '15690', '15960', '0', '1', null, '5494931312545121', '马大龙', '13312345678', null, '已贷款', '3年工作经历', '51551@163.com', '大专', null, null, '2017-08-29', '2017-08-31', '4', '2017-09-01 08:00:00');
INSERT INTO `student` VALUES ('9', '田小贝', '11', '3431', '2017-08-24', '线上', '23', '女', '13912345678', '广州', '陕西', '西安大学', '软件工程', '1', '6级', '3', '支付宝', '', '16990', '1000', '15990', '0', '300', '老学员推荐', '15690', '15960', '0', '1', '/static/upload/2a7022c6-d598-4fa5-852f-3d6c020ee4dd.bmp', '5646751315421211', '田老六', '18912345678', null, '正常', '1年工作经历', '26651@163.com', '本科', null, null, '2017-08-31', '2017-08-31', '2', '2017-09-01 00:00:00');
INSERT INTO `student` VALUES ('10', '钱小毛', '12', '4298', '2017-08-24', '线上', '24', '男', '18912345678', '广州', '天津', '天津大学', '工程设计', '2', '4级', '2', '刷卡', null, '16990', '1000', '15990', '0', '300', '老学员推荐', '15690', '1000', '14690', '0', null, '5946195145215255', '钱大毛', '17912345678', null, '已贷款', '2年工作经历', '15522@163.com', '本科', null, null, '2017-08-29', '2017-08-31', '2', '2017-08-31 17:53:48');
INSERT INTO `student` VALUES ('11', '孙三少', '13', '3242', '2017-08-24', '线下', '26', '男', '15912345678', '广州', '安徽', '合肥大学', '电子商务', '3', '6级', null, '刷卡', '', '16990', '1000', '15990', '0', '300', '老学员推荐', '15690', '15690', '0', '1', '/static/upload/c44ce8ec-71b1-4a43-9e70-b279a02c0deb.bmp', '9435155121215452', '孙中山', '15212345678', null, '正常', '3年工作经历', '515121@163.com', '本科', null, null, '2017-08-29', '2017-08-31', '3', '2017-09-01 15:28:22');
INSERT INTO `student` VALUES ('13', '王尼玛', '14', '2542354', '2017-08-25', '线上', '25', '女', '15012345678', '广州', '江苏', '河南大学', '机械自动化', '3', '4级', '4', '微信', '', '16990', '1000', '15990', '0', '0', '暂无', '15990', '1000', '14990', '0', null, '5315355121542222', '王大锤', '15912345678', null, '正常', '3年工作经历', '545551@163.com', '本科', null, '2', '2017-08-31', '2017-09-01', '4', '2017-09-02 00:00:00');
INSERT INTO `student` VALUES ('14', '赵小飞', '15', '5466', '2017-08-25', '线下', '24', '男', '15512345678', '广州', '河南', '南京大学', '平面设计', '2', '6级', '2', '支付宝', '线下客户', '16990', '1000', '15990', '0', '0', '暂无', '15990', '1000', '14990', '0', '', '2151215121256251', '赵子龙', '18912345678', null, '正常', '2年工作经历', '551212@163.com', '本科', '2017-08-31', '4', '2017-08-30', '2017-09-01', '2', '2017-09-02 08:21:39');
INSERT INTO `student` VALUES ('15', '钱小虎', '16', '464646', '2017-08-25', '线上', '28', '男', '18912345678', '广州', '甘肃', '华南师范', '心理学', '4', '4级', '4', '支付宝', '线下客户', '16990', '1000', '15990', '0', '0', '暂无', '15990', '1000', '14990', '0', null, '1151255121456624', '钱二毛', '18012345678', null, '正常', '5年工作经历', '515541@163.com', '研究生', '2017-08-10', '2', '2017-08-30', '2017-09-01', '2', '2017-09-02 08:21:39');
INSERT INTO `student` VALUES ('16', '孙小曼', '17', '46456', '2017-08-25', '线上', '22', '女', '15812345678', '广州', '宁夏', '东北大学', '医学', '1', '6级', '9', '支付宝', '', '16990', '1000', '15990', '0', '0', '暂无', '15990', '1000', '14990', '0', null, '5651234878878561', '孙权', '13312345678', null, '正常', '1年工作经历', '15447@163.com', '本科', '2017-08-08', '5', '2017-08-30', '2017-09-01', '2', '2017-09-02 08:21:39');
INSERT INTO `student` VALUES ('17', '李小刀', '18', '64656', '2017-08-26', '线下', '25', '男', '13412345678', '广州', '黑龙江', '西南大学', '土木工程', '3', '4级', '1', '刷卡', '', '16990', '1000', '15990', '0', '300', '老学员推荐', '15690', '1000', '14690', '0', '/static/upload/308a906e-f706-4e20-9a0e-e26a85aa72a0.jpg', '5462124687652125', '李大钊', '18912345678', null, '正常', '3年工作经历', '487512@163.com', '本科', null, null, '2017-08-31', '2017-08-31', '5', '2017-09-03 00:00:00');
INSERT INTO `student` VALUES ('18', '周小天', '19', '9812', '2017-08-26', '线上', '26', '男', '13912345678', '广州', '吉林', '安徽大学', '生物科学', '4', '4级', '2', '微信', null, '16990', '1000', '15990', '0', '0', '暂无', '15990', '1000', '14990', '0', null, '4534845643513514', '周恩来', '17912345678', null, '正常', '4年工作经历', '155452@163.com', '本科', null, null, '2017-08-31', '2017-09-02', '3', '2017-09-03 15:24:36');
INSERT INTO `student` VALUES ('19', '吴小华', '20', '468421', '2017-08-26', '线上', '24', '男', '18912345678', '广州', '辽宁', '长春理工大学', '经济学', '2', '6级', '3', '支付宝', null, '16990', '1000', '15990', '0', '300', '老学员推荐', '15690', '1000', '14690', '0', null, '1234566198411828', '吴承恩', '15212345678', null, '正常', '2年工作经历', '1545212@163.com', '本科', null, null, '2017-08-31', '2017-09-02', '2', '2017-09-03 15:24:36');
INSERT INTO `student` VALUES ('21', '王小丽', '22', '5676511', '2017-08-26', '线下', '25', '女', '18012345678', '广州', '江西', '山东大学', '金融管理', '3', '4级', '5', '支付宝', null, '16990', '1000', '15990', '0', '0', '暂无', '15990', '1000', '14990', '0', null, '3547516552213512', '王志文', '15912345678', null, '正常', '3年工作经历', '154511@163.com', '本科', null, null, '2017-08-31', '2017-09-02', '2', '2017-09-03 15:24:36');
INSERT INTO `student` VALUES ('22', '冯小巩', '23', '2478152', '2017-08-27', '线下', '27', '男', '13312345678', '广州', '青海', '宁波大学', '冶金制造', '3', '4级', '4', '支付宝', null, '16990', '1000', '15990', '0', '300', '老学员推荐', '15690', '1000', '14690', '0', null, '5298731651524545', '冯巩', '15512345678', null, '正常', '4年工作经历', '532221@163.com', '本科', null, null, '2017-09-01', '2017-09-03', '2', '2017-09-03 09:25:46');
INSERT INTO `student` VALUES ('23', '牛小群', '24', '2189712', '2017-08-27', '线下', '23', '男', '18912345678', '广州', '西藏', '湖北水利水电大学', '水利工程', '1', '6级', '3', '刷卡', null, '16990', '1000', '15990', '0', '0', '暂无', '15990', '1000', '14990', '0', null, '5462129435155121', '牛群', '18912345678', null, '正常', '1年工作经历', '154222@163.com', '大专', null, null, '2017-09-01', '2017-09-03', '3', '2017-09-03 09:25:46');
INSERT INTO `student` VALUES ('24', '姜小坤', '25', '25364', '2017-08-27', '线下', '24', '男', '17912345678', '广州', '贵州', '华中农业大学', '畜牧农业', '1', '4级', '2', '刷卡', null, '16990', '1000', '15990', '0', '0', '暂无', '15990', '1000', '14990', '0', null, '8965661315113151', '姜昆', '15812345678', null, '正常', '2年工作经历', '15552@163.com', '本科', null, null, '2017-09-01', '2017-09-03', '2', '2017-09-03 09:25:46');
INSERT INTO `student` VALUES ('25', '完吧', '1', '2586452', '2017-08-15', 'QQ', '26', '女', '15212345678', '广州', '南宁', '南开大学', 'xao', '2', '6级', '3', 'QQ', '线下客户', '16990', '1000', '15990', '0', '0', '暂无', '15990', '1000', '14990', '0', '/static/upload/a9df7d6a-74df-41c3-b50c-a47ecb6e91b5.jpg', '5494931312545121', 'Boss', '13412345678', null, '正常', '4年工作经历', '546511@qq.com', '本科', null, null, '2017-09-02', '2017-09-04', '3', '2017-09-04 23:17:12');
INSERT INTO `student` VALUES ('26', '小红帽', '1', '456131', '2017-08-06', '广告', '25', '男', '15912345678', '广州', '西昌', '江汉大学', '体育', '3', '4级', '3', '刷卡', '', '16990', '1000', '15990', '0', '0', '暂无', '15990', '1000', '14990', '0', null, '5646751315421211', '大灰狼', '13912345678', null, '正常', '2年工作经历', '26651@163.com', '本科', null, null, '2017-09-02', '2017-09-04', '2', '2017-09-04 23:17:28');
INSERT INTO `student` VALUES ('27', '造遛', '1', '453465', '2017-08-09', '广告', '24', '男', '18912345678', '广州', '山东', '中南财经大学', '林园艺术', '2', '4级', '4', '刷卡', '', '16990', '1000', '15990', '0', '0', '暂无', '14900', '1000', '13900', '0', null, '5946195145215255', '梨太白', '18912345678', null, '正常', '3年工作经历', '15522@163.com', '本科', null, null, '2017-09-02', '2017-09-04', '2', '2017-09-04 23:17:12');
INSERT INTO `student` VALUES ('28', '孫欺', '1', '254542', '2017-08-16', '广告', '22', '女', '15512345678', '广州', '陕西', '华南科技大学', '电子商务', '1', '4级', '2', '支付宝', '', '16990', '1000', '15990', '0', '300', '老学员推荐', '15690', '1000', '14690', '0', null, '1234566198411828', '我不赖', '18012345678', null, '正常', '1年工作经历', '515121@163.com', '本科', null, null, '2017-09-02', '2017-09-04', '2', '2017-09-04 23:17:28');
INSERT INTO `student` VALUES ('29', '丸唔', '1', '235486', '2017-08-06', '广告', '23', '男', '15812345678', '广州', '江苏', '江苏大学', '工程设计', '2', '6级', '2', 'QQ', '', '16990', '1000', '15990', '0', '0', '暂无', '15900', '1000', '14900', '0', null, '3547516552213512', '玩命try', '13312345678', null, '正常', '1年工作经历', '545551@163.com', '研究生', null, null, '2017-09-03', '2017-09-05', '3', '2017-09-06 23:17:41');
INSERT INTO `student` VALUES ('30', '厘肆', '1', '156212', '2017-08-09', '广告', '26', '男', '18912345678', '广州', '江苏', '合肥大学', '机械自动化', '4', '4级', '3', '支付宝', '', '16990', '1000', '15990', '0', '0', '暂无', '15990', '1000', '14990', '0', '', '5298731651524545', '巴黎等市', '18912345678', null, '正常', '4年工作经历', '551212@163.com', '本科', null, null, '2017-09-03', '2017-09-05', '2', '2017-09-06 23:17:41');
INSERT INTO `student` VALUES ('31', '该罚的', '1', '145123', '2017-08-02', '广告', '24', '男', '18012345678', '广州', '河南', '河南大学', '平面设计', '2', '6级', '3', '支付宝', '', '16990', '1000', '15990', '0', '300', '老学员推荐', '15690', '1000', '14690', '0', '', '5487135313544121', '芯太软', '15512345678', null, '正常', '2年工作经历', '515541@163.com', '本科', null, null, '2017-09-03', '2017-09-05', '2', '2017-09-06 23:17:41');
INSERT INTO `student` VALUES ('32', '恢复', '1', '562234', '2017-08-09', '广告', '25', '女', '13312345678', '广州', '甘肃', '南京大学', '心理学', '3', '4级', '3', '支付宝', '', '16990', '1000', '15990', '0', '0', '暂无', '15990', '1000', '14990', '0', '', '8965661315113151', '辉灭', '18912345678', null, '正常', '3年工作经历', '15447@163.com', '本科', null, null, '2017-09-03', '2017-09-05', '2', '2017-09-06 23:17:41');
INSERT INTO `student` VALUES ('33', '你好呀', '1', '523265', '2017-08-17', '广告', '23', '男', '15832496258', '广州', '宁夏', '华南师范', '医学', '2', '4级', '3', 'QQ', '', '16990', '1000', '15990', '0', '300', '老学员推荐', '15690', '1000', '14690', '0', '', '2455519873165152', '贾好人', '15812345678', null, '正常', '1年工作经历', '487512@163.com', '本科', null, null, '2017-09-03', '2017-09-05', '3', '2017-09-06 23:17:41');
INSERT INTO `student` VALUES ('34', '章三', '1', '12345678', '2017-09-01', '广告', '22', '男', '15911523256', '广州', '陕西', '西安交大', '土木工程', '1', '6级', '2', '现金', '线上客户', '16990', '1000', '15990', '0', '0', '暂无', '15990', '1000', '14990', '0', null, '5651225521278561', '蒸菌子', '13412345678', null, '正常', '1年工作经历', '123@qq.com', '高中', null, null, '2017-09-03', '2017-09-05', '3', '2017-09-06 23:17:41');
INSERT INTO `student` VALUES ('35', 'Bob', '1', '2586452', '2017-09-04', 'QQ', '26', '女', '15200321541', '', '', '', 'xao', '2', '', '4', 'QQ', '线下客户', null, null, '', null, null, '', '15000', '1000', '14000', null, '/static/upload/171196e1-e90a-4e0f-9c7e-873cffce5565.jpg', '', '', '', null, '正常', '', '546511@qq.com', '本科', null, null, null, null, null, null);
INSERT INTO `student` VALUES ('36', 'yue', '1', '32566465', '2017-09-12', 'QQ', '25', null, '15902201103', '', '', '', 'CCX', null, '', '1', '支付宝', '线上客户', null, null, '', null, null, '', '15000', '1000', '14000', null, '/static/upload/7f6ac4d6-97b5-4228-aa00-f890bd3f4611.jpg', '', '', '', null, '正常', '', '795621@qq.com', '本科', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for studentclass
-- ----------------------------
DROP TABLE IF EXISTS `studentclass`;
CREATE TABLE `studentclass` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classname` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `headteacher_id` bigint(20) DEFAULT NULL,
  `tatolstudent` bigint(20) DEFAULT NULL,
  `seating` bigint(20) DEFAULT NULL,
  `classlocation` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `affilliation` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `state` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- ----------------------------
-- Records of studentclass
-- ----------------------------
INSERT INTO `studentclass` VALUES ('178', '微积分', '29', '30', '30', 'B栋7楼705', '数学', null);
INSERT INTO `studentclass` VALUES ('179', '散文', '25', '50', '50', 'A栋5楼501', '语文', null);
INSERT INTO `studentclass` VALUES ('180', '速写', '21', '70', '70', 'D栋6楼602', '美术', null);
INSERT INTO `studentclass` VALUES ('181', '交响曲', '37', '20', '20', 'F栋901', '音乐', null);
INSERT INTO `studentclass` VALUES ('182', '量子论', '2', '60', '60', 'C栋207', '物理', null);
INSERT INTO `studentclass` VALUES ('183', '排序查询', '1', null, '2', '走廊', '娱乐', '\0');

-- ----------------------------
-- Table structure for studentloss
-- ----------------------------
DROP TABLE IF EXISTS `studentloss`;
CREATE TABLE `studentloss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `studydays` int(255) DEFAULT NULL,
  `lossClass` bigint(20) DEFAULT NULL,
  `lossStage` varchar(11) DEFAULT NULL,
  `lossReason` varchar(255) DEFAULT NULL,
  `lossDate` date DEFAULT NULL,
  `handler` bigint(11) DEFAULT NULL,
  `marketuser` bigint(20) DEFAULT NULL,
  `refund` tinyint(1) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studentloss
-- ----------------------------
INSERT INTO `studentloss` VALUES ('1', 'zmh', '5259', '156', '7', '2', '基础班', '家中有事', '2017-08-08', '2', '3', '0', '流失');
INSERT INTO `studentloss` VALUES ('2', 'gfsf', '142', '12542', '19', '3', 'fdfd', 'sfhttgf', '2017-08-28', null, '2', '1', '流失');
INSERT INTO `studentloss` VALUES ('3', '张小川', '7922', '139', '7', '2', '基础班', '跟不上', '2017-08-30', null, '3', '0', '流失');
INSERT INTO `studentloss` VALUES ('4', '王小锤', '7922', '139', '8', '2', '基础班', '跟不上', '2017-08-31', null, '3', '1', '流失');
INSERT INTO `studentloss` VALUES ('5', '何小川', '8902', '186', '8', '3', '', '', '2017-08-31', '1', '6', '1', '流失');
INSERT INTO `studentloss` VALUES ('6', '郑小明', '21545123', '15911', '4', '4', '基础班', '身体不舒服', '2017-08-08', null, '7', '1', '流失');

-- ----------------------------
-- Table structure for studenttrack
-- ----------------------------
DROP TABLE IF EXISTS `studenttrack`;
CREATE TABLE `studenttrack` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) DEFAULT NULL,
  `consultWay` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `purpose` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `filePath` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of studenttrack
-- ----------------------------
INSERT INTO `studenttrack` VALUES ('1', '6', '电话交流', 'df', 'df', '');
INSERT INTO `studenttrack` VALUES ('2', '10', '电子邮件', '加强看看', '', '');
INSERT INTO `studenttrack` VALUES ('3', '10', '电话交流', '上传', '', '');
INSERT INTO `studenttrack` VALUES ('4', '9', '电话交流', '记录', '', '');
INSERT INTO `studenttrack` VALUES ('5', '10', '电话交流', '12', '12', '');
INSERT INTO `studenttrack` VALUES ('10', null, '电子邮件', '', 'id试试2', '');
INSERT INTO `studenttrack` VALUES ('20', '8', '电子邮件', '再来一次', '', '/static/upload/0d021203-0afe-416d-af09-88a16dbd812d.jpg');
INSERT INTO `studenttrack` VALUES ('21', '10', '电话交流', '', '图片', '/static/upload/65765f02-78d4-4253-8237-45c0b3d5d770.jpg');
INSERT INTO `studenttrack` VALUES ('22', '10', '电话交流', '看看图片', '', '/static/upload/c19320dd-f19a-4e95-81b4-313a88b568d4.jpg');
INSERT INTO `studenttrack` VALUES ('23', '5', '电话交流', '追踪测试', '', null);
INSERT INTO `studenttrack` VALUES ('24', '5', '电话交流', '再来试试', '', null);
INSERT INTO `studenttrack` VALUES ('25', '5', '电话交流', '', '', null);
INSERT INTO `studenttrack` VALUES ('27', '16', '电话交流', '加强学习', '交流感情', '/static/upload/e9d795cc-e9bb-4b6d-83a2-a424085d1993.jpg');
INSERT INTO `studenttrack` VALUES ('28', '25', '短信', '', '追踪一次', null);
INSERT INTO `studenttrack` VALUES ('29', '17', '电话交流', 'uih', 'hgf', null);

-- ----------------------------
-- Table structure for syllabusitem
-- ----------------------------
DROP TABLE IF EXISTS `syllabusitem`;
CREATE TABLE `syllabusitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `teacher_id` bigint(20) DEFAULT NULL,
  `headteacher_id` bigint(20) DEFAULT NULL,
  `classroom_id` bigint(20) DEFAULT NULL,
  `schoolclass_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `syllabus_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syllabusitem
-- ----------------------------
INSERT INTO `syllabusitem` VALUES ('1', '计算机原理', '2017-07-10', '2', '2', '2', '1', '111', '1');
INSERT INTO `syllabusitem` VALUES ('3', '12121121', '2017-02-03', '5', '2', '2', '1', '0000', null);
INSERT INTO `syllabusitem` VALUES ('12', 'java应用', '2017-02-03', '6', '2', '2', '1', '22', '5');
INSERT INTO `syllabusitem` VALUES ('16', '计算机原理', '2017-07-11', '2', '2', '1', '1', '55', '1');
INSERT INTO `syllabusitem` VALUES ('18', '5555', '2017-07-10', '2', '3', '2', '1', '0000', '5');
INSERT INTO `syllabusitem` VALUES ('19', '124452', '2017-07-17', '2', '1', '1', '1', '00000', '1');
INSERT INTO `syllabusitem` VALUES ('20', '222', '2017-07-17', '1', '2', '1', '1', '0000', '7');
INSERT INTO `syllabusitem` VALUES ('21', '委屈二群无', '2017-07-25', '2', '6', '2', '1', '21312', '1');
INSERT INTO `syllabusitem` VALUES ('22', '00000', '2017-07-12', '2', '2', '6', '3', '00', '9');
INSERT INTO `syllabusitem` VALUES ('23', 'ui', '2017-07-28', '9', '11', '7', '5', '哈哈', '11');
INSERT INTO `syllabusitem` VALUES ('24', 'java', '2017-07-31', '11', '10', '8', '4', 'wq2', '12');

-- ----------------------------
-- Table structure for systemdictionary
-- ----------------------------
DROP TABLE IF EXISTS `systemdictionary`;
CREATE TABLE `systemdictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `sn` (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemdictionary
-- ----------------------------
INSERT INTO `systemdictionary` VALUES ('1', 'education', '学历', '学历');
INSERT INTO `systemdictionary` VALUES ('2', 'clientType', '客户类型', '客户类型');
INSERT INTO `systemdictionary` VALUES ('3', 'wantedSubject', '意向学科', '意向学科');
INSERT INTO `systemdictionary` VALUES ('4', 'wantedSchool', '意向校区', '意向校区');
INSERT INTO `systemdictionary` VALUES ('5', 'origin', '来源', '来源');
INSERT INTO `systemdictionary` VALUES ('6', 'wantedLevel', '意向等级', '意向等级');
INSERT INTO `systemdictionary` VALUES ('7', 'state', '当前状态', '当前状态');
INSERT INTO `systemdictionary` VALUES ('8', 'loseTable', '丢单', '丢单');
INSERT INTO `systemdictionary` VALUES ('9', 'consultWay', '咨询方式', '咨询方式');
INSERT INTO `systemdictionary` VALUES ('10', 'status', '状态', '状态');
INSERT INTO `systemdictionary` VALUES ('11', 'purpose', '跟进目的', '跟进目的');
INSERT INTO `systemdictionary` VALUES ('12', 'inPoolReason', '移入池原因', '移入池原因');
INSERT INTO `systemdictionary` VALUES ('13', 'treason', '移交原因', '移交原因');
INSERT INTO `systemdictionary` VALUES ('14', 'importance', '重要度', '重要度');
INSERT INTO `systemdictionary` VALUES ('15', 'schoolType', '学校类型', '学校类型');
INSERT INTO `systemdictionary` VALUES ('16', 'schoolState', '学校状态', '学校状态');
INSERT INTO `systemdictionary` VALUES ('17', 'university', '毕业学校', '毕业学校');
INSERT INTO `systemdictionary` VALUES ('18', 'englishlevel', '英语等级', '英语等级');
INSERT INTO `systemdictionary` VALUES ('19', 'paymethod', '支付方式', '支付方式');

-- ----------------------------
-- Table structure for systemdictionaryitem
-- ----------------------------
DROP TABLE IF EXISTS `systemdictionaryitem`;
CREATE TABLE `systemdictionaryitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_sn` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_sn` (`parent_sn`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemdictionaryitem
-- ----------------------------
INSERT INTO `systemdictionaryitem` VALUES ('1', '学历', '高中', '..');
INSERT INTO `systemdictionaryitem` VALUES ('2', '学历', '大专', '..');
INSERT INTO `systemdictionaryitem` VALUES ('3', '学历', '本科', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('4', '学历', '研究生', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('5', '客户类型', '线上客户', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('6', '客户类型', '线下客户', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('7', '意向学科', '美术', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('8', '意向学科', '数学', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('9', '意向学科', '物理', '..');
INSERT INTO `systemdictionaryitem` VALUES ('10', '意向学科', '音乐', '..');
INSERT INTO `systemdictionaryitem` VALUES ('11', '意向校区', '广州校区', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('12', '意向校区', '深圳校区', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('13', '来源', 'QQ', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('14', '来源', '广告', '广告');
INSERT INTO `systemdictionaryitem` VALUES ('15', '意向等级', '高', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('16', '意向等级', '中', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('17', '意向等级', '低', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('18', '意向等级', '很不好', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('19', '当前状态', '在校', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('20', '当前状态', '毕业设计', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('21', '当前状态', '实习生', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('22', '意向校区', '北京校区', '..');
INSERT INTO `systemdictionaryitem` VALUES ('45', '丢单', '已就业', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('46', '丢单', '转到其它校区', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('47', '丢单', '已到其它培训机构', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('48', '丢单', '去其它城市', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('49', '丢单', '其它原因', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('50', '咨询方式', '电话交流', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('51', '咨询方式', '电子邮件', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('52', '咨询方式', '短信', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('53', '移交原因', '不清楚', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('54', '移交原因', '休学', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('55', '移入池原因', '不清楚', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('56', '移入池原因', '无法跟进', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('57', '跟进目的', '额。。。', '。。');
INSERT INTO `systemdictionaryitem` VALUES ('58', '重要度', '很重要', '*****');
INSERT INTO `systemdictionaryitem` VALUES ('59', '重要度', '重要', '****');
INSERT INTO `systemdictionaryitem` VALUES ('60', '重要度', '有些重要', '***');
INSERT INTO `systemdictionaryitem` VALUES ('61', '重要度', '一般重要', '**');
INSERT INTO `systemdictionaryitem` VALUES ('62', '学校类型', '公立', null);
INSERT INTO `systemdictionaryitem` VALUES ('63', '学校类型', '私立', null);
INSERT INTO `systemdictionaryitem` VALUES ('64', '学校类型', '民办', null);
INSERT INTO `systemdictionaryitem` VALUES ('65', '学校状态', '正常', null);
INSERT INTO `systemdictionaryitem` VALUES ('66', '学校状态', '待审核', null);
INSERT INTO `systemdictionaryitem` VALUES ('67', '学校状态', '共享', null);
INSERT INTO `systemdictionaryitem` VALUES ('68', '学校状态', '已签单', null);
INSERT INTO `systemdictionaryitem` VALUES ('69', '学校状态', '丢单', null);
INSERT INTO `systemdictionaryitem` VALUES ('70', '学校状态', '转去其他', null);
INSERT INTO `systemdictionaryitem` VALUES ('71', '学校状态', '其他', null);
INSERT INTO `systemdictionaryitem` VALUES ('72', '咨询方式', 'qq', null);
INSERT INTO `systemdictionaryitem` VALUES ('73', '咨询方式', '微信', null);
INSERT INTO `systemdictionaryitem` VALUES ('75', '毕业学校', '武汉大学', '11');
INSERT INTO `systemdictionaryitem` VALUES ('76', '毕业学校', '湖北大学', '11');
INSERT INTO `systemdictionaryitem` VALUES ('77', '毕业学校', '广州大学', '11');
INSERT INTO `systemdictionaryitem` VALUES ('78', '毕业学校', '北京大学', '11');
INSERT INTO `systemdictionaryitem` VALUES ('79', '毕业学校', '清华大学', '11');
INSERT INTO `systemdictionaryitem` VALUES ('80', '毕业学校', '华中科技大学', '11');
INSERT INTO `systemdictionaryitem` VALUES ('81', '毕业学校', '中山大学', '11');
INSERT INTO `systemdictionaryitem` VALUES ('82', '英语等级', '大学3级', '11');
INSERT INTO `systemdictionaryitem` VALUES ('83', '英语等级', '大学4级', '11');
INSERT INTO `systemdictionaryitem` VALUES ('84', '英语等级', '大学6级', '11');
INSERT INTO `systemdictionaryitem` VALUES ('85', '英语等级', '大学8级', '11');
INSERT INTO `systemdictionaryitem` VALUES ('86', '支付方式', '微信', '11');
INSERT INTO `systemdictionaryitem` VALUES ('87', '支付方式', 'QQ', '11');
INSERT INTO `systemdictionaryitem` VALUES ('88', '支付方式', '支付宝', '11');
INSERT INTO `systemdictionaryitem` VALUES ('89', '支付方式', '刷卡', '11');
INSERT INTO `systemdictionaryitem` VALUES ('90', '支付方式', '现金', '11');
INSERT INTO `systemdictionaryitem` VALUES ('91', '意向学科', '语文', ',,,');
INSERT INTO `systemdictionaryitem` VALUES ('92', '客户类型', '离校', '。。。');
INSERT INTO `systemdictionaryitem` VALUES ('93', '英语等级', '专业四级', '11');
INSERT INTO `systemdictionaryitem` VALUES ('94', '移入池原因', '去旅游了吧', '。。');

-- ----------------------------
-- Table structure for systemlog
-- ----------------------------
DROP TABLE IF EXISTS `systemlog`;
CREATE TABLE `systemlog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `opTime` date DEFAULT NULL,
  `opUser_id` bigint(20) DEFAULT NULL,
  `function` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `params` varchar(800) COLLATE utf8_bin DEFAULT NULL,
  `opIp` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3974 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of systemlog
-- ----------------------------
INSERT INTO `systemlog` VALUES ('1', '2017-07-13', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2', '2017-07-14', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3', '2017-07-14', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('4', '2017-07-14', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('5', '2017-07-14', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('6', '2017-07-14', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('7', '2017-07-14', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('8', '2017-07-14', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('9', '2017-07-14', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('10', '2017-07-14', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('11', '2017-07-14', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('12', '2017-07-14', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('13', '2017-07-16', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('14', '2017-07-16', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('15', '2017-07-17', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('16', '2017-07-18', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('17', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('18', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('19', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('20', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('21', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('22', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('23', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('24', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('25', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('26', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('27', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('28', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('29', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('30', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('31', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('32', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('33', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('34', '2017-07-19', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('35', '2017-07-20', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '192.168.11.181');
INSERT INTO `systemlog` VALUES ('36', '2017-07-20', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '192.168.11.181');
INSERT INTO `systemlog` VALUES ('37', '2017-07-20', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '192.168.11.181');
INSERT INTO `systemlog` VALUES ('38', '2017-07-20', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '192.168.11.181');
INSERT INTO `systemlog` VALUES ('39', '2017-07-20', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '192.168.11.181');
INSERT INTO `systemlog` VALUES ('40', '2017-07-20', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '192.168.11.181');
INSERT INTO `systemlog` VALUES ('41', '2017-07-20', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('42', '2017-07-20', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('43', '2017-07-20', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '192.168.11.144');
INSERT INTO `systemlog` VALUES ('44', '2017-07-20', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '192.168.11.144');
INSERT INTO `systemlog` VALUES ('45', '2017-08-25', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('46', '2017-08-25', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('47', '2017-08-25', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('48', '2017-08-25', '1', 'com._520it.crm.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('49', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('50', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('51', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('52', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('53', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('54', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('55', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('56', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('57', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('58', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('59', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('60', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('61', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('62', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('63', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('64', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('65', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('66', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('67', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('68', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('69', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('70', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('71', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('72', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('73', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('74', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('75', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('76', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('77', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('78', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('79', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('80', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('81', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('82', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('83', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('84', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('85', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('86', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('87', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('88', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('89', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('90', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('91', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('92', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('93', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('94', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('95', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('96', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('97', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('98', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('99', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('100', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('101', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('102', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"\",\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('103', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('104', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('105', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('106', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('107', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('108', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('109', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('110', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('111', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('112', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('113', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('114', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('115', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('116', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('117', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('118', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('119', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('120', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('121', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('122', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('123', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('124', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('125', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('126', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('127', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('128', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('129', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('130', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('131', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('132', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('133', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('134', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('135', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('136', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('137', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('138', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('139', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('140', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('141', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('142', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('143', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('144', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('145', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('146', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('147', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('148', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('149', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('150', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('151', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('152', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('153', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('154', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('155', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('156', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('157', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('158', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('159', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('160', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('161', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('162', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('163', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('164', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('165', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('166', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('167', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('168', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('169', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('170', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('171', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":20,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('172', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":20,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('173', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":20,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('174', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('175', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('176', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"a\",\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('177', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"x\",\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('178', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"x\",\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('179', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"x\",\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('180', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"\",\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('181', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('182', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('183', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('184', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('185', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('186', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('187', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('188', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('189', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('190', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('191', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('192', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('193', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('194', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('195', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('196', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('197', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('198', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('199', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('200', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('201', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('202', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('203', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('204', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('205', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('206', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('207', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('208', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('209', '2017-08-26', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('210', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('211', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('212', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('213', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('214', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('215', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('216', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('217', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('218', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('219', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('220', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('221', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('222', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('223', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('224', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('225', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('226', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('227', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('228', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('229', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('230', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('231', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('232', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('233', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('234', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('235', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('236', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('237', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('238', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('239', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('240', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('241', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('242', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('243', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('244', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('245', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('246', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('247', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('248', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('249', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('250', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('251', '2017-08-27', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('252', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('253', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('254', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('255', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('256', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('257', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('258', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('259', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('260', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('261', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('262', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('263', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('264', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('265', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('266', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('267', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('268', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('269', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('270', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('271', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('272', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('273', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('274', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('275', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('276', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('277', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('278', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('279', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('280', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('281', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('282', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('283', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('284', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('285', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('286', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('287', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('288', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('289', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('290', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('291', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('292', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('293', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('294', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('295', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('296', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('297', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('298', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('299', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('300', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('301', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('302', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('303', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('304', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('305', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('306', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"\",\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('307', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('308', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('309', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('310', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('311', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('312', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('313', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('314', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('315', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('316', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('317', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('318', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":20,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('319', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('320', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('321', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('322', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('323', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('324', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('325', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('326', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('327', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('328', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('329', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('330', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('331', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('332', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('333', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('334', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('335', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('336', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('337', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('338', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('339', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('340', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('341', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('342', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('343', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('344', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('345', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('346', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('347', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('348', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('349', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('350', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('351', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('352', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('353', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('354', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('355', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('356', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('357', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('358', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('359', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('360', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('361', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('362', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('363', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('364', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":2,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":10}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('365', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('366', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":20,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('367', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('368', '2017-08-28', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('369', '2017-08-29', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('370', '2017-08-29', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('371', '2017-08-29', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '192.168.17.130');
INSERT INTO `systemlog` VALUES ('372', '2017-08-29', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '192.168.17.130');
INSERT INTO `systemlog` VALUES ('373', '2017-08-29', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '192.168.17.130');
INSERT INTO `systemlog` VALUES ('374', '2017-08-29', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('375', '2017-08-30', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('376', '2017-08-30', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('377', '2017-08-30', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"\",\"currentUserId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('378', '2017-08-30', '1', 'com._520it.crma.service.impl.EmployeeServiceImpl:queryPage', '[{\"page\":2,\"rows\":10,\"id\":null,\"keyword\":\"\",\"currentUserId\":null,\"start\":10}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('379', '2017-10-29', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', null);
INSERT INTO `systemlog` VALUES ('380', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('381', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('382', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('383', '2017-10-29', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', null);
INSERT INTO `systemlog` VALUES ('384', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('385', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('386', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('387', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('388', '2017-10-29', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', null);
INSERT INTO `systemlog` VALUES ('389', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('390', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('391', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('392', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('393', '2017-10-29', null, 'StudentServiceImpl:queryChart', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('394', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('395', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('396', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('397', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('398', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('399', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('400', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('401', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('402', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('403', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('404', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('405', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('406', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('407', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('408', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('409', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('410', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('411', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('412', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('413', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('414', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('415', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('416', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('417', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('418', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('419', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('420', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('421', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('422', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('423', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":\"正常\",\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('424', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('425', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('426', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('427', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":true,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('428', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('429', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('430', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('431', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('432', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('433', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('434', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('435', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('436', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('437', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('438', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('439', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('440', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('441', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('442', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":\"正常\",\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('443', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('444', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('445', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('446', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('447', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":true,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('448', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('449', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('450', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('451', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('452', '2017-10-29', null, 'ReceiptServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('453', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('454', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('455', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('456', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('457', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('458', '2017-10-29', null, 'StudentLossServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('459', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('460', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('461', '2017-10-29', null, 'ExpenditureServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('462', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('463', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('464', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('465', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('466', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('467', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('468', '2017-10-29', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('469', '2017-10-29', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('470', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('471', '2017-10-29', null, 'RoomclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"begindate\":null,\"enddate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('472', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('473', '2017-10-29', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('474', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('475', '2017-10-29', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('476', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('477', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('478', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"\",\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('479', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('480', '2017-10-29', null, 'RoomclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"begindate\":null,\"enddate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('481', '2017-10-29', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"startdate\":null,\"enddate\":null,\"year\":null,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('482', '2017-10-29', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('483', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('484', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('485', '2017-10-29', null, 'StudentServiceImpl:selectByPrimaryKey', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('486', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('487', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('488', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('489', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('490', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('491', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('492', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('493', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('494', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('495', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('496', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('497', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('498', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('499', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('500', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('501', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('502', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('503', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('504', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('505', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('506', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('507', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('508', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('509', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('510', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('511', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('512', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('513', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('514', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('515', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('516', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('517', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('518', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('519', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('520', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('521', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('522', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('523', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('524', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('525', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('526', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('527', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('528', '2017-10-29', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('529', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('530', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('531', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('532', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('533', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('534', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('535', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('536', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('537', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('538', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('539', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('540', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('541', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('542', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('543', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('544', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('545', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('546', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('547', '2017-10-29', null, 'SchoolClientTransferLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"auditState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('548', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('549', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('550', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('551', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('552', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('553', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('554', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('555', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('556', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":\"正常\",\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('557', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('558', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('559', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('560', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('561', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('562', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('563', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('564', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('565', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('566', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":true,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('567', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('568', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('569', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('570', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('571', '2017-10-29', null, 'ReceiptServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('572', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('573', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('574', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('575', '2017-10-29', null, 'StudentLossServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('576', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('577', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('578', '2017-10-29', null, 'ExpenditureServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('579', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('580', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('581', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('582', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('583', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('584', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('585', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('586', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('587', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('588', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('589', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('590', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('591', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('592', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('593', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('594', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('595', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('596', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('597', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('598', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('599', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('600', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('601', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('602', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('603', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('604', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('605', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('606', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('607', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('608', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('609', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('610', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('611', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('612', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('613', '2017-10-29', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('614', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('615', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('616', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('617', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('618', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('619', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('620', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('621', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('622', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('623', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('624', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('625', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('626', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('627', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('628', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('629', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('630', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('631', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('632', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('633', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('634', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('635', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('636', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('637', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('638', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('639', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('640', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('641', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('642', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('643', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('644', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('645', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('646', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('647', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('648', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('649', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('650', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('651', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('652', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('653', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('654', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('655', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('656', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('657', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('658', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('659', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('660', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('661', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('662', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('663', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('664', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('665', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('666', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('667', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('668', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('669', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('670', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('671', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('672', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('673', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('674', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('675', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('676', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('677', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('678', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('679', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('680', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('681', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('682', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('683', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('684', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('685', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('686', '2017-10-29', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('687', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('688', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('689', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('690', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('691', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('692', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('693', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('694', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('695', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('696', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('697', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('698', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('699', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('700', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('701', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('702', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('703', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('704', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('705', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('706', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('707', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('708', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('709', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('710', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('711', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('712', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('713', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('714', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('715', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('716', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('717', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('718', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('719', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('720', '2017-10-29', null, 'SchoolClientTransferLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"auditState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('721', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('722', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('723', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('724', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('725', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('726', '2017-10-29', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('727', '2017-10-29', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('728', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('729', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('730', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('731', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('732', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('733', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('734', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('735', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('736', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('737', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('738', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('739', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('740', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":\"正常\",\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('741', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('742', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('743', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('744', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('745', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('746', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('747', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":true,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('748', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('749', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('750', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('751', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('752', '2017-10-29', null, 'ReceiptServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('753', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('754', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('755', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('756', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('757', '2017-10-29', null, 'StudentLossServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('758', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('759', '2017-10-29', null, 'ExpenditureServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('760', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('761', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('762', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('763', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('764', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('765', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('766', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('767', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('768', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('769', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('770', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('771', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('772', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('773', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('774', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('775', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('776', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('777', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('778', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('779', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('780', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('781', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('782', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('783', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('784', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('785', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('786', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('787', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('788', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('789', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('790', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('791', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('792', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('793', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('794', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('795', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('796', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('797', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('798', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('799', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('800', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('801', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('802', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('803', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('804', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('805', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('806', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('807', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('808', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('809', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('810', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('811', '2017-10-29', null, 'StudentServiceImpl:queryChart', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('812', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('813', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('814', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('815', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('816', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('817', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('818', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('819', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('820', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('821', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('822', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('823', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('824', '2017-10-29', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('825', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('826', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('827', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('828', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('829', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('830', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('831', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('832', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('833', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('834', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('835', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('836', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('837', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('838', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('839', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('840', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('841', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('842', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('843', '2017-10-29', null, 'SchoolClientTransferLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"auditState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('844', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('845', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('846', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('847', '2017-10-29', null, 'StudentServiceImpl:queryChart', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('848', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('849', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('850', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('851', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('852', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('853', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('854', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('855', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('856', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('857', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('858', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('859', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('860', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('861', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('862', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('863', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('864', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('865', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('866', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('867', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('868', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('869', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('870', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('871', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('872', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('873', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('874', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('875', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('876', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('877', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('878', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('879', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('880', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('881', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('882', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('883', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('884', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('885', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('886', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('887', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('888', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('889', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('890', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('891', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('892', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('893', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('894', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('895', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('896', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('897', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('898', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('899', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('900', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('901', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('902', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('903', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('904', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('905', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('906', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('907', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('908', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('909', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('910', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('911', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('912', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('913', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('914', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('915', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('916', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('917', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('918', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('919', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('920', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('921', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('922', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('923', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('924', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('925', '2017-10-29', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('926', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('927', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('928', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('929', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('930', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('931', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('932', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('933', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('934', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('935', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('936', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('937', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('938', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('939', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('940', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('941', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('942', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('943', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('944', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('945', '2017-10-29', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('946', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('947', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('948', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('949', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('950', '2017-10-29', null, 'StudentLossServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('951', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('952', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('953', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('954', '2017-10-29', null, 'ExpenditureServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('955', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('956', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('957', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('958', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('959', '2017-10-29', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('960', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('961', '2017-10-29', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('962', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('963', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('964', '2017-10-29', null, 'RoomclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"begindate\":null,\"enddate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('965', '2017-10-29', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"startdate\":null,\"enddate\":null,\"year\":null,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('966', '2017-10-29', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('967', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('968', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('969', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('970', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('971', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('972', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('973', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('974', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('975', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('976', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('977', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[13]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('978', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[11]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('979', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[11]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('980', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[13]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('981', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[15]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('982', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[15]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('983', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[17]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('984', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[18]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('985', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[19]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('986', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[20]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('987', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('988', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('989', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('990', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('991', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('992', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('993', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('994', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('995', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('996', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('997', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('998', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('999', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1000', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1001', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1002', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1003', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1004', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1005', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1006', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1007', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1008', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1009', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1010', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1011', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1012', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1013', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1014', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1015', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1016', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1017', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1018', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1019', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1020', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1021', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1022', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1023', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1024', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1025', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1026', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1027', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1028', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1029', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1030', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1031', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1032', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1033', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1034', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1035', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1036', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1037', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1038', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1039', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1040', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1041', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1042', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1043', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1044', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1045', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1046', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1047', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1048', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1049', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1050', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1051', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1052', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1053', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1054', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1055', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1056', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1057', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1058', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1059', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1060', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1061', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1062', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1063', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1064', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1065', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1066', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1067', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1068', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1069', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1070', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1071', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1072', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1073', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1074', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1075', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1076', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1077', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1078', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1079', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1080', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1081', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1082', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1083', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1084', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1085', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1086', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1087', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1088', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1089', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1090', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1091', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1092', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1093', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1094', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1095', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1096', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1097', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1098', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1099', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1100', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1101', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1102', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1103', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1104', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1105', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1106', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1107', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1108', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1109', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1110', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1111', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1112', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1113', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1114', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1115', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1116', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1117', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1118', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1119', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1120', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1121', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1122', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1123', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1124', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1125', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"\",\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1126', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1127', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1128', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1129', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1130', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1131', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1132', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1133', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1134', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1135', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1136', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1137', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1138', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1139', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1140', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1141', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1142', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1143', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1144', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1145', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1146', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1147', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1148', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1149', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1150', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1151', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1152', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1153', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1154', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1155', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1156', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1157', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1158', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1159', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1160', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1161', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1162', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1163', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1164', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1165', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1166', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1167', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1168', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1169', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1170', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1171', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1172', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1173', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1174', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1175', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1176', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1177', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1178', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1179', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1180', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1181', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1182', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1183', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1184', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1185', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1186', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1187', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1188', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1189', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1190', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1191', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1192', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1193', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1194', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1195', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1196', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1197', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1198', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1199', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1200', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1201', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1202', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1203', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1204', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1205', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1206', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1207', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1208', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1209', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1210', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1211', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1212', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1213', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1214', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1215', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1216', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1217', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1218', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1219', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1220', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1221', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1222', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1223', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1224', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1225', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1226', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1227', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1228', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1229', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1230', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1231', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1232', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1233', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1234', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1235', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1236', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1237', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1238', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1239', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1240', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1241', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1242', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1243', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1244', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1245', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1246', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1247', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1248', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1249', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1250', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1251', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1252', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1253', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1254', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1255', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1256', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1257', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1258', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1259', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1260', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1261', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1262', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1263', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1264', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1265', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1266', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1267', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1268', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1269', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1270', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1271', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1272', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1273', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1274', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1275', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1276', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1277', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1278', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1279', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1280', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1281', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1282', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1283', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1284', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1285', '2017-10-29', null, 'AttendanceServiceImpl:getEndTime', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1286', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1287', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1288', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1289', '2017-10-29', null, 'StudentServiceImpl:selectByPrimaryKey', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1290', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1291', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1292', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1293', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1294', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1295', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1296', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1297', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1298', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1299', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1300', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1301', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1302', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1303', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1304', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1305', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1306', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1307', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1308', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1309', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1310', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1311', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1312', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1313', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1314', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1315', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1316', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1317', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1318', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1319', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1320', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1321', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1322', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1323', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1324', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1325', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1326', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1327', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1328', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1329', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1330', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1331', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1332', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1333', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1334', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1335', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1336', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1337', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1338', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1339', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1340', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1341', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1342', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1343', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1344', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1345', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1346', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1347', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1348', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1349', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1350', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1351', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1352', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1353', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1354', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1355', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1356', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1357', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1358', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1359', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1360', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1361', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1362', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1363', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1364', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1365', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1366', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1367', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1368', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1369', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1370', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1371', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1372', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1373', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1374', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1375', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1376', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1377', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1378', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1379', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1380', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1381', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1382', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1383', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1384', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1385', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1386', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1387', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1388', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1389', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1390', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1391', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1392', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1393', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1394', '2017-10-29', null, 'StudentServiceImpl:queryChart', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1395', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1396', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1397', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1398', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1399', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1400', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1401', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1402', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1403', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1404', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1405', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1406', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1407', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1408', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1409', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1410', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1411', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1412', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1413', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1414', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1415', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1416', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1417', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1418', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1419', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1420', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1421', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1422', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1423', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1424', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1425', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1426', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1427', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1428', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1429', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1430', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1431', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":\"正常\",\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1432', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1433', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1434', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1435', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1436', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1437', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":true,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1438', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1439', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1440', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1441', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1442', '2017-10-29', null, 'ReceiptServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1443', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1444', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1445', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1446', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1447', '2017-10-29', null, 'StudentLossServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1448', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1449', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1450', '2017-10-29', null, 'ExpenditureServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1451', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1452', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1453', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1454', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1455', '2017-10-29', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1456', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1457', '2017-10-29', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1458', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1459', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1460', '2017-10-29', null, 'RoomclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"begindate\":null,\"enddate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1461', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1462', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1463', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1464', '2017-10-29', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1465', '2017-10-29', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1466', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1467', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1468', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1469', '2017-10-29', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1470', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1471', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1472', '2017-10-29', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1473', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1474', '2017-10-29', null, 'RoomclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"begindate\":null,\"enddate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1475', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1476', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1477', '2017-10-29', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1478', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1479', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1480', '2017-10-29', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1481', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1482', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1483', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1484', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1485', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1486', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1487', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1488', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1489', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1490', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1491', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1492', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1493', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":\"正常\",\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1494', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1495', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1496', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1497', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1498', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1499', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1500', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1501', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":true,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1502', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1503', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1504', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1505', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1506', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1507', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":true,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1508', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1509', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1510', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1511', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1512', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1513', '2017-10-29', null, 'ReceiptServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1514', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1515', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1516', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1517', '2017-10-29', null, 'StudentLossServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1518', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1519', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1520', '2017-10-29', null, 'ExpenditureServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1521', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1522', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1523', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1524', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1525', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1526', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1527', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1528', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1529', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1530', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1531', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1532', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1533', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":\"正常\",\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1534', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1535', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1536', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1537', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1538', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1539', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":true,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1540', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1541', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1542', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1543', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1544', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1545', '2017-10-29', null, 'ReceiptServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1546', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1547', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1548', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1549', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1550', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1551', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1552', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1553', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1554', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1555', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1556', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1557', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1558', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1559', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1560', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1561', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1562', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1563', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1564', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1565', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1566', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1567', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1568', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1569', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1570', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1571', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1572', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1573', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1574', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1575', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1576', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1577', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1578', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1579', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1580', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1581', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1582', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1583', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1584', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1585', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1586', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1587', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1588', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1589', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1590', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1591', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1592', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1593', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1594', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1595', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1596', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1597', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1598', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1599', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1600', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1601', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1602', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1603', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1604', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1605', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1606', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1607', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1608', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1609', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1610', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1611', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1612', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1613', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1614', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1615', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1616', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1617', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1618', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1619', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1620', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1621', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1622', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1623', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1624', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1625', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1626', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1627', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1628', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1629', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1630', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1631', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1632', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1633', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1634', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1635', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1636', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1637', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1638', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1639', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1640', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1641', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1642', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1643', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1644', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1645', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1646', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1647', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1648', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1649', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1650', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1651', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1652', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1653', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1654', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1655', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1656', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1657', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1658', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1659', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1660', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1661', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1662', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1663', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1664', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1665', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1666', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1667', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1668', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1669', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1670', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1671', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1672', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1673', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1674', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1675', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1676', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1677', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1678', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":\"正常\",\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1679', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1680', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1681', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1682', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1683', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1684', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1685', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1686', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1687', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1688', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1689', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1690', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1691', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1692', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1693', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1694', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1695', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1696', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1697', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1698', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1699', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1700', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1701', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1702', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1703', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1704', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1705', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1706', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1707', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1708', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1709', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1710', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1711', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1712', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1713', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1714', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1715', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1716', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1717', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1718', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1719', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1720', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1721', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1722', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1723', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1724', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1725', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1726', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1727', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1728', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1729', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1730', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1731', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1732', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1733', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1734', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1735', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1736', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1737', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1738', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1739', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1740', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1741', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1742', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1743', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1744', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1745', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1746', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1747', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1748', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1749', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1750', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1751', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1752', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1753', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1754', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1755', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1756', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1757', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1758', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1759', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1760', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1761', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1762', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1763', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1764', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1765', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1766', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1767', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1768', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1769', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1770', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1771', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1772', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1773', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1774', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1775', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1776', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\" \"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1777', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1778', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1779', '2017-10-29', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', null);
INSERT INTO `systemlog` VALUES ('1780', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1781', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1782', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1783', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1784', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1785', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1786', '2017-10-29', null, 'StudentServiceImpl:selectByPrimaryKey', '[14]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1787', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1788', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1789', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1790', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1791', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1792', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1793', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1794', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1795', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1796', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1797', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1798', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1799', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1800', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1801', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1802', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1803', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1804', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1805', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1806', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1807', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1808', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1809', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1810', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1811', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1812', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1813', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1814', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1815', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1816', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1817', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":0,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1818', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":0,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1819', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":0,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1820', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":0,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1821', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1822', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1823', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1824', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1825', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1826', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1827', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1828', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1829', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1830', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1831', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1832', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1833', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1834', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1835', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1836', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1837', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1838', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1839', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1840', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1841', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1842', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1843', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1844', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1845', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1846', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1847', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1848', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1849', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1850', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1851', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1852', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1853', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1854', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1855', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1856', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1857', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1858', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1859', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1860', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1861', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1862', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1863', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1864', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1865', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1866', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1867', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1868', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1869', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1870', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1871', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1872', '2017-10-29', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1873', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1874', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1875', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1876', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1877', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1878', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1879', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1880', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1881', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1882', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1883', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1884', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1885', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1886', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1887', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1888', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1889', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1890', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1891', '2017-10-29', null, 'SchoolClientTransferLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"auditState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1892', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1893', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1894', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1895', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1896', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1897', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1898', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1899', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1900', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1901', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1902', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1903', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1904', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1905', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1906', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1907', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1908', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1909', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1910', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1911', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1912', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1913', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1914', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1915', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1916', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1917', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1918', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1919', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1920', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1921', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1922', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1923', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1924', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1925', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1926', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1927', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1928', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1929', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1930', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1931', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1932', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1933', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1934', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1935', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1936', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1937', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1938', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1939', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1940', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1941', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1942', '2017-10-29', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1943', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1944', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1945', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1946', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1947', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1948', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1949', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1950', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1951', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1952', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1953', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1954', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1955', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1956', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1957', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1958', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1959', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1960', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1961', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1962', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1963', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1964', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1965', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1966', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1967', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1968', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1969', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1970', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1971', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1972', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1973', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1974', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1975', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1976', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1977', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1978', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1979', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1980', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1981', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1982', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1983', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1984', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1985', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1986', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1987', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1988', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1989', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1990', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1991', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1992', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1993', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1994', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1995', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1996', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1997', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1998', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('1999', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2000', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2001', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2002', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2003', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2004', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2005', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2006', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2007', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2008', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2009', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2010', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2011', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2012', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2013', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2014', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2015', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2016', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2017', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2018', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2019', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2020', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2021', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2022', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2023', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2024', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2025', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2026', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2027', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2028', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2029', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2030', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2031', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2032', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2033', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2034', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2035', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2036', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2037', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2038', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2039', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2040', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2041', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2042', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2043', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2044', '2017-10-29', null, 'SchoolClientTransferLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"auditState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2045', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2046', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2047', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2048', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2049', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2050', '2017-10-29', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2051', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2052', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2053', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2054', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2055', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2056', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2057', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2058', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2059', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2060', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2061', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2062', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2063', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":\"正常\",\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2064', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2065', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2066', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2067', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2068', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2069', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2070', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2071', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2072', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2073', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2074', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2075', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2076', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2077', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2078', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2079', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[3]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2080', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2081', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2082', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2083', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2084', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2085', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2086', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2087', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2088', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2089', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2090', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2091', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2092', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2093', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2094', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2095', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2096', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2097', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2098', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2099', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2100', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2101', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2102', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2103', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2104', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2105', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2106', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2107', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2108', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2109', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2110', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2111', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2112', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2113', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2114', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2115', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2116', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2117', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2118', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2119', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2120', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2121', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2122', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2123', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2124', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2125', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2126', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2127', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2128', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2129', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2130', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2131', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2132', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2133', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2134', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2135', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2136', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2137', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2138', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2139', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2140', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2141', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2142', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2143', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2144', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2145', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2146', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2147', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2148', '2017-10-29', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2149', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2150', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2151', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2152', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2153', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2154', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2155', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2156', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2157', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2158', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2159', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2160', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2161', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2162', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2163', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2164', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2165', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2166', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2167', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2168', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2169', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2170', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2171', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2172', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2173', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2174', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2175', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2176', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2177', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2178', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2179', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":\"正常\",\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2180', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2181', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2182', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2183', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2184', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":true,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2185', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2186', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2187', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2188', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2189', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2190', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2191', '2017-10-29', null, 'ReceiptServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2192', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2193', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2194', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2195', '2017-10-29', null, 'StudentLossServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2196', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2197', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2198', '2017-10-29', null, 'ExpenditureServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2199', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2200', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2201', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2202', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2203', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2204', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2205', '2017-10-29', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2206', '2017-10-29', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2207', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2208', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[7]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2209', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[11]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2210', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[12]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2211', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[13]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2212', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[176]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2213', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2214', '2017-10-29', null, 'RoomclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"begindate\":null,\"enddate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2215', '2017-10-29', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"startdate\":null,\"enddate\":null,\"year\":null,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2216', '2017-10-29', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2217', '2017-10-29', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2218', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2219', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2220', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2221', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2222', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2223', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2224', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2225', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2226', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2227', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2228', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2229', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2230', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2231', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2232', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2233', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2234', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2235', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2236', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2237', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2238', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2239', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2240', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2241', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2242', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2243', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2244', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2245', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"员工管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2246', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2247', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2248', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2249', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2250', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"大客户\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2251', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2252', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2253', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"学员跟踪\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2254', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2255', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2256', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2257', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2258', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2259', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2260', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2261', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2262', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2263', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2264', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2265', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2266', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2267', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2268', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2269', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2270', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2271', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2272', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2273', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2274', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2275', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2276', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2277', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2278', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2279', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2280', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2281', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2282', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2283', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2284', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2285', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2286', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2287', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2288', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2289', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2290', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2291', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2292', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2293', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2294', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2295', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2296', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2297', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2298', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2299', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2300', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2301', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2302', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2303', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2304', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2305', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2306', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2307', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2308', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2309', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2310', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2311', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2312', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2313', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2314', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2315', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2316', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2317', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2318', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2319', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2320', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2321', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2322', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2323', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2324', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2325', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2326', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2327', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2328', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"学员跟踪\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2329', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2330', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2331', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2332', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2333', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2334', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2335', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2336', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2337', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2338', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2339', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2340', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2341', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2342', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2343', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2344', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2345', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2346', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2347', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2348', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2349', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"学员跟踪\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2350', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2351', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2352', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2353', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2354', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2355', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2356', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2357', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2358', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2359', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2360', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2361', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2362', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2363', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2364', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2365', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2366', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2367', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2368', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2369', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2370', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"学员跟踪\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2371', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2372', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2373', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2374', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2375', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2376', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2377', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2378', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2379', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2380', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2381', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2382', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2383', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2384', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2385', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2386', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2387', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2388', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"学员跟踪\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2389', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2390', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2391', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2392', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2393', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2394', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2395', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2396', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2397', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2398', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2399', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2400', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2401', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2402', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2403', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2404', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2405', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2406', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2407', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2408', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2409', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2410', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2411', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[3]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2412', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[4]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2413', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[5]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2414', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[6]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2415', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[7]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2416', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[8]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2417', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[9]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2418', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[9]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2419', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[10]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2420', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[11]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2421', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[12]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2422', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[13]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2423', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[14]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2424', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[15]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2425', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[16]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2426', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[17]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2427', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[18]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2428', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[19]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2429', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2430', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2431', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2432', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2433', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2434', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2435', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2436', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2437', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2438', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2439', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2440', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2441', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2442', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2443', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2444', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2445', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2446', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2447', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2448', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2449', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2450', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2451', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2452', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2453', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2454', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2455', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2456', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2457', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2458', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2459', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2460', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2461', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2462', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2463', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2464', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2465', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2466', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2467', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2468', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2469', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2470', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2471', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2472', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2473', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2474', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2475', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2476', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2477', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2478', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2479', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2480', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2481', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2482', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2483', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2484', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2485', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2486', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2487', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2488', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2489', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2490', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2491', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2492', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2493', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2494', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2495', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2496', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2497', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2498', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2499', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2500', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2501', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2502', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2503', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2504', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2505', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2506', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2507', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2508', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2509', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2510', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2511', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2512', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2513', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2514', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2515', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2516', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2517', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2518', '2017-10-29', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2519', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2520', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2521', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2522', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2523', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2524', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2525', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2526', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2527', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2528', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2529', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2530', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2531', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2532', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2533', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2534', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2535', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2536', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2537', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"学员跟踪\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2538', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2539', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2540', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2541', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2542', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2543', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"学员跟踪\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2544', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2545', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2546', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2547', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2548', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2549', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2550', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2551', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2552', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2553', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2554', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2555', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2556', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2557', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2558', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2559', '2017-10-29', null, 'SchoolClientTransferLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"auditState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2560', '2017-10-29', null, 'SchoolClientTransferLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"auditState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2561', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"学员跟踪\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2562', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2563', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2564', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2565', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2566', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2567', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2568', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2569', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2570', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2571', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2572', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2573', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2574', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2575', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2576', '2017-10-29', null, 'SchoolClientTransferLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"auditState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2577', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2578', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2579', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2580', '2017-10-29', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2581', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2582', '2017-10-29', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2583', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2584', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2585', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2586', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2587', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2588', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2589', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2590', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2591', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2592', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2593', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2594', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2595', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2596', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":\"正常\",\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2597', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2598', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2599', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2600', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2601', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2602', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":true,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2603', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2604', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2605', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2606', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2607', '2017-10-29', null, 'ReceiptServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2608', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2609', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2610', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2611', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2612', '2017-10-29', null, 'StudentLossServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2613', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2614', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2615', '2017-10-29', null, 'ExpenditureServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2616', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2617', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2618', '2017-10-29', null, 'ExpenditureServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2619', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2620', '2017-10-29', null, 'ExpenditureServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2621', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2622', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"支出管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2623', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2624', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2625', '2017-10-29', null, 'ExpenditureServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2626', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2627', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2628', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2629', '2017-10-29', null, 'ExpenditureServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2630', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[\"支出管理\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2631', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2632', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2633', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2634', '2017-10-29', null, 'ExpenditureServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2635', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2636', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2637', '2017-10-29', null, 'ExpenditureServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2638', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2639', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2640', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2641', '2017-10-29', null, 'StudentLossServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2642', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2643', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2644', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2645', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2646', '2017-10-29', null, 'ReceiptServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2647', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2648', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2649', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2650', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2651', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2652', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2653', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":true,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2654', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2655', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2656', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2657', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2658', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2659', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2660', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2661', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2662', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2663', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2664', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2665', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2666', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":\"正常\",\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2667', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2668', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2669', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2670', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2671', '2017-10-29', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2672', '2017-10-29', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2673', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2674', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2675', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2676', '2017-10-29', null, 'RoomclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"begindate\":null,\"enddate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2677', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2678', '2017-10-29', null, 'RoomclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"begindate\":null,\"enddate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2679', '2017-10-29', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"startdate\":null,\"enddate\":null,\"year\":null,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2680', '2017-10-29', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2681', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2682', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2683', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2684', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2685', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2686', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2687', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2688', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2689', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2690', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2691', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2692', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2693', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2694', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2695', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2696', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2697', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2698', '2017-10-29', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', null);
INSERT INTO `systemlog` VALUES ('2699', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2700', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2701', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2702', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2703', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2704', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2705', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2706', '2017-10-29', null, 'StudentServiceImpl:queryChart', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2707', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2708', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2709', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2710', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2711', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2712', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2713', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2714', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2715', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2716', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2717', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2718', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2719', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2720', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2721', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2722', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2723', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2724', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2725', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2726', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2727', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2728', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2729', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2730', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2731', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2732', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2733', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2734', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2735', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2736', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2737', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2738', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2739', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2740', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2741', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2742', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2743', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:insert', '[{\"id\":107,\"systemdictionary\":{\"id\":null,\"sn\":null,\"name\":\"学历\",\"intro\":null},\"name\":\"小学\",\"intro\":\"学历等级\"}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2744', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2745', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2746', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2747', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2748', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[3]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2749', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[4]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2750', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[5]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2751', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2752', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[8]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2753', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[10]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2754', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[11]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2755', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2756', '2017-10-29', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2757', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2758', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2759', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2760', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2761', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2762', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2763', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2764', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2765', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2766', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2767', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2768', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2769', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2770', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2771', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2772', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2773', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2774', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2775', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2776', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2777', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2778', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2779', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2780', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2781', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2782', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2783', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2784', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2785', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2786', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2787', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2788', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2789', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2790', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2791', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2792', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2793', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2794', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2795', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2796', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2797', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2798', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2799', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2800', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2801', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2802', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2803', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2804', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2805', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2806', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2807', '2017-10-29', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2808', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2809', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2810', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2811', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2812', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2813', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2814', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2815', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2816', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2817', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2818', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2819', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2820', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2821', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2822', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2823', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2824', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2825', '2017-10-29', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2826', '2017-10-29', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2827', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2828', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2829', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2830', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2831', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2832', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2833', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2834', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2835', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2836', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2837', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2838', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2839', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2840', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2841', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2842', '2017-10-29', null, 'AttendanceServiceImpl:getEndTime', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2843', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2844', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2845', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2846', '2017-10-29', null, 'StudentServiceImpl:selectByPrimaryKey', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2847', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2848', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2849', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2850', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2851', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2852', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2853', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2854', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2855', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2856', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2857', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2858', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2859', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2860', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2861', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2862', '2017-10-29', null, 'SchoolClientTransferLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"auditState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2863', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2864', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2865', '2017-10-29', null, 'StudentLossServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2866', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2867', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2868', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2869', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2870', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2871', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2872', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2873', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2874', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2875', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2876', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2877', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2878', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2879', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":\"正常\",\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2880', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2881', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2882', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2883', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2884', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2885', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":true,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2886', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2887', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2888', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2889', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2890', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2891', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2892', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2893', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2894', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2895', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2896', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2897', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":\"正常\",\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2898', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2899', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2900', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2901', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2902', '2017-10-29', null, 'RoomclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"begindate\":null,\"enddate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2903', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2904', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2905', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2906', '2017-10-29', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2907', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2908', '2017-10-29', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2909', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2910', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2911', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2912', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2913', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2914', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2915', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2916', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2917', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2918', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2919', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2920', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2921', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2922', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2923', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2924', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2925', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2926', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2927', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2928', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2929', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2930', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2931', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2932', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2933', '2017-10-29', null, 'SchoolClientTransferLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"auditState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2934', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2935', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2936', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2937', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2938', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2939', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2940', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2941', '2017-10-29', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":true,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2942', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2943', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2944', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2945', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2946', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2947', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2948', '2017-10-29', null, 'ReceiptServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2949', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2950', '2017-10-29', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2951', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2952', '2017-10-29', null, 'StudentLossServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2953', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2954', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2955', '2017-10-29', null, 'ExpenditureServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2956', '2017-10-29', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"startdate\":null,\"enddate\":null,\"year\":null,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2957', '2017-10-29', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2958', '2017-10-29', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"startdate\":null,\"enddate\":null,\"year\":null,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2959', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2960', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2961', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2962', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2963', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2964', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2965', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2966', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2967', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2968', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2969', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2970', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2971', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2972', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2973', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2974', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2975', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2976', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2977', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2978', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2979', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2980', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2981', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2982', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2983', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2984', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2985', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2986', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2987', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2988', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2989', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2990', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2991', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2992', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2993', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2994', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2995', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2996', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2997', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2998', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('2999', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3000', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3001', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3002', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3003', '2017-10-29', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3004', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3005', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3006', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3007', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3008', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3009', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3010', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3011', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3012', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3013', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3014', '2017-10-29', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3015', '2017-10-29', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3016', '2017-10-29', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3017', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3018', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3019', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3020', '2017-10-29', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3021', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3022', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3023', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3024', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3025', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3026', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3027', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3028', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3029', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3030', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3031', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3032', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3033', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3034', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3035', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3036', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3037', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3038', '2017-10-29', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3039', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3040', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3041', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3042', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3043', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3044', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3045', '2017-10-29', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3046', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3047', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3048', '2017-10-29', null, 'SchoolLinkManServiceImpl:updateByPrimaryKey', '[{\"id\":2,\"name\":\"juice\",\"age\":19,\"gender\":false,\"qq\":\"121212\",\"wechat\":\"1212131\",\"email\":\"aa@EE.COM\",\"firstlinkman\":true,\"position\":\"ADC\",\"department\":\"行政部\",\"birthday\":\"2015-07-08\",\"introduction\":\"和蔼可亲\",\"school\":{\"id\":3,\"name\":null,\"location\":null,\"importance\":null,\"wantedLevel\":null,\"studentNum\":null,\"cooperationNum\":null,\"type\":null,\"education\":null,\"email\":null,\"itstudentNum\":null,\"buildingTime\":null,\"schooleTel\":null,\"telegraph\":null,\"postcode\":null,\"teacherNum\":null,\"allStudent\":null,\"remark\":null,\"introduction\":null,\"wantedSubject\":null,\"wantedSchool\":null,\"state\":null,\"linkmen\":[],\"recruitre\":null,\"tracer\":null,\"lastTraceTime\":null,\"nextTraceTime\":null,\"clientState\":null,\"linkmenName\":null}}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3049', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3050', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3051', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3052', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3053', '2017-10-29', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3054', '2017-10-29', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3055', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3056', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3057', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3058', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3059', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3060', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3061', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[7]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3062', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[11]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3063', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[12]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3064', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[11]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3065', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[12]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3066', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[12]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3067', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[13]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3068', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[176]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3069', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3070', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3071', '2017-10-29', null, 'SchoolLinkManServiceImpl:updateByPrimaryKey', '[{\"id\":3,\"name\":\"zbay\",\"age\":12121,\"gender\":true,\"qq\":\"121\",\"wechat\":\"1212\",\"email\":\"212\",\"firstlinkman\":null,\"position\":\"21212\",\"department\":\"1212\",\"birthday\":\"2017-08-05\",\"introduction\":\"212121212\",\"school\":{\"id\":7,\"name\":null,\"location\":null,\"importance\":null,\"wantedLevel\":null,\"studentNum\":null,\"cooperationNum\":null,\"type\":null,\"education\":null,\"email\":null,\"itstudentNum\":null,\"buildingTime\":null,\"schooleTel\":null,\"telegraph\":null,\"postcode\":null,\"teacherNum\":null,\"allStudent\":null,\"remark\":null,\"introduction\":null,\"wantedSubject\":null,\"wantedSchool\":null,\"state\":null,\"linkmen\":[],\"recruitre\":null,\"tracer\":null,\"lastTraceTime\":null,\"nextTraceTime\":null,\"clientState\":null,\"linkmenName\":null}}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3072', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3073', '2017-10-29', null, 'SchoolLinkManServiceImpl:updateByPrimaryKey', '[{\"id\":3,\"name\":\"zbay\",\"age\":12121,\"gender\":true,\"qq\":\"121\",\"wechat\":\"1212\",\"email\":\"212\",\"firstlinkman\":null,\"position\":\"剑圣\",\"department\":\"1212\",\"birthday\":\"2017-08-04\",\"introduction\":\"会用剑\",\"school\":{\"id\":7,\"name\":null,\"location\":null,\"importance\":null,\"wantedLevel\":null,\"studentNum\":null,\"cooperationNum\":null,\"type\":null,\"education\":null,\"email\":null,\"itstudentNum\":null,\"buildingTime\":null,\"schooleTel\":null,\"telegraph\":null,\"postcode\":null,\"teacherNum\":null,\"allStudent\":null,\"remark\":null,\"introduction\":null,\"wantedSubject\":null,\"wantedSchool\":null,\"state\":null,\"linkmen\":[],\"recruitre\":null,\"tracer\":null,\"lastTraceTime\":null,\"nextTraceTime\":null,\"clientState\":null,\"linkmenName\":null}}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3074', '2017-10-29', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3075', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3076', '2017-10-29', null, 'RoomclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"begindate\":null,\"enddate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3077', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3078', '2017-10-29', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3079', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3080', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3081', '2017-10-29', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3082', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3083', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3084', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3085', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3086', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3087', '2017-10-29', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3088', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3089', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3090', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3091', '2017-10-29', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3092', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3093', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3094', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3095', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3096', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3097', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3098', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3099', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3100', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3101', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3102', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3103', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3104', '2017-10-29', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3105', '2017-10-29', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3106', '2017-10-29', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3107', '2017-10-29', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3108', '2017-10-29', null, 'SchoolClientTransferLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"auditState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3109', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3110', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3111', '2017-10-29', null, 'StudentclassServiceImpl:getEmployeeById', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3112', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3113', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3114', '2017-10-29', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3115', '2017-10-29', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3116', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3117', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3118', '2017-10-29', null, 'TimetableitemServiceImpl:getTimetableitemById', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3119', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3120', '2017-10-29', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3121', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[5]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3122', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[6]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3123', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[8]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3124', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[12]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3125', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3126', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3127', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3128', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[5]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3129', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[17]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3130', '2017-10-29', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[19]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3131', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3132', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3133', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3134', '2017-10-29', null, 'StudentclassServiceImpl:getEmployeeById', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3135', '2017-10-29', null, 'StudentclassServiceImpl:updateByPrimaryKey', '[{\"id\":2,\"classname\":\"美术\",\"headteacher\":{\"id\":2,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"tatolstudent\":117,\"seating\":120,\"classlocation\":\"B栋7楼705\",\"affilliation\":\"艺术\",\"state\":false}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3136', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3137', '2017-10-29', null, 'StudentclassServiceImpl:getEmployeeById', '[7]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3138', '2017-10-29', null, 'StudentclassServiceImpl:getEmployeeById', '[7]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3139', '2017-10-29', null, 'StudentclassServiceImpl:getEmployeeById', '[7]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3140', '2017-10-29', null, 'StudentclassServiceImpl:getEmployeeById', '[7]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3141', '2017-10-29', null, 'StudentclassServiceImpl:getEmployeeById', '[9]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3142', '2017-10-29', null, 'StudentclassServiceImpl:getEmployeeById', '[7]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3143', '2017-10-29', null, 'StudentclassServiceImpl:getEmployeeById', '[7]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3144', '2017-10-29', null, 'StudentclassServiceImpl:getEmployeeById', '[7]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3145', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3146', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3147', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3148', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3149', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3150', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3151', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3152', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":20,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3153', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3154', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":50,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3155', '2017-10-29', null, 'StudentclassServiceImpl:insert', '[{\"id\":177,\"classname\":\"1\",\"headteacher\":{\"id\":2,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"tatolstudent\":1,\"seating\":1,\"classlocation\":\"1\",\"affilliation\":\"1\",\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3156', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":50,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3157', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3158', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3159', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3160', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3161', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3162', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3163', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3164', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3165', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3166', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3167', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3168', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3169', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3170', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3171', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3172', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3173', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3174', '2017-10-29', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3175', '2017-10-29', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3176', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3177', '2017-10-29', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3178', '2017-10-29', null, 'RoomclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"begindate\":null,\"enddate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3179', '2017-10-29', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"startdate\":null,\"enddate\":null,\"year\":null,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3180', '2017-10-29', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3181', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3182', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3183', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3184', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3185', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3186', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3187', '2017-10-29', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3188', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3189', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3190', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3191', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3192', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":14,\"username\":\"EvaristeGalois\",\"realname\":\"伽罗瓦\",\"password\":\"658d6b7cadbdae42871e796edeeeaa8b\",\"tel\":\"1001\",\"email\":\"EG@gmail\",\"dept\":{\"id\":4,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-10-05\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":8,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3193', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3194', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3195', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3196', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3197', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3198', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3199', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3200', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3201', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3202', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3203', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3204', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3205', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3206', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":2,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":10}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3207', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3208', '2017-10-29', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3209', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3210', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3211', '2017-10-29', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3212', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3213', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3214', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3215', '2017-10-29', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', null);
INSERT INTO `systemlog` VALUES ('3216', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3217', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3218', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3219', '2017-10-29', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', null);
INSERT INTO `systemlog` VALUES ('3220', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3221', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3222', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3223', '2017-10-29', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', null);
INSERT INTO `systemlog` VALUES ('3224', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3225', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3226', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3227', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3228', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3229', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3230', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":2,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":10}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3231', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3232', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3233', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3234', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3235', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3236', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3237', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3238', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3239', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3240', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3241', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3242', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3243', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3244', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3245', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3246', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3247', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3248', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3249', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3250', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3251', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3252', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3253', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3254', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3255', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3256', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3257', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3258', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3259', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3260', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3261', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3262', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3263', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3264', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3265', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3266', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3267', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3268', '2017-10-29', null, 'AttendanceServiceImpl:getEndTime', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3269', '2017-10-29', null, 'AttendanceServiceImpl:insert', '[{\"id\":37,\"employee\":{\"id\":1,\"username\":\"wall\",\"realname\":\"超级管理员\",\"password\":\"xxx\",\"tel\":\"\",\"email\":\"\",\"dept\":{\"id\":1,\"sn\":null,\"name\":\"人事部\",\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-04-17\",\"state\":true,\"admin\":true,\"roles\":[],\"basicwage\":null},\"currenttime\":1509285322863,\"signintime\":\"2017-10-29 21:55:22\",\"signouttime\":null,\"ondutystate\":\"迟到\",\"offdutystate\":null,\"addsigntime\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3270', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3271', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3272', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3273', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3274', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3275', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3276', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3277', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3278', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3279', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3280', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":20,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3281', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3282', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":20,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3283', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3284', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3285', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3286', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3287', '2017-10-29', null, 'DepartmentServiceImpl:insert', '[{\"id\":92,\"sn\":\"TEACHER\",\"name\":\"教育\",\"manage\":{\"id\":14,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"parent\":{\"id\":null,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3288', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3289', '2017-10-29', null, 'DepartmentServiceImpl:updateByPrimaryKey', '[{\"id\":2,\"sn\":\"SELL\",\"name\":\"销售部\",\"manage\":{\"id\":1,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"parent\":{\"id\":4,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3290', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3291', '2017-10-29', null, 'DepartmentServiceImpl:insert', '[{\"id\":93,\"sn\":\"HIGH-RISE\",\"name\":\"红黑会\",\"manage\":{\"id\":1,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"parent\":{\"id\":null,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3292', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3293', '2017-10-29', null, 'DepartmentServiceImpl:updateByPrimaryKey', '[{\"id\":4,\"sn\":\"PROJECT\",\"name\":\"项目部\",\"manage\":{\"id\":null,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"parent\":{\"id\":2,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3294', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3295', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3296', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3297', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3298', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3299', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3300', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3301', '2017-10-29', null, 'DepartmentServiceImpl:updateByPrimaryKey', '[{\"id\":4,\"sn\":\"PROJECT\",\"name\":\"项目部\",\"manage\":{\"id\":null,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"parent\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3302', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3303', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3304', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3305', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3306', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3307', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3308', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3309', '2017-10-29', null, 'DepartmentServiceImpl:updateByPrimaryKey', '[{\"id\":5,\"sn\":\"DEVELOP\",\"name\":\"开发部\",\"manage\":{\"id\":null,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"parent\":{\"id\":4,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3310', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3311', '2017-10-29', null, 'DepartmentServiceImpl:updateByPrimaryKey', '[{\"id\":4,\"sn\":\"PROJECT\",\"name\":\"项目部\",\"manage\":{\"id\":null,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"parent\":{\"id\":92,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3312', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3313', '2017-10-29', null, 'DepartmentServiceImpl:updateByPrimaryKey', '[{\"id\":93,\"sn\":\"TEACHER\",\"name\":\"教育\",\"manage\":{\"id\":14,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"parent\":{\"id\":92,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3314', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3315', '2017-10-29', null, 'DepartmentServiceImpl:updateByPrimaryKey', '[{\"id\":1,\"sn\":\"HUMAN\",\"name\":\"人事部\",\"manage\":{\"id\":5,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"parent\":{\"id\":92,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3316', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3317', '2017-10-29', null, 'DepartmentServiceImpl:updateByPrimaryKey', '[{\"id\":2,\"sn\":\"SELL\",\"name\":\"销售部\",\"manage\":{\"id\":1,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"parent\":{\"id\":92,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3318', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3319', '2017-10-29', null, 'DepartmentServiceImpl:updateByPrimaryKey', '[{\"id\":3,\"sn\":\"FINANCE\",\"name\":\"财务部\",\"manage\":{\"id\":null,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"parent\":{\"id\":92,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3320', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3321', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3322', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3323', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3324', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":15,\"username\":\"LoPan\",\"realname\":\"罗振宇\",\"password\":\"7fbe1f27346143ee0df74b4fc0ba509b\",\"tel\":\"158**11\",\"email\":\"lop@EE.COM\",\"dept\":{\"id\":3,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":3,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3325', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3326', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3327', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3328', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3329', '2017-10-29', null, 'DepartmentServiceImpl:updateByPrimaryKey', '[{\"id\":3,\"sn\":\"FINANCE\",\"name\":\"财务部\",\"manage\":{\"id\":15,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"parent\":{\"id\":92,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3330', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3331', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3332', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3333', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3334', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3335', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":1,\"username\":\"wall\",\"realname\":\"红黑雨\",\"password\":\"xxx\",\"tel\":\"\",\"email\":\"\",\"dept\":{\"id\":1,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-04-17\",\"state\":true,\"admin\":true,\"roles\":null,\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3336', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":1,\"username\":\"wall\",\"realname\":\"红黑雨\",\"password\":\"xxx\",\"tel\":\"130**0\",\"email\":\"z@163.com\",\"dept\":{\"id\":1,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-04-17\",\"state\":true,\"admin\":true,\"roles\":[{\"id\":1,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3337', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3338', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3339', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3340', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3341', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3342', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3343', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3344', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3345', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3346', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3347', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3348', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3349', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3350', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3351', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3352', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[14]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3353', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":14,\"username\":\"EvaristeGalois\",\"realname\":\"伽罗瓦\",\"password\":\"658d6b7cadbdae42871e796edeeeaa8b\",\"tel\":\"1001\",\"email\":\"EG@gmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-10-05\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":8,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3354', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3355', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":16,\"username\":\"WuD\",\"realname\":\"吴晓东\",\"password\":\"b093c37857d6bc46f3f1e883b5cb437e\",\"tel\":\"159*1\",\"email\":\"Wu@gmail\",\"dept\":{\"id\":3,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-10-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":7,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3356', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3357', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":17,\"username\":\"Abel\",\"realname\":\"阿贝尔\",\"password\":\"607fe3624a0f7b23caf51504e5ce04bf\",\"tel\":\"0002\",\"email\":\"ab@gEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-10-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":8,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3358', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3359', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3360', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3361', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3362', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3363', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3364', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3365', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3366', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3367', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3368', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3369', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3370', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3371', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":18,\"username\":\"GS\",\"realname\":\"高斯\",\"password\":\"149330ccef1e6880f2469636f1993eb6\",\"tel\":\"003\",\"email\":\"gs@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":8,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3372', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3373', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3374', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3375', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3376', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3377', '2017-10-29', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3378', '2017-10-29', null, 'RoleServiceImpl:insert', '[{\"id\":10,\"name\":\"教师\",\"sn\":\"TEACHER\",\"permissions\":[{\"id\":7,\"name\":null,\"resource\":null}]}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3379', '2017-10-29', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3380', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3381', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3382', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3383', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[17]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3384', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":17,\"username\":\"Abel\",\"realname\":\"阿贝尔\",\"password\":\"607fe3624a0f7b23caf51504e5ce04bf\",\"tel\":\"0002\",\"email\":\"ab@gEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-10-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]},{\"id\":8,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3385', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3386', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[18]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3387', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":18,\"username\":\"GS\",\"realname\":\"高斯\",\"password\":\"149330ccef1e6880f2469636f1993eb6\",\"tel\":\"003\",\"email\":\"gs@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":8,\"name\":null,\"sn\":null,\"permissions\":[]},{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3388', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3389', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[14]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3390', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":14,\"username\":\"EvaristeGalois\",\"realname\":\"伽罗瓦\",\"password\":\"658d6b7cadbdae42871e796edeeeaa8b\",\"tel\":\"1001\",\"email\":\"EG@gmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-10-05\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":8,\"name\":null,\"sn\":null,\"permissions\":[]},{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3391', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3392', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":19,\"username\":\"LoBD\",\"realname\":\"洛必达\",\"password\":\"61a820ba9d635d844c18eeca8f034fb2\",\"tel\":\"004\",\"email\":\"LB@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-10-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3393', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3394', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3395', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":1,\"username\":\"wall\",\"realname\":\"红黑雨\",\"password\":\"xxx\",\"tel\":\"130**0\",\"email\":\"z@163.com\",\"dept\":{\"id\":92,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-04-17\",\"state\":true,\"admin\":true,\"roles\":[{\"id\":1,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3396', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3397', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3398', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3399', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3400', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3401', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3402', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3403', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3404', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3405', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3406', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3407', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3408', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3409', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3410', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3411', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3412', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3413', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3414', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3415', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":21,\"username\":\"Mik\",\"realname\":\"米开朗基罗\",\"password\":\"91f7e9372d9a6f9246a061c3bd9aa99a\",\"tel\":\"005\",\"email\":\"MJL@gEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-10-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3416', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3417', '2017-10-29', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3418', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3419', '2017-10-29', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3420', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3421', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3422', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3423', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":22,\"username\":\"DaFeq\",\"realname\":\"达·芬奇\",\"password\":\"c76ff4f2b93f9169085909cc00da2e55\",\"tel\":\"006\",\"email\":\"DF@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-10-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3424', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3425', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":23,\"username\":\"Ajemd\",\"realname\":\"阿基米德\",\"password\":\"a94442e93b1509bc8363cc3bde57587b\",\"tel\":\"007\",\"email\":\"Aj@gEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-10-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3426', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3427', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[9]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3428', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":9,\"username\":\"liuyf\",\"realname\":\"海霞\",\"password\":\"1932c8892f8202d43cd26ad623c8c308\",\"tel\":\"186*1\",\"email\":\"liuyifei@\",\"dept\":{\"id\":2,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-07-20\",\"state\":false,\"admin\":false,\"roles\":[{\"id\":2,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3429', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3430', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[9]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3431', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":9,\"username\":\"liuyf\",\"realname\":\"海霞\",\"password\":\"1932c8892f8202d43cd26ad623c8c308\",\"tel\":\"186*1\",\"email\":\"liuyifei@\",\"dept\":{\"id\":1,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-07-20\",\"state\":false,\"admin\":false,\"roles\":[{\"id\":2,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3432', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3433', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[10]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3434', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":10,\"username\":\"dilirb\",\"realname\":\"李梓萌\",\"password\":\"5bf023f3f3e2c00540a256bfbbe94733\",\"tel\":\"186*2\",\"email\":\"dilirb@\",\"dept\":{\"id\":1,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-07-20\",\"state\":false,\"admin\":false,\"roles\":[{\"id\":2,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3435', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3436', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[11]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3437', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":11,\"username\":\"Oxd\",\"realname\":\"欧阳夏丹\",\"password\":\"8acaa79366bbe06c0ce1aa5b08cb61b2\",\"tel\":\"111555\",\"email\":\"Oyx@GEmail\",\"dept\":{\"id\":2,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-07-20\",\"state\":false,\"admin\":false,\"roles\":[{\"id\":2,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3438', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3439', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[10]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3440', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":10,\"username\":\"LiMel\",\"realname\":\"李梓萌\",\"password\":\"5bf023f3f3e2c00540a256bfbbe94733\",\"tel\":\"186*2\",\"email\":\"Lzm@GEmail\",\"dept\":{\"id\":1,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-07-20\",\"state\":false,\"admin\":false,\"roles\":[{\"id\":2,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3441', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3442', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[9]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3443', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":9,\"username\":\"Hal\",\"realname\":\"海霞\",\"password\":\"1932c8892f8202d43cd26ad623c8c308\",\"tel\":\"186*1\",\"email\":\"Hal@GEamil\",\"dept\":{\"id\":1,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-07-20\",\"state\":false,\"admin\":false,\"roles\":[{\"id\":2,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3444', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3445', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[12]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3446', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":12,\"username\":\"Ganqa\",\"realname\":\"刚强\",\"password\":\"7f0cc70f16900810795043a0bb1374c1\",\"tel\":\"123212\",\"email\":\"Ganq@GEmail\",\"dept\":{\"id\":1,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-07-20\",\"state\":false,\"admin\":false,\"roles\":[{\"id\":2,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3447', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3448', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[8]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3449', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[6]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3450', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":6,\"username\":\"Loj\",\"realname\":\"罗京\",\"password\":\"1\",\"tel\":\"13088888885\",\"email\":\"Loj@GEmail\",\"dept\":{\"id\":1,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-06-21\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":2,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3451', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3452', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[5]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3453', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":5,\"username\":\"Jackie\",\"realname\":\"成龙\",\"password\":\"1\",\"tel\":\"13088888886\",\"email\":\"Jackie@GEmail\",\"dept\":{\"id\":4,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-04-19\",\"state\":false,\"admin\":false,\"roles\":[{\"id\":4,\"name\":null,\"sn\":null,\"permissions\":[]},{\"id\":3,\"name\":null,\"sn\":null,\"permissions\":[]},{\"id\":7,\"name\":null,\"sn\":null,\"permissions\":[]},{\"id\":6,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3454', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3455', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[5]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3456', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":5,\"username\":\"Jackie\",\"realname\":\"成龙\",\"password\":\"1\",\"tel\":\"1386\",\"email\":\"Jackie@GEmail\",\"dept\":{\"id\":4,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-04-19\",\"state\":false,\"admin\":false,\"roles\":[{\"id\":4,\"name\":null,\"sn\":null,\"permissions\":[]},{\"id\":3,\"name\":null,\"sn\":null,\"permissions\":[]},{\"id\":7,\"name\":null,\"sn\":null,\"permissions\":[]},{\"id\":6,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3457', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3458', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[3]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3459', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":3,\"username\":\"Cixin\",\"realname\":\"刘慈欣\",\"password\":\"1\",\"tel\":\"137**8\",\"email\":\"liudh@520it.com\",\"dept\":{\"id\":4,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-04-17\",\"state\":false,\"admin\":false,\"roles\":[{\"id\":1,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3460', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3461', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3462', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":2,\"username\":\"xd\",\"realname\":\"旭东\",\"password\":\"1\",\"tel\":\"1308\",\"email\":\"X@GEmail.com\",\"dept\":{\"id\":91,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-04-17\",\"state\":false,\"admin\":false,\"roles\":[{\"id\":1,\"name\":null,\"sn\":null,\"permissions\":[]},{\"id\":7,\"name\":null,\"sn\":null,\"permissions\":[]},{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3463', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3464', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3465', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3466', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3467', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3468', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3469', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3470', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[14]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3471', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3472', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3473', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3474', '2017-10-29', null, 'EmployeeServiceImpl:getRolesId', '[13]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3475', '2017-10-29', null, 'EmployeeServiceImpl:updateByPrimaryKey', '[{\"id\":13,\"username\":\"Any\",\"realname\":\"庵野秀明\",\"password\":\"285ab9448d2751ee57ece7f762c39095\",\"tel\":\"116\",\"email\":\"Any@GEamil\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2017-08-28\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":1,\"name\":null,\"sn\":null,\"permissions\":[]},{\"id\":8,\"name\":null,\"sn\":null,\"permissions\":[]},{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3476', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3477', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":24,\"username\":\"laySer\",\"realname\":\"老舍\",\"password\":\"d0e85480755e8f3d668655e02909871e\",\"tel\":\"008\",\"email\":\"layS@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-10-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3478', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3479', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3480', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":15,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3481', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":20,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3482', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3483', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":25,\"username\":\"Binb\",\"realname\":\"冰心\",\"password\":\"bcdb14238cda3125b4c9b74d52339c66\",\"tel\":\"009\",\"email\":\"Binb@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-10-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3484', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3485', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":26,\"username\":\"BaMet\",\"realname\":\"巴金\",\"password\":\"5c89dfa31015f0dcfdc2d3c7ff4bebb6\",\"tel\":\"0001\",\"email\":\"BaMet@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-10-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3486', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3487', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":27,\"username\":\"Gogh\",\"realname\":\"梵高\",\"password\":\"eff450549493b237ae11c3bd7852ebf0\",\"tel\":\"0002\",\"email\":\"FnGo@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-10-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3488', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3489', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3490', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3491', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3492', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":20,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3493', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3494', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3495', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3496', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3497', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3498', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3499', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3500', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3501', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3502', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3503', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3504', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3505', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3506', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3507', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3508', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3509', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3510', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3511', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3512', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":22,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3513', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3514', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3515', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3516', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3517', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3518', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3519', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":25,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3520', '2017-10-29', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3521', '2017-10-29', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3522', '2017-10-29', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3523', '2017-10-29', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3524', '2017-10-29', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3525', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":23,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3526', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":2,\"rows\":23,\"id\":null,\"keyword\":null,\"start\":23}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3527', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":23,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3528', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":2,\"rows\":23,\"id\":null,\"keyword\":null,\"start\":23}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3529', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":28,\"username\":\"BaiSt\",\"realname\":\"齐白石\",\"password\":\"d6bc9c2979c86adbc0e39c49a872484d\",\"tel\":\"169\",\"email\":\"BaiSt@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-10-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3530', '2017-10-29', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":2,\"rows\":23,\"id\":null,\"keyword\":null,\"start\":23}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3531', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":29,\"username\":\"Newton\",\"realname\":\"艾萨克·牛顿\",\"password\":\"1894a9e0ea3f325021725eeaaab70328\",\"tel\":\"186……*\",\"email\":\"Newton@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2009-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3532', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":null,\"username\":\"Euclid\",\"realname\":\"欧几里得\",\"password\":\"559833b7d93aa3d26d595f2dac6c1d2c\",\"tel\":\"186……*\",\"email\":\"Euclid@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"20016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3533', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":null,\"username\":\"Euclid\",\"realname\":\"欧几里得\",\"password\":\"559833b7d93aa3d26d595f2dac6c1d2c\",\"tel\":\"186……*\",\"email\":\"Euclid@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"20016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3534', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":30,\"username\":\"Euclid\",\"realname\":\"欧几里得\",\"password\":\"559833b7d93aa3d26d595f2dac6c1d2c\",\"tel\":\"186……*\",\"email\":\"Euclid@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3535', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":31,\"username\":\"Leibniz\",\"realname\":\"戈特弗里德·威廉·莱布尼茨\",\"password\":\"1a358bd699909d5a263e4fac6a192ab1\",\"tel\":\"186……*\",\"email\":\"Leibniz@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3536', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":32,\"username\":\"Leibniz\",\"realname\":\"尼古拉·哥白尼\",\"password\":\"1a358bd699909d5a263e4fac6a192ab1\",\"tel\":\"186……*\",\"email\":\"Leibniz@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3537', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":33,\"username\":\"Descartes\",\"realname\":\"笛卡儿\",\"password\":\"d948297af1484c8cf5490ab0f9eee8f2\",\"tel\":\"186……*\",\"email\":\"Descartes@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3538', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":34,\"username\":\"Hegel\",\"realname\":\"黑格尔\",\"password\":\"ecbb3feb347d9bd9c80a85e613e5cc60\",\"tel\":\"186……*\",\"email\":\"Hegel@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3539', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":35,\"username\":\"Pythagoras\",\"realname\":\"毕达哥拉斯\",\"password\":\"174f873e444fcfcf4710fdd5d3734980\",\"tel\":\"186……*\",\"email\":\"Pythagoras@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3540', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":36,\"username\":\"xixy\",\"realname\":\"西茜\",\"password\":\"4fa56f70034179353228b43982638d5e\",\"tel\":\"186……*\",\"email\":\"xixy@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3541', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":37,\"username\":\"nieer\",\"realname\":\"聂耳\",\"password\":\"63ef79f2d95359d0964177e2a5844844\",\"tel\":\"186……*\",\"email\":\"nieer@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3542', '2017-10-29', null, 'EmployeeServiceImpl:insert', '[{\"id\":38,\"username\":\"Beethoven\",\"realname\":\"贝多芬\",\"password\":\"b89492924c4105abcb6e23bca2187b46\",\"tel\":\"186……*\",\"email\":\"Beethoven@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3543', '2017-10-30', null, 'EmployeeServiceImpl:insert', '[{\"id\":39,\"username\":\"Monet\",\"realname\":\"克劳德·莫奈\",\"password\":\"3f6f820f3e835b3bd7be95dc52274c22\",\"tel\":\"186……*\",\"email\":\"Monet@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3544', '2017-10-30', null, 'EmployeeServiceImpl:insert', '[{\"id\":40,\"username\":\"Lang\",\"realname\":\"郎朗\",\"password\":\"e55d33613e9f446a010c46f6272d56ae\",\"tel\":\"186……*\",\"email\":\"Lang@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3545', '2017-10-30', null, 'EmployeeServiceImpl:insert', '[{\"id\":41,\"username\":\"Mozart\",\"realname\":\"莫扎特\",\"password\":\"4fd1d709c77007dc49cfc1224e3cfb1a\",\"tel\":\"186……*\",\"email\":\"Mozart@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3546', '2017-10-30', null, 'EmployeeServiceImpl:insert', '[{\"id\":42,\"username\":\"Rj\",\"realname\":\"阮佳\",\"password\":\"a9b40d7367f2408da46e5c9d66e4f0bb\",\"tel\":\"186……*\",\"email\":\"Rj@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3547', '2017-10-30', null, 'EmployeeServiceImpl:insert', '[{\"id\":43,\"username\":\"LiM\",\"realname\":\"黎曼\",\"password\":\"fca5e76b1b718f41c1c504bad11d4086\",\"tel\":\"186……*\",\"email\":\"LiM@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3548', '2017-10-30', null, 'EmployeeServiceImpl:insert', '[{\"id\":44,\"username\":\"Cauchy\",\"realname\":\"柯西\",\"password\":\"61c13c4e1bcf18adb37ad4673ce6b77f\",\"tel\":\"186……*\",\"email\":\"Cauchy@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3549', '2017-10-30', null, 'EmployeeServiceImpl:insert', '[{\"id\":45,\"username\":\"Poincaré\",\"realname\":\"庞加莱\",\"password\":\"c00a4107443f661e6db78d950737827e\",\"tel\":\"186……*\",\"email\":\"Poincaré@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3550', '2017-10-30', null, 'EmployeeServiceImpl:insert', '[{\"id\":46,\"username\":\"Hilbert\",\"realname\":\"希尔伯特\",\"password\":\"d5acd14b1ae0cff1eaec957ab9dafd17\",\"tel\":\"186……*\",\"email\":\"Hilbert@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3551', '2017-10-30', null, 'EmployeeServiceImpl:insert', '[{\"id\":47,\"username\":\"Fermat\",\"realname\":\"皮耶·德·费玛\",\"password\":\"7ea4f631340f2c9237be613554af81a5\",\"tel\":\"186……*\",\"email\":\"Fermat@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3552', '2017-10-30', null, 'EmployeeServiceImpl:insert', '[{\"id\":48,\"username\":\"Fermat\",\"realname\":\"狄利克雷\",\"password\":\"7ea4f631340f2c9237be613554af81a5\",\"tel\":\"186……*\",\"email\":\"Fermat@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3553', '2017-10-30', null, 'EmployeeServiceImpl:insert', '[{\"id\":49,\"username\":\"Tesla\",\"realname\":\"尼古拉特斯拉\",\"password\":\"b7ceac655e30baa434688935bc3b7946\",\"tel\":\"186……*\",\"email\":\"Tesla@GEmail\",\"dept\":{\"id\":93,\"sn\":null,\"name\":null,\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2016-09-01\",\"state\":true,\"admin\":false,\"roles\":[{\"id\":10,\"name\":null,\"sn\":null,\"permissions\":[]}],\"basicwage\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3554', '2017-10-30', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', null);
INSERT INTO `systemlog` VALUES ('3555', '2017-10-30', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3556', '2017-10-30', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3557', '2017-10-30', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3558', '2017-10-30', null, 'RoleServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3559', '2017-10-30', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3560', '2017-10-30', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":1,\"rows\":23,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3561', '2017-10-30', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":2,\"rows\":23,\"id\":null,\"keyword\":null,\"start\":23}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3562', '2017-10-30', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":3,\"rows\":23,\"id\":null,\"keyword\":null,\"start\":46}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3563', '2017-10-30', null, 'EmployeeServiceImpl:pageQuery', '[{\"page\":2,\"rows\":23,\"id\":null,\"keyword\":null,\"start\":23}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3564', '2017-10-30', null, 'DepartmentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3565', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3566', '2017-10-30', null, 'DepartmentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"stateselect\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3567', '2017-10-30', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3568', '2017-10-30', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3569', '2017-10-30', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3570', '2017-10-30', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3571', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3572', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3573', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3574', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3575', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3576', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3577', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3578', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3579', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3580', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3581', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3582', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3583', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3584', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3585', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3586', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3587', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3588', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3589', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3590', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3591', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3592', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3593', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3594', '2017-10-30', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3595', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3596', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3597', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3598', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3599', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3600', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3601', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3602', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3603', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3604', '2017-10-30', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3605', '2017-10-30', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3606', '2017-10-30', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3607', '2017-10-30', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3608', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3609', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3610', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3611', '2017-10-30', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3612', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3613', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3614', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3615', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3616', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3617', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3618', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3619', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3620', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3621', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3622', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3623', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3624', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3625', '2017-10-30', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3626', '2017-10-30', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3627', '2017-10-30', null, 'SchoolClientServiceImpl:updateByPrimaryKey', '[{\"id\":1,\"name\":\"复旦大学\",\"location\":\"21\",\"importance\":\"重要\",\"wantedLevel\":\"高\",\"studentNum\":21,\"cooperationNum\":null,\"type\":\"私立\",\"education\":\"大专\",\"email\":\"765@qq.com\",\"itstudentNum\":121,\"buildingTime\":null,\"schooleTel\":\"12121\",\"telegraph\":\"564789\",\"postcode\":\"21\",\"teacherNum\":21,\"allStudent\":212,\"remark\":\"44\",\"introduction\":\"21\",\"wantedSubject\":\"PHP\",\"wantedSchool\":\"深圳校区\",\"state\":\"正常\",\"linkmen\":[],\"recruitre\":null,\"tracer\":{\"id\":2,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"lastTraceTime\":null,\"nextTraceTime\":\"2017-09-06 16:00:00\",\"clientState\":null,\"linkmenName\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3628', '2017-10-30', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3629', '2017-10-30', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3630', '2017-10-30', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3631', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[12]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3632', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[13]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3633', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[3]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3634', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[4]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3635', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3636', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[3]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3637', '2017-10-30', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3638', '2017-10-30', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3639', '2017-10-30', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3640', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3641', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3642', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3643', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3644', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3645', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3646', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3647', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3648', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3649', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3650', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3651', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3652', '2017-10-30', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3653', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3654', '2017-10-30', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3655', '2017-10-30', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3656', '2017-10-30', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3657', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3658', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[2]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3659', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[3]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3660', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:updateByPrimaryKey', '[{\"id\":7,\"systemdictionary\":{\"id\":null,\"sn\":null,\"name\":\"意向学科\",\"intro\":null},\"name\":\"美术\",\"intro\":\"。。\"}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3661', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[3]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3662', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:updateByPrimaryKey', '[{\"id\":8,\"systemdictionary\":{\"id\":null,\"sn\":null,\"name\":\"意向学科\",\"intro\":null},\"name\":\"数学\",\"intro\":\"。。\"}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3663', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[3]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3664', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:updateByPrimaryKey', '[{\"id\":9,\"systemdictionary\":{\"id\":null,\"sn\":null,\"name\":\"意向学科\",\"intro\":null},\"name\":\"物理\",\"intro\":\"..\"}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3665', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[3]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3666', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:updateByPrimaryKey', '[{\"id\":10,\"systemdictionary\":{\"id\":null,\"sn\":null,\"name\":\"意向学科\",\"intro\":null},\"name\":\"音乐\",\"intro\":\"..\"}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3667', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[3]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3668', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:updateByPrimaryKey', '[{\"id\":91,\"systemdictionary\":{\"id\":null,\"sn\":null,\"name\":\"意向学科\",\"intro\":null},\"name\":\"语文\",\"intro\":\",,,\"}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3669', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[3]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3670', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[4]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3671', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[5]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3672', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[6]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3673', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[7]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3674', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[8]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3675', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[9]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3676', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[10]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3677', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[11]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3678', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[12]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3679', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[13]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3680', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[14]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3681', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[15]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3682', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[16]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3683', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[17]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3684', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[18]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3685', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[19]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3686', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3687', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3688', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3689', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3690', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3691', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3692', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3693', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3694', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3695', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3696', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3697', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3698', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3699', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3700', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3701', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3702', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3703', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3704', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3705', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3706', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3707', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3708', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3709', '2017-10-30', null, 'ClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"wechat\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"origin\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3710', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultway\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3711', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3712', '2017-10-30', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3713', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3714', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"purpose\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3715', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3716', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"state\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3717', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3718', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedschool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3719', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3720', '2017-10-30', null, 'ClientServiceImpl:selectListForTrackForm', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3721', '2017-10-30', null, 'ClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3722', '2017-10-30', null, 'ClienttrackServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"qq\":null,\"beginTime\":null,\"endTime\":null,\"interviewBeginTime\":null,\"interviewEndTime\":null,\"wantedSchool\":null,\"wantedClassId\":null,\"subject\":null,\"saleManId\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3723', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3724', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3725', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"treason\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3726', '2017-10-30', null, 'TransferServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"name\":null,\"aimOwnerId\":null,\"preOwnerId\":null,\"beginTime\":null,\"endTime\":null,\"reason\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3727', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3728', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3729', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3730', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3731', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3732', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3733', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3734', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3735', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3736', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3737', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3738', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3739', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3740', '2017-10-30', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3741', '2017-10-30', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3742', '2017-10-30', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3743', '2017-10-30', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3744', '2017-10-30', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3745', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3746', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3747', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3748', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3749', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3750', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3751', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3752', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3753', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3754', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3755', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3756', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3757', '2017-10-30', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3758', '2017-10-30', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3759', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3760', '2017-10-30', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3761', '2017-10-30', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3762', '2017-10-30', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3763', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3764', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3765', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3766', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3767', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3768', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3769', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3770', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3771', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3772', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3773', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3774', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3775', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3776', '2017-10-30', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3777', '2017-10-30', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3778', '2017-10-30', null, 'EmployeeServiceImpl:getEmployeeByName', '[\"wall\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3779', '2017-10-30', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3780', '2017-10-30', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3781', '2017-10-30', null, 'MenuServiceImpl:getUrl', '[null]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3782', '2017-10-30', null, 'IInformationServiceImpl:get', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3783', '2017-10-30', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3784', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3785', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3786', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3787', '2017-10-30', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3788', '2017-10-30', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3789', '2017-10-30', null, 'ReceiptServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3790', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3791', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3792', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3793', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3794', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3795', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3796', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3797', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3798', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3799', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3800', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3801', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3802', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3803', '2017-10-30', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3804', '2017-10-30', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3805', '2017-10-30', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3806', '2017-10-30', null, 'SystemdictionaryServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3807', '2017-10-30', null, 'SystemdictionaryitemServiceImpl:queryBysystemdictionId', '[3]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3808', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"importance\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3809', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedLevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3810', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSchool\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3811', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"wantedSubject\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3812', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3813', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3814', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3815', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3816', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"schoolState\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3817', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3818', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"consultWay\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3819', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3820', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3821', '2017-10-30', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3822', '2017-10-30', null, 'SchoolClientServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"schoolName\":null,\"type\":null,\"recruiterId\":null,\"state\":null,\"userId\":null,\"nearTime\":null,\"eagerness\":null,\"importance\":null,\"clientState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3823', '2017-10-30', null, 'SchoolClientServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3824', '2017-10-30', null, 'SchoolLinkManServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3825', '2017-10-30', null, 'SchoolTraceLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3826', '2017-10-30', null, 'SchoolClientTransferLogServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"auditState\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3827', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"origin\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3828', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"education\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3829', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"university\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3830', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3831', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"paymethod\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3832', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"englishlevel\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3833', '2017-10-30', null, 'SystemdictionaryServiceImpl:querySsnByItemParentSn', '[\"clientType\"]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3834', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3835', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3836', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3837', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3838', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3839', '2017-10-30', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":false,\"classId\":null,\"state\":\"正常\",\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3840', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3841', '2017-10-30', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3842', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3843', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3844', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3845', '2017-10-30', null, 'StudentServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"upordown\":true,\"classId\":null,\"state\":null,\"groupType\":\"s.username\",\"beginTime\":null,\"endTime\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3846', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3847', '2017-10-30', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3848', '2017-10-30', null, 'ReceiptServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3849', '2017-10-30', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3850', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3851', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3852', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3853', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3854', '2017-10-30', null, 'StudentServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3855', '2017-10-30', null, 'StudentLossServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3856', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3857', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3858', '2017-10-30', null, 'ExpenditureServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"beginDate\":null,\"endDate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3859', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3860', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3861', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3862', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3863', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3864', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3865', '2017-10-30', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3866', '2017-10-30', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3867', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3868', '2017-10-30', null, 'RoomclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"begindate\":null,\"enddate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3869', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3870', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3871', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3872', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3873', '2017-10-30', null, 'StudentclassServiceImpl:insert', '[{\"id\":178,\"classname\":\"微积分\",\"headteacher\":{\"id\":29,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"tatolstudent\":30,\"seating\":30,\"classlocation\":\"B栋7楼705\",\"affilliation\":\"数学\",\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3874', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3875', '2017-10-30', null, 'StudentclassServiceImpl:insert', '[{\"id\":179,\"classname\":\"散文\",\"headteacher\":{\"id\":25,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"tatolstudent\":50,\"seating\":50,\"classlocation\":\"A栋5楼501\",\"affilliation\":\"语文\",\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3876', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3877', '2017-10-30', null, 'StudentclassServiceImpl:insert', '[{\"id\":180,\"classname\":\"速写\",\"headteacher\":{\"id\":21,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"tatolstudent\":70,\"seating\":70,\"classlocation\":\"D栋6楼602\",\"affilliation\":\"美术\",\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3878', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3879', '2017-10-30', null, 'StudentclassServiceImpl:insert', '[{\"id\":181,\"classname\":\"交响曲\",\"headteacher\":{\"id\":37,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"tatolstudent\":20,\"seating\":20,\"classlocation\":\"F栋901\",\"affilliation\":\"音乐\",\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3880', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3881', '2017-10-30', null, 'StudentclassServiceImpl:insert', '[{\"id\":182,\"classname\":\"量子论\",\"headteacher\":{\"id\":2,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"tatolstudent\":60,\"seating\":60,\"classlocation\":\"C栋207\",\"affilliation\":\"物理\",\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3882', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3883', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3884', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3885', '2017-10-30', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3886', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3887', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3888', '2017-10-30', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3889', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"\",\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3890', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3891', '2017-10-30', null, 'RoomclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"begindate\":null,\"enddate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3892', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3893', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3894', '2017-10-30', null, 'StudentclassServiceImpl:getEmployeeById', '[178]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3895', '2017-10-30', null, 'StudentclassServiceImpl:getEmployeeById', '[178]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3896', '2017-10-30', null, 'StudentclassServiceImpl:getEmployeeById', '[178]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3897', '2017-10-30', null, 'StudentclassServiceImpl:getEmployeeById', '[180]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3898', '2017-10-30', null, 'StudentclassServiceImpl:insert', '[{\"id\":183,\"classname\":\"排序查询\",\"headteacher\":{\"id\":1,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"tatolstudent\":null,\"seating\":2,\"classlocation\":\"走廊\",\"affilliation\":\"娱乐\",\"state\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3899', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3900', '2017-10-30', null, 'StudentclassServiceImpl:getEmployeeById', '[183]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3901', '2017-10-30', null, 'StudentclassServiceImpl:getEmployeeById', '[183]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3902', '2017-10-30', null, 'StudentclassServiceImpl:changState', '[183]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3903', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3904', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3905', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3906', '2017-10-30', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3907', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3908', '2017-10-30', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3909', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3910', '2017-10-30', null, 'TimetableitemServiceImpl:getTimetableitemById', '[183]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3911', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3912', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3913', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3914', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3915', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3916', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3917', '2017-10-30', null, 'TimetableitemServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3918', '2017-10-30', null, 'RoomclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3919', '2017-10-30', null, 'EmployeeServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3920', '2017-10-30', null, 'StudentclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"state\":true,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3921', '2017-10-30', null, 'TimetableitemServiceImpl:getTimetableitemById', '[183]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3922', '2017-10-30', null, 'TimetableitemServiceImpl:insert', '[{\"id\":47,\"schooltime\":\"2017-10-30\",\"coursetitle\":\"排序算法\",\"employee\":{\"id\":1,\"username\":null,\"realname\":null,\"password\":null,\"tel\":null,\"email\":null,\"dept\":null,\"inputtime\":null,\"state\":null,\"admin\":null,\"roles\":null,\"basicwage\":null},\"roomclass\":{\"id\":5,\"classroom\":null,\"roomlocation\":null,\"studentclass\":null,\"totalstudent\":null,\"inputdate\":null,\"remark\":null},\"studentclass\":{\"id\":183,\"classname\":null,\"headteacher\":null,\"tatolstudent\":null,\"seating\":null,\"classlocation\":null,\"affilliation\":null,\"state\":true},\"remark\":\"你们就姑且听之吧\",\"timetableitmename\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3923', '2017-10-30', null, 'TimetableitemServiceImpl:getTimetableitemById', '[183]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3924', '2017-10-30', null, 'StudentclassServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3925', '2017-10-30', null, 'RoomclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"begindate\":null,\"enddate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3926', '2017-10-30', null, 'RoomclassServiceImpl:insert', '[{\"id\":11,\"classroom\":\"201\",\"roomlocation\":\"东区A栋2楼\",\"studentclass\":{\"id\":183,\"classname\":null,\"headteacher\":null,\"tatolstudent\":null,\"seating\":null,\"classlocation\":null,\"affilliation\":null,\"state\":true},\"totalstudent\":2,\"inputdate\":\"2017-10-30\",\"remark\":\"不要太寒酸\"}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3927', '2017-10-30', null, 'RoomclassServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"begindate\":null,\"enddate\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3928', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"startdate\":null,\"enddate\":null,\"year\":null,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3929', '2017-10-30', null, 'SalaryServiceImpl:deleteByPrimaryKey', '[76]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3930', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"startdate\":null,\"enddate\":null,\"year\":null,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3931', '2017-10-30', null, 'SalaryServiceImpl:deleteByPrimaryKey', '[78]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3932', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"startdate\":null,\"enddate\":null,\"year\":null,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3933', '2017-10-30', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3934', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"startdate\":null,\"enddate\":null,\"year\":null,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3935', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"startdate\":null,\"enddate\":null,\"year\":null,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3936', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"startdate\":null,\"enddate\":null,\"year\":null,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3937', '2017-10-30', null, 'SalaryServiceImpl:balance', '[2017,10]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3938', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"\",\"startdate\":null,\"enddate\":null,\"year\":2017,\"month\":10,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3939', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"\",\"startdate\":null,\"enddate\":null,\"year\":2017,\"month\":10,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3940', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"\",\"startdate\":null,\"enddate\":null,\"year\":2017,\"month\":9,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3941', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"\",\"startdate\":null,\"enddate\":null,\"year\":2017,\"month\":9,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3942', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"\",\"startdate\":null,\"enddate\":null,\"year\":2017,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3943', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"\",\"startdate\":1504195200000,\"enddate\":1509120000000,\"year\":2017,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3944', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"\",\"startdate\":1506787200000,\"enddate\":1509120000000,\"year\":2017,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3945', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":\"\",\"startdate\":1504195200000,\"enddate\":1509120000000,\"year\":2017,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3946', '2017-10-30', null, 'RoleServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3947', '2017-10-30', null, 'PermissionServiceImpl:selectAll', '[]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3948', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"keyword\":null,\"startdate\":null,\"enddate\":null,\"year\":null,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3949', '2017-10-30', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3950', '2017-10-30', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3951', '2017-10-30', null, 'AttendanceServiceImpl:getEndTime', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3952', '2017-10-30', null, 'AttendanceServiceImpl:insert', '[{\"id\":38,\"employee\":{\"id\":1,\"username\":\"wall\",\"realname\":\"红黑雨\",\"password\":\"xxx\",\"tel\":\"130**0\",\"email\":\"z@163.com\",\"dept\":{\"id\":92,\"sn\":null,\"name\":\"红黑会\",\"manage\":null,\"parent\":null,\"state\":null},\"inputtime\":\"2012-09-20\",\"state\":true,\"admin\":true,\"roles\":[],\"basicwage\":null},\"currenttime\":1509297506869,\"signintime\":\"2017-10-30 01:18:26\",\"signouttime\":null,\"ondutystate\":\"正常打卡\",\"offdutystate\":null,\"addsigntime\":null}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3953', '2017-10-30', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3954', '2017-10-30', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3955', '2017-10-30', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":2,\"rows\":10,\"id\":null,\"start\":10}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3956', '2017-10-30', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":3,\"rows\":10,\"id\":null,\"start\":20}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3957', '2017-10-30', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":4,\"rows\":10,\"id\":null,\"start\":30}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3958', '2017-10-30', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":3,\"rows\":10,\"id\":null,\"start\":20}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3959', '2017-10-30', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":2,\"rows\":10,\"id\":null,\"start\":10}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3960', '2017-10-30', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3961', '2017-10-30', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":1,\"rows\":30,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3962', '2017-10-30', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":1,\"rows\":20,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3963', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":23,\"id\":null,\"keyword\":null,\"startdate\":null,\"enddate\":null,\"year\":null,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3964', '2017-10-30', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":1,\"rows\":10,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3965', '2017-10-30', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":1,\"rows\":23,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3966', '2017-10-30', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3967', '2017-10-30', null, 'AttendanceServiceImpl:getEndTime', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3968', '2017-10-30', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3969', '2017-10-30', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":1,\"rows\":23,\"id\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3970', '2017-10-30', null, 'AttendanceServiceImpl:pageQuery', '[{\"page\":2,\"rows\":23,\"id\":null,\"start\":23}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3971', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":23,\"id\":null,\"keyword\":null,\"startdate\":null,\"enddate\":null,\"year\":null,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3972', '2017-10-30', null, 'SalaryServiceImpl:pageQuery', '[{\"page\":1,\"rows\":23,\"id\":null,\"keyword\":\"\",\"startdate\":null,\"enddate\":null,\"year\":2017,\"month\":null,\"start\":0}]', '127.0.0.1');
INSERT INTO `systemlog` VALUES ('3973', '2017-10-30', null, 'AttendanceServiceImpl:getTimeAll', '[1]', '127.0.0.1');

-- ----------------------------
-- Table structure for systemmenu
-- ----------------------------
DROP TABLE IF EXISTS `systemmenu`;
CREATE TABLE `systemmenu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` varchar(20) DEFAULT NULL,
  `iconCls` varchar(20) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_parent` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemmenu
-- ----------------------------
INSERT INTO `systemmenu` VALUES ('1', '系统模块', null, null, null);
INSERT INTO `systemmenu` VALUES ('2', '客户服务(售前)', null, '', null);
INSERT INTO `systemmenu` VALUES ('3', '学员管理(售后)', null, null, null);
INSERT INTO `systemmenu` VALUES ('4', '教务管理', null, null, null);
INSERT INTO `systemmenu` VALUES ('5', '日常办公', null, null, null);
INSERT INTO `systemmenu` VALUES ('6', '报表管理', null, null, null);
INSERT INTO `systemmenu` VALUES ('7', '其他', null, null, null);
INSERT INTO `systemmenu` VALUES ('8', '员工管理', null, '/employee', '1');
INSERT INTO `systemmenu` VALUES ('9', '部门管理', null, '/department', '1');
INSERT INTO `systemmenu` VALUES ('10', '系统权限管理', null, '/permission', '1');
INSERT INTO `systemmenu` VALUES ('11', '系统角色管理', null, '/role', '1');
INSERT INTO `systemmenu` VALUES ('12', '数据字典', null, '/systemdictionary', '1');
INSERT INTO `systemmenu` VALUES ('13', '系统日志', null, '/log', '1');
INSERT INTO `systemmenu` VALUES ('14', '潜在学员管理', null, '/student', '2');
INSERT INTO `systemmenu` VALUES ('15', '学员跟踪', null, '/studentTrack', '2');
INSERT INTO `systemmenu` VALUES ('16', '移交历史', null, '/transfer', '2');
INSERT INTO `systemmenu` VALUES ('17', '大客户(学校)', null, '/school', '2');
INSERT INTO `systemmenu` VALUES ('18', '学校联系人', null, '/schoolLinkman', '2');
INSERT INTO `systemmenu` VALUES ('19', '潜在客户池', null, '/student/pool', '2');
INSERT INTO `systemmenu` VALUES ('20', '考试管理', null, '/exammanage', '2');
INSERT INTO `systemmenu` VALUES ('21', '正式学员管理', null, '/formalStudentManager', '3');
INSERT INTO `systemmenu` VALUES ('22', '学员升班留级', null, '/studentPromotion', '3');
INSERT INTO `systemmenu` VALUES ('23', '收款管理', null, '/receipt', '3');
INSERT INTO `systemmenu` VALUES ('24', '学员流失', null, '/loseStudentManager', '3');
INSERT INTO `systemmenu` VALUES ('25', '支出管理', null, '/expenditure', '3');
INSERT INTO `systemmenu` VALUES ('27', '班级管理', null, '/schoolClass', '4');
INSERT INTO `systemmenu` VALUES ('28', '课程表', null, '/syllabus', '4');
INSERT INTO `systemmenu` VALUES ('29', '教室管理', null, '/classroom', '4');
INSERT INTO `systemmenu` VALUES ('30', '工资管理', null, '/salary', '5');
INSERT INTO `systemmenu` VALUES ('31', '考勤管理', null, '/checks', '5');
INSERT INTO `systemmenu` VALUES ('32', '合同管理', null, '/contract', '3');
INSERT INTO `systemmenu` VALUES ('33', '考勤导出', null, '/checksOut', '5');
INSERT INTO `systemmenu` VALUES ('34', '学员报表', null, '/formalStudentManager/chart', '6');
INSERT INTO `systemmenu` VALUES ('35', '我们的网盘', null, '/networkDisk', '7');
INSERT INTO `systemmenu` VALUES ('36', '每日任务', null, '/dayTast', '5');

-- ----------------------------
-- Table structure for timetable
-- ----------------------------
DROP TABLE IF EXISTS `timetable`;
CREATE TABLE `timetable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `studentclass_id` bigint(20) DEFAULT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  `timetableitem_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of timetable
-- ----------------------------
INSERT INTO `timetable` VALUES ('1', '1', '1', '1');
INSERT INTO `timetable` VALUES ('2', '3', '3', '1');
INSERT INTO `timetable` VALUES ('3', '1', '11', '1');
INSERT INTO `timetable` VALUES ('4', '7', '13', '2');
INSERT INTO `timetable` VALUES ('5', '5', '4', '1');
INSERT INTO `timetable` VALUES ('6', '5', '4', '1');
INSERT INTO `timetable` VALUES ('7', '3', '3', '1');
INSERT INTO `timetable` VALUES ('8', '2', '3', '1');

-- ----------------------------
-- Table structure for timetableitem
-- ----------------------------
DROP TABLE IF EXISTS `timetableitem`;
CREATE TABLE `timetableitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `schooltime` date DEFAULT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  `roomclass_id` bigint(20) DEFAULT NULL,
  `studentclass_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `coursetitle` varchar(20) DEFAULT NULL,
  `timetableitmename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of timetableitem
-- ----------------------------
INSERT INTO `timetableitem` VALUES ('1', '2017-05-05', '1', '1', '1', 'XX老师在22号要去北京出差', 'springIOC', 'spring框架');
INSERT INTO `timetableitem` VALUES ('2', '2017-08-15', '3', '1', '5', 'XX老师XX', 'MybatisSQl加强', 'Mabatis框架');
INSERT INTO `timetableitem` VALUES ('10', '2017-08-15', '4', '2', '3', '老钟,要加强嗓音', 'Javascript', null);
INSERT INTO `timetableitem` VALUES ('11', '2017-08-15', '11', '5', '3', '!!!!!!!!!!!!', 'weHttps', null);
INSERT INTO `timetableitem` VALUES ('12', '2017-08-08', '4', '1', '1', '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 'shiro权限框架', null);
INSERT INTO `timetableitem` VALUES ('13', '2017-08-15', '2', '1', '1', '!!!!!!!!!!!!!!!!', 'gitHUB', null);
INSERT INTO `timetableitem` VALUES ('14', '2017-08-08', '4', '1', '1', '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 'shiro权限框架', null);
INSERT INTO `timetableitem` VALUES ('15', '2017-08-01', '6', '5', '7', '面向对象(Object Oriented,OO)是软件开发方法。', '面向对象', null);
INSERT INTO `timetableitem` VALUES ('16', '2017-08-31', '3', '4', '2', '无', 'java加强', null);
INSERT INTO `timetableitem` VALUES ('17', '2017-08-31', '3', '1', '3', '。。。', 'java加强', null);
INSERT INTO `timetableitem` VALUES ('18', '2017-08-31', '3', '1', '3', '。。。', 'java加强', null);
INSERT INTO `timetableitem` VALUES ('19', '2017-08-31', '11', '5', '3', '!!!!!!!!!!!!', 'weHttps', null);
INSERT INTO `timetableitem` VALUES ('20', '2017-08-31', '3', '1', '3', 'ddddd', 'java加强', null);
INSERT INTO `timetableitem` VALUES ('21', '2017-08-31', '3', '2', '3', '!!!!!!!!!!!!!!', 'java加强', null);
INSERT INTO `timetableitem` VALUES ('22', '2017-08-02', '32', '6', '19', 'fdsdsfds', 'gfd', null);
INSERT INTO `timetableitem` VALUES ('23', '2017-08-02', '32', '6', '19', 'jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', 'gfd', null);
INSERT INTO `timetableitem` VALUES ('28', '2017-09-12', '11', '2', '4', 'xx:!!!!!呵呵   哈哈 你傻逼', 'sturts2', null);
INSERT INTO `timetableitem` VALUES ('29', '2017-09-26', '34', '2', '4', '和珅（1750年5月28日—1799年2月22日）', 'JDBC', null);
INSERT INTO `timetableitem` VALUES ('30', '2017-09-19', '23', '2', '4', '吕洞宾，道教主流全真派祖师。', '内省机制', null);
INSERT INTO `timetableitem` VALUES ('31', '2017-09-13', '24', '5', '7', 'android :Linux的自由及开放源代码的操作系统', 'android 高级加强', null);
INSERT INTO `timetableitem` VALUES ('32', '2017-09-05', '23', '6', '12', '!!!!!!!!!!!!', 'iOS开发进阶', null);
INSERT INTO `timetableitem` VALUES ('33', '2017-09-13', '25', '6', '12', '车载 iOS 将你的 iOS 设备，以及 iOS 使用体验，与你的仪表盘系统无缝\r\n车载iOS\r\n车载iOS\r\n结合', '车载iOS', null);
INSERT INTO `timetableitem` VALUES ('34', '2017-09-05', '26', '4', '2', 'JDBC（Java DataBase Connectivity,java数据库连接）', 'JDBC', null);
INSERT INTO `timetableitem` VALUES ('35', '2017-09-13', '26', '9', '20', '用唱歌的精神交你学UI', 'ps', null);
INSERT INTO `timetableitem` VALUES ('36', '2017-09-12', '25', '9', '20', '编码设计与UI设计', '网站ui设计', null);
INSERT INTO `timetableitem` VALUES ('37', '2017-09-12', '25', '9', '20', '!!!!!!!!!!!!', 'UIXX', null);
INSERT INTO `timetableitem` VALUES ('38', '2017-09-05', '27', '10', '22', '!!!!!!!!!!!!!!!!!!!', '网站ui设计', null);
INSERT INTO `timetableitem` VALUES ('39', '2017-09-12', '28', '10', '22', '!!!!!!!!!!!!!!!!!!!', 'ps', null);
INSERT INTO `timetableitem` VALUES ('40', '2017-09-13', '28', '10', '22', '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 'html', null);
INSERT INTO `timetableitem` VALUES ('42', '2017-09-01', '3', '7', '31', '!!!!!!!!!!!!!!!!!!!!!!!', '面向对象', null);
INSERT INTO `timetableitem` VALUES ('43', '2017-09-02', '3', '7', '31', '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', '线程', null);
INSERT INTO `timetableitem` VALUES ('44', '2017-09-04', '3', '7', '31', '!!!!!!!!!!!!!!!!!!!!!!!!!!', 'IO', null);
INSERT INTO `timetableitem` VALUES ('45', '2017-09-13', '3', '8', '176', '!!!!!!!!!!!!!!!!!!!!!!', 'Java跨平台', null);
INSERT INTO `timetableitem` VALUES ('46', '2017-09-11', '3', '8', '176', '!!!!!!!!!!!!!!!!!!!!!!!!', '基本数据', null);
INSERT INTO `timetableitem` VALUES ('47', '2017-10-30', '1', '5', '183', '你们就姑且听之吧', '排序算法', null);

-- ----------------------------
-- Table structure for transfer
-- ----------------------------
DROP TABLE IF EXISTS `transfer`;
CREATE TABLE `transfer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) DEFAULT NULL,
  `transferTime` date DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `preOwner_id` bigint(20) DEFAULT NULL,
  `aimOwner_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of transfer
-- ----------------------------
INSERT INTO `transfer` VALUES ('11', '19', '2019-07-31', '病假', '1', '3');
INSERT INTO `transfer` VALUES ('12', '17', '2017-07-31', '辞职', '1', '2');
INSERT INTO `transfer` VALUES ('13', '21', '2018-07-31', '病假', '1', '6');
INSERT INTO `transfer` VALUES ('14', '22', '2013-07-31', '事假', '1', '3');
INSERT INTO `transfer` VALUES ('15', '16', '2017-07-15', '病假', '1', '3');
INSERT INTO `transfer` VALUES ('16', '25', '2017-07-22', '事假', '1', '3');
