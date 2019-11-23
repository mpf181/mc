﻿/*
Navicat MySQL Data Transfer

Source Server         : mysql123
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : mc

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2019-11-23 09:33:00
*/

SET FOREIGN_KEY_CHECKS=0;
DROP DATABASE if exists mc ;
CREATE DATABASE mc default character set 'utf8';
use mc;
-- ----------------------------
-- Table structure for `sys_album`
-- ----------------------------
DROP TABLE IF EXISTS `sys_album`;
CREATE TABLE `sys_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `album_name` varchar(20) DEFAULT NULL COMMENT '专辑名称',
  `singer_name` varchar(10) DEFAULT NULL,
  `date` year(4) DEFAULT NULL COMMENT '年代',
  `type` varchar(20) DEFAULT NULL COMMENT '派别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_album
-- ----------------------------
INSERT INTO `sys_album` VALUES ('1', '七里香', '周杰伦', '2007', '流行');
INSERT INTO `sys_album` VALUES ('2', '寻雾启事', '许嵩', '2010', '流行');

-- ----------------------------
-- Table structure for `sys_configs`
-- ----------------------------
DROP TABLE IF EXISTS `sys_configs`;
CREATE TABLE `sys_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '参数名',
  `value` varchar(50) DEFAULT NULL COMMENT '参数值',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='配置管理';

-- ----------------------------
-- Records of sys_configs
-- ----------------------------
INSERT INTO `sys_configs` VALUES ('4', 'uploadPath', '/upload/images', '上传路径', '2018-04-22 17:39:55', '2018-04-22 17:39:55', null, null);
INSERT INTO `sys_configs` VALUES ('5', 'downloadPath', '/downloads/', '文件下载路径', '2018-04-22 17:40:41', '2018-04-22 17:40:41', null, null);

-- ----------------------------
-- Table structure for `sys_depts`
-- ----------------------------
DROP TABLE IF EXISTS `sys_depts`;
CREATE TABLE `sys_depts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '资源名称',
  `parentId` int(11) DEFAULT NULL COMMENT '上级部门',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='部门管理';

-- ----------------------------
-- Records of sys_depts
-- ----------------------------
INSERT INTO `sys_depts` VALUES ('2', 'dept-a', null, '1', 'dept-a ..', '2018-04-19 18:59:09', '2018-04-19 18:59:09', 'admin', 'admin');
INSERT INTO `sys_depts` VALUES ('3', 'dept-b', null, '2', '1111', '2018-04-19 19:15:05', '2018-04-19 19:15:05', null, null);
INSERT INTO `sys_depts` VALUES ('4', 'dept-aa', '2', '1', '', '2018-04-22 18:10:58', '2018-04-22 22:11:47', null, null);

-- ----------------------------
-- Table structure for `sys_dicts`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dicts`;
CREATE TABLE `sys_dicts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名字',
  `type` varchar(20) DEFAULT NULL COMMENT '类型',
  `code` varchar(20) DEFAULT NULL COMMENT '字典码',
  `value` varchar(100) DEFAULT NULL COMMENT '字典值',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `valid` tinyint(4) DEFAULT '1' COMMENT '有效',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典管理';

-- ----------------------------
-- Records of sys_dicts
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_list`
-- ----------------------------
DROP TABLE IF EXISTS `sys_list`;
CREATE TABLE `sys_list` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_list
-- ----------------------------
INSERT INTO `sys_list` VALUES ('1', '流行音乐榜');
INSERT INTO `sys_list` VALUES ('2', '热歌榜');

-- ----------------------------
-- Table structure for `sys_logs`
-- ----------------------------
DROP TABLE IF EXISTS `sys_logs`;
CREATE TABLE `sys_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_logs
-- ----------------------------
INSERT INTO `sys_logs` VALUES ('9', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '3', '0:0:0:0:0:0:0:1', '2018-04-17 19:53:38');
INSERT INTO `sys_logs` VALUES ('10', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '2', '0:0:0:0:0:0:0:1', '2018-04-17 19:54:05');
INSERT INTO `sys_logs` VALUES ('11', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '1', '0:0:0:0:0:0:0:1', '2018-04-17 19:54:36');
INSERT INTO `sys_logs` VALUES ('12', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '155', '0:0:0:0:0:0:0:1', '2018-04-18 15:14:44');
INSERT INTO `sys_logs` VALUES ('13', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '165', '0:0:0:0:0:0:0:1', '2018-04-19 18:52:35');
INSERT INTO `sys_logs` VALUES ('14', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '75', '0:0:0:0:0:0:0:1', '2018-04-19 19:10:36');
INSERT INTO `sys_logs` VALUES ('15', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '69', '0:0:0:0:0:0:0:1', '2018-04-19 19:12:46');
INSERT INTO `sys_logs` VALUES ('16', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '187', '0:0:0:0:0:0:0:1', '2018-04-19 23:27:14');
INSERT INTO `sys_logs` VALUES ('17', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '103', '0:0:0:0:0:0:0:1', '2018-04-20 13:11:37');
INSERT INTO `sys_logs` VALUES ('18', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '85', '0:0:0:0:0:0:0:1', '2018-04-20 13:55:04');
INSERT INTO `sys_logs` VALUES ('19', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '89', '0:0:0:0:0:0:0:1', '2018-04-20 13:57:12');
INSERT INTO `sys_logs` VALUES ('20', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '69', '0:0:0:0:0:0:0:1', '2018-04-20 13:58:32');
INSERT INTO `sys_logs` VALUES ('21', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '291', '0:0:0:0:0:0:0:1', '2018-04-20 15:22:55');
INSERT INTO `sys_logs` VALUES ('22', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '158', '0:0:0:0:0:0:0:1', '2018-04-22 16:20:56');
INSERT INTO `sys_logs` VALUES ('23', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '94', '0:0:0:0:0:0:0:1', '2018-04-22 17:05:34');
INSERT INTO `sys_logs` VALUES ('24', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '138', '0:0:0:0:0:0:0:1', '2018-04-22 17:20:32');
INSERT INTO `sys_logs` VALUES ('25', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '124', '0:0:0:0:0:0:0:1', '2018-04-22 17:24:12');
INSERT INTO `sys_logs` VALUES ('26', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '75', '0:0:0:0:0:0:0:1', '2018-04-22 17:31:51');
INSERT INTO `sys_logs` VALUES ('27', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '148', '0:0:0:0:0:0:0:1', '2018-04-22 17:33:25');
INSERT INTO `sys_logs` VALUES ('28', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '69', '0:0:0:0:0:0:0:1', '2018-04-22 17:39:26');
INSERT INTO `sys_logs` VALUES ('29', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '120', '0:0:0:0:0:0:0:1', '2018-04-22 19:10:28');
INSERT INTO `sys_logs` VALUES ('30', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '104', '0:0:0:0:0:0:0:1', '2018-04-22 19:23:56');
INSERT INTO `sys_logs` VALUES ('31', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '79', '0:0:0:0:0:0:0:1', '2018-04-22 19:42:40');
INSERT INTO `sys_logs` VALUES ('32', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '71', '0:0:0:0:0:0:0:1', '2018-04-22 19:58:49');
INSERT INTO `sys_logs` VALUES ('33', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '201', '0:0:0:0:0:0:0:1', '2018-04-22 20:02:01');
INSERT INTO `sys_logs` VALUES ('34', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '119', '0:0:0:0:0:0:0:1', '2018-04-22 20:26:31');
INSERT INTO `sys_logs` VALUES ('35', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '131', '0:0:0:0:0:0:0:1', '2018-04-22 20:58:21');
INSERT INTO `sys_logs` VALUES ('36', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '9', '192.168.43.1', '2018-04-22 21:32:25');
INSERT INTO `sys_logs` VALUES ('37', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '6', '192.168.43.183', '2018-04-22 21:34:40');
INSERT INTO `sys_logs` VALUES ('38', 'admin', '登陆操作', 'com.jt.sys.service.impl.SysUserServiceImpl.login()', '\"admin\"', '4', '192.168.43.211', '2018-04-22 22:10:04');
INSERT INTO `sys_logs` VALUES ('39', 'admin', 'select', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '14', '0:0:0:0:0:0:0:1', '2019-11-22 20:39:17');
INSERT INTO `sys_logs` VALUES ('40', 'admin', 'select', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '7', '0:0:0:0:0:0:0:1', '2019-11-22 20:39:24');
INSERT INTO `sys_logs` VALUES ('41', 'admin', 'select', 'com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects', '[\"\",1]', '7', '0:0:0:0:0:0:0:1', '2019-11-22 20:44:53');

-- ----------------------------
-- Table structure for `sys_lyrics`
-- ----------------------------
DROP TABLE IF EXISTS `sys_lyrics`;
CREATE TABLE `sys_lyrics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '歌曲歌词',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_lyrics
-- ----------------------------
INSERT INTO `sys_lyrics` VALUES ('1', '七里香');

-- ----------------------------
-- Table structure for `sys_menus`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE `sys_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '资源名称',
  `url` varchar(200) DEFAULT NULL COMMENT '资源URL',
  `type` int(11) DEFAULT NULL COMMENT '类型     1：菜单   2：按钮',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  `parentId` int(11) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `permission` varchar(500) DEFAULT NULL COMMENT '授权(如：user:create)',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COMMENT='资源管理';

-- ----------------------------
-- Records of sys_menus
-- ----------------------------
INSERT INTO `sys_menus` VALUES ('8', '系统管理', '请求路径', '1', '8', null, null, 'sys:list', '2017-07-12 15:15:59', '2017-07-21 11:16:00', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('24', '系统配置', '请求路径', '1', '24', null, '8', null, '2017-07-12 15:15:59', '2017-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('25', '日志管理', 'log/log_list', '1', '25', null, '8', null, '2017-07-12 15:15:59', '2017-07-12 15:15:59', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('45', '用户管理', 'user/user_list', '1', '45', null, '8', 'sys:user:view', '2017-07-12 15:15:59', '2017-07-21 17:36:01', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('46', '菜单管理', 'menu/menu_list', '1', '46', null, '8', 'sys:menu:view', '2017-07-12 15:15:59', '2017-07-21 17:36:16', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('47', '角色管理', 'role/role_list', '1', '47', null, '8', 'sys:role:view', '2017-07-12 15:15:59', '2017-07-21 17:38:03', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('48', '部门管理', 'dept/dept_list', '1', '48', null, '8', 'sys:org:view', '2017-07-12 15:15:59', '2017-07-21 18:37:57', 'admin', 'admin');
INSERT INTO `sys_menus` VALUES ('115', '查看', '', '2', '1', null, '46', 'sys:menu:view', '2017-07-13 16:33:41', '2017-07-21 11:09:05', null, null);
INSERT INTO `sys_menus` VALUES ('116', '新增', '', '2', '2', null, '46', 'sys:menu:add', '2017-07-13 16:34:02', '2017-07-21 11:09:22', null, null);
INSERT INTO `sys_menus` VALUES ('117', '修改', '', '2', '3', null, '46', 'sys:menu:update', '2017-07-13 16:34:25', '2017-07-21 11:09:45', null, null);
INSERT INTO `sys_menus` VALUES ('118', '删除', '', '2', '4', null, '46', 'sys:menu:delete', '2017-07-13 16:34:46', '2017-07-21 11:10:12', null, null);
INSERT INTO `sys_menus` VALUES ('119', '查看', '', '2', '1', null, '45', 'sys:user:view', '2017-07-13 16:35:05', '2017-07-21 11:12:46', null, null);
INSERT INTO `sys_menus` VALUES ('120', '查看', '', '2', '1', null, '47', 'sys:role:view', '2017-07-13 16:35:26', '2017-07-21 11:13:43', null, null);
INSERT INTO `sys_menus` VALUES ('126', '新增', '', '2', '2', null, '45', 'sys:user:add', '2017-07-21 11:11:34', '2017-07-21 11:11:34', null, null);
INSERT INTO `sys_menus` VALUES ('127', '修改', '', '2', '3', null, '45', 'sys:user:update', '2017-07-21 11:11:56', '2017-07-21 11:11:56', null, null);
INSERT INTO `sys_menus` VALUES ('128', '新增', '', '2', '2', null, '47', 'sys:role:add', '2017-07-21 11:14:24', '2017-07-21 11:14:24', null, null);
INSERT INTO `sys_menus` VALUES ('129', '修改', '', '2', '3', null, '47', 'sys:role:update', '2017-07-21 11:14:48', '2017-07-21 11:14:48', null, null);
INSERT INTO `sys_menus` VALUES ('130', '删除', '', '2', '4', null, '47', 'sys:role:delete', '2017-07-21 11:15:09', '2017-07-21 11:15:09', null, null);
INSERT INTO `sys_menus` VALUES ('131', '删除', 'log/doDeleteObject', '2', '10', null, '25', 'sys:log:view', '2019-11-22 20:42:43', '2019-11-22 20:42:43', null, null);
INSERT INTO `sys_menus` VALUES ('132', '修改密码', 'user/pwd_edit', '1', '11', null, '8', 'sys:user:update', '2019-11-22 20:44:07', '2019-11-22 20:44:07', null, null);

-- ----------------------------
-- Table structure for `sys_roles`
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES ('1', '系统管理员', '系统管理员', '2017-07-13 17:44:11', '2018-04-22 20:53:32', 'admin', 'admin');
INSERT INTO `sys_roles` VALUES ('45', '运维经理', '运维经理..', '2018-04-22 20:51:43', '2018-04-22 20:51:43', null, null);

-- ----------------------------
-- Table structure for `sys_role_menus`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menus`;
CREATE TABLE `sys_role_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `menu_id` int(11) DEFAULT NULL COMMENT 'ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1250 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menus
-- ----------------------------
INSERT INTO `sys_role_menus` VALUES ('1232', '1', '8');
INSERT INTO `sys_role_menus` VALUES ('1233', '1', '24');
INSERT INTO `sys_role_menus` VALUES ('1234', '1', '25');
INSERT INTO `sys_role_menus` VALUES ('1235', '1', '45');
INSERT INTO `sys_role_menus` VALUES ('1236', '1', '119');
INSERT INTO `sys_role_menus` VALUES ('1237', '1', '126');
INSERT INTO `sys_role_menus` VALUES ('1238', '1', '127');
INSERT INTO `sys_role_menus` VALUES ('1239', '1', '46');
INSERT INTO `sys_role_menus` VALUES ('1240', '1', '115');
INSERT INTO `sys_role_menus` VALUES ('1241', '1', '116');
INSERT INTO `sys_role_menus` VALUES ('1242', '1', '117');
INSERT INTO `sys_role_menus` VALUES ('1243', '1', '118');
INSERT INTO `sys_role_menus` VALUES ('1244', '1', '47');
INSERT INTO `sys_role_menus` VALUES ('1245', '1', '120');
INSERT INTO `sys_role_menus` VALUES ('1246', '1', '128');
INSERT INTO `sys_role_menus` VALUES ('1247', '1', '129');
INSERT INTO `sys_role_menus` VALUES ('1248', '1', '130');
INSERT INTO `sys_role_menus` VALUES ('1249', '1', '48');

-- ----------------------------
-- Table structure for `sys_sheet`
-- ----------------------------
DROP TABLE IF EXISTS `sys_sheet`;
CREATE TABLE `sys_sheet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `modifiedTime` datetime DEFAULT NULL,
  `createUser` varchar(20) DEFAULT NULL,
  `modifiedUser` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_sheet
-- ----------------------------
INSERT INTO `sys_sheet` VALUES ('1', '默认歌单', '2019-11-22 20:00:38', '2019-11-22 20:00:43', 'admin', 'admin');
INSERT INTO `sys_sheet` VALUES ('2', '我喜欢', '2019-11-21 20:01:21', '2019-11-21 20:01:27', 'admin', 'admin');

-- ----------------------------
-- Table structure for `sys_singer`
-- ----------------------------
DROP TABLE IF EXISTS `sys_singer`;
CREATE TABLE `sys_singer` (
  `id` bigint(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(4) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `Initials` varchar(5) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_singer
-- ----------------------------
INSERT INTO `sys_singer` VALUES ('1', '周杰伦', '男', '华语、流行', 'Z', '中国');
INSERT INTO `sys_singer` VALUES ('2', '刘若英', '女', '华语、情歌', 'L', '中国');
INSERT INTO `sys_singer` VALUES ('3', '许嵩', '男', '华语流行', 'X', '中国');

-- ----------------------------
-- Table structure for `sys_singer_song`
-- ----------------------------
DROP TABLE IF EXISTS `sys_singer_song`;
CREATE TABLE `sys_singer_song` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `singer_id` int(11) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_singer_song
-- ----------------------------
INSERT INTO `sys_singer_song` VALUES ('1', '1', '1');
INSERT INTO `sys_singer_song` VALUES ('2', '1', '3');

-- ----------------------------
-- Table structure for `sys_song`
-- ----------------------------
DROP TABLE IF EXISTS `sys_song`;
CREATE TABLE `sys_song` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '歌曲id',
  `name` varchar(20) DEFAULT NULL COMMENT '歌曲名',
  `singer` varchar(10) DEFAULT NULL COMMENT '歌手',
  `album` bigint(100) DEFAULT NULL COMMENT '专辑ID',
  `type` varchar(20) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_song
-- ----------------------------
INSERT INTO `sys_song` VALUES ('1', '七里香', '周杰伦', '1', '华语流行');
INSERT INTO `sys_song` VALUES ('2', '城府', '许嵩', '2', '华语流行');
INSERT INTO `sys_song` VALUES ('3', '城府', '周杰伦', '1', '华语');

-- ----------------------------
-- Table structure for `sys_song_list`
-- ----------------------------
DROP TABLE IF EXISTS `sys_song_list`;
CREATE TABLE `sys_song_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_id` int(11) DEFAULT NULL,
  `list_id` int(11) DEFAULT NULL COMMENT '榜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_song_list
-- ----------------------------
INSERT INTO `sys_song_list` VALUES ('1', '1', '1');
INSERT INTO `sys_song_list` VALUES ('2', '2', '1');

-- ----------------------------
-- Table structure for `sys_song_sheet`
-- ----------------------------
DROP TABLE IF EXISTS `sys_song_sheet`;
CREATE TABLE `sys_song_sheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_id` int(11) DEFAULT NULL COMMENT '歌曲ID',
  `sheet_id` int(11) DEFAULT NULL COMMENT '歌单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_song_sheet
-- ----------------------------
INSERT INTO `sys_song_sheet` VALUES ('1', '1', '2');
INSERT INTO `sys_song_sheet` VALUES ('2', '1', '1');

-- ----------------------------
-- Table structure for `sys_users`
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) DEFAULT NULL COMMENT '盐  密码加密时前缀，使加密后的值不同',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `valid` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常  默认值 ：1',
  `deptId` int(11) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES ('1', 'admin', '4ebd394fbd25e495e0753a7dc9889a8e', '7adb778c-e7d3-4dd3-a3c5-5f80a158006d', 'admin@t.cn', '13624356789', '1', '3', null, '2018-04-22 20:53:48', null, 'admin');
INSERT INTO `sys_users` VALUES ('2', 'zhangli', 'bdcf69375bdb532e50279b91eb00940d', '5e7cbd36-e897-4951-b42b-19809caf3caa', 'zhangli@t.cn', '13678909876', '0', '3', '2017-07-18 10:01:51', '2018-04-22 20:49:19', null, 'admin');
INSERT INTO `sys_users` VALUES ('3', 'wangke', 'c5dc32ec66041aeddf432b3146bd2257', '5e3e1475-1ea9-4a6a-976e-b07545827139', 'wangke@t.cn', '18678900987', '1', '3', '2017-07-18 11:40:53', '2018-04-22 20:48:52', null, null);
INSERT INTO `sys_users` VALUES ('4', 'zhangql', '+HBpqtPuj9KLBIpneR5X0A==', 'ed487fac-9952-45c9-acaa-21dab9c689cc', 'zhangql@t.cn', '13678909876', '1', '2', '2017-07-18 12:17:30', '2018-04-22 20:48:04', null, null);
INSERT INTO `sys_users` VALUES ('5', 'fanwei', '1acab7425d6dfae670f26bd160518902', '34fbedb2-e135-4f8d-b595-24360edc348d', 'fanwei@t.cn', '13876545678', '1', '3', '2017-07-20 17:03:22', '2018-04-22 20:47:49', null, null);
INSERT INTO `sys_users` VALUES ('6', 'wumei', '431ebdcccf3404787a144f9ba669a8e2', '8a14f46f-7a17-4dfe-85ab-08e63cb618ce', 'wumei@t.cn', '13567898765', '1', '2', '2017-07-21 10:57:40', '2018-04-22 20:46:49', null, null);
INSERT INTO `sys_users` VALUES ('7', 'user-003', '689c673a0d8bda7ee795dd45a126ae96', '3faa1d2b-a99f-4ffb-9d29-0e71563258af', 't@t.com', '123', '1', '3', '2018-01-12 23:19:58', '2018-04-22 20:46:07', null, 'admin');
INSERT INTO `sys_users` VALUES ('9', 'user-002', 'e10adc3949ba59abbe56e057f20f883e', null, 't@t.com', '123', '1', '3', '2018-01-12 23:20:31', '2018-04-22 20:45:55', null, null);
INSERT INTO `sys_users` VALUES ('12', 'user-001', '5bf6593afd106aa544000d559f0c2241', '9528e727-2901-4746-8558-9010d9607da2', 't@t.com', '123', '1', '3', '2018-01-13 01:48:32', '2018-04-22 20:45:37', null, null);
INSERT INTO `sys_users` VALUES ('13', 'user-c', '2630d8bd50c76abf001a9daceeae97e6', '30fff766-e245-4a93-9f5e-6eb2c2cec494', 't@t.com', '123456', '0', '3', '2018-01-13 02:01:56', '2018-04-22 20:43:58', null, 'admin');
INSERT INTO `sys_users` VALUES ('15', 'user-b', '2ce586af95c6431112092f653659c85f', 'eaedbaee-d760-40e4-b71e-ccecf01b6187', 't@t.com', '123456', '1', '3', '2018-01-13 02:02:06', '2018-04-22 20:54:10', null, 'admin');
INSERT INTO `sys_users` VALUES ('16', 'user-a', '710058cf374a38d76510d009f63bf28d', 'e8e35b96-bbdd-4090-81ee-b71a36141760', '1@t.com', '121212', null, '2', '2018-04-22 19:43:11', '2018-04-22 20:54:02', null, null);

-- ----------------------------
-- Table structure for `sys_user_roles`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_roles`;
CREATE TABLE `sys_user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_roles
-- ----------------------------
INSERT INTO `sys_user_roles` VALUES ('65', '1', '1');
INSERT INTO `sys_user_roles` VALUES ('66', '16', '45');
INSERT INTO `sys_user_roles` VALUES ('67', '15', '45');
