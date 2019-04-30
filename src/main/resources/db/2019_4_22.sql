/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : comadmin

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-22 18:37:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `farm_own_manager`
-- ----------------------------
DROP TABLE IF EXISTS `farm_own_manager`;
CREATE TABLE `farm_own_manager` (
  `farm_own_id` varchar(255) DEFAULT NULL,
  `farm_manager_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of farm_own_manager
-- ----------------------------
INSERT INTO `farm_own_manager` VALUES ('244ed8a411b3464996a6cab8c16048e4', 'a9062e572631452498a721f2f4ec033c');

-- ----------------------------
-- Table structure for `login_data`
-- ----------------------------
DROP TABLE IF EXISTS `login_data`;
CREATE TABLE `login_data` (
  `id` varchar(255) NOT NULL,
  `unlogin` int(11) DEFAULT NULL,
  `unauthorized_access` int(11) DEFAULT NULL,
  `repeated_refresh` int(11) DEFAULT NULL,
  `is_unsafe_logout` int(11) DEFAULT NULL,
  `is_account` tinyint(4) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` tinyint(4) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_data
-- ----------------------------
INSERT INTO `login_data` VALUES ('0329714d1f52475b984f9bf36bf8fa0a', '0', '0', '1', '1', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 13:56:30', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 13:57:13', '0', null);
INSERT INTO `login_data` VALUES ('0376fed837894c0f8086f1205420d5a8', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:05:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:05:54', '0', null);
INSERT INTO `login_data` VALUES ('06b5a1e7cd824d05b3e567e6d9a44143', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 12:08:42', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 12:08:42', '0', null);
INSERT INTO `login_data` VALUES ('074a8d8876de4be48510fe0e0d5dac37', '0', '0', '5', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:55:39', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:56:45', '0', null);
INSERT INTO `login_data` VALUES ('0775948477fc4de4bc031e014c3b6746', '0', '0', '3', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:22:15', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:29:37', '0', null);
INSERT INTO `login_data` VALUES ('0afb8019c6dc4ec7be2b4bfd188a927f', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-16 21:42:22', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-16 21:42:22', '0', null);
INSERT INTO `login_data` VALUES ('0e274f96093b49ac91f390d1671a33ea', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:15:48', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:15:48', '0', null);
INSERT INTO `login_data` VALUES ('0e29ac33ffcf47d1a7940cce2f24f094', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 13:56:30', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 13:56:30', '0', null);
INSERT INTO `login_data` VALUES ('0eac1e426f12404195930957a43bdf06', '1', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:51:52', null, '2019-04-21 22:05:05', '0', null);
INSERT INTO `login_data` VALUES ('101ed30f81414b539ef35b0a6770cd1b', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:16:40', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:16:40', '0', null);
INSERT INTO `login_data` VALUES ('1427a9440f114971ad8c6dd6d78386d6', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:15:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:15:27', '0', null);
INSERT INTO `login_data` VALUES ('14fa15ffefea4b298617aa19cdbbc63b', '0', '0', '0', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-16 20:58:05', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-16 20:58:37', '0', null);
INSERT INTO `login_data` VALUES ('15d60d08ebbd40edab601efdf6c9d2e6', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:23:26', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:23:26', '0', null);
INSERT INTO `login_data` VALUES ('1686416239b9454cac280b3c2f078415', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:59:23', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:59:23', '0', null);
INSERT INTO `login_data` VALUES ('170197db77b24be6b74dd1935c10b014', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 23:12:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 23:15:13', '0', null);
INSERT INTO `login_data` VALUES ('1725752d26d1413089847ac384f240d1', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:05:12', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:05:12', '0', null);
INSERT INTO `login_data` VALUES ('191e3a52725940aba74f8bd6f13fa38c', '0', '0', '2', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:27', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:42', '0', null);
INSERT INTO `login_data` VALUES ('1a82081e9fd94602999bceba8221b300', '0', '0', '1', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:08:00', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:09:17', '0', null);
INSERT INTO `login_data` VALUES ('1b4eaaea8d1f40deb461729a86ee934c', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:04:35', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:04:35', '0', null);
INSERT INTO `login_data` VALUES ('1b6a7937d2a64822af5988c82acfbd8e', '0', '0', '5', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:36:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:40:22', '0', null);
INSERT INTO `login_data` VALUES ('202935790cb84d249fe5c2e269c2e5f3', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:56:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:56:55', '0', null);
INSERT INTO `login_data` VALUES ('204584973e604de19ded4c5da50672db', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:17:14', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:17:43', '0', null);
INSERT INTO `login_data` VALUES ('207edef1df3c4bf887ca30727a1d96ab', '0', '0', '0', '0', '0', '244ed8a411b3464996a6cab8c16048e4', '244ed8a411b3464996a6cab8c16048e4', '2019-04-17 15:43:22', '244ed8a411b3464996a6cab8c16048e4', '2019-04-17 15:43:22', '0', null);
INSERT INTO `login_data` VALUES ('20a7cd64d3274acfab035771b218e790', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 13:58:06', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 13:58:06', '0', null);
INSERT INTO `login_data` VALUES ('22cf969f99b046f68dd8e4e0eacc858f', '0', '0', '27', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:06:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 23:12:06', '0', null);
INSERT INTO `login_data` VALUES ('256f30ea82dd41868c36fda34c024b12', '0', '0', '5', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:24:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:29:17', '0', null);
INSERT INTO `login_data` VALUES ('2851b49025274e7ca49e0e701de66555', '0', '0', '1', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:12:03', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:12:03', '0', null);
INSERT INTO `login_data` VALUES ('2982c5203f0d49c5b029134c9660481b', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 23:12:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 23:12:17', '0', null);
INSERT INTO `login_data` VALUES ('29dfb1769c534bb4ae6ea9808a5a3662', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:36:30', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:36:30', '0', null);
INSERT INTO `login_data` VALUES ('312950c53e2b436d81a393bedc43445e', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:36:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:36:17', '0', null);
INSERT INTO `login_data` VALUES ('3146002462384d2d85c8d238f1451f86', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:22:04', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:22:04', '0', null);
INSERT INTO `login_data` VALUES ('3330a6adaca848d9b00b6e5e2132f29d', '0', '0', '8', '1', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 14:00:00', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 14:08:32', '0', null);
INSERT INTO `login_data` VALUES ('33c451bebe9a4dec84dc87e8a88ca26d', '0', '0', '5', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:49:10', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:54:21', '0', null);
INSERT INTO `login_data` VALUES ('34663223c0604957b089ec18ab118334', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 17:25:42', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 17:25:42', '0', null);
INSERT INTO `login_data` VALUES ('3a007827f94c44a993bad4a8857bfd93', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:56:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:56:55', '0', null);
INSERT INTO `login_data` VALUES ('3ab4e45712644499978f9cc468465360', '0', '0', '1', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:43:44', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:43:44', '0', null);
INSERT INTO `login_data` VALUES ('3c0d7dcb50f04f479ba3c1d79fe7b9b8', '0', '0', '3', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:53:20', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:53:36', '0', null);
INSERT INTO `login_data` VALUES ('3dcd834c88e846ff8591323f6f42ab89', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:15:30', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:15:30', '0', null);
INSERT INTO `login_data` VALUES ('3f3aa5fa106a440ca90c8abb5c74449a', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:13:56', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:13:56', '0', null);
INSERT INTO `login_data` VALUES ('414eb22808534c18899e0c93d5605a4c', '0', '0', '2', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:35:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:36:18', '0', null);
INSERT INTO `login_data` VALUES ('458caeaa40724180a3b845c995b666bb', '0', '0', '2', '1', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:47:03', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:47:43', '0', null);
INSERT INTO `login_data` VALUES ('482599792cc041749f2331a71a3eb94b', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:59:23', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:59:23', '0', null);
INSERT INTO `login_data` VALUES ('4b74e3560cce4f59aa881742a486b47a', '0', '0', '13', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:59:01', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:11:03', '0', null);
INSERT INTO `login_data` VALUES ('4de7ecbaa797423a97141a9fda59154d', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:15:48', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:15:48', '0', null);
INSERT INTO `login_data` VALUES ('4f2e85657c7e4e888f8e54998ad1b1fb', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:37:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:37:54', '0', null);
INSERT INTO `login_data` VALUES ('53c9a6d7c22b4d8388caeb6c9c0adb3b', '0', '0', '3', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 15:04:57', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 15:10:44', '0', null);
INSERT INTO `login_data` VALUES ('53d178471f1f43a9878e65a3fcece68d', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:15:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:15:17', '0', null);
INSERT INTO `login_data` VALUES ('549696eb27fe45d0a9f6b617d62515c3', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:27:53', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:27:53', '0', null);
INSERT INTO `login_data` VALUES ('550d394163c543f0a06cd3208fbb4577', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:05:14', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:05:14', '0', null);
INSERT INTO `login_data` VALUES ('58232fc48b2a48ab98710da258c724a5', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:41:47', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:41:47', '0', null);
INSERT INTO `login_data` VALUES ('5957ac5d63074e4c896b367dd2b95163', '0', '0', '0', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-16 20:59:45', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-16 21:00:21', '0', null);
INSERT INTO `login_data` VALUES ('5da8f454381b4964a552e53b90200d6d', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:20:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:20:52', '0', null);
INSERT INTO `login_data` VALUES ('5e28402b6bc04b19a93588f1aa3f75a5', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:36:22', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:36:22', '0', null);
INSERT INTO `login_data` VALUES ('600c498e3f4e47f09c05db93da80c4ae', '0', '0', '4', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 11:18:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 11:20:27', '0', null);
INSERT INTO `login_data` VALUES ('60b819fc60ea4c08a84f7df477759151', '0', '0', '3', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:17:29', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:17:59', '0', null);
INSERT INTO `login_data` VALUES ('6147e0a62e2343648f65d869b39e1bc5', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:37:51', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:37:51', '0', null);
INSERT INTO `login_data` VALUES ('6173e7db1cf1458b873c4e524aa815b7', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:59:36', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:01:17', '0', null);
INSERT INTO `login_data` VALUES ('62caf728309a4b2980ade0d6c440d3ba', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:24:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:24:59', '0', null);
INSERT INTO `login_data` VALUES ('6b3f847be18d4f9db741e30ecadb45a0', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:35:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:35:59', '0', null);
INSERT INTO `login_data` VALUES ('6dcb197ec63443968abbead3a2482a8f', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:17:14', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:17:14', '0', null);
INSERT INTO `login_data` VALUES ('6e0c35ee759b4eb5927a639ab6e7b91a', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 11:18:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 11:18:17', '0', null);
INSERT INTO `login_data` VALUES ('6ed488e126c940d899c2478eb81129e0', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:22:15', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:22:15', '0', null);
INSERT INTO `login_data` VALUES ('7009e291857f44aca4c613ff225a340d', '0', '0', '5', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:11:22', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:12:39', '0', null);
INSERT INTO `login_data` VALUES ('70d4d8167a284b61a1ea91f232354e4a', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 12:08:42', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 12:09:33', '0', null);
INSERT INTO `login_data` VALUES ('753ac3c8bf704c2090de35b74724bbbe', '4', '0', '10', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 17:43:17', null, '2019-04-17 17:59:51', '0', null);
INSERT INTO `login_data` VALUES ('787294b89d3a4dc1b89692d1dc3dff8c', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 17:43:37', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 17:43:42', '0', null);
INSERT INTO `login_data` VALUES ('7b106d2331bc41b8980351c5c4dd554b', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:05:12', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:05:12', '0', null);
INSERT INTO `login_data` VALUES ('7de741056c644e0380068861e579543a', '0', '0', '4', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-16 21:07:58', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-16 21:09:14', '0', null);
INSERT INTO `login_data` VALUES ('7ef0d45baeb34a36b9b84196436036cf', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-16 21:42:28', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-16 21:42:28', '0', null);
INSERT INTO `login_data` VALUES ('8151cd1d568f48afb8a3fc190ec9b856', '0', '0', '3', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:35:10', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:36:18', '0', null);
INSERT INTO `login_data` VALUES ('83bd3f17c7e4404f95414a0c30ed6650', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:05:56', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:05:56', '0', null);
INSERT INTO `login_data` VALUES ('84a5f1f0aca04e6e85233227aeb0d0e8', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:35:10', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:35:10', '0', null);
INSERT INTO `login_data` VALUES ('857e864f95214d8ea933e6d3d3308c3b', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:49:10', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:49:10', '0', null);
INSERT INTO `login_data` VALUES ('859565b1725746319bf84cd0d9966051', '0', '0', '8', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:35:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:44:57', '0', null);
INSERT INTO `login_data` VALUES ('8677027fd0594a1eb7968adddfa844c0', '0', '0', '4', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:27:53', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:30:00', '0', null);
INSERT INTO `login_data` VALUES ('86d3a0329362494988ce6c60080937c7', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:05:14', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:05:14', '0', null);
INSERT INTO `login_data` VALUES ('89418a2b2f654fb298407ca760ed80ba', '6', '0', '0', '0', '0', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '2019-04-17 17:50:21', null, '2019-04-17 17:56:23', '0', null);
INSERT INTO `login_data` VALUES ('89d13e13d2614914bd329d849d190eb7', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:38:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:39:03', '0', null);
INSERT INTO `login_data` VALUES ('8b2d293a341a4ebc939a7c4162b5a49f', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:58:44', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:58:44', '0', null);
INSERT INTO `login_data` VALUES ('8b51da5ff64247a7a9dca1f01b01223b', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:14:35', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:14:35', '0', null);
INSERT INTO `login_data` VALUES ('8c8239742583457a8b8bd5c84870f1d6', '0', '0', '2', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:10:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:11:54', '0', null);
INSERT INTO `login_data` VALUES ('8e184071be7f440ab38baab173a8ee43', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:08:00', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:08:00', '0', null);
INSERT INTO `login_data` VALUES ('90406e1e8a67434ea49c144f54c4c47b', '0', '0', '5', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:16:08', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:16:24', '0', null);
INSERT INTO `login_data` VALUES ('906d4bf8784d4dda9133934c2552e60c', '0', '0', '1', '0', '0', '244ed8a411b3464996a6cab8c16048e4', '244ed8a411b3464996a6cab8c16048e4', '2019-04-17 15:43:22', '244ed8a411b3464996a6cab8c16048e4', '2019-04-17 15:43:22', '0', null);
INSERT INTO `login_data` VALUES ('90a06193ea3b4e1da0178a00ce2b5e6e', '0', '0', '34', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:53:32', '0', null);
INSERT INTO `login_data` VALUES ('9175bb2ccbaf46448053bb446a57a9fa', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:56:05', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:56:05', '0', null);
INSERT INTO `login_data` VALUES ('939d2e4be2074321be608bd3b4d78f88', '2', '0', '7', '1', '0', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '2019-04-17 17:56:58', null, '2019-04-17 18:01:10', '0', null);
INSERT INTO `login_data` VALUES ('950eb4e9fef34b49b892d3f4fd770e25', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:37:51', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:38:14', '0', null);
INSERT INTO `login_data` VALUES ('96c4f7c63b7b4309aa607f8e58c70d25', '0', '0', '2', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:36:30', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:37:26', '0', null);
INSERT INTO `login_data` VALUES ('97a4e2dbb9de4205904e62d66d54f5f9', '3', '0', '1', '1', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:58:44', null, '2019-04-17 11:09:58', '0', null);
INSERT INTO `login_data` VALUES ('97eb06aad1e4474a8c304a0829f7341f', '0', '0', '3', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:05:56', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:07:35', '0', null);
INSERT INTO `login_data` VALUES ('986b1d2f5bd34254b75f9651163de64c', '0', '0', '2', '1', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:56:05', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:58:31', '0', null);
INSERT INTO `login_data` VALUES ('9dd65949d2004b6eb684e886cc71cbcc', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:13:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:13:42', '0', null);
INSERT INTO `login_data` VALUES ('9f0e145e10ad4095b01682c7541c8ef3', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:04:35', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:04:35', '0', null);
INSERT INTO `login_data` VALUES ('9f5ac537a34147a7849fa8c8607afa16', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:55', '0', null);
INSERT INTO `login_data` VALUES ('a1b944a393bc46448b3ea621c1692a9a', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:51:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:51:52', '0', null);
INSERT INTO `login_data` VALUES ('a1c4ea4f58e14f76985cad2c0042d47c', '0', '0', '7', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:30:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:34:03', '0', null);
INSERT INTO `login_data` VALUES ('a1e5cb8e150f494b85cae4cc84923b23', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:23:58', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:23:58', '0', null);
INSERT INTO `login_data` VALUES ('a22cfc80bc8146258a39a5f38cca0063', '0', '0', '16', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:10:04', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:14:56', '0', null);
INSERT INTO `login_data` VALUES ('a2b0d859af19453bb26b6a5f5eb8a2ad', '0', '0', '5', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:14:35', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:16:00', '0', null);
INSERT INTO `login_data` VALUES ('a3d62d8235314373a8d11fd5a2c8c37c', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:23:58', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:23:58', '0', null);
INSERT INTO `login_data` VALUES ('a64bc89317824e6596026bbc2942589d', '0', '0', '1', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:41:19', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:41:19', '0', null);
INSERT INTO `login_data` VALUES ('a9303eb1af9842e3b2ad65b1ff533735', '17', '0', '3', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 17:25:42', null, '2019-04-17 17:59:16', '0', null);
INSERT INTO `login_data` VALUES ('ab45c6c8fddf4b37a7a33e10268d439b', '0', '0', '14', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:41:47', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:58:15', '0', null);
INSERT INTO `login_data` VALUES ('ac95a623009b44678a81e05ae73288d1', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 17:35:42', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 17:35:42', '0', null);
INSERT INTO `login_data` VALUES ('ae97e4a62a48440b9b0ad8defc0820ae', '1', '0', '4', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 14:08:45', null, '2019-04-17 15:04:45', '0', null);
INSERT INTO `login_data` VALUES ('b1529b0101e34163a457c2d59e393f52', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:10:04', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:10:04', '0', null);
INSERT INTO `login_data` VALUES ('b15d009f6e4b4a63a2950de59b5f77ae', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:55:39', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:55:39', '0', null);
INSERT INTO `login_data` VALUES ('b2120673442e4d01b6966f183c9bed89', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:29:29', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:32:30', '0', null);
INSERT INTO `login_data` VALUES ('b747635fa34b46a08fe9b3f1e631d8cf', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 17:43:37', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 17:43:37', '0', null);
INSERT INTO `login_data` VALUES ('b7eac381137047c1aa6308b56b789e21', '0', '0', '0', '0', '0', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '2019-04-17 17:50:21', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '2019-04-17 17:50:21', '0', null);
INSERT INTO `login_data` VALUES ('b91a96e98dc24c1daf39630408c95abd', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:08:00', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:08:00', '0', null);
INSERT INTO `login_data` VALUES ('ba8c04c4885241a58f710dfa93f8cd09', '1', '0', '45', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:15:30', null, '2019-04-22 18:27:48', '0', null);
INSERT INTO `login_data` VALUES ('bab83ec72f434293b7677ec975a63b3f', '0', '0', '16', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:20:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:21:38', '0', null);
INSERT INTO `login_data` VALUES ('bc1a86dc05ba45bc9f76ca026709b683', '0', '0', '0', '0', '0', '244ed8a411b3464996a6cab8c16048e4', '244ed8a411b3464996a6cab8c16048e4', '2019-04-17 15:43:22', '244ed8a411b3464996a6cab8c16048e4', '2019-04-17 15:43:22', '0', null);
INSERT INTO `login_data` VALUES ('bc634327c31f4a00bd52f707e72b8801', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:13:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:13:41', '0', null);
INSERT INTO `login_data` VALUES ('bcc7b08057f24a8b84f7afe50731c6dc', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:10:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:10:55', '0', null);
INSERT INTO `login_data` VALUES ('bd73b5dbc99b449d988bbdced272056a', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:29:29', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:29:29', '0', null);
INSERT INTO `login_data` VALUES ('c1dd156196ee4902bbb0a9d0356b9e40', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:20:03', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:20:03', '0', null);
INSERT INTO `login_data` VALUES ('c4ea32ca3ec6488e86dd57ac1173af88', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:27', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:27', '0', null);
INSERT INTO `login_data` VALUES ('c97afbc5663c431fb9a20097af3d56e2', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:23:26', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:23:26', '0', null);
INSERT INTO `login_data` VALUES ('ca9e1e79568d4b90a6ab9288fa5aeaf0', '0', '0', '4', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:12:03', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:19:29', '0', null);
INSERT INTO `login_data` VALUES ('cb1cffea26ea48959b220b3fbabea681', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 17:43:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 17:43:17', '0', null);
INSERT INTO `login_data` VALUES ('cc232a09953742b8a24afd944161ce9d', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:19:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:19:54', '0', null);
INSERT INTO `login_data` VALUES ('d20d8d63557d4041b82ffffa153df6d2', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:22:04', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:22:04', '0', null);
INSERT INTO `login_data` VALUES ('d26428009838422fb3e9b1399a4398e6', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:35:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:35:52', '0', null);
INSERT INTO `login_data` VALUES ('d2a015cfa7704e4a9dcef0cbc6530b3d', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:13:56', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:14:37', '0', null);
INSERT INTO `login_data` VALUES ('d80f43757bf344499b1e2e5907ec89e1', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:06:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:06:32', '0', null);
INSERT INTO `login_data` VALUES ('d8fe44cddf9847bea6c18ac8502c006b', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:59:01', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:59:01', '0', null);
INSERT INTO `login_data` VALUES ('d9c8e03813f34183899e3ba4e00ffc29', '0', '0', '2', '1', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:36:22', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:36:48', '0', null);
INSERT INTO `login_data` VALUES ('e0a0c5d17fab4c3a8f908c67f54f25c4', '1', '0', '1', '1', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 15:40:55', null, '2019-04-17 17:25:33', '0', null);
INSERT INTO `login_data` VALUES ('e2ae003ea2f84d298e6b6f25c2760e12', '0', '0', '5', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:20:03', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:21:32', '0', null);
INSERT INTO `login_data` VALUES ('e34f59e31d9a49cdae394fd69cbadb19', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:30:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:30:41', '0', null);
INSERT INTO `login_data` VALUES ('e49c82a52e3d4658bbf422802af3785b', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:21:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:21:13', '0', null);
INSERT INTO `login_data` VALUES ('e6b4bd2bf8a84b0ca94a9f58902919d7', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:05:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:05:54', '0', null);
INSERT INTO `login_data` VALUES ('e81027a5617f45dc83d0794930060734', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:26:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:26:32', '0', null);
INSERT INTO `login_data` VALUES ('e93d18e15a804b319960914e2aa5a2bf', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:59:36', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:59:36', '0', null);
INSERT INTO `login_data` VALUES ('f2b71e0bd2704a3683925a48fbcdd036', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:19:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:19:54', '0', null);
INSERT INTO `login_data` VALUES ('f3c986b6befd43f9abf0f7260587d2a9', '0', '0', '4', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:26:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:27:52', '0', null);
INSERT INTO `login_data` VALUES ('f810f4eb46e241e292a5d3d120a3d8fc', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:16:08', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:16:08', '0', null);
INSERT INTO `login_data` VALUES ('f985bd007c8d4b6c8b35744c7bed74b6', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 17:35:42', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 17:35:42', '0', null);
INSERT INTO `login_data` VALUES ('f9b0ee0ffbd0434faa7241beb44b24ed', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:08:00', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:08:00', '0', null);
INSERT INTO `login_data` VALUES ('fba1a3a830924bf48ffd58f299113581', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:37:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:37:54', '0', null);
INSERT INTO `login_data` VALUES ('fc71922c81284d178e27cc5475108d49', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:16:40', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:18:06', '0', null);
INSERT INTO `login_data` VALUES ('fcaf0caab8ae4080b9fd8960db35814e', '0', '0', '1', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-16 21:42:28', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-16 21:42:28', '0', null);
INSERT INTO `login_data` VALUES ('fd88016bf8a24a0c80d648997e22a28d', '0', '0', '1', '1', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 13:58:06', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 13:58:27', '0', null);

-- ----------------------------
-- Table structure for `nongtianmysqldata`
-- ----------------------------
DROP TABLE IF EXISTS `nongtianmysqldata`;
CREATE TABLE `nongtianmysqldata` (
  `NodeNum` varchar(255) NOT NULL,
  `Time` datetime DEFAULT NULL,
  `temperature` varchar(255) DEFAULT NULL,
  `humidity` varchar(255) DEFAULT NULL,
  `illumination` varchar(255) DEFAULT NULL,
  `sensor1_temperature_flag` varchar(255) DEFAULT NULL,
  `sensor2_temperature_flag` varchar(255) DEFAULT NULL,
  `sensor3_temperature_flag` varchar(255) DEFAULT NULL,
  `sensor1_humidity_flag` varchar(255) DEFAULT NULL,
  `sensor2_humidity_flag` varchar(255) DEFAULT NULL,
  `sensor3_humidity_flag` varchar(255) DEFAULT NULL,
  `sensor1_illumination_flag` varchar(255) DEFAULT NULL,
  `sensor2_illumination_flag` varchar(255) DEFAULT NULL,
  `sensor3_illumination_flag` varchar(255) DEFAULT NULL,
  `node_Powerflag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NodeNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nongtianmysqldata
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(36) NOT NULL,
  `name` varchar(40) DEFAULT NULL COMMENT '菜单名称',
  `parent_id` varchar(36) DEFAULT NULL COMMENT '父菜单',
  `level` bigint(2) DEFAULT NULL COMMENT '菜单层级',
  `parent_ids` varchar(2000) DEFAULT NULL COMMENT '父菜单联集',
  `sort` smallint(6) DEFAULT NULL COMMENT '排序',
  `href` varchar(2000) DEFAULT NULL COMMENT '链接地址',
  `target` varchar(20) DEFAULT NULL COMMENT '打开方式',
  `icon` varchar(100) DEFAULT NULL COMMENT '菜单图标',
  `bg_color` varchar(255) DEFAULT NULL COMMENT '显示背景色',
  `is_show` tinyint(2) DEFAULT NULL COMMENT '是否显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(36) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('154e56abaf494269943d4e40015c9ad0', '农田管理', null, '1', '154e56abaf494269943d4e40015c9ad0,', '2', '', null, '', '', '1', '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 13:48:36', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 14:33:07', null, '0');
INSERT INTO `sys_menu` VALUES ('1d0b04f75a3b4bb0a7f5bf3c01126424', '转发消息', '89787ef46fe94bc5a470d35d4a4daf05', '3', '316277d2d6fa47b2b27265f2ba669846,89787ef46fe94bc5a470d35d4a4daf05,1d0b04f75a3b4bb0a7f5bf3c01126424,', '1', '', null, null, '', '0', 'user:message:add', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-23 16:40:56', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-23 22:05:43', null, '0');
INSERT INTO `sys_menu` VALUES ('2063a48f0386449989ce9da033f98741', '我的管理员', '154e56abaf494269943d4e40015c9ad0', '2', '154e56abaf494269943d4e40015c9ad0,2063a48f0386449989ce9da033f98741,', '2', '/admin/farm/manager/list', null, '', '', '1', '/farm:manager:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-02 21:15:30', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-02 21:15:30', null, '0');
INSERT INTO `sys_menu` VALUES ('20af27585ca641f1879358fd1bb4f218', '修改农田', '99c78288bf7d43f09b439ab00239ae86', '3', '154e56abaf494269943d4e40015c9ad0,99c78288bf7d43f09b439ab00239ae86,20af27585ca641f1879358fd1bb4f218,', '2', '', null, null, '', '0', 'farm:user:edit', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 19:08:35', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 19:08:54', null, '0');
INSERT INTO `sys_menu` VALUES ('316277d2d6fa47b2b27265f2ba669846', '消息管理', null, '1', '316277d2d6fa47b2b27265f2ba669846,', '4', '', null, '', '', '1', '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-23 15:56:33', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-23 15:56:33', null, '0');
INSERT INTO `sys_menu` VALUES ('3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', '用户管理', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb', '2', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,', '9', '/admin/system/user/list', null, '', '#47e69c', '1', 'sys:user:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-16 11:31:18', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-20 05:59:20', null, '0');
INSERT INTO `sys_menu` VALUES ('3b58e01e-9adb-11e8-aebe-1368d4ec24eb', '访问策略', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb', '2', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b58e01e-9adb-11e8-aebe-1368d4ec24eb,', '10', '/admin/system/role/list', null, '', '#c23ab9', '1', 'sys:role:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-16 11:32:33', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 13:55:40', null, '0');
INSERT INTO `sys_menu` VALUES ('3b5cb607-9adb-11e8-aebe-1368d4ec24eb', '权限管理', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb', '2', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,', '20', '/admin/system/menu/list', null, '', '#d4573b', '1', 'sys:menu:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-16 11:33:19', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:49:28', null, '0');
INSERT INTO `sys_menu` VALUES ('3c7f0aa572d648349c594f572af1d97f', '温度管理', '679ef59d6f30441ba57a5eb051eb917e', '2', '679ef59d6f30441ba57a5eb051eb917e,3c7f0aa572d648349c594f572af1d97f,', '3', '/farm/farmdata/temper', null, '', '', '1', 'farm:farmdata:temper', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 13:50:31', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 14:32:20', null, '0');
INSERT INTO `sys_menu` VALUES ('3e0b86a3-9adc-11e8-aebe-1368d4ec24eb', '新增用户', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', '3', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,3e0b86a3-9adc-11e8-aebe-1368d4ec24eb,', '0', '', null, null, null, '0', 'sys:user:add', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:10:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:10:32', null, '0');
INSERT INTO `sys_menu` VALUES ('3e2fa8b6-9adc-11e8-aebe-1368d4ec24eb', '编辑用户', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', '3', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,3e2fa8b6-9adc-11e8-aebe-1368d4ec24eb,', '10', '', null, null, null, '0', 'sys:user:edit', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:11:49', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:11:49', null, '0');
INSERT INTO `sys_menu` VALUES ('3e36cf2f-9adc-11e8-aebe-1368d4ec24eb', '删除用户', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', '3', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,3e36cf2f-9adc-11e8-aebe-1368d4ec24eb,', '20', '', null, null, null, '0', 'sys:user:delete', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:12:43', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:12:43', null, '0');
INSERT INTO `sys_menu` VALUES ('432934148cbb48798c852a01f100f9ed', '农田数据', '679ef59d6f30441ba57a5eb051eb917e', '2', '679ef59d6f30441ba57a5eb051eb917e,432934148cbb48798c852a01f100f9ed,', '4', '/farm/farmdata/list', null, '', '', '1', 'farm:farmdata:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-03-16 14:07:26', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-03-16 14:07:26', null, '0');
INSERT INTO `sys_menu` VALUES ('493f9cc85a284e098c047000d59d81f4', '新增农田', '99c78288bf7d43f09b439ab00239ae86', '3', '154e56abaf494269943d4e40015c9ad0,99c78288bf7d43f09b439ab00239ae86,493f9cc85a284e098c047000d59d81f4,', '1', '', null, null, '', '0', 'farm:user:add', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 19:07:38', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 19:08:07', null, '0');
INSERT INTO `sys_menu` VALUES ('563f189b651b42168ee6e12b9ff115e4', '光照管理', '679ef59d6f30441ba57a5eb051eb917e', '2', '679ef59d6f30441ba57a5eb051eb917e,563f189b651b42168ee6e12b9ff115e4,', '1', '/farm/farmdata/sun', null, '', '', '1', 'farm:farmdata:sun', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 13:53:03', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 14:32:11', null, '0');
INSERT INTO `sys_menu` VALUES ('679ef59d6f30441ba57a5eb051eb917e', '当前请求', null, '1', '679ef59d6f30441ba57a5eb051eb917e,', '3', '', null, '', '', '1', '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 13:49:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 14:32:57', null, '0');
INSERT INTO `sys_menu` VALUES ('7d1020ee-9ad9-11e8-aebe-1368d4ec24eb', '系统管理', null, '1', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,', '1', '', null, '', null, '1', '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-16 11:29:46', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-20 03:09:26', null, '0');
INSERT INTO `sys_menu` VALUES ('89787ef46fe94bc5a470d35d4a4daf05', '我的消息', '316277d2d6fa47b2b27265f2ba669846', '2', '316277d2d6fa47b2b27265f2ba669846,89787ef46fe94bc5a470d35d4a4daf05,', '1', '/admin/user/message/list', null, '', '', '1', 'user:message:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-23 15:57:34', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-23 20:42:19', null, '0');
INSERT INTO `sys_menu` VALUES ('96fd6a5a-9adb-11e8-aebe-1368d4ec24eb', '新增权限', '3b5cb607-9adb-11e8-aebe-1368d4ec24eb', '3', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,96fd6a5a-9adb-11e8-aebe-1368d4ec24eb,', '0', '', null, null, null, '0', 'sys:menu:add', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:49:15', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:49:38', null, '0');
INSERT INTO `sys_menu` VALUES ('9703ccf2-9adb-11e8-aebe-1368d4ec24eb', '编辑权限', '3b5cb607-9adb-11e8-aebe-1368d4ec24eb', '3', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,9703ccf2-9adb-11e8-aebe-1368d4ec24eb,', '10', '', null, null, null, '0', 'sys:menu:edit', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:50:16', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:50:25', null, '0');
INSERT INTO `sys_menu` VALUES ('9707cf58-9adb-11e8-aebe-1368d4ec24eb', '删除权限', '3b5cb607-9adb-11e8-aebe-1368d4ec24eb', '3', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,9707cf58-9adb-11e8-aebe-1368d4ec24eb,', '20', '', null, null, null, '0', 'sys:menu:delete', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:51:53', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:53:42', null, '0');
INSERT INTO `sys_menu` VALUES ('99c78288bf7d43f09b439ab00239ae86', '我的农田', '154e56abaf494269943d4e40015c9ad0', '2', '154e56abaf494269943d4e40015c9ad0,99c78288bf7d43f09b439ab00239ae86,', '1', '/admin/farm/user/list', null, '', '', '1', 'farm:user:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 13:49:25', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 14:28:49', null, '0');
INSERT INTO `sys_menu` VALUES ('a27863352b9a44c19cf521ba2d56667b', '湿度管理', '679ef59d6f30441ba57a5eb051eb917e', '2', '679ef59d6f30441ba57a5eb051eb917e,a27863352b9a44c19cf521ba2d56667b,', '2', '/farm/farmdata/hum', null, '', '', '1', 'farm:farmdata:hum', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 13:52:24', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 14:29:46', null, '0');
INSERT INTO `sys_menu` VALUES ('e90afb6c6e6c4d0fa4e935517bcc47ef', '删除农田', '99c78288bf7d43f09b439ab00239ae86', '3', '154e56abaf494269943d4e40015c9ad0,99c78288bf7d43f09b439ab00239ae86,e90afb6c6e6c4d0fa4e935517bcc47ef,', '3', '', null, null, '', '0', 'farm:user:delete', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 19:09:19', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 20:37:28', null, '0');
INSERT INTO `sys_menu` VALUES ('ed63866b30cf46bfb6797a1d31ae930c', '锁定用户', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', '3', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,ed63866b30cf46bfb6797a1d31ae930c,', '21', '', null, null, '', '0', 'sys:user:lock', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-08-21 17:44:05', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-08-21 17:44:05', null, '0');
INSERT INTO `sys_menu` VALUES ('f65cf5c7392c4f79a745fe4776d8f160', '发送消息', '316277d2d6fa47b2b27265f2ba669846', '2', '316277d2d6fa47b2b27265f2ba669846,f65cf5c7392c4f79a745fe4776d8f160,', '2', '/admin/user/message/add', null, '', '', '1', 'user:message:send', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-23 22:06:25', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-23 22:07:07', null, '0');
INSERT INTO `sys_menu` VALUES ('faf7229edfcf4172a33d3f3fd44948e7', '删除消息', '89787ef46fe94bc5a470d35d4a4daf05', '3', '316277d2d6fa47b2b27265f2ba669846,89787ef46fe94bc5a470d35d4a4daf05,faf7229edfcf4172a33d3f3fd44948e7,', '2', '', null, null, '', '0', 'user:message:delete', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-23 16:41:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-23 16:41:32', null, '0');
INSERT INTO `sys_menu` VALUES ('ff619e04-9adb-11e8-aebe-1368d4ec24eb', '新增策略', '3b58e01e-9adb-11e8-aebe-1368d4ec24eb', '3', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b58e01e-9adb-11e8-aebe-1368d4ec24eb,ff619e04-9adb-11e8-aebe-1368d4ec24eb,', '0', '', null, null, null, '0', 'sys:role:add', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:58:11', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:58:11', null, '0');
INSERT INTO `sys_menu` VALUES ('ff9477c9-9adb-11e8-aebe-1368d4ec24eb', '编辑权限', '3b58e01e-9adb-11e8-aebe-1368d4ec24eb', '3', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b58e01e-9adb-11e8-aebe-1368d4ec24eb,ff9477c9-9adb-11e8-aebe-1368d4ec24eb,', '10', '', null, null, null, '0', 'sys:role:edit', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:59:01', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:59:01', null, '0');
INSERT INTO `sys_menu` VALUES ('ff9ad846-9adb-11e8-aebe-1368d4ec24eb', '删除策略', '3b58e01e-9adb-11e8-aebe-1368d4ec24eb', '3', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b58e01e-9adb-11e8-aebe-1368d4ec24eb,ff9ad846-9adb-11e8-aebe-1368d4ec24eb,', '20', '', null, null, null, '0', 'sys:role:delete', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:59:56', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:59:56', null, '0');

-- ----------------------------
-- Table structure for `sys_rescource`
-- ----------------------------
DROP TABLE IF EXISTS `sys_rescource`;
CREATE TABLE `sys_rescource` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `source` varchar(255) DEFAULT NULL COMMENT '来源',
  `web_url` varchar(500) DEFAULT NULL COMMENT '资源网络地址',
  `hash` varchar(255) DEFAULT NULL COMMENT '文件标识',
  `file_size` varchar(50) DEFAULT NULL COMMENT '文件大小',
  `file_type` varchar(255) DEFAULT NULL COMMENT '文件类型',
  `original_net_url` text,
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(36) DEFAULT NULL COMMENT '创建人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(36) DEFAULT NULL COMMENT '修改人',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统资源';

-- ----------------------------
-- Records of sys_rescource
-- ----------------------------
INSERT INTO `sys_rescource` VALUES ('584353035e6f4a559389ded43c7de423', 'c7b2a7d9-82e6-4a4b-a7c8-4544ed8ad889.jpeg', 'local', '/static/upload/c7b2a7d9-82e6-4a4b-a7c8-4544ed8ad889.jpeg', 'Fg_QPbNxuhCYavQIuidImEqKzk8i', '21kb', 'image/jpeg', null, '2019-02-27 20:54:46', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-02-27 20:54:46', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '0');
INSERT INTO `sys_rescource` VALUES ('592ec478ec7f4dce86a357a7b35e558e', '5b90f5d1-cb3d-492f-ae98-913057381436.jpeg', 'local', '/static/upload/5b90f5d1-cb3d-492f-ae98-913057381436.jpeg', 'Fg_QPbNxuhCYavQIuidImEqKzk8i', '21kb', 'image/jpeg', null, '2019-04-17 13:36:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:36:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '0');
INSERT INTO `sys_rescource` VALUES ('66226963bc0a4e3284631df7e807ba5e', '6aa15baf-63e4-478c-87cc-526e4b9632ad.jpg', 'local', '/static/upload/6aa15baf-63e4-478c-87cc-526e4b9632ad.jpg', 'FgE9EAR_Xw9j0ETAa9JDQeNYVw5Q', '13kb', 'image/jpeg', null, '2019-04-17 10:52:59', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:52:59', 'e426acc3cf434635a9cbf8c90902e314', null, '0');
INSERT INTO `sys_rescource` VALUES ('88852c24b8ed4190b883a4be0e0d3248', '7276118e-5ca3-4ab3-8188-e7d39a39b91b.jpg', 'local', '/static/upload/7276118e-5ca3-4ab3-8188-e7d39a39b91b.jpg', 'Fluz0NHAakDjZqPPX3XoD68lj55u', '9kb', 'image/jpeg', null, '2018-12-21 13:54:39', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 13:54:39', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '0');
INSERT INTO `sys_rescource` VALUES ('8d3d5ef0e5c84b069eedeeb887f89a66', '454234f1-0be5-4c50-a1a4-9096fca48ee4.jpeg', 'local', '/static/upload/454234f1-0be5-4c50-a1a4-9096fca48ee4.jpeg', 'Fg_QPbNxuhCYavQIuidImEqKzk8i', '21kb', 'image/jpeg', null, '2019-04-17 10:47:27', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:47:27', 'e426acc3cf434635a9cbf8c90902e314', null, '0');
INSERT INTO `sys_rescource` VALUES ('e981173e50ae4901be0e1bd31348dc1e', 'bcc9cef0-4a82-47f5-8f6e-499aa298b2bf.jpg', 'local', '/static/upload/bcc9cef0-4a82-47f5-8f6e-499aa298b2bf.jpg', 'FgE9EAR_Xw9j0ETAa9JDQeNYVw5Q', '13kb', 'image/jpeg', null, '2019-02-27 20:52:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-02-27 20:52:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '0');
INSERT INTO `sys_rescource` VALUES ('ea777e6de28e404b9477197129b1c6ab', '339ce6ec-b6cf-48de-ad80-b220bf1cee1f.jpeg', 'local', '/static/upload/339ce6ec-b6cf-48de-ad80-b220bf1cee1f.jpeg', 'Fg_QPbNxuhCYavQIuidImEqKzk8i', '21kb', 'image/jpeg', null, '2019-04-17 13:36:40', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:36:40', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '0');
INSERT INTO `sys_rescource` VALUES ('ffa07cc591364ed88a646b6a3f5d2ad0', '361d2514-5200-4a7a-9b2c-952e07b8c813.jpeg', 'local', '/static/upload/361d2514-5200-4a7a-9b2c-952e07b8c813.jpeg', 'Fg_QPbNxuhCYavQIuidImEqKzk8i', '21kb', 'image/jpeg', null, '2019-04-17 10:56:35', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:56:35', 'e426acc3cf434635a9cbf8c90902e314', null, '0');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(36) NOT NULL,
  `name` varchar(40) DEFAULT NULL COMMENT '角色名称',
  `identity` varchar(100) DEFAULT NULL,
  `request_place` varchar(50) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('11dc51e3c049456c912d0c9093e9dbaa', '查看湿度', '湿度管理员', '成都大学', '15015015015', '150@qq.com', '30', '2019-04-09 10:49:49', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-09 10:49:49', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', '0');
INSERT INTO `sys_role` VALUES ('1d661fb8b11a488eb7cbf077ae60fc86', '测试001', '测试', '', '13013013013', '', '33', '2019-04-07 17:32:10', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-07 17:34:08', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', '0');
INSERT INTO `sys_role` VALUES ('4132f0579ae54d7399c4337cc3fe44bd', '查看温度', '温度,滴滴', '', '', '110@qq.com', '20,40', '2018-12-25 16:51:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:53:21', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', '0');
INSERT INTO `sys_role` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', '访客', '访客', '', '13013013013', '', '', '2017-11-02 14:19:07', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-03-20 16:50:34', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', '1');
INSERT INTO `sys_role` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '超级管理员(开发者账号)', 'root', '', '110', '', '', '2017-11-29 19:36:37', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-02 21:27:33', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', '0');
INSERT INTO `sys_role` VALUES ('8332ea7322704faa8a0fdfc9726d587c', '农田主', '农田主', '十陵', '', '133@qq.com', '40', '2018-12-21 21:18:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:53:29', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', '0');
INSERT INTO `sys_role` VALUES ('919acb6b89784f81a2826699c103710e', '查看光照', '光照管理员', '成都大学', '16016016016', '160@qq.com', '30', '2019-04-09 10:51:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-09 10:51:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', '0');
INSERT INTO `sys_role` VALUES ('c0b10c0fe3994eb0b681b3f019825f20', '测试', '测试', '', '130', '', '33', '2019-04-07 17:31:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-07 17:31:39', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', '1');
INSERT INTO `sys_role` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '管理员', 'root', '', '120', '', '20', '2018-12-24 13:03:08', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:53:39', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', '0');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(36) NOT NULL,
  `menu_id` varchar(36) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('11dc51e3c049456c912d0c9093e9dbaa', '154e56abaf494269943d4e40015c9ad0');
INSERT INTO `sys_role_menu` VALUES ('11dc51e3c049456c912d0c9093e9dbaa', '1d0b04f75a3b4bb0a7f5bf3c01126424');
INSERT INTO `sys_role_menu` VALUES ('11dc51e3c049456c912d0c9093e9dbaa', '316277d2d6fa47b2b27265f2ba669846');
INSERT INTO `sys_role_menu` VALUES ('11dc51e3c049456c912d0c9093e9dbaa', '679ef59d6f30441ba57a5eb051eb917e');
INSERT INTO `sys_role_menu` VALUES ('11dc51e3c049456c912d0c9093e9dbaa', '89787ef46fe94bc5a470d35d4a4daf05');
INSERT INTO `sys_role_menu` VALUES ('11dc51e3c049456c912d0c9093e9dbaa', '99c78288bf7d43f09b439ab00239ae86');
INSERT INTO `sys_role_menu` VALUES ('11dc51e3c049456c912d0c9093e9dbaa', 'a27863352b9a44c19cf521ba2d56667b');
INSERT INTO `sys_role_menu` VALUES ('11dc51e3c049456c912d0c9093e9dbaa', 'f65cf5c7392c4f79a745fe4776d8f160');
INSERT INTO `sys_role_menu` VALUES ('11dc51e3c049456c912d0c9093e9dbaa', 'faf7229edfcf4172a33d3f3fd44948e7');
INSERT INTO `sys_role_menu` VALUES ('1d661fb8b11a488eb7cbf077ae60fc86', '1d0b04f75a3b4bb0a7f5bf3c01126424');
INSERT INTO `sys_role_menu` VALUES ('1d661fb8b11a488eb7cbf077ae60fc86', '316277d2d6fa47b2b27265f2ba669846');
INSERT INTO `sys_role_menu` VALUES ('1d661fb8b11a488eb7cbf077ae60fc86', '89787ef46fe94bc5a470d35d4a4daf05');
INSERT INTO `sys_role_menu` VALUES ('1d661fb8b11a488eb7cbf077ae60fc86', 'f65cf5c7392c4f79a745fe4776d8f160');
INSERT INTO `sys_role_menu` VALUES ('1d661fb8b11a488eb7cbf077ae60fc86', 'faf7229edfcf4172a33d3f3fd44948e7');
INSERT INTO `sys_role_menu` VALUES ('4132f0579ae54d7399c4337cc3fe44bd', '154e56abaf494269943d4e40015c9ad0');
INSERT INTO `sys_role_menu` VALUES ('4132f0579ae54d7399c4337cc3fe44bd', '1d0b04f75a3b4bb0a7f5bf3c01126424');
INSERT INTO `sys_role_menu` VALUES ('4132f0579ae54d7399c4337cc3fe44bd', '316277d2d6fa47b2b27265f2ba669846');
INSERT INTO `sys_role_menu` VALUES ('4132f0579ae54d7399c4337cc3fe44bd', '3c7f0aa572d648349c594f572af1d97f');
INSERT INTO `sys_role_menu` VALUES ('4132f0579ae54d7399c4337cc3fe44bd', '679ef59d6f30441ba57a5eb051eb917e');
INSERT INTO `sys_role_menu` VALUES ('4132f0579ae54d7399c4337cc3fe44bd', '89787ef46fe94bc5a470d35d4a4daf05');
INSERT INTO `sys_role_menu` VALUES ('4132f0579ae54d7399c4337cc3fe44bd', '99c78288bf7d43f09b439ab00239ae86');
INSERT INTO `sys_role_menu` VALUES ('4132f0579ae54d7399c4337cc3fe44bd', 'f65cf5c7392c4f79a745fe4776d8f160');
INSERT INTO `sys_role_menu` VALUES ('4132f0579ae54d7399c4337cc3fe44bd', 'faf7229edfcf4172a33d3f3fd44948e7');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '154e56abaf494269943d4e40015c9ad0');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '1d0b04f75a3b4bb0a7f5bf3c01126424');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '2063a48f0386449989ce9da033f98741');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '20af27585ca641f1879358fd1bb4f218');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '316277d2d6fa47b2b27265f2ba669846');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '3b58e01e-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '3b5cb607-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '3c7f0aa572d648349c594f572af1d97f');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '3e0b86a3-9adc-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '3e2fa8b6-9adc-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '3e36cf2f-9adc-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '432934148cbb48798c852a01f100f9ed');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '493f9cc85a284e098c047000d59d81f4');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '563f189b651b42168ee6e12b9ff115e4');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '679ef59d6f30441ba57a5eb051eb917e');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '89787ef46fe94bc5a470d35d4a4daf05');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '96fd6a5a-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '9703ccf2-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '9707cf58-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '99c78288bf7d43f09b439ab00239ae86');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'a27863352b9a44c19cf521ba2d56667b');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'e90afb6c6e6c4d0fa4e935517bcc47ef');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'ed63866b30cf46bfb6797a1d31ae930c');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'f65cf5c7392c4f79a745fe4776d8f160');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'faf7229edfcf4172a33d3f3fd44948e7');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'ff619e04-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'ff9477c9-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'ff9ad846-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('8332ea7322704faa8a0fdfc9726d587c', '154e56abaf494269943d4e40015c9ad0');
INSERT INTO `sys_role_menu` VALUES ('8332ea7322704faa8a0fdfc9726d587c', '1d0b04f75a3b4bb0a7f5bf3c01126424');
INSERT INTO `sys_role_menu` VALUES ('8332ea7322704faa8a0fdfc9726d587c', '2063a48f0386449989ce9da033f98741');
INSERT INTO `sys_role_menu` VALUES ('8332ea7322704faa8a0fdfc9726d587c', '20af27585ca641f1879358fd1bb4f218');
INSERT INTO `sys_role_menu` VALUES ('8332ea7322704faa8a0fdfc9726d587c', '316277d2d6fa47b2b27265f2ba669846');
INSERT INTO `sys_role_menu` VALUES ('8332ea7322704faa8a0fdfc9726d587c', '3c7f0aa572d648349c594f572af1d97f');
INSERT INTO `sys_role_menu` VALUES ('8332ea7322704faa8a0fdfc9726d587c', '493f9cc85a284e098c047000d59d81f4');
INSERT INTO `sys_role_menu` VALUES ('8332ea7322704faa8a0fdfc9726d587c', '563f189b651b42168ee6e12b9ff115e4');
INSERT INTO `sys_role_menu` VALUES ('8332ea7322704faa8a0fdfc9726d587c', '679ef59d6f30441ba57a5eb051eb917e');
INSERT INTO `sys_role_menu` VALUES ('8332ea7322704faa8a0fdfc9726d587c', '89787ef46fe94bc5a470d35d4a4daf05');
INSERT INTO `sys_role_menu` VALUES ('8332ea7322704faa8a0fdfc9726d587c', '99c78288bf7d43f09b439ab00239ae86');
INSERT INTO `sys_role_menu` VALUES ('8332ea7322704faa8a0fdfc9726d587c', 'a27863352b9a44c19cf521ba2d56667b');
INSERT INTO `sys_role_menu` VALUES ('8332ea7322704faa8a0fdfc9726d587c', 'e90afb6c6e6c4d0fa4e935517bcc47ef');
INSERT INTO `sys_role_menu` VALUES ('8332ea7322704faa8a0fdfc9726d587c', 'faf7229edfcf4172a33d3f3fd44948e7');
INSERT INTO `sys_role_menu` VALUES ('919acb6b89784f81a2826699c103710e', '154e56abaf494269943d4e40015c9ad0');
INSERT INTO `sys_role_menu` VALUES ('919acb6b89784f81a2826699c103710e', '1d0b04f75a3b4bb0a7f5bf3c01126424');
INSERT INTO `sys_role_menu` VALUES ('919acb6b89784f81a2826699c103710e', '316277d2d6fa47b2b27265f2ba669846');
INSERT INTO `sys_role_menu` VALUES ('919acb6b89784f81a2826699c103710e', '563f189b651b42168ee6e12b9ff115e4');
INSERT INTO `sys_role_menu` VALUES ('919acb6b89784f81a2826699c103710e', '679ef59d6f30441ba57a5eb051eb917e');
INSERT INTO `sys_role_menu` VALUES ('919acb6b89784f81a2826699c103710e', '89787ef46fe94bc5a470d35d4a4daf05');
INSERT INTO `sys_role_menu` VALUES ('919acb6b89784f81a2826699c103710e', '99c78288bf7d43f09b439ab00239ae86');
INSERT INTO `sys_role_menu` VALUES ('919acb6b89784f81a2826699c103710e', 'f65cf5c7392c4f79a745fe4776d8f160');
INSERT INTO `sys_role_menu` VALUES ('919acb6b89784f81a2826699c103710e', 'faf7229edfcf4172a33d3f3fd44948e7');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '154e56abaf494269943d4e40015c9ad0');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '1d0b04f75a3b4bb0a7f5bf3c01126424');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '2063a48f0386449989ce9da033f98741');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '20af27585ca641f1879358fd1bb4f218');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '316277d2d6fa47b2b27265f2ba669846');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '3b58e01e-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '3c7f0aa572d648349c594f572af1d97f');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '3e0b86a3-9adc-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '3e2fa8b6-9adc-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '3e36cf2f-9adc-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '432934148cbb48798c852a01f100f9ed');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '493f9cc85a284e098c047000d59d81f4');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '563f189b651b42168ee6e12b9ff115e4');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '679ef59d6f30441ba57a5eb051eb917e');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '89787ef46fe94bc5a470d35d4a4daf05');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', '99c78288bf7d43f09b439ab00239ae86');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', 'a27863352b9a44c19cf521ba2d56667b');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', 'e90afb6c6e6c4d0fa4e935517bcc47ef');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', 'ed63866b30cf46bfb6797a1d31ae930c');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', 'f65cf5c7392c4f79a745fe4776d8f160');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', 'faf7229edfcf4172a33d3f3fd44948e7');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', 'ff619e04-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', 'ff9477c9-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('c600d2c3320f4685b8d75cb8a6518409', 'ff9ad846-9adb-11e8-aebe-1368d4ec24eb');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(36) NOT NULL COMMENT '用户ID',
  `login_name` varchar(36) DEFAULT NULL COMMENT '登录名',
  `nick_name` varchar(40) DEFAULT NULL COMMENT '昵称',
  `icon` varchar(2000) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL COMMENT '密码',
  `salt` varchar(40) DEFAULT NULL COMMENT 'shiro加密盐',
  `identity` varchar(50) DEFAULT NULL,
  `request_place` varchar(100) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱地址',
  `age` varchar(10) DEFAULT NULL,
  `locked` tinyint(2) DEFAULT NULL COMMENT '是否锁定',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(4) NOT NULL,
  `is_admin` tinyint(2) DEFAULT NULL,
  `credit` double DEFAULT '1.001',
  `own_manager_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('18b8b543-9ad7-11e8-aebe-1368d4ec24eb', 'java', '开发管理员', '/static/upload/339ce6ec-b6cf-48de-ad80-b220bf1cee1f.jpeg', '9c5feb7aba88c7c87bc047c7cec7c6e3b63e1894', '08c5900125b80cd2', 'root', null, '110', 'b@qq.com', '22', '0', '2017-11-27 22:19:39', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 17:45:05', null, '测试', '0', '1', '0.4', null);
INSERT INTO `sys_user` VALUES ('244ed8a411b3464996a6cab8c16048e4', '我是农民', 'I\'m农民', null, 'f3f94fa171a1808edad4cdc9a2bcebae2fa2a234', '8fc3ac51cde539ab', '农田主', '十陵', '13313313313', '133@qq.com', '40', '0', '2018-12-21 21:19:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:41:34', null, null, '0', '1', '1', '');
INSERT INTO `sys_user` VALUES ('57d7a3aa8bdd4f9fa2203f5ca3c07cd0', 'ff', 'ff', null, '6affbcdcd77a80144f6f2ce21c13ee5a0e08d398', '154bb8604475a9e2', '光照管理员', '成都大学', '16016016016', '160@qq.com', '30', '0', '2019-04-09 10:52:04', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:05:30', null, null, '0', '1', '1', null);
INSERT INTO `sys_user` VALUES ('7af9d58e790e413297229a3c2115254f', 'dd', 'dd', null, '2677282477155cd27649aaa579730f2521c0fbd1', '571bc7f8773c14be', '湿度管理员', '成都大学', '15015015015', '150@qq.com', '30', '0', '2019-04-09 10:50:45', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-09 10:50:45', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '0', '1', '1', null);
INSERT INTO `sys_user` VALUES ('a9062e572631452498a721f2f4ec033c', '温度管理员', '温度', '/static/upload/bcc9cef0-4a82-47f5-8f6e-499aa298b2bf.jpg', '05428c3fca02ca2798425d7e691427424c4809cb', 'd771a49c37122490', '温度', '当当', '11011011011', '110@qq.com', '20', '0', '2018-12-25 16:52:47', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-07 14:25:34', 'a9062e572631452498a721f2f4ec033c', '', '0', '1', '1', '244ed8a411b3464996a6cab8c16048e4');
INSERT INTO `sys_user` VALUES ('da6761c227124e568c1e9fe7f2e1cbd7', '测试', '测试', null, '009da81f3a1b55829254d93280646c4619d161ca', 'a4eb4fba8893fd50', '测试', '成大', '13013013013', '130@qq.com', '33', '0', '2019-04-07 17:36:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:49:11', null, null, '0', '1', '1', null);
INSERT INTO `sys_user` VALUES ('e426acc3cf434635a9cbf8c90902e314', 'admin', '管理员', '/static/upload/361d2514-5200-4a7a-9b2c-952e07b8c813.jpeg', '9c5feb7aba88c7c87bc047c7cec7c6e3b63e1894', '08c5900125b80cd2', 'root', '十陵', '120', '120@qq.com', '20', '0', '2018-12-24 13:02:24', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:11:04', null, null, '0', '1', '1', null);
INSERT INTO `sys_user` VALUES ('fcd3c425a4d54d13976f758b8545dff8', '风法师', 'as', null, '05e478d540778388d9708a5b90abb07065cdf955', 'e0e1dac7f508a616', '安抚', '安抚', '15915915915', '159@qq.com', '45', '0', '2018-12-23 18:33:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-23 18:33:20', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '0', '1', '1', null);

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(36) NOT NULL,
  `role_id` varchar(36) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '706e0195-9ad7-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_user_role` VALUES ('244ed8a411b3464996a6cab8c16048e4', '8332ea7322704faa8a0fdfc9726d587c');
INSERT INTO `sys_user_role` VALUES ('57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '919acb6b89784f81a2826699c103710e');
INSERT INTO `sys_user_role` VALUES ('7af9d58e790e413297229a3c2115254f', '11dc51e3c049456c912d0c9093e9dbaa');
INSERT INTO `sys_user_role` VALUES ('a9062e572631452498a721f2f4ec033c', '4132f0579ae54d7399c4337cc3fe44bd');
INSERT INTO `sys_user_role` VALUES ('da6761c227124e568c1e9fe7f2e1cbd7', '1d661fb8b11a488eb7cbf077ae60fc86');
INSERT INTO `sys_user_role` VALUES ('e426acc3cf434635a9cbf8c90902e314', 'c600d2c3320f4685b8d75cb8a6518409');

-- ----------------------------
-- Table structure for `t_farm`
-- ----------------------------
DROP TABLE IF EXISTS `t_farm`;
CREATE TABLE `t_farm` (
  `id` varchar(255) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` varchar(10) DEFAULT '0',
  `userId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_farm
-- ----------------------------
INSERT INTO `t_farm` VALUES ('1', '管理员测试农田01', '成大一期', '100', null, '2018-12-21 15:26:09', null, null, '测试', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb');
INSERT INTO `t_farm` VALUES ('2', 'afa', 'asfas3', '33', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 20:40:40', null, null, 'fasf', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb');
INSERT INTO `t_farm` VALUES ('3', '十陵一期01', '十陵一期', '20', '244ed8a411b3464996a6cab8c16048e4', '2018-12-21 21:50:00', null, null, '', '0', '244ed8a411b3464996a6cab8c16048e4');
INSERT INTO `t_farm` VALUES ('4', 'asd', 'asd', '22', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 20:40:30', null, null, 'ad', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb');
INSERT INTO `t_farm` VALUES ('5', 'ads', 'asagadg', '44', '244ed8a411b3464996a6cab8c16048e4', '2018-12-22 17:15:59', null, null, '', '1', '244ed8a411b3464996a6cab8c16048e4');
INSERT INTO `t_farm` VALUES ('6', 'asdaf', 'faf', '11', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 20:50:00', null, null, 'fa', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb');
INSERT INTO `t_farm` VALUES ('7', 'adasd', 'asdasd', '34', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 19:40:51', null, null, '', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb');
INSERT INTO `t_farm` VALUES ('8', '001', '十陵001', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-03-18 15:00:29', null, null, '', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb');
INSERT INTO `t_farm` VALUES ('9', '测试添加农田02', '十陵', '23', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 20:10:58', null, null, '阿达', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb');
INSERT INTO `t_farm` VALUES ('c4ef24b254f143589aa4b72b1e6d90d5', '3测试', '成都大学', '3', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-03-18 15:23:22', null, null, '003', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb');

-- ----------------------------
-- Table structure for `t_message`
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` varchar(255) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `message_type` varchar(50) DEFAULT NULL,
  `to_user` varchar(255) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_name` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` varchar(10) DEFAULT '0',
  `is_look` varchar(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES ('0adcf94a221741b597d4b8a1b52f30f0', '测试', '测试内容', '测试11', '244ed8a411b3464996a6cab8c16048e4', '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', 'I\'m农民', '2019-04-17 15:40:06', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:40:06', '0', '未读');
INSERT INTO `t_message` VALUES ('1858263a07554150bdebeb93ed1725be', 'aasd', 'ff', 'ff', '244ed8a411b3464996a6cab8c16048e4', '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', 'I\'m农民', '2018-12-23 22:32:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-23 22:32:59', '0', '未读');
INSERT INTO `t_message` VALUES ('25ff0debf573414bb1f13a8838b659d1', '申请修改属性值', '我是管理员申请修改属性值', '属性更改', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '我是管理员', '2018-12-23 15:11:10', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:36:17', '0', '已读');
INSERT INTO `t_message` VALUES ('66c1db5faec446fe8875eee2433c2426', '测试信息', '测试信息', '测试', 'e426acc3cf434635a9cbf8c90902e314', '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '管理员', '2019-04-21 20:21:27', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:21:27', '0', '未读');
INSERT INTO `t_message` VALUES ('82484b9bf4f7403ea61939c3accf5531', '申请修改属性值', '我是管理员申请修改属性值', '属性更改', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '我是管理员', '2018-12-23 18:34:04', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-23 18:34:04', '1', '未读');
INSERT INTO `t_message` VALUES ('8ba25168969b473e89eec3ddca897279', '申请修改属性值', '我是管理员申请修改属性值', '属性更改', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '我是管理员', '2018-12-25 16:53:58', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:38:42', '0', '已读');
INSERT INTO `t_message` VALUES ('ba9c22bb66584162829f77d9a678cd38', '来来来', '啦啦啦啦啦啦', '啦啦啦啦啦', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '我是管理员', '2019-03-15 16:34:56', null, '2018-12-23 20:24:35', '1', '未读');
INSERT INTO `t_message` VALUES ('cf1b9525cb3644fa8bb0da4dad888d40', '申请修改属性值', '我是管理员申请修改属性值', '属性更改', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '我是管理员', '2018-12-25 16:03:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:36:08', '0', '已读');
INSERT INTO `t_message` VALUES ('d2b5a07c98524a90bec45b2bfeaa945e', 'DD', 'D', 'D', '244ed8a411b3464996a6cab8c16048e4', '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', 'I\'m农民', '2019-04-17 15:39:09', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:39:09', '0', '未读');
INSERT INTO `t_message` VALUES ('dd3ebaacc72d458eb1071ba9d037582d', 'afa', 'asf', 'assf', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '我是管理员', '2018-12-23 22:33:34', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:51:03', '0', '已读');
INSERT INTO `t_message` VALUES ('dd9c4d925c734d9eb9db2a4f1136b504', 'ad', 'asfaf', 'asd', '244ed8a411b3464996a6cab8c16048e4', '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', 'I\'m农民', '2019-03-29 16:35:00', null, '2018-12-23 17:28:42', '0', '未读');
INSERT INTO `t_message` VALUES ('edc6a9ed641b440790d4d5f17cb48e81', '申请修改属性值', '我是管理员申请修改属性值', '属性更改', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '我是管理员', '2018-12-23 21:21:26', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:37:40', '0', '已读');
INSERT INTO `t_message` VALUES ('fa225461a1ae4fddba0fa79fc94b3780', 'afasf', 'sdg', 'gdsg', '244ed8a411b3464996a6cab8c16048e4', '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', 'I\'m农民', '2019-03-14 16:35:04', null, '2018-12-23 17:59:48', '0', '未读');

-- ----------------------------
-- Table structure for `user_credit`
-- ----------------------------
DROP TABLE IF EXISTS `user_credit`;
CREATE TABLE `user_credit` (
  `id` varchar(255) NOT NULL,
  `unlogin` int(11) DEFAULT NULL,
  `unauthorized_access` int(11) DEFAULT NULL,
  `repeated_refresh` int(11) DEFAULT NULL,
  `unsafe_logout` int(11) DEFAULT NULL,
  `account_login` int(11) DEFAULT NULL,
  `result` double DEFAULT NULL,
  `is_account` tinyint(4) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` tinyint(4) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_credit
-- ----------------------------
INSERT INTO `user_credit` VALUES ('04aaeb0e97aa4118bc5393a7891dc008', '22', '0', '37', '17', '25', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:12:36', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:12:36', null, null);
INSERT INTO `user_credit` VALUES ('05bef727f596483193b8be38c2c493ec', '6', '0', '1', '3', '3', '0.1', '1', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', null, '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', null, null, null);
INSERT INTO `user_credit` VALUES ('0a6520a8ba3240478583736a886c1edb', '4', '0', '77', '37', '46', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:24:40', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:24:40', null, null);
INSERT INTO `user_credit` VALUES ('0bf6b535b1064c44aa2cc6ba2e72d182', '0', '0', '6', '2', '2', '0.1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:39:02', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:39:02', null, null);
INSERT INTO `user_credit` VALUES ('13dfd9abef594bac9b830d96d27e9298', '0', '0', '4', '3', '3', '0.05', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:50:29', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:50:29', null, null);
INSERT INTO `user_credit` VALUES ('1726da98e59e4dcc92be6d66b88bb440', '0', '0', '3', '2', '2', '0.05', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 11:20:26', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 11:20:26', null, null);
INSERT INTO `user_credit` VALUES ('1a3caa965e41440dbd920fe2714c1abb', '0', '0', '0', '1', '1', '0.05', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:07:35', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:07:35', null, null);
INSERT INTO `user_credit` VALUES ('2bbec375a6fc40b19412efd55e0c6b76', '22', '0', '35', '17', '25', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:12:17', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:12:17', null, null);
INSERT INTO `user_credit` VALUES ('3531104025b84f8188bb4ae1ca2c131b', '0', '0', '18', '2', '3', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:54:20', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:54:20', null, null);
INSERT INTO `user_credit` VALUES ('389f8c5cec37438eb3d31e8570d2f3ef', '0', '0', '2', '1', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:12:48', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:12:48', null, null);
INSERT INTO `user_credit` VALUES ('3a871d2daa734dfcbec4d9b16850b41b', '0', '0', '5', '4', '4', '0.05', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:08:25', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:08:25', null, null);
INSERT INTO `user_credit` VALUES ('476323d437a4407bb3310ae8e38536fb', '0', '0', '2', '1', '1', '0.1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:26:28', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:26:28', null, null);
INSERT INTO `user_credit` VALUES ('4c5877cb5a494cf98e4eb4b739fffdab', '0', '0', '8', '6', '6', '0.05', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:06:37', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:06:37', null, null);
INSERT INTO `user_credit` VALUES ('4cf880cd90554edc9a3d002a365fdbf3', '0', '0', '2', '2', '2', '0.05', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:16:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:16:13', null, null);
INSERT INTO `user_credit` VALUES ('5e8dd1050b8f4059b2413d58d00a394d', '0', '0', '48', '31', '38', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, null, null);
INSERT INTO `user_credit` VALUES ('6c05ea00f8184ae6a420f83b29c0ba19', '0', '0', '16', '2', '2', '0.05', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:15:25', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:15:25', null, null);
INSERT INTO `user_credit` VALUES ('79a7699a5e324376bd762323198ecdc6', '0', '0', '3', '1', '1', '0.05', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:53:23', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:53:23', null, null);
INSERT INTO `user_credit` VALUES ('8fb75b1073fd4b7eb1ab3cb6b6dfb0b4', '22', '0', '38', '17', '25', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:19:22', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:19:22', null, null);
INSERT INTO `user_credit` VALUES ('a6e48a48c443433ab18612214c4d70be', '0', '0', '3', '1', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:21:01', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:21:01', null, null);
INSERT INTO `user_credit` VALUES ('ad4d106921d146f8af6d2fa0895a6cd9', '1', '0', '57', '9', '9', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:35:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:35:55', null, null);
INSERT INTO `user_credit` VALUES ('c71ebe817d4d4bb8add6bfcc00d17671', '0', '0', '1', '2', '2', '0.1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:25:12', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:25:12', null, null);
INSERT INTO `user_credit` VALUES ('c7686c96494b4b109c7aa6643fb15940', '22', '0', '36', '17', '25', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:12:20', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:12:20', null, null);
INSERT INTO `user_credit` VALUES ('c98abf198a3d40a4ae90f97c261d8d02', '6', '0', '4', '3', '3', '0.1', '1', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', null, '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', null, null, null);
INSERT INTO `user_credit` VALUES ('d1dc67dba2c340a3a318f2b741e853e4', '0', '0', '30', '3', '4', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 17:43:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 17:43:41', null, null);
INSERT INTO `user_credit` VALUES ('dd5ca2a22a9743a395d9d54ac0f1a095', '1', '0', '87', '25', '26', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 23:00:34', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 23:00:34', null, null);
INSERT INTO `user_credit` VALUES ('dfcef35c77fc4d119debd5862a8800d6', '0', '0', '5', '1', '1', '0.05', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:17:31', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:17:31', null, null);
INSERT INTO `user_credit` VALUES ('e8485092c8cf497d900a85732c3fdd06', '0', '0', '4', '1', '1', '0.2', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:29:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:29:13', null, null);
INSERT INTO `user_credit` VALUES ('f95787b58a604ebb93d207927cafc31b', '0', '0', '3', '1', '1', '0.1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:28:38', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:28:38', null, null);
INSERT INTO `user_credit` VALUES ('fe822cc529204eb499e520eb790a81d8', '0', '0', '6', '4', '4', '0.05', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:36', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:36', null, null);
