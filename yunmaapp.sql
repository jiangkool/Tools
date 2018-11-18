/*
Navicat MySQL Data Transfer

Source Server         : mysql5.7.17
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : yunmaapp

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-10-31 14:34:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Index', 'fa-bar-chart', '/', null, null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null);
INSERT INTO `admin_menu` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null);
INSERT INTO `admin_menu` VALUES ('5', '2', '5', 'Permission', 'fa-user', 'auth/permissions', null, null);
INSERT INTO `admin_menu` VALUES ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null);
INSERT INTO `admin_menu` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null);
INSERT INTO `admin_menu` VALUES ('8', '0', '9', 'Helpers', 'fa-gears', '', null, '2018-10-29 01:53:11');
INSERT INTO `admin_menu` VALUES ('9', '8', '10', 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', null, '2018-10-29 01:53:11');
INSERT INTO `admin_menu` VALUES ('10', '8', '11', 'Database terminal', 'fa-database', 'helpers/terminal/database', null, '2018-10-29 01:53:11');
INSERT INTO `admin_menu` VALUES ('11', '8', '12', 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', null, '2018-10-29 01:53:11');
INSERT INTO `admin_menu` VALUES ('12', '0', '8', '文档管理', 'fa-book', '/article', '2018-10-29 01:52:03', '2018-10-29 01:53:11');
INSERT INTO `admin_menu` VALUES ('14', '0', '0', '分类管理', 'fa-bars', '/category', '2018-10-29 01:55:02', '2018-10-29 01:55:02');
INSERT INTO `admin_menu` VALUES ('15', '0', '0', '特征管理', 'fa-bars', '/feature', '2018-10-29 01:56:45', '2018-10-29 01:56:45');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-10-28 01:03:47', '2018-10-28 01:03:47');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-28 01:32:41', '2018-10-28 01:32:41');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-10-28 01:32:41', '2018-10-28 01:32:41');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-10-29 01:50:38', '2018-10-29 01:50:38');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 01:50:43', '2018-10-29 01:50:43');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:50:44', '2018-10-29 01:50:44');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6587\\u6863\\u7ba1\\u7406\",\"icon\":\"fa-book\",\"uri\":\"\\/article\",\"roles\":[null],\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\"}', '2018-10-29 01:52:03', '2018-10-29 01:52:03');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:52:03', '2018-10-29 01:52:03');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6587\\u6863\\u7ba1\\u7406\",\"icon\":\"fa-book\",\"uri\":\"\\/article\",\"roles\":[null],\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\"}', '2018-10-29 01:52:07', '2018-10-29 01:52:07');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:52:07', '2018-10-29 01:52:07');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:52:10', '2018-10-29 01:52:10');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/menu/13', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\"}', '2018-10-29 01:52:16', '2018-10-29 01:52:16');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 01:52:17', '2018-10-29 01:52:17');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:52:17', '2018-10-29 01:52:17');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":12},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11}]}]\"}', '2018-10-29 01:53:11', '2018-10-29 01:53:11');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 01:53:11', '2018-10-29 01:53:11');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:53:11', '2018-10-29 01:53:11');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 01:53:13', '2018-10-29 01:53:13');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-10-29 01:53:14', '2018-10-29 01:53:14');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 01:54:00', '2018-10-29 01:54:00');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:54:01', '2018-10-29 01:54:01');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/category\",\"roles\":[null],\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\"}', '2018-10-29 01:55:02', '2018-10-29 01:55:02');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:55:02', '2018-10-29 01:55:02');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:55:06', '2018-10-29 01:55:06');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 01:55:11', '2018-10-29 01:55:11');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 01:55:11', '2018-10-29 01:55:11');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 01:55:37', '2018-10-29 01:55:37');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:55:37', '2018-10-29 01:55:37');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7279\\u5f81\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/feature\",\"roles\":[null],\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\"}', '2018-10-29 01:56:44', '2018-10-29 01:56:44');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:56:45', '2018-10-29 01:56:45');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:56:47', '2018-10-29 01:56:47');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:57:51', '2018-10-29 01:57:51');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:58:02', '2018-10-29 01:58:02');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:58:23', '2018-10-29 01:58:23');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:59:28', '2018-10-29 01:59:28');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:59:34', '2018-10-29 01:59:34');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-10-29 01:59:42', '2018-10-29 01:59:42');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 02:02:12', '2018-10-29 02:02:12');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 02:02:12', '2018-10-29 02:02:12');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:03:23', '2018-10-29 10:03:23');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:04:05', '2018-10-29 10:04:05');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:04:10', '2018-10-29 10:04:10');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:04:44', '2018-10-29 10:04:44');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:04:48', '2018-10-29 10:04:48');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:04:48', '2018-10-29 10:04:48');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:08:04', '2018-10-29 10:08:04');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:08:31', '2018-10-29 10:08:31');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:09:42', '2018-10-29 10:09:42');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u4e3b\\u98df\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-29 10:09:59', '2018-10-29 10:09:59');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:10:00', '2018-10-29 10:10:00');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:10:12', '2018-10-29 10:10:12');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:10:12', '2018-10-29 10:10:12');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:10:18', '2018-10-29 10:10:18');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:10:19', '2018-10-29 10:10:19');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u575a\\u679c\\u7c7b\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-29 10:10:24', '2018-10-29 10:10:24');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:10:24', '2018-10-29 10:10:24');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u8c46\\/\\u5976\\u5236\\u54c1\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-29 10:10:29', '2018-10-29 10:10:29');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:10:29', '2018-10-29 10:10:29');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u96f6\\u98df\\u5c0f\\u5403\\u7c7b\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-29 10:11:12', '2018-10-29 10:11:12');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:11:12', '2018-10-29 10:11:12');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:14:05', '2018-10-29 10:14:05');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:14:13', '2018-10-29 10:14:13');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:14:13', '2018-10-29 10:14:13');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u996e\\u54c1\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-29 10:14:18', '2018-10-29 10:14:18');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:14:19', '2018-10-29 10:14:19');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:14:24', '2018-10-29 10:14:24');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:14:25', '2018-10-29 10:14:25');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:14:31', '2018-10-29 10:14:31');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:14:31', '2018-10-29 10:14:31');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u51fa\\u884c\\u5b89\\u5168\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-29 10:14:45', '2018-10-29 10:14:45');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:14:45', '2018-10-29 10:14:45');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:15:28', '2018-10-29 10:15:28');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:15:29', '2018-10-29 10:15:29');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:15:33', '2018-10-29 10:15:33');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:15:34', '2018-10-29 10:15:34');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u884c\\u4e3a\\u8fd0\\u52a8\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-29 10:15:40', '2018-10-29 10:15:40');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:15:40', '2018-10-29 10:15:40');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:16:28', '2018-10-29 10:16:28');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:16:31', '2018-10-29 10:16:31');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:16:32', '2018-10-29 10:16:32');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u4f11\\u95f2\\u5a31\\u4e50\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-29 10:16:42', '2018-10-29 10:16:42');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:16:42', '2018-10-29 10:16:42');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:29:52', '2018-10-29 10:29:52');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:29:55', '2018-10-29 10:29:55');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u5c45\\u5bb6\\u751f\\u6d3b\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-29 10:30:02', '2018-10-29 10:30:02');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:30:02', '2018-10-29 10:30:02');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:34:37', '2018-10-29 10:34:37');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:34:44', '2018-10-29 10:34:44');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:34:48', '2018-10-29 10:34:48');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/feature', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:34:49', '2018-10-29 10:34:49');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 10:36:03', '2018-10-29 10:36:03');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/feature/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:36:05', '2018-10-29 10:36:05');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/feature', 'POST', '127.0.0.1', '{\"name\":\"\\u5b55\\u671f\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/feature\"}', '2018-10-29 10:36:22', '2018-10-29 10:36:22');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 10:36:23', '2018-10-29 10:36:23');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/feature/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:36:24', '2018-10-29 10:36:24');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/feature', 'POST', '127.0.0.1', '{\"name\":\"\\u5750\\u6708\\u5b50\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/feature\"}', '2018-10-29 10:36:32', '2018-10-29 10:36:32');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 10:36:32', '2018-10-29 10:36:32');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/feature/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:36:34', '2018-10-29 10:36:34');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/feature', 'POST', '127.0.0.1', '{\"name\":\"\\u54fa\\u4e73\\u671f\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/feature\"}', '2018-10-29 10:36:40', '2018-10-29 10:36:40');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 10:36:40', '2018-10-29 10:36:40');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/feature/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:36:42', '2018-10-29 10:36:42');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/feature', 'POST', '127.0.0.1', '{\"name\":\"\\u5a74\\u5e7c\\u513f\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/feature\"}', '2018-10-29 10:36:49', '2018-10-29 10:36:49');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 10:36:49', '2018-10-29 10:36:49');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:39:00', '2018-10-29 10:39:00');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/feature/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5b55\\u671f\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/feature\"}', '2018-10-29 10:39:01', '2018-10-29 10:39:01');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 10:39:01', '2018-10-29 10:39:01');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:39:08', '2018-10-29 10:39:08');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/feature/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5750\\u6708\\u5b50\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/feature\"}', '2018-10-29 10:39:19', '2018-10-29 10:39:19');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 10:39:19', '2018-10-29 10:39:19');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:39:22', '2018-10-29 10:39:22');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/feature/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5b55\\u671f\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/feature\"}', '2018-10-29 10:39:26', '2018-10-29 10:39:26');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 10:39:26', '2018-10-29 10:39:26');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:39:52', '2018-10-29 10:39:52');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/feature', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:40:01', '2018-10-29 10:40:01');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/feature/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:40:21', '2018-10-29 10:40:21');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/feature', 'POST', '127.0.0.1', '{\"name\":null,\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/feature\"}', '2018-10-29 10:40:23', '2018-10-29 10:40:23');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/feature/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:40:23', '2018-10-29 10:40:23');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/feature/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:40:27', '2018-10-29 10:40:27');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/feature/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:40:29', '2018-10-29 10:40:29');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/feature', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:40:31', '2018-10-29 10:40:31');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:40:45', '2018-10-29 10:40:45');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/feature/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5b55\\u671f\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/feature\"}', '2018-10-29 10:41:01', '2018-10-29 10:41:01');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 10:41:01', '2018-10-29 10:41:01');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:41:06', '2018-10-29 10:41:06');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/feature/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5750\\u6708\\u5b50\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/feature\"}', '2018-10-29 10:41:09', '2018-10-29 10:41:09');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 10:41:09', '2018-10-29 10:41:09');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:41:11', '2018-10-29 10:41:11');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/feature/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5b55\\u671f\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/feature\"}', '2018-10-29 10:41:17', '2018-10-29 10:41:17');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 10:41:17', '2018-10-29 10:41:17');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:41:54', '2018-10-29 10:41:54');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/feature/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5750\\u6708\\u5b50\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/feature\"}', '2018-10-29 10:41:56', '2018-10-29 10:41:56');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 10:41:57', '2018-10-29 10:41:57');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:41:59', '2018-10-29 10:41:59');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/feature/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5b55\\u671f\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/feature\"}', '2018-10-29 10:42:03', '2018-10-29 10:42:03');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 10:42:04', '2018-10-29 10:42:04');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/feature/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:42:07', '2018-10-29 10:42:07');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/feature', 'POST', '127.0.0.1', '{\"name\":null,\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/feature\"}', '2018-10-29 10:42:08', '2018-10-29 10:42:08');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/feature/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:42:09', '2018-10-29 10:42:09');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/feature/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:42:10', '2018-10-29 10:42:10');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:42:11', '2018-10-29 10:42:11');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/feature/1', 'PUT', '127.0.0.1', '{\"name\":null,\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_method\":\"PUT\"}', '2018-10-29 10:42:15', '2018-10-29 10:42:15');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-29 10:42:15', '2018-10-29 10:42:15');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:42:17', '2018-10-29 10:42:17');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:42:18', '2018-10-29 10:42:18');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:42:20', '2018-10-29 10:42:20');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:42:22', '2018-10-29 10:42:22');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:42:24', '2018-10-29 10:42:24');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/feature', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:42:25', '2018-10-29 10:42:25');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/feature/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:42:37', '2018-10-29 10:42:37');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/feature', 'POST', '127.0.0.1', '{\"name\":\"\\u6708\\u5b50\\u671f\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/feature\"}', '2018-10-29 10:42:43', '2018-10-29 10:42:43');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 10:42:43', '2018-10-29 10:42:43');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 10:44:40', '2018-10-29 10:44:40');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/feature/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:44:49', '2018-10-29 10:44:49');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/feature', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:44:52', '2018-10-29 10:44:52');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:45:16', '2018-10-29 10:45:16');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/feature/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5750\\u6708\\u5b50\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/feature\"}', '2018-10-29 10:45:19', '2018-10-29 10:45:19');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-29 10:45:19', '2018-10-29 10:45:19');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/feature/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:45:23', '2018-10-29 10:45:23');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/feature/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:45:25', '2018-10-29 10:45:25');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/feature', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:45:26', '2018-10-29 10:45:26');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:45:40', '2018-10-29 10:45:40');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:45:44', '2018-10-29 10:45:44');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:45:47', '2018-10-29 10:45:47');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:51:40', '2018-10-29 10:51:40');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-10-29 10:51:51', '2018-10-29 10:51:51');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-10-29 10:52:07', '2018-10-29 10:52:07');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:55:25', '2018-10-29 10:55:25');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:55:27', '2018-10-29 10:55:27');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u4e3b\\u98df\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-29 10:55:32', '2018-10-29 10:55:32');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-29 10:55:32', '2018-10-29 10:55:32');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/category/10', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\"}', '2018-10-29 10:55:35', '2018-10-29 10:55:35');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:55:35', '2018-10-29 10:55:35');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:55:50', '2018-10-29 10:55:50');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/category/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u4e3b\\u98df\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-29 10:55:51', '2018-10-29 10:55:51');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-29 10:55:52', '2018-10-29 10:55:52');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:56:29', '2018-10-29 10:56:29');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:56:32', '2018-10-29 10:56:32');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:56:33', '2018-10-29 10:56:33');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:56:40', '2018-10-29 10:56:40');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u575a\\u679c\\u7c7b\",\"_token\":\"cE9xS3QW74XPmSg5Zemf1WJlh5y7aL1M2P4uPKZE\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-29 10:56:42', '2018-10-29 10:56:42');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:56:42', '2018-10-29 10:56:42');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:56:44', '2018-10-29 10:56:44');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:56:45', '2018-10-29 10:56:45');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:56:47', '2018-10-29 10:56:47');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:56:52', '2018-10-29 10:56:52');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/feature', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:57:09', '2018-10-29 10:57:09');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:58:38', '2018-10-29 10:58:38');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:58:39', '2018-10-29 10:58:39');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-10-29 10:58:40', '2018-10-29 10:58:40');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 10:58:47', '2018-10-29 10:58:47');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:59:18', '2018-10-29 10:59:18');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:59:26', '2018-10-29 10:59:26');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:59:44', '2018-10-29 10:59:44');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-29 10:59:53', '2018-10-29 10:59:53');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-29 11:00:44', '2018-10-29 11:00:44');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-29 11:01:27', '2018-10-29 11:01:27');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-29 11:03:10', '2018-10-29 11:03:10');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-29 11:03:30', '2018-10-29 11:03:30');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-29 11:03:38', '2018-10-29 11:03:38');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-29 11:06:24', '2018-10-29 11:06:24');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-29 11:06:42', '2018-10-29 11:06:42');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-29 11:12:34', '2018-10-29 11:12:34');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-29 11:15:00', '2018-10-29 11:15:00');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-29 11:15:06', '2018-10-29 11:15:06');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/article', 'POST', '127.0.0.1', '{\"title\":\"\\u5927\\u7c73\",\"other_name\":\"\\u7a3b\\u7c73\",\"category_id\":\"1\",\"type\":\"0\",\"items\":{\"new_1\":{\"feature_id\":\"1\",\"iscan\":\"1\",\"content\":\"\\u51c6\\u5988\\u5988\\u53ef\\u4ee5\\u5c06\\u5927\\u7c73\\u5236\\u4f5c\\u6210\\u7c73\\u996d\\u6216\\u716e\\u7ca5\\u3001\\u4f5c\\u4e3a\\u4e3b\\u98df\\u5b9e\\u7528\\u3002\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"feature_id\":\"2\",\"iscan\":\"1\",\"content\":\"\\u5927\\u7c73\\u975e\\u5e38\\u9002\\u5408\\u4ea7\\u5987\\u98df\\u7528\\u3002\\u7528\\u5927\\u7c73\\u71ac\\u5236\\u7684\\u7c73\\u7ca5\\u53e3\\u611f\\u7ec6\\u817b\\u3001\\u5bb9\\u6613\\u6d88\\u5316\\u3001\\u5bf9\\u80a0\\u80c3\\u865a\\u5f31\\u7684\\u4ea7\\u5987\\u6765\\u8bf4\\u662f\\u975e\\u5e38\\u597d\\u7684\\u98df\\u7269\\u3002\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"feature_id\":\"3\",\"iscan\":\"1\",\"content\":\"\\u5927\\u7c73\\u53ef\\u63d0\\u4f9b\\u4e00\\u5b9a\\u7684\\u8425\\u517b\\u7269\\u8d28\\u3001\\u6bcd\\u4e73\\u5988\\u5988\\u53ef\\u4ee5\\u5c06\\u5927\\u7c73\\u4f5c\\u4e3a\\u4e3b\\u98df\\u98df\\u7528\\u3002\",\"id\":null,\"_remove_\":\"0\"},\"new_4\":{\"feature_id\":\"4\",\"iscan\":\"1\",\"content\":\"\\u5927\\u7c73\\u4e2d\\u6240\\u542b\\u6dc0\\u7c89\\u9897\\u7c92\\u5c0f\\u3001\\u53e3\\u611f\\u67d4\\u8f6f\\u7ec6\\u817b\\u3001\\u5bb9\\u6613\\u6d88\\u5316\\u3001\\u6bd4\\u5176\\u4ed6\\u8c37\\u7269\\u66f4\\u9002\\u5408\\u5b9d\\u5b9d\\u7684\\u80a0\\u80c3\\u3002\\u5982\\u679c\\u662f\\u521a\\u521a\\u5f00\\u59cb\\u7ed9\\u5b9d\\u5b9d\\u6dfb\\u52a0\\u8f85\\u98df\\u3001\\u6700\\u597d\\u9009\\u7528\\u5f3a\\u5316\\u94c1\\u548c\\u86cb\\u767d\\u8d28\\u7684\\u5a74\\u513f\\u4e13\\u7528\\u7c73\\u7c89\\u3002\\u5982\\u679c\\u71ac\\u5236\\u7c73\\u6c64\\u3001\\u5efa\\u8bae\\u9009\\u62e9\\u7cd9\\u7c73\\u3002\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"2Vn144qfA0EvziJ0SSqXwvsTljg92L4Vq7v602Q1\"}', '2018-10-29 11:17:07', '2018-10-29 11:17:07');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-29 11:17:07', '2018-10-29 11:17:07');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/article', 'POST', '127.0.0.1', '{\"title\":\"\\u5927\\u7c73\",\"other_name\":\"\\u7a3b\\u7c73\",\"category_id\":\"1\",\"type\":\"0\",\"items\":{\"new_1\":{\"feature_id\":\"1\",\"iscan\":\"1\",\"content\":\"\\u51c6\\u5988\\u5988\\u53ef\\u4ee5\\u5c06\\u5927\\u7c73\\u5236\\u4f5c\\u6210\\u7c73\\u996d\\u6216\\u716e\\u7ca5\\u3001\\u4f5c\\u4e3a\\u4e3b\\u98df\\u5b9e\\u7528\\u3002\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"feature_id\":\"2\",\"iscan\":\"1\",\"content\":\"\\u5927\\u7c73\\u975e\\u5e38\\u9002\\u5408\\u4ea7\\u5987\\u98df\\u7528\\u3002\\u7528\\u5927\\u7c73\\u71ac\\u5236\\u7684\\u7c73\\u7ca5\\u53e3\\u611f\\u7ec6\\u817b\\u3001\\u5bb9\\u6613\\u6d88\\u5316\\u3001\\u5bf9\\u80a0\\u80c3\\u865a\\u5f31\\u7684\\u4ea7\\u5987\\u6765\\u8bf4\\u662f\\u975e\\u5e38\\u597d\\u7684\\u98df\\u7269\\u3002\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"feature_id\":\"3\",\"iscan\":\"1\",\"content\":\"\\u5927\\u7c73\\u53ef\\u63d0\\u4f9b\\u4e00\\u5b9a\\u7684\\u8425\\u517b\\u7269\\u8d28\\u3001\\u6bcd\\u4e73\\u5988\\u5988\\u53ef\\u4ee5\\u5c06\\u5927\\u7c73\\u4f5c\\u4e3a\\u4e3b\\u98df\\u98df\\u7528\\u3002\",\"id\":null,\"_remove_\":\"0\"},\"new_4\":{\"feature_id\":\"4\",\"iscan\":\"1\",\"content\":\"\\u5927\\u7c73\\u4e2d\\u6240\\u542b\\u6dc0\\u7c89\\u9897\\u7c92\\u5c0f\\u3001\\u53e3\\u611f\\u67d4\\u8f6f\\u7ec6\\u817b\\u3001\\u5bb9\\u6613\\u6d88\\u5316\\u3001\\u6bd4\\u5176\\u4ed6\\u8c37\\u7269\\u66f4\\u9002\\u5408\\u5b9d\\u5b9d\\u7684\\u80a0\\u80c3\\u3002\\u5982\\u679c\\u662f\\u521a\\u521a\\u5f00\\u59cb\\u7ed9\\u5b9d\\u5b9d\\u6dfb\\u52a0\\u8f85\\u98df\\u3001\\u6700\\u597d\\u9009\\u7528\\u5f3a\\u5316\\u94c1\\u548c\\u86cb\\u767d\\u8d28\\u7684\\u5a74\\u513f\\u4e13\\u7528\\u7c73\\u7c89\\u3002\\u5982\\u679c\\u71ac\\u5236\\u7c73\\u6c64\\u3001\\u5efa\\u8bae\\u9009\\u62e9\\u7cd9\\u7c73\\u3002\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"2Vn144qfA0EvziJ0SSqXwvsTljg92L4Vq7v602Q1\"}', '2018-10-29 11:18:17', '2018-10-29 11:18:17');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-10-29 11:18:18', '2018-10-29 11:18:18');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-10-29 11:19:29', '2018-10-29 11:19:29');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 11:20:02', '2018-10-29 11:20:02');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-29 11:20:53', '2018-10-29 11:20:53');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/article/1', 'PUT', '127.0.0.1', '{\"key\":\"0\",\"thumb\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"2Vn144qfA0EvziJ0SSqXwvsTljg92L4Vq7v602Q1\",\"_method\":\"PUT\"}', '2018-10-29 11:20:55', '2018-10-29 11:20:55');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-29 11:21:36', '2018-10-29 11:21:36');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/article/1', 'PUT', '127.0.0.1', '{\"key\":\"0\",\"thumb\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"2Vn144qfA0EvziJ0SSqXwvsTljg92L4Vq7v602Q1\",\"_method\":\"PUT\"}', '2018-10-29 11:21:39', '2018-10-29 11:21:39');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/article/1', 'PUT', '127.0.0.1', '{\"key\":\"0\",\"banner\":\"_file_del_\",\"_file_del_\":null,\"_token\":\"2Vn144qfA0EvziJ0SSqXwvsTljg92L4Vq7v602Q1\",\"_method\":\"PUT\"}', '2018-10-29 11:21:41', '2018-10-29 11:21:41');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/article/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u5927\\u7c73\",\"other_name\":\"\\u7a3b\\u7c73\",\"category_id\":\"1\",\"type\":\"0\",\"items\":{\"1\":{\"feature_id\":\"1\",\"iscan\":\"1\",\"content\":\"\\u51c6\\u5988\\u5988\\u53ef\\u4ee5\\u5c06\\u5927\\u7c73\\u5236\\u4f5c\\u6210\\u7c73\\u996d\\u6216\\u716e\\u7ca5\\u3001\\u4f5c\\u4e3a\\u4e3b\\u98df\\u5b9e\\u7528\\u3002\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"feature_id\":\"2\",\"iscan\":\"1\",\"content\":\"\\u5927\\u7c73\\u975e\\u5e38\\u9002\\u5408\\u4ea7\\u5987\\u98df\\u7528\\u3002\\u7528\\u5927\\u7c73\\u71ac\\u5236\\u7684\\u7c73\\u7ca5\\u53e3\\u611f\\u7ec6\\u817b\\u3001\\u5bb9\\u6613\\u6d88\\u5316\\u3001\\u5bf9\\u80a0\\u80c3\\u865a\\u5f31\\u7684\\u4ea7\\u5987\\u6765\\u8bf4\\u662f\\u975e\\u5e38\\u597d\\u7684\\u98df\\u7269\\u3002\",\"id\":\"2\",\"_remove_\":\"0\"},\"3\":{\"feature_id\":\"3\",\"iscan\":\"1\",\"content\":\"\\u5927\\u7c73\\u53ef\\u63d0\\u4f9b\\u4e00\\u5b9a\\u7684\\u8425\\u517b\\u7269\\u8d28\\u3001\\u6bcd\\u4e73\\u5988\\u5988\\u53ef\\u4ee5\\u5c06\\u5927\\u7c73\\u4f5c\\u4e3a\\u4e3b\\u98df\\u98df\\u7528\\u3002\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"feature_id\":\"4\",\"iscan\":\"1\",\"content\":\"\\u5927\\u7c73\\u4e2d\\u6240\\u542b\\u6dc0\\u7c89\\u9897\\u7c92\\u5c0f\\u3001\\u53e3\\u611f\\u67d4\\u8f6f\\u7ec6\\u817b\\u3001\\u5bb9\\u6613\\u6d88\\u5316\\u3001\\u6bd4\\u5176\\u4ed6\\u8c37\\u7269\\u66f4\\u9002\\u5408\\u5b9d\\u5b9d\\u7684\\u80a0\\u80c3\\u3002\\u5982\\u679c\\u662f\\u521a\\u521a\\u5f00\\u59cb\\u7ed9\\u5b9d\\u5b9d\\u6dfb\\u52a0\\u8f85\\u98df\\u3001\\u6700\\u597d\\u9009\\u7528\\u5f3a\\u5316\\u94c1\\u548c\\u86cb\\u767d\\u8d28\\u7684\\u5a74\\u513f\\u4e13\\u7528\\u7c73\\u7c89\\u3002\\u5982\\u679c\\u71ac\\u5236\\u7c73\\u6c64\\u3001\\u5efa\\u8bae\\u9009\\u62e9\\u7cd9\\u7c73\\u3002\",\"id\":\"4\",\"_remove_\":\"0\"}},\"_token\":\"2Vn144qfA0EvziJ0SSqXwvsTljg92L4Vq7v602Q1\",\"_method\":\"PUT\"}', '2018-10-29 11:21:52', '2018-10-29 11:21:52');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-29 11:21:53', '2018-10-29 11:21:53');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-29 11:22:34', '2018-10-29 11:22:34');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/article/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u5927\\u7c73\",\"other_name\":\"\\u7a3b\\u7c73\",\"category_id\":\"1\",\"type\":\"0\",\"items\":{\"1\":{\"feature_id\":\"1\",\"iscan\":\"1\",\"content\":\"\\u51c6\\u5988\\u5988\\u53ef\\u4ee5\\u5c06\\u5927\\u7c73\\u5236\\u4f5c\\u6210\\u7c73\\u996d\\u6216\\u716e\\u7ca5\\u3001\\u4f5c\\u4e3a\\u4e3b\\u98df\\u5b9e\\u7528\\u3002\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"feature_id\":\"2\",\"iscan\":\"1\",\"content\":\"\\u5927\\u7c73\\u975e\\u5e38\\u9002\\u5408\\u4ea7\\u5987\\u98df\\u7528\\u3002\\u7528\\u5927\\u7c73\\u71ac\\u5236\\u7684\\u7c73\\u7ca5\\u53e3\\u611f\\u7ec6\\u817b\\u3001\\u5bb9\\u6613\\u6d88\\u5316\\u3001\\u5bf9\\u80a0\\u80c3\\u865a\\u5f31\\u7684\\u4ea7\\u5987\\u6765\\u8bf4\\u662f\\u975e\\u5e38\\u597d\\u7684\\u98df\\u7269\\u3002\",\"id\":\"2\",\"_remove_\":\"0\"},\"3\":{\"feature_id\":\"3\",\"iscan\":\"1\",\"content\":\"\\u5927\\u7c73\\u53ef\\u63d0\\u4f9b\\u4e00\\u5b9a\\u7684\\u8425\\u517b\\u7269\\u8d28\\u3001\\u6bcd\\u4e73\\u5988\\u5988\\u53ef\\u4ee5\\u5c06\\u5927\\u7c73\\u4f5c\\u4e3a\\u4e3b\\u98df\\u98df\\u7528\\u3002\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"feature_id\":\"4\",\"iscan\":\"1\",\"content\":\"\\u5927\\u7c73\\u4e2d\\u6240\\u542b\\u6dc0\\u7c89\\u9897\\u7c92\\u5c0f\\u3001\\u53e3\\u611f\\u67d4\\u8f6f\\u7ec6\\u817b\\u3001\\u5bb9\\u6613\\u6d88\\u5316\\u3001\\u6bd4\\u5176\\u4ed6\\u8c37\\u7269\\u66f4\\u9002\\u5408\\u5b9d\\u5b9d\\u7684\\u80a0\\u80c3\\u3002\\u5982\\u679c\\u662f\\u521a\\u521a\\u5f00\\u59cb\\u7ed9\\u5b9d\\u5b9d\\u6dfb\\u52a0\\u8f85\\u98df\\u3001\\u6700\\u597d\\u9009\\u7528\\u5f3a\\u5316\\u94c1\\u548c\\u86cb\\u767d\\u8d28\\u7684\\u5a74\\u513f\\u4e13\\u7528\\u7c73\\u7c89\\u3002\\u5982\\u679c\\u71ac\\u5236\\u7c73\\u6c64\\u3001\\u5efa\\u8bae\\u9009\\u62e9\\u7cd9\\u7c73\\u3002\",\"id\":\"4\",\"_remove_\":\"0\"}},\"_token\":\"2Vn144qfA0EvziJ0SSqXwvsTljg92L4Vq7v602Q1\",\"_method\":\"PUT\"}', '2018-10-29 11:22:44', '2018-10-29 11:22:44');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-10-29 11:22:44', '2018-10-29 11:22:44');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-10-29 11:23:56', '2018-10-29 11:23:56');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-10-29 11:24:45', '2018-10-29 11:24:45');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 11:24:57', '2018-10-29 11:24:57');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/article', 'POST', '127.0.0.1', '{\"title\":\"\\u82b1\\u751f\",\"other_name\":\"\\u843d\\u82b1\\u751f\\u3001\\u957f\\u751f\\u679c\\u3001\\u6ce5\\u8c46\\u3001\\u756a\\u8c46\\u3001\\u5730\\u8c46\",\"category_id\":\"2\",\"type\":\"0\",\"items\":{\"new_1\":{\"feature_id\":\"1\",\"iscan\":\"2\",\"content\":\"\\u51c6\\u5988\\u5988\\u53ef\\u4ee5\\u5403\\u82b1\\u751f\\u3001\\u4f46\\u662f\\u4e0d\\u5b9c\\u8fc7\\u91cf\\u98df\\u7528\\u3001\\u4ee5\\u514d\\u53d1\\u751f\\u80a5\\u80d6\\u3002\\u5bf9\\u82b1\\u751f\\u6709\\u6025\\u6027\\u6216\\u6162\\u6027\\u8fc7\\u654f\\u7684\\u51c6\\u5988\\u5988\\u5e94\\u8fdc\\u79bb\\u82b1\\u751f\\u3002\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"feature_id\":\"2\",\"iscan\":\"1\",\"content\":\"\\u5750\\u6708\\u5b50\\u53ef\\u4ee5\\u5403\\u82b1\\u751f\\u3001\\u4e0d\\u8fc7\\u8981\\u8fc7\\u534a\\u4e2a\\u6708\\u4ee5\\u540e\\u518d\\u5403\\u3001\\u82b1\\u751f\\u7096\\u732a\\u8e44\\u6709\\u4e0b\\u5976\\u7684\\u529f\\u6548\\u3002\\u5c06\\u82b1\\u751f\\u8fde\\u7ea2\\u8863\\u4e00\\u8d77\\u4e0e\\u7ea2\\u67a3\\u914d\\u5408\\u4f7f\\u7528\\u3001\\u65e2\\u53ef\\u8865\\u865a\\u3001\\u53c8\\u80fd\\u6b62\\u8840\\u3001\\u6700\\u5b9c\\u7528\\u4e8e\\u8eab\\u4f53\\u865a\\u5f31\\u7684\\u51fa\\u8840\\u75c5\\u4eba\\u3002\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"feature_id\":\"3\",\"iscan\":\"1\",\"content\":\"\\u6bcd\\u4e73\\u5988\\u5988\\u53ef\\u4ee5\\u5403\\u82b1\\u751f\\u3002\\u4ece\\u8425\\u517b\\u65b9\\u9762\\u8003\\u8651\\u3001\\u716e\\u82b1\\u751f\\u6700\\u5065\\u5eb7\\u3001\\u65e2\\u907f\\u514d\\u4e86\\u8425\\u517b\\u7d20\\u7684\\u7834\\u574f\\u3001\\u53c8\\u5177\\u6709\\u4e0d\\u6e29\\u4e0d\\u706b\\u3001\\u53e3\\u611f\\u6f6e\\u6da6\\u3001\\u5165\\u53e3\\u597d\\u70c2\\u3001\\u6613\\u4e8e\\u6d88\\u5316\\u7684\\u7279\\u70b9\\u3001\\u8001\\u5c11\\u7686\\u5b9c\\u3002\",\"id\":null,\"_remove_\":\"0\"},\"new_4\":{\"feature_id\":\"4\",\"iscan\":\"1\",\"content\":\"\\u5b9d\\u5b9d\\u8f85\\u98df\\u53ef\\u9002\\u91cf\\u6dfb\\u52a0\\u5c0f\\u9ea6\\u7c89\\u5236\\u54c1\\u3001\\u6bd4\\u5982\\u9762\\u6761\\u3001\\u9992\\u5934\\u7b49\\u3001\\u00a0\\u4f46\\u8981\\u6ce8\\u610f\\u521a\\u5f00\\u59cb\\u6dfb\\u52a0\\u9762\\u98df\\u65f6\\u5b9d\\u5b9d\\u662f\\u5426\\u51fa\\u73b0\\u9eb8\\u8d28\\u8fc7\\u654f\\u3001\\u5efa\\u8bae\\u5b9d\\u5b9d2\\u5c81\\u540e\\u518d\\u9002\\u91cf\\u6dfb\\u52a0\\u3002\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"2Vn144qfA0EvziJ0SSqXwvsTljg92L4Vq7v602Q1\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/article\"}', '2018-10-29 11:26:19', '2018-10-29 11:26:19');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-10-29 11:26:19', '2018-10-29 11:26:19');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 11:27:02', '2018-10-29 11:27:02');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 11:27:04', '2018-10-29 11:27:04');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/feature', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 11:27:06', '2018-10-29 11:27:06');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 11:27:53', '2018-10-29 11:27:53');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 11:27:59', '2018-10-29 11:27:59');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 11:28:01', '2018-10-29 11:28:01');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2018-10-29 11:28:33', '2018-10-29 11:28:33');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/article/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u5927\\u7c73\",\"other_name\":\"\\u7a3b\\u7c73\",\"category_id\":\"1\",\"type\":\"0\",\"items\":{\"1\":{\"feature_id\":\"1\",\"iscan\":\"1\",\"content\":\"\\u51c6\\u5988\\u5988\\u53ef\\u4ee5\\u5c06\\u5927\\u7c73\\u5236\\u4f5c\\u6210\\u7c73\\u996d\\u6216\\u716e\\u7ca5\\u3001\\u4f5c\\u4e3a\\u4e3b\\u98df\\u5b9e\\u7528\\u3002\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"feature_id\":\"2\",\"iscan\":\"1\",\"content\":\"\\u5927\\u7c73\\u975e\\u5e38\\u9002\\u5408\\u4ea7\\u5987\\u98df\\u7528\\u3002\\u7528\\u5927\\u7c73\\u71ac\\u5236\\u7684\\u7c73\\u7ca5\\u53e3\\u611f\\u7ec6\\u817b\\u3001\\u5bb9\\u6613\\u6d88\\u5316\\u3001\\u5bf9\\u80a0\\u80c3\\u865a\\u5f31\\u7684\\u4ea7\\u5987\\u6765\\u8bf4\\u662f\\u975e\\u5e38\\u597d\\u7684\\u98df\\u7269\\u3002\",\"id\":\"2\",\"_remove_\":\"0\"},\"3\":{\"feature_id\":\"3\",\"iscan\":\"1\",\"content\":\"\\u5927\\u7c73\\u53ef\\u63d0\\u4f9b\\u4e00\\u5b9a\\u7684\\u8425\\u517b\\u7269\\u8d28\\u3001\\u6bcd\\u4e73\\u5988\\u5988\\u53ef\\u4ee5\\u5c06\\u5927\\u7c73\\u4f5c\\u4e3a\\u4e3b\\u98df\\u98df\\u7528\\u3002\",\"id\":\"3\",\"_remove_\":\"0\"},\"4\":{\"feature_id\":\"4\",\"iscan\":\"1\",\"content\":\"\\u5927\\u7c73\\u4e2d\\u6240\\u542b\\u6dc0\\u7c89\\u9897\\u7c92\\u5c0f\\u3001\\u53e3\\u611f\\u67d4\\u8f6f\\u7ec6\\u817b\\u3001\\u5bb9\\u6613\\u6d88\\u5316\\u3001\\u6bd4\\u5176\\u4ed6\\u8c37\\u7269\\u66f4\\u9002\\u5408\\u5b9d\\u5b9d\\u7684\\u80a0\\u80c3\\u3002\\u5982\\u679c\\u662f\\u521a\\u521a\\u5f00\\u59cb\\u7ed9\\u5b9d\\u5b9d\\u6dfb\\u52a0\\u8f85\\u98df\\u3001\\u6700\\u597d\\u9009\\u7528\\u5f3a\\u5316\\u94c1\\u548c\\u86cb\\u767d\\u8d28\\u7684\\u5a74\\u513f\\u4e13\\u7528\\u7c73\\u7c89\\u3002\\u5982\\u679c\\u71ac\\u5236\\u7c73\\u6c64\\u3001\\u5efa\\u8bae\\u9009\\u62e9\\u7cd9\\u7c73\\u3002\",\"id\":\"4\",\"_remove_\":\"0\"}},\"_token\":\"2Vn144qfA0EvziJ0SSqXwvsTljg92L4Vq7v602Q1\",\"_method\":\"PUT\"}', '2018-10-29 11:28:36', '2018-10-29 11:28:36');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-10-29 11:28:36', '2018-10-29 11:28:36');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 11:28:43', '2018-10-29 11:28:43');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 11:28:51', '2018-10-29 11:28:51');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 11:29:02', '2018-10-29 11:29:02');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/feature', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 11:29:04', '2018-10-29 11:29:04');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 11:29:18', '2018-10-29 11:29:18');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 11:29:28', '2018-10-29 11:29:28');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 11:29:59', '2018-10-29 11:29:59');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-10-29 11:30:17', '2018-10-29 11:30:17');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 11:30:35', '2018-10-29 11:30:35');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/feature', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 11:30:36', '2018-10-29 11:30:36');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/feature', 'GET', '127.0.0.1', '[]', '2018-10-29 11:38:19', '2018-10-29 11:38:19');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-10-29 13:57:46', '2018-10-29 13:57:46');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-10-29 14:53:08', '2018-10-29 14:53:08');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 14:53:11', '2018-10-29 14:53:11');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 14:53:14', '2018-10-29 14:53:14');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-10-29 15:32:18', '2018-10-29 15:32:18');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 15:32:21', '2018-10-29 15:32:21');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 15:32:22', '2018-10-29 15:32:22');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/feature', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-29 15:32:23', '2018-10-29 15:32:23');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-10-30 10:54:12', '2018-10-30 10:54:12');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 10:54:14', '2018-10-30 10:54:14');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 10:54:18', '2018-10-30 10:54:18');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/feature', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 10:54:19', '2018-10-30 10:54:19');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 11:51:25', '2018-10-30 11:51:25');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 11:51:27', '2018-10-30 11:51:27');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 13:50:42', '2018-10-30 13:50:42');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u8c03\\u5473\\u6599\",\"_token\":\"slevRBF3E4K4RB5qkuTcCI319i6wzw1wWZmaDLRc\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-30 13:50:50', '2018-10-30 13:50:50');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-30 13:50:50', '2018-10-30 13:50:50');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 13:51:12', '2018-10-30 13:51:12');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u6d77\\u4ea7\\u54c1\",\"_token\":\"slevRBF3E4K4RB5qkuTcCI319i6wzw1wWZmaDLRc\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-30 13:51:17', '2018-10-30 13:51:17');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-30 13:51:17', '2018-10-30 13:51:17');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 13:51:35', '2018-10-30 13:51:35');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u6c34\\u679c\",\"_token\":\"slevRBF3E4K4RB5qkuTcCI319i6wzw1wWZmaDLRc\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-30 13:51:37', '2018-10-30 13:51:37');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-30 13:51:38', '2018-10-30 13:51:38');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 13:51:50', '2018-10-30 13:51:50');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u8089\\/\\u86cb\\u7c7b\",\"_token\":\"slevRBF3E4K4RB5qkuTcCI319i6wzw1wWZmaDLRc\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-30 13:51:52', '2018-10-30 13:51:52');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-30 13:51:52', '2018-10-30 13:51:52');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 13:52:07', '2018-10-30 13:52:07');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u852c\\u83dc\\u83cc\\u7c7b\",\"_token\":\"slevRBF3E4K4RB5qkuTcCI319i6wzw1wWZmaDLRc\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-30 13:52:09', '2018-10-30 13:52:09');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-30 13:52:09', '2018-10-30 13:52:09');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 13:52:22', '2018-10-30 13:52:22');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u52a0\\u5de5\\u98df\\u54c1\",\"_token\":\"slevRBF3E4K4RB5qkuTcCI319i6wzw1wWZmaDLRc\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-30 13:52:24', '2018-10-30 13:52:24');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-30 13:52:25', '2018-10-30 13:52:25');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 13:52:40', '2018-10-30 13:52:40');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u8865\\u54c1&\\u8349\\u836f\",\"_token\":\"slevRBF3E4K4RB5qkuTcCI319i6wzw1wWZmaDLRc\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-30 13:52:42', '2018-10-30 13:52:42');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-30 13:52:42', '2018-10-30 13:52:42');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 13:54:54', '2018-10-30 13:54:54');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u7a7f\\u6234\\u8bb2\\u7a76\",\"_token\":\"slevRBF3E4K4RB5qkuTcCI319i6wzw1wWZmaDLRc\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-30 13:54:57', '2018-10-30 13:54:57');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-30 13:54:57', '2018-10-30 13:54:57');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 13:55:16', '2018-10-30 13:55:16');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"\\u8eab\\u4f53\\u62a4\\u7406\",\"_token\":\"slevRBF3E4K4RB5qkuTcCI319i6wzw1wWZmaDLRc\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/category\"}', '2018-10-30 13:55:18', '2018-10-30 13:55:18');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-10-30 13:55:18', '2018-10-30 13:55:18');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 13:56:33', '2018-10-30 13:56:33');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 13:56:35', '2018-10-30 13:56:35');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/article', 'POST', '127.0.0.1', '{\"title\":\"\\u6d17\\u5934\",\"other_name\":null,\"category_id\":\"18\",\"type\":\"1\",\"items\":{\"new_1\":{\"feature_id\":\"1\",\"iscan\":\"0\",\"content\":\"\\u5927\\u54c7\\u4f4e\\u6d3c\\u7684\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"feature_id\":\"2\",\"iscan\":\"2\",\"content\":\"\\u7684\\u54c7\\u6253\\u6211\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"feature_id\":\"3\",\"iscan\":\"1\",\"content\":\"\\u54c7\\u7684\\u54c7\\u6253\\u6211\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"slevRBF3E4K4RB5qkuTcCI319i6wzw1wWZmaDLRc\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/article\"}', '2018-10-30 13:58:43', '2018-10-30 13:58:43');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-30 13:58:43', '2018-10-30 13:58:43');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 13:59:26', '2018-10-30 13:59:26');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 13:59:28', '2018-10-30 13:59:28');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-30 13:59:30', '2018-10-30 13:59:30');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/article', 'POST', '127.0.0.1', '{\"title\":\"\\u6d17\\u5934\",\"other_name\":null,\"category_id\":\"18\",\"type\":\"1\",\"items\":{\"new_1\":{\"feature_id\":\"1\",\"iscan\":\"2\",\"content\":\"\\u7684\\u54c7\\u4f4e\\u6d3c\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"feature_id\":\"2\",\"iscan\":\"0\",\"content\":\"\\u54c7\\u4f4e\\u6d3c\\u7684\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"feature_id\":\"3\",\"iscan\":\"1\",\"content\":\"\\u54c7\\u7684\\u54c7\\u6253\\u6211\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"slevRBF3E4K4RB5qkuTcCI319i6wzw1wWZmaDLRc\",\"_previous_\":\"http:\\/\\/yunmaapp.test\\/admin\\/article\"}', '2018-10-30 14:00:21', '2018-10-30 14:00:21');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/article/create', 'GET', '127.0.0.1', '[]', '2018-10-30 14:00:21', '2018-10-30 14:00:21');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/article', 'POST', '127.0.0.1', '{\"title\":\"\\u6d17\\u5934\",\"other_name\":null,\"category_id\":\"18\",\"type\":\"1\",\"items\":{\"new_1\":{\"feature_id\":\"1\",\"iscan\":\"2\",\"content\":\"\\u7684\\u54c7\\u4f4e\\u6d3c\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"feature_id\":\"2\",\"iscan\":\"0\",\"content\":\"\\u54c7\\u4f4e\\u6d3c\\u7684\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"feature_id\":\"3\",\"iscan\":\"1\",\"content\":\"\\u54c7\\u7684\\u54c7\\u6253\\u6211\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"slevRBF3E4K4RB5qkuTcCI319i6wzw1wWZmaDLRc\"}', '2018-10-30 14:01:12', '2018-10-30 14:01:12');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin/article', 'GET', '127.0.0.1', '[]', '2018-10-30 14:01:12', '2018-10-30 14:01:12');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-10-31 09:59:04', '2018-10-31 09:59:04');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-31 09:59:06', '2018-10-31 09:59:06');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-10-27 09:13:43', '2018-10-27 09:13:43');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '8', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$p3gLsG0V.UAHGTBV4W5fU.bBD5sMToFHWQ1eYxe6YdOag6Ircwwxu', 'Administrator', null, null, '2018-10-27 09:13:43', '2018-10-27 09:13:43');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', '大米', '1', 'image/12-1P116110510R9.jpg', 'image/1525761034684953.png', '稻米', '0', '2018-10-29 11:18:17', '2018-10-29 11:22:44');
INSERT INTO `articles` VALUES ('2', '花生', '2', 'image/1533711773331058.png', 'image/12-1P116110134957.jpg', '落花生、长生果、泥豆、番豆、地豆', '0', '2018-10-29 11:26:19', '2018-10-29 11:26:19');
INSERT INTO `articles` VALUES ('3', '洗头', '18', 'image/acb07b2e6ab9af9d7d35c5403249fbbb.png', 'image/1533026370131725.png', null, '1', '2018-10-30 14:01:12', '2018-10-30 14:01:12');

-- ----------------------------
-- Table structure for article_items
-- ----------------------------
DROP TABLE IF EXISTS `article_items`;
CREATE TABLE `article_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `iscan` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of article_items
-- ----------------------------
INSERT INTO `article_items` VALUES ('1', '1', '1', '1', '准妈妈可以将大米制作成米饭或煮粥、作为主食实用。', '2018-10-29 11:18:17', '2018-10-29 11:18:17');
INSERT INTO `article_items` VALUES ('2', '1', '2', '1', '大米非常适合产妇食用。用大米熬制的米粥口感细腻、容易消化、对肠胃虚弱的产妇来说是非常好的食物。', '2018-10-29 11:18:17', '2018-10-29 11:18:17');
INSERT INTO `article_items` VALUES ('3', '1', '3', '1', '大米可提供一定的营养物质、母乳妈妈可以将大米作为主食食用。', '2018-10-29 11:18:17', '2018-10-29 11:18:17');
INSERT INTO `article_items` VALUES ('4', '1', '4', '1', '大米中所含淀粉颗粒小、口感柔软细腻、容易消化、比其他谷物更适合宝宝的肠胃。如果是刚刚开始给宝宝添加辅食、最好选用强化铁和蛋白质的婴儿专用米粉。如果熬制米汤、建议选择糙米。', '2018-10-29 11:18:17', '2018-10-29 11:18:17');
INSERT INTO `article_items` VALUES ('5', '2', '1', '2', '准妈妈可以吃花生、但是不宜过量食用、以免发生肥胖。对花生有急性或慢性过敏的准妈妈应远离花生。', '2018-10-29 11:26:19', '2018-10-29 11:26:19');
INSERT INTO `article_items` VALUES ('6', '2', '2', '1', '坐月子可以吃花生、不过要过半个月以后再吃、花生炖猪蹄有下奶的功效。将花生连红衣一起与红枣配合使用、既可补虚、又能止血、最宜用于身体虚弱的出血病人。', '2018-10-29 11:26:19', '2018-10-29 11:26:19');
INSERT INTO `article_items` VALUES ('7', '2', '3', '1', '母乳妈妈可以吃花生。从营养方面考虑、煮花生最健康、既避免了营养素的破坏、又具有不温不火、口感潮润、入口好烂、易于消化的特点、老少皆宜。', '2018-10-29 11:26:19', '2018-10-29 11:26:19');
INSERT INTO `article_items` VALUES ('8', '2', '4', '1', '宝宝辅食可适量添加小麦粉制品、比如面条、馒头等、 但要注意刚开始添加面食时宝宝是否出现麸质过敏、建议宝宝2岁后再适量添加。', '2018-10-29 11:26:19', '2018-10-29 11:26:19');
INSERT INTO `article_items` VALUES ('9', '3', '1', '2', '的哇低洼', '2018-10-30 14:01:12', '2018-10-30 14:01:12');
INSERT INTO `article_items` VALUES ('10', '3', '2', '0', '哇低洼的', '2018-10-30 14:01:12', '2018-10-30 14:01:12');
INSERT INTO `article_items` VALUES ('11', '3', '3', '1', '哇的哇打我', '2018-10-30 14:01:12', '2018-10-30 14:01:12');

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cache
-- ----------------------------
INSERT INTO `cache` VALUES ('laraveltokenoBYWL1dwwbxUuUv52IhjoOkxcPyg', 'eyJpdiI6InFpRXpFZlZMRk92T0dsR1cxYjlaT1E9PSIsInZhbHVlIjoic2h4YmtUV3F5ZUowKzdYc090RThTK2FMb0xnZit4a1wvdXBzNlBQSGJjOW9KVWRLSWlCWExUWGF4SHNpTnVxRHUiLCJtYWMiOiJlMmY5NDk5MThkMmM5ZDVjZTFkMjY5Nzk2NmE5NWVjODc4Y2RlY2MzYjNkYTQ2NmJlMzdmNDRkZWVjNzMxYTZhIn0=', '1540810851');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '主食', '2018-10-29 10:09:59', '2018-10-29 10:09:59');
INSERT INTO `categories` VALUES ('2', '坚果类', '2018-10-29 10:10:24', '2018-10-29 10:10:24');
INSERT INTO `categories` VALUES ('3', '豆/奶制品', '2018-10-29 10:10:29', '2018-10-29 10:10:29');
INSERT INTO `categories` VALUES ('4', '零食小吃类', '2018-10-29 10:11:12', '2018-10-29 10:11:12');
INSERT INTO `categories` VALUES ('5', '饮品', '2018-10-29 10:14:18', '2018-10-29 10:14:18');
INSERT INTO `categories` VALUES ('6', '出行安全', '2018-10-29 10:14:45', '2018-10-29 10:14:45');
INSERT INTO `categories` VALUES ('7', '行为运动', '2018-10-29 10:15:40', '2018-10-29 10:15:40');
INSERT INTO `categories` VALUES ('8', '休闲娱乐', '2018-10-29 10:16:42', '2018-10-29 10:16:42');
INSERT INTO `categories` VALUES ('9', '居家生活', '2018-10-29 10:30:02', '2018-10-29 10:30:02');
INSERT INTO `categories` VALUES ('10', '调味料', '2018-10-30 13:50:50', '2018-10-30 13:50:50');
INSERT INTO `categories` VALUES ('11', '海产品', '2018-10-30 13:51:17', '2018-10-30 13:51:17');
INSERT INTO `categories` VALUES ('12', '水果', '2018-10-30 13:51:37', '2018-10-30 13:51:37');
INSERT INTO `categories` VALUES ('13', '肉/蛋类', '2018-10-30 13:51:52', '2018-10-30 13:51:52');
INSERT INTO `categories` VALUES ('14', '蔬菜菌类', '2018-10-30 13:52:09', '2018-10-30 13:52:09');
INSERT INTO `categories` VALUES ('15', '加工食品', '2018-10-30 13:52:24', '2018-10-30 13:52:24');
INSERT INTO `categories` VALUES ('16', '补品&草药', '2018-10-30 13:52:42', '2018-10-30 13:52:42');
INSERT INTO `categories` VALUES ('17', '穿戴讲究', '2018-10-30 13:54:57', '2018-10-30 13:54:57');
INSERT INTO `categories` VALUES ('18', '身体护理', '2018-10-30 13:55:18', '2018-10-30 13:55:18');

-- ----------------------------
-- Table structure for features
-- ----------------------------
DROP TABLE IF EXISTS `features`;
CREATE TABLE `features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of features
-- ----------------------------
INSERT INTO `features` VALUES ('1', '孕期', '2018-10-29 10:36:22', '2018-10-29 10:42:04');
INSERT INTO `features` VALUES ('2', '坐月子', '2018-10-29 10:36:32', '2018-10-29 10:36:32');
INSERT INTO `features` VALUES ('3', '哺乳期', '2018-10-29 10:36:40', '2018-10-29 10:36:40');
INSERT INTO `features` VALUES ('4', '婴幼儿', '2018-10-29 10:36:49', '2018-10-29 10:36:49');
INSERT INTO `features` VALUES ('5', '月子期', '2018-10-29 10:42:43', '2018-10-29 10:42:43');

-- ----------------------------
-- Table structure for front_users
-- ----------------------------
DROP TABLE IF EXISTS `front_users`;
CREATE TABLE `front_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of front_users
-- ----------------------------
INSERT INTO `front_users` VALUES ('1', 'oBYWL1dwwbxUuUv52IhjoOkxcPyg', null, null, 'd15ead337c05cdf15efa6036d0d950dc', '2018-10-29 17:16:53', '2018-10-31 11:23:40');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_000000_create_users_table', '2');
INSERT INTO `migrations` VALUES ('3', '2014_10_12_100000_create_password_resets_table', '2');
INSERT INTO `migrations` VALUES ('4', '2018_10_29_012704_create_articles_table', '2');
INSERT INTO `migrations` VALUES ('5', '2018_10_29_012726_create_article_items_table', '2');
INSERT INTO `migrations` VALUES ('6', '2018_10_29_012754_create_categories_table', '2');
INSERT INTO `migrations` VALUES ('7', '2018_10_29_012807_create_items_table', '2');
INSERT INTO `migrations` VALUES ('8', '2018_10_29_163101_creat_front_users_table', '3');
INSERT INTO `migrations` VALUES ('9', '2018_10_29_170447_creat_cache_table', '4');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
