/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : atcrowdfunding-v

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-02-26 15:29:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pid` int(1) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '系统菜单', '0', null, null);
INSERT INTO `t_permission` VALUES ('2', '控制面板', '1', null, 'glyphicon glyphicon-dashboard');
INSERT INTO `t_permission` VALUES ('3', '权限管理', '1', null, 'glyphicon glyphicon glyphicon-tasks');
INSERT INTO `t_permission` VALUES ('4', '用户维护', '3', '/user/index', 'glyphicon glyphicon-user');
INSERT INTO `t_permission` VALUES ('5', '角色维护', '3', '/role/index', 'glyphicon glyphicon-king');
INSERT INTO `t_permission` VALUES ('6', '许可维护', '3', '/permission/index', 'glyphicon glyphicon-lock');
INSERT INTO `t_permission` VALUES ('7', '业务审核', '1', '/error', null);

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', 'PM-项目经理');
INSERT INTO `t_role` VALUES ('2', 'SE-软件工程师');
INSERT INTO `t_role` VALUES ('3', 'PG-程序员');
INSERT INTO `t_role` VALUES ('4', 'TL-组长');
INSERT INTO `t_role` VALUES ('5', 'GL-组长');
INSERT INTO `t_role` VALUES ('6', 'QC-品质控制');
INSERT INTO `t_role` VALUES ('7', 'SA-软件架构师');
INSERT INTO `t_role` VALUES ('8', 'SYSTEM-系统管理');

-- ----------------------------
-- Table structure for `t_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) DEFAULT NULL,
  `permissionid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('4', '1', '1');
INSERT INTO `t_role_permission` VALUES ('6', '1', '2');
INSERT INTO `t_role_permission` VALUES ('7', '2', '2');
INSERT INTO `t_role_permission` VALUES ('16', '1', '3');
INSERT INTO `t_role_permission` VALUES ('17', '1', '4');
INSERT INTO `t_role_permission` VALUES ('18', '1', '5');
INSERT INTO `t_role_permission` VALUES ('19', '1', '6');
INSERT INTO `t_role_permission` VALUES ('20', '6', '1');
INSERT INTO `t_role_permission` VALUES ('21', '6', '2');
INSERT INTO `t_role_permission` VALUES ('22', '6', '3');
INSERT INTO `t_role_permission` VALUES ('23', '6', '5');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `loginacct` varchar(255) DEFAULT NULL,
  `userpswd` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createtime` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'zhangsan', 'admin', 'admin', null, null);
INSERT INTO `t_user` VALUES ('2', 'root', 'root', 'root', null, null);

-- ----------------------------
-- Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1', '1');
INSERT INTO `t_user_role` VALUES ('2', '4', '3');
