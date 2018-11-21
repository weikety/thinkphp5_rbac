/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-11-21 10:59:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `demo_admin`
-- ----------------------------
DROP TABLE IF EXISTS `demo_admin`;
CREATE TABLE `demo_admin` (
  `admin_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `role_id` int(11) NOT NULL DEFAULT '0' COMMENT '角色id',
  `admin_account` varchar(32) NOT NULL COMMENT '管理员账号',
  `admin_truename` varchar(20) NOT NULL COMMENT '真实姓名',
  `admin_mobile_phone` char(11) NOT NULL COMMENT '管理员手机号码',
  `admin_mail` varchar(32) NOT NULL COMMENT '管理员邮箱',
  `password` char(32) NOT NULL COMMENT '管理员密码',
  `salt` char(6) NOT NULL COMMENT '生成密码所需要的6位随机码',
  `login_ip` bigint(20) NOT NULL COMMENT '上次登陆ip',
  `login_time` int(11) NOT NULL COMMENT '最后登录时间',
  `login_count` mediumint(8) NOT NULL COMMENT '登录次数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '账户状态，禁用为0 启用为1',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建的时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新的时间',
  PRIMARY KEY (`admin_id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of demo_admin
-- ----------------------------
INSERT INTO `demo_admin` VALUES ('1', '1', 'Function', '周国伟', '15238369929', '729044963@qq.com', 'eebc0ab5f5279069022fb5560e937b01', '5AUQTW', '2130706433', '1542704464', '51', '1', '1541987880', '1542349106');
INSERT INTO `demo_admin` VALUES ('2', '2', 'guowei.zhou@xinlixiangdao.com', 'guowei.zhou', '15803889687', 'guowei.zhou@xinlixiangdao.com', '937ecae9c3399d7070f3b9a5d9ca26f6', 'UE3ECK', '2130706433', '1542251417', '2', '1', '1542248310', '1542251700');
INSERT INTO `demo_admin` VALUES ('3', '4', 'zhangsan', '张三', '15823654785', 'zhangsan@xinlixiangdao.com', '80d3ea2b2a649010dfbbe6d55ed52854', 'ZLHBBY', '2130706433', '1542704229', '1', '1', '1542251598', '1542704200');
INSERT INTO `demo_admin` VALUES ('4', '4', 'lisi@xinlixiangdao.com', 'lisi', '15896547852', 'lisi@xinlixiangdao.com', '7b32db825ff0a496b36ab5695f795dc2', 'UNF3RY', '2130706433', '1542362416', '20', '1', '1542272330', '1542704180');

-- ----------------------------
-- Table structure for `demo_admin_action_log`
-- ----------------------------
DROP TABLE IF EXISTS `demo_admin_action_log`;
CREATE TABLE `demo_admin_action_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '执行用户id',
  `log_note` longtext NOT NULL COMMENT '日志备注',
  `log_url` varchar(255) NOT NULL COMMENT '执行的URL',
  `log_data` text NOT NULL COMMENT '提交的数据日志',
  `log_action_ip` bigint(20) NOT NULL COMMENT '执行行为者ip',
  `log_create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`log_id`),
  KEY `id` (`log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='行为日志表';

-- ----------------------------
-- Records of demo_admin_action_log
-- ----------------------------
INSERT INTO `demo_admin_action_log` VALUES ('200', '1', '编辑权限节点-管理员管理', '/rule/ajaxSaveRule.html', 'a:10:{s:5:\"level\";i:1;s:9:\"rule_name\";s:15:\"管理员管理\";s:3:\"pid\";i:0;s:6:\"module\";s:0:\"\";s:10:\"controller\";s:0:\"\";s:6:\"action\";s:0:\"\";s:6:\"status\";i:1;s:4:\"icon\";s:8:\"&#xe6b8;\";s:10:\"list_order\";i:1;s:11:\"update_time\";i:1542703786;}', '2130706433', '1542703786');
INSERT INTO `demo_admin_action_log` VALUES ('201', '1', '角色分配权限-超级管理员', '/role/roleAuthAccess.html', 'a:13:{i:0;a:2:{s:7:\"role_id\";i:1;s:7:\"rule_id\";s:1:\"2\";}i:1;a:2:{s:7:\"role_id\";i:1;s:7:\"rule_id\";s:1:\"3\";}i:2;a:2:{s:7:\"role_id\";i:1;s:7:\"rule_id\";s:1:\"4\";}i:3;a:2:{s:7:\"role_id\";i:1;s:7:\"rule_id\";s:1:\"6\";}i:4;a:2:{s:7:\"role_id\";i:1;s:7:\"rule_id\";s:2:\"15\";}i:5;a:2:{s:7:\"role_id\";i:1;s:7:\"rule_id\";s:1:\"7\";}i:6;a:2:{s:7:\"role_id\";i:1;s:7:\"rule_id\";s:1:\"8\";}i:7;a:2:{s:7:\"role_id\";i:1;s:7:\"rule_id\";s:1:\"9\";}i:8;a:2:{s:7:\"role_id\";i:1;s:7:\"rule_id\";s:2:\"10\";}i:9;a:2:{s:7:\"role_id\";i:1;s:7:\"rule_id\";s:2:\"11\";}i:10;a:2:{s:7:\"role_id\";i:1;s:7:\"rule_id\";s:2:\"12\";}i:11;a:2:{s:7:\"role_id\";i:1;s:7:\"rule_id\";s:2:\"13\";}i:12;a:2:{s:7:\"role_id\";i:1;s:7:\"rule_id\";s:2:\"14\";}}', '2130706433', '1542703952');
INSERT INTO `demo_admin_action_log` VALUES ('202', '1', '编辑角色-超级管理员', '/role/ajaxSaveRole.html', 'a:4:{s:9:\"role_name\";s:15:\"超级管理员\";s:6:\"remark\";s:27:\"拥有至高无上的权限\";s:6:\"status\";i:1;s:11:\"update_time\";i:1542704115;}', '2130706433', '1542704115');
INSERT INTO `demo_admin_action_log` VALUES ('203', '1', '停用管理员-lisi@xinlixiangdao.com', '/admin/ajaxUpdateAdminStatus.html', 'a:2:{s:6:\"status\";i:0;s:11:\"update_time\";i:1542704175;}', '2130706433', '1542704175');
INSERT INTO `demo_admin_action_log` VALUES ('204', '1', '编辑管理员-lisi@xinlixiangdao.com', '/admin/ajaxSaveAdmin.html', 'a:7:{s:13:\"admin_account\";s:22:\"lisi@xinlixiangdao.com\";s:14:\"admin_truename\";s:4:\"lisi\";s:18:\"admin_mobile_phone\";s:11:\"15896547852\";s:10:\"admin_mail\";s:22:\"lisi@xinlixiangdao.com\";s:7:\"role_id\";i:4;s:6:\"status\";i:1;s:11:\"update_time\";i:1542704180;}', '2130706433', '1542704180');
INSERT INTO `demo_admin_action_log` VALUES ('205', '1', '编辑管理员-zhangsan', '/admin/ajaxSaveAdmin.html', 'a:9:{s:13:\"admin_account\";s:8:\"zhangsan\";s:14:\"admin_truename\";s:6:\"张三\";s:18:\"admin_mobile_phone\";s:11:\"15823654785\";s:10:\"admin_mail\";s:26:\"zhangsan@xinlixiangdao.com\";s:7:\"role_id\";i:4;s:6:\"status\";i:1;s:11:\"update_time\";i:1542704200;s:8:\"password\";s:32:\"80d3ea2b2a649010dfbbe6d55ed52854\";s:4:\"salt\";s:6:\"ZLHBBY\";}', '2130706433', '1542704200');
INSERT INTO `demo_admin_action_log` VALUES ('206', '1', '角色分配权限-产品编辑', '/role/roleAuthAccess.html', 'a:5:{i:0;a:2:{s:7:\"role_id\";i:4;s:7:\"rule_id\";s:1:\"2\";}i:1;a:2:{s:7:\"role_id\";i:4;s:7:\"rule_id\";s:1:\"3\";}i:2;a:2:{s:7:\"role_id\";i:4;s:7:\"rule_id\";s:1:\"7\";}i:3;a:2:{s:7:\"role_id\";i:4;s:7:\"rule_id\";s:2:\"11\";}i:4;a:2:{s:7:\"role_id\";i:4;s:7:\"rule_id\";s:2:\"12\";}}', '2130706433', '1542704218');
INSERT INTO `demo_admin_action_log` VALUES ('207', '1', '退出管理后台', '/common/logout.html', '', '2130706433', '1542704222');
INSERT INTO `demo_admin_action_log` VALUES ('208', '3', '登录管理后台', '/common/login.html', '', '2130706433', '1542704229');
INSERT INTO `demo_admin_action_log` VALUES ('209', '3', '角色分配权限-财务总监', '/role/roleAuthAccess.html', 'a:1:{i:0;a:2:{s:7:\"role_id\";i:3;s:7:\"rule_id\";s:1:\"2\";}}', '2130706433', '1542704276');
INSERT INTO `demo_admin_action_log` VALUES ('210', '3', '角色分配权限-财务总监', '/role/roleAuthAccess.html', 'a:4:{i:0;a:2:{s:7:\"role_id\";i:3;s:7:\"rule_id\";s:1:\"2\";}i:1;a:2:{s:7:\"role_id\";i:3;s:7:\"rule_id\";s:2:\"12\";}i:2;a:2:{s:7:\"role_id\";i:3;s:7:\"rule_id\";s:2:\"13\";}i:3;a:2:{s:7:\"role_id\";i:3;s:7:\"rule_id\";s:2:\"14\";}}', '2130706433', '1542704305');
INSERT INTO `demo_admin_action_log` VALUES ('211', '3', '角色分配权限-财务总监', '/role/roleAuthAccess.html', 'a:4:{i:0;a:2:{s:7:\"role_id\";i:3;s:7:\"rule_id\";s:1:\"2\";}i:1;a:2:{s:7:\"role_id\";i:3;s:7:\"rule_id\";s:2:\"12\";}i:2;a:2:{s:7:\"role_id\";i:3;s:7:\"rule_id\";s:2:\"13\";}i:3;a:2:{s:7:\"role_id\";i:3;s:7:\"rule_id\";s:2:\"14\";}}', '2130706433', '1542704314');
INSERT INTO `demo_admin_action_log` VALUES ('212', '3', '角色分配权限-产品编辑', '/role/roleAuthAccess.html', 'a:2:{i:0;a:2:{s:7:\"role_id\";i:4;s:7:\"rule_id\";s:1:\"2\";}i:1;a:2:{s:7:\"role_id\";i:4;s:7:\"rule_id\";s:1:\"3\";}}', '2130706433', '1542704382');
INSERT INTO `demo_admin_action_log` VALUES ('213', '3', '退出管理后台', '/common/logout.html', '', '2130706433', '1542704460');
INSERT INTO `demo_admin_action_log` VALUES ('214', '1', '登录管理后台', '/common/login.html', '', '2130706433', '1542704464');

-- ----------------------------
-- Table structure for `demo_admin_auth_access`
-- ----------------------------
DROP TABLE IF EXISTS `demo_admin_auth_access`;
CREATE TABLE `demo_admin_auth_access` (
  `role_id` mediumint(8) unsigned NOT NULL COMMENT '角色',
  `rule_id` int(11) NOT NULL COMMENT '权限节点ID',
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- ----------------------------
-- Records of demo_admin_auth_access
-- ----------------------------
INSERT INTO `demo_admin_auth_access` VALUES ('2', '2');
INSERT INTO `demo_admin_auth_access` VALUES ('2', '7');
INSERT INTO `demo_admin_auth_access` VALUES ('2', '8');
INSERT INTO `demo_admin_auth_access` VALUES ('2', '9');
INSERT INTO `demo_admin_auth_access` VALUES ('2', '12');
INSERT INTO `demo_admin_auth_access` VALUES ('2', '13');
INSERT INTO `demo_admin_auth_access` VALUES ('2', '14');
INSERT INTO `demo_admin_auth_access` VALUES ('1', '2');
INSERT INTO `demo_admin_auth_access` VALUES ('1', '3');
INSERT INTO `demo_admin_auth_access` VALUES ('1', '4');
INSERT INTO `demo_admin_auth_access` VALUES ('1', '6');
INSERT INTO `demo_admin_auth_access` VALUES ('1', '15');
INSERT INTO `demo_admin_auth_access` VALUES ('1', '7');
INSERT INTO `demo_admin_auth_access` VALUES ('1', '8');
INSERT INTO `demo_admin_auth_access` VALUES ('1', '9');
INSERT INTO `demo_admin_auth_access` VALUES ('1', '10');
INSERT INTO `demo_admin_auth_access` VALUES ('1', '11');
INSERT INTO `demo_admin_auth_access` VALUES ('1', '12');
INSERT INTO `demo_admin_auth_access` VALUES ('1', '13');
INSERT INTO `demo_admin_auth_access` VALUES ('1', '14');
INSERT INTO `demo_admin_auth_access` VALUES ('3', '2');
INSERT INTO `demo_admin_auth_access` VALUES ('3', '12');
INSERT INTO `demo_admin_auth_access` VALUES ('3', '13');
INSERT INTO `demo_admin_auth_access` VALUES ('3', '14');
INSERT INTO `demo_admin_auth_access` VALUES ('4', '2');
INSERT INTO `demo_admin_auth_access` VALUES ('4', '3');

-- ----------------------------
-- Table structure for `demo_admin_auth_role`
-- ----------------------------
DROP TABLE IF EXISTS `demo_admin_auth_role`;
CREATE TABLE `demo_admin_auth_role` (
  `role_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) NOT NULL COMMENT '角色名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1可用 0禁用',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`role_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of demo_admin_auth_role
-- ----------------------------
INSERT INTO `demo_admin_auth_role` VALUES ('1', '超级管理员', '1', '拥有至高无上的权限', '1541988179', '1542704115');
INSERT INTO `demo_admin_auth_role` VALUES ('2', '系统管理员', '1', '拥有系统配置权限', '1541988179', '1542348132');
INSERT INTO `demo_admin_auth_role` VALUES ('3', '财务总监', '1', '拥有财务相关权限', '1541988179', '1542677134');
INSERT INTO `demo_admin_auth_role` VALUES ('4', '产品编辑', '1', '拥有添加、编辑产品的权限', '1542187561', '1542251855');

-- ----------------------------
-- Table structure for `demo_admin_rule`
-- ----------------------------
DROP TABLE IF EXISTS `demo_admin_rule`;
CREATE TABLE `demo_admin_rule` (
  `rule_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `rule_name` varchar(50) NOT NULL COMMENT '节点名称',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID',
  `level` tinyint(1) NOT NULL DEFAULT '1' COMMENT '级别',
  `module` char(20) NOT NULL COMMENT '应用名称',
  `controller` char(20) NOT NULL COMMENT '控制器',
  `action` char(60) NOT NULL COMMENT '操作名称',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '左侧菜单显示状态，1显示，0不显示',
  `icon` varchar(50) NOT NULL COMMENT '菜单图标',
  `list_order` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建的时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新的时间',
  PRIMARY KEY (`rule_id`),
  KEY `rule_id` (`rule_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='权限节点表';

-- ----------------------------
-- Records of demo_admin_rule
-- ----------------------------
INSERT INTO `demo_admin_rule` VALUES ('2', '管理员管理', '0', '1', '', '', '', '1', '&#xe6b8;', '1', '1541988179', '1542703786');
INSERT INTO `demo_admin_rule` VALUES ('3', '管理员列表', '2', '2', 'admin', 'admin', 'adminindex', '1', '', '1', '1541988179', '1542703210');
INSERT INTO `demo_admin_rule` VALUES ('4', '添加管理员', '3', '3', 'admin', 'admin', 'adminadd', '0', '', '2', '1541988179', '1542694395');
INSERT INTO `demo_admin_rule` VALUES ('6', '禁用管理员', '3', '3', 'admin', 'admin', 'ajaxupdateadminstatus', '0', '', '3', '1541988179', '1542703281');
INSERT INTO `demo_admin_rule` VALUES ('7', '角色列表', '2', '2', 'admin', 'role', 'roleindex', '1', '', '0', '1541988179', '1542703195');
INSERT INTO `demo_admin_rule` VALUES ('8', '添加角色', '7', '3', 'admin', 'role', 'roleadd', '0', '', '0', '1541988179', '1542694786');
INSERT INTO `demo_admin_rule` VALUES ('9', '编辑角色', '7', '3', 'admin', 'role', 'roleedit', '0', '', '0', '1541988179', '1541988179');
INSERT INTO `demo_admin_rule` VALUES ('10', '禁用角色', '7', '3', 'admin', 'role', 'ajaxupdaterolestatus', '0', '', '0', '1541988179', '1541988179');
INSERT INTO `demo_admin_rule` VALUES ('11', '分配权限', '7', '3', 'admin', 'role', 'roleauthaccess', '0', '', '0', '1541988179', '1541988179');
INSERT INTO `demo_admin_rule` VALUES ('12', '权限节点', '2', '2', 'admin', 'rule', 'ruleindex', '1', '', '0', '1542696237', '1542699269');
INSERT INTO `demo_admin_rule` VALUES ('13', '添加节点', '12', '3', 'admin', 'rule', 'ruleadd', '0', '', '0', '1542696943', '1542697006');
INSERT INTO `demo_admin_rule` VALUES ('14', '编辑节点', '12', '3', 'admin', 'rule', 'ruleedit', '0', '', '0', '1542697039', '1542697039');
INSERT INTO `demo_admin_rule` VALUES ('15', '编辑管理员', '3', '3', 'admin', 'admin', 'adminedit', '0', '', '0', '1542700337', '1542700337');
