/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : comadmin

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-05-04 22:06:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `farm_own_manager`
-- ----------------------------
DROP TABLE IF EXISTS `farm_own_manager`;
CREATE TABLE `farm_own_manager` (
  `id` varchar(255) NOT NULL,
  `farm_own_id` varchar(255) NOT NULL,
  `farm_manager_id` varchar(255) NOT NULL,
  `farm_own_nick_name` varchar(255) DEFAULT NULL,
  `farm_manager_nick_name` varchar(255) DEFAULT NULL,
  `farm_manager_type` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`farm_own_id`,`farm_manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of farm_own_manager
-- ----------------------------
INSERT INTO `farm_own_manager` VALUES ('asdag', '244ed8a411b3464996a6cab8c16048e4', 'a9062e572631452498a721f2f4ec033c', null, null, null, null);
INSERT INTO `farm_own_manager` VALUES ('fggjkk', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '7af9d58e790e413297229a3c2115254f', '开发管理员', '湿度dd', '湿度管理员', '2019-05-03 16:20:54');
INSERT INTO `farm_own_manager` VALUES ('gasga', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '开发管理员', '光照管理员01', '光照管理员', '2019-05-04 15:53:11');

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
INSERT INTO `login_data` VALUES ('0006c6f8598645f3bcb18a3d5b47c70c', '0', '0', '3', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:12:06', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:18:49', '0', null);
INSERT INTO `login_data` VALUES ('00ec1b85c2bd4844aaf1f6f0baaf2197', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:53:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:53:41', '0', null);
INSERT INTO `login_data` VALUES ('011948caa23d404caa6a3969b97affcd', '0', '0', '8', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:10:10', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:16:13', '0', null);
INSERT INTO `login_data` VALUES ('01ed461208ee49698e7bbfe6b391dadc', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-30 14:33:06', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-30 14:33:06', '0', null);
INSERT INTO `login_data` VALUES ('027a9d18100746e8886dbb2230dd229a', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:36:15', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:36:15', '0', null);
INSERT INTO `login_data` VALUES ('0329714d1f52475b984f9bf36bf8fa0a', '0', '0', '1', '1', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 13:56:30', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 13:57:13', '0', null);
INSERT INTO `login_data` VALUES ('0376fed837894c0f8086f1205420d5a8', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:05:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:05:54', '0', null);
INSERT INTO `login_data` VALUES ('04778b6855f94e1c83ea476ab2444f58', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:12:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:12:32', '0', null);
INSERT INTO `login_data` VALUES ('059f51a4686e495abfb417a817d9d007', '0', '0', '42', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-29 20:06:22', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-29 20:58:00', '0', null);
INSERT INTO `login_data` VALUES ('068a63dd2ea84cb9bc3d50b8199fda69', '0', '0', '5', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:06:27', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:09:53', '0', null);
INSERT INTO `login_data` VALUES ('06b5a1e7cd824d05b3e567e6d9a44143', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 12:08:42', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 12:08:42', '0', null);
INSERT INTO `login_data` VALUES ('06df3eb039cf4dc9a94cb16ba2842f84', '0', '0', '38', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:45:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:13:20', '0', null);
INSERT INTO `login_data` VALUES ('074a8d8876de4be48510fe0e0d5dac37', '0', '0', '5', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:55:39', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:56:45', '0', null);
INSERT INTO `login_data` VALUES ('0775948477fc4de4bc031e014c3b6746', '0', '0', '3', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:22:15', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:29:37', '0', null);
INSERT INTO `login_data` VALUES ('07ac438eb16c409287c0bbb8b197b3d8', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 15:39:00', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 15:39:00', '0', null);
INSERT INTO `login_data` VALUES ('080971836d814e4cb21e5219b0ac13f1', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:21:10', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:21:10', '0', null);
INSERT INTO `login_data` VALUES ('081c36d266b94ad18bf7d50598edf072', '0', '0', '1', '1', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-25 14:28:41', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-25 14:55:58', '0', null);
INSERT INTO `login_data` VALUES ('085002b284b4441085b8eb456d7c71ca', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:46:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:46:17', '0', null);
INSERT INTO `login_data` VALUES ('09ad3d5af2644583a84aee81b978c170', '0', '0', '12', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-29 22:25:53', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-29 22:29:11', '0', null);
INSERT INTO `login_data` VALUES ('0a81d24ef22441548110a75491df17c1', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:58:20', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:58:20', '0', null);
INSERT INTO `login_data` VALUES ('0afb8019c6dc4ec7be2b4bfd188a927f', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-16 21:42:22', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-16 21:42:22', '0', null);
INSERT INTO `login_data` VALUES ('0c00da8ce25d41c38644a125c53eaec7', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:16:52', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:16:52', '0', null);
INSERT INTO `login_data` VALUES ('0c2405dfab97469b8608268832278e0d', '0', '0', '4', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:54:36', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:00:30', '0', null);
INSERT INTO `login_data` VALUES ('0cf65b26eac8489594ff52446df32333', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:12:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:12:32', '0', null);
INSERT INTO `login_data` VALUES ('0d0a0bebe74d4e16a2b0f81335a4dde7', '0', '0', '2', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:18:13', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:19:37', '0', null);
INSERT INTO `login_data` VALUES ('0d320488dcd54fef9c5fe1043c9a3497', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:53:50', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:53:50', '0', null);
INSERT INTO `login_data` VALUES ('0e24b700c0864f83a4b50e6a1010087f', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 20:01:47', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 20:01:47', '0', null);
INSERT INTO `login_data` VALUES ('0e274f96093b49ac91f390d1671a33ea', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:15:48', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:15:48', '0', null);
INSERT INTO `login_data` VALUES ('0e29ac33ffcf47d1a7940cce2f24f094', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 13:56:30', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 13:56:30', '0', null);
INSERT INTO `login_data` VALUES ('0eac1e426f12404195930957a43bdf06', '1', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:51:52', null, '2019-04-21 22:05:05', '0', null);
INSERT INTO `login_data` VALUES ('0f0573a737984c6bb897db69eab90fad', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:37:57', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:37:57', '0', null);
INSERT INTO `login_data` VALUES ('101ed30f81414b539ef35b0a6770cd1b', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:16:40', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:16:40', '0', null);
INSERT INTO `login_data` VALUES ('10a6e1927a8c47f787dde938e9f99fec', '0', '0', '1', '1', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:41:09', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:42:02', '0', null);
INSERT INTO `login_data` VALUES ('1177876257884b799b232cbca3acad38', '0', '0', '1', '1', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-30 14:33:06', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-30 14:33:44', '0', null);
INSERT INTO `login_data` VALUES ('11bd4ba480734defbd12050b28b35bf3', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:55:46', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:55:46', '0', null);
INSERT INTO `login_data` VALUES ('131620e488d84ee9bd3a1b0c52ee2f71', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 17:56:19', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 17:56:19', '0', null);
INSERT INTO `login_data` VALUES ('1427a9440f114971ad8c6dd6d78386d6', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:15:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:15:27', '0', null);
INSERT INTO `login_data` VALUES ('14ef4b4f252741f6b170b59afe92c639', '0', '0', '1', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 21:41:30', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 21:41:30', '0', null);
INSERT INTO `login_data` VALUES ('14fa15ffefea4b298617aa19cdbbc63b', '0', '0', '0', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-16 20:58:05', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-16 20:58:37', '0', null);
INSERT INTO `login_data` VALUES ('15d60d08ebbd40edab601efdf6c9d2e6', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:23:26', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:23:26', '0', null);
INSERT INTO `login_data` VALUES ('1686416239b9454cac280b3c2f078415', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:59:23', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:59:23', '0', null);
INSERT INTO `login_data` VALUES ('16f934b448fd4f4e897e39e71ccf643e', '0', '0', '2', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:17:43', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:17:46', '0', null);
INSERT INTO `login_data` VALUES ('170197db77b24be6b74dd1935c10b014', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 23:12:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 23:15:13', '0', null);
INSERT INTO `login_data` VALUES ('1725752d26d1413089847ac384f240d1', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:05:12', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:05:12', '0', null);
INSERT INTO `login_data` VALUES ('17d75163350a4af9ae0bbc97c07dd4a7', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:06:27', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:06:27', '0', null);
INSERT INTO `login_data` VALUES ('17fae845f8b7437fbc85163f1498921c', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:48:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:48:41', '0', null);
INSERT INTO `login_data` VALUES ('182ec52b40c84eaa81ba77ad7ff5248d', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 17:54:16', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 17:54:16', '0', null);
INSERT INTO `login_data` VALUES ('191e3a52725940aba74f8bd6f13fa38c', '0', '0', '2', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:27', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:42', '0', null);
INSERT INTO `login_data` VALUES ('194ecfc470ce428680e1b60160e69d68', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 14:43:49', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 14:43:49', '0', null);
INSERT INTO `login_data` VALUES ('1a82081e9fd94602999bceba8221b300', '0', '0', '1', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:08:00', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:09:17', '0', null);
INSERT INTO `login_data` VALUES ('1a9dc5ac36f5484fa05e27d1b627ebdd', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:14:39', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:14:39', '0', null);
INSERT INTO `login_data` VALUES ('1b463a0a921c468d9962fad083760133', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-24 13:40:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-24 13:40:13', '0', null);
INSERT INTO `login_data` VALUES ('1b4eaaea8d1f40deb461729a86ee934c', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:04:35', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:04:35', '0', null);
INSERT INTO `login_data` VALUES ('1b6a7937d2a64822af5988c82acfbd8e', '0', '0', '5', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:36:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:40:22', '0', null);
INSERT INTO `login_data` VALUES ('1e5bff931619497da0465c8f8c3a92f6', '0', '0', '4', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:30:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:38:14', '0', null);
INSERT INTO `login_data` VALUES ('1eb4c07f397541879c10e079d11aaa09', '1', '0', '1', '1', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-03 15:32:01', null, '2019-05-03 16:49:23', '0', null);
INSERT INTO `login_data` VALUES ('1f8e7aaef0fc427f82abb83a53af3ab6', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 15:39:00', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 15:39:00', '0', null);
INSERT INTO `login_data` VALUES ('202935790cb84d249fe5c2e269c2e5f3', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:56:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:56:55', '0', null);
INSERT INTO `login_data` VALUES ('204584973e604de19ded4c5da50672db', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:17:14', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:17:43', '0', null);
INSERT INTO `login_data` VALUES ('20475923d75f49f483707fa3b8a5f3f1', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:56:28', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:56:28', '0', null);
INSERT INTO `login_data` VALUES ('207edef1df3c4bf887ca30727a1d96ab', '0', '0', '0', '0', '0', '244ed8a411b3464996a6cab8c16048e4', '244ed8a411b3464996a6cab8c16048e4', '2019-04-17 15:43:22', '244ed8a411b3464996a6cab8c16048e4', '2019-04-17 15:43:22', '0', null);
INSERT INTO `login_data` VALUES ('20a7cd64d3274acfab035771b218e790', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 13:58:06', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 13:58:06', '0', null);
INSERT INTO `login_data` VALUES ('21b14e4e800e4c76adbd97208124dc56', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:57:38', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:57:38', '0', null);
INSERT INTO `login_data` VALUES ('2231ef0d2d4a4b89a20ac58fb6a2ce87', '0', '0', '14', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:49:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 21:06:31', '0', null);
INSERT INTO `login_data` VALUES ('22cf969f99b046f68dd8e4e0eacc858f', '0', '0', '27', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:06:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 23:12:06', '0', null);
INSERT INTO `login_data` VALUES ('23072185d0294c49b2aa51dbd1df078e', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 14:36:58', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 14:36:58', '0', null);
INSERT INTO `login_data` VALUES ('24e005127f7346f681f853b6a2070772', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-24 13:40:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-24 13:40:13', '0', null);
INSERT INTO `login_data` VALUES ('256f30ea82dd41868c36fda34c024b12', '0', '0', '5', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:24:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:29:17', '0', null);
INSERT INTO `login_data` VALUES ('26338605b14448c09eeae83db770f46a', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:53:50', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:53:50', '0', null);
INSERT INTO `login_data` VALUES ('2690781ca8c04145bf6643381b2faba3', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:12:21', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:12:21', '0', null);
INSERT INTO `login_data` VALUES ('26ffc3fa125b4a4db7b9a1b4ac0822e7', '0', '0', '2', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:15:18', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:15:37', '0', null);
INSERT INTO `login_data` VALUES ('2784f17b81bd45dabf35bb7368f5e7ca', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:23:08', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:23:08', '0', null);
INSERT INTO `login_data` VALUES ('279f68a4a4b7457784041b0047e27592', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:54:36', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:54:36', '0', null);
INSERT INTO `login_data` VALUES ('27a7ae0c27644c52b0f8c1aafd5d0133', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:43:03', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:43:03', '0', null);
INSERT INTO `login_data` VALUES ('27e54471a998416a8641d2c0d81fc788', '0', '0', '16', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:43:03', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 17:19:06', '0', null);
INSERT INTO `login_data` VALUES ('2851b49025274e7ca49e0e701de66555', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:12:03', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:12:03', '0', null);
INSERT INTO `login_data` VALUES ('28ee52155d584198981c0706ded47dee', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:08:44', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:08:44', '0', null);
INSERT INTO `login_data` VALUES ('28f4dc12e2934466bc2ed2fda43b82d3', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:33:20', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:33:20', '0', null);
INSERT INTO `login_data` VALUES ('28f7e86e98d74b8cb88942db8b2cd3d3', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:09:12', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:09:12', '0', null);
INSERT INTO `login_data` VALUES ('2982c5203f0d49c5b029134c9660481b', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 23:12:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 23:12:17', '0', null);
INSERT INTO `login_data` VALUES ('29dfb1769c534bb4ae6ea9808a5a3662', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:36:30', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:36:30', '0', null);
INSERT INTO `login_data` VALUES ('2abe2c05f5904b27a97ddfc5433cfc3b', '0', '0', '0', '0', '0', '0cf3855b-d32b-4a8c-aab3-5e1ab5f0d07b', '0cf3855b-d32b-4a8c-aab3-5e1ab5f0d07b', '2019-05-03 15:37:44', '0cf3855b-d32b-4a8c-aab3-5e1ab5f0d07b', '2019-05-03 15:37:44', '0', null);
INSERT INTO `login_data` VALUES ('2ba8f7c6b8284d069bad32afd3af85b8', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:53:00', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:53:00', '0', null);
INSERT INTO `login_data` VALUES ('2c4bbcd74f3140fb8f5dcab1b3e76816', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 20:58:17', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 20:58:17', '0', null);
INSERT INTO `login_data` VALUES ('2d4829124fdf43f78a8baecfc37b554c', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:02:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:02:54', '0', null);
INSERT INTO `login_data` VALUES ('2d63a51316d94f1098753d664a82a139', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:32:18', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:32:18', '0', null);
INSERT INTO `login_data` VALUES ('2dafc102d2ff45f8b3a16ee44bc19789', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:38:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:38:55', '0', null);
INSERT INTO `login_data` VALUES ('2ed24b8999464404819b54fb0c71b9dc', '0', '0', '28', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 21:11:30', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 21:18:42', '0', null);
INSERT INTO `login_data` VALUES ('30d516a0dc994c6d99e704fbae184d4c', '0', '0', '23', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:51:48', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 17:07:41', '0', null);
INSERT INTO `login_data` VALUES ('3116c36a3bec491283a61fcf2d506566', '0', '0', '3', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:40:15', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:44:07', '0', null);
INSERT INTO `login_data` VALUES ('312950c53e2b436d81a393bedc43445e', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:36:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:36:17', '0', null);
INSERT INTO `login_data` VALUES ('3146002462384d2d85c8d238f1451f86', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:22:04', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:22:04', '0', null);
INSERT INTO `login_data` VALUES ('31960af764df41498e3930adaa342e63', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 16:49:30', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 16:49:30', '0', null);
INSERT INTO `login_data` VALUES ('3330a6adaca848d9b00b6e5e2132f29d', '0', '0', '8', '1', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 14:00:00', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 14:08:32', '0', null);
INSERT INTO `login_data` VALUES ('335cba70b4874e45a78b1dea4616d336', '0', '0', '2', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:33:31', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:34:43', '0', null);
INSERT INTO `login_data` VALUES ('33c451bebe9a4dec84dc87e8a88ca26d', '0', '0', '5', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:49:10', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:54:21', '0', null);
INSERT INTO `login_data` VALUES ('34663223c0604957b089ec18ab118334', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 17:25:42', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 17:25:42', '0', null);
INSERT INTO `login_data` VALUES ('34691299d92d458480c11e13cb0df813', '1', '0', '6', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:03:00', null, '2019-04-26 22:12:09', '0', null);
INSERT INTO `login_data` VALUES ('3745cc9234264cbf9010c133c89880a8', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:16:52', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:16:52', '0', null);
INSERT INTO `login_data` VALUES ('37d5094b80a341d7b4e1bca977318094', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:04:02', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:04:02', '0', null);
INSERT INTO `login_data` VALUES ('37eff680828744acba5bdf7939da2d91', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:40:29', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:40:29', '0', null);
INSERT INTO `login_data` VALUES ('39ad3596a7db45868459f22d84a9b8f6', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 18:36:33', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 18:36:33', '0', null);
INSERT INTO `login_data` VALUES ('39e7709abdf34e258aaff2b21a0a26fa', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:53:03', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:53:04', '0', null);
INSERT INTO `login_data` VALUES ('3a007827f94c44a993bad4a8857bfd93', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:56:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:56:55', '0', null);
INSERT INTO `login_data` VALUES ('3ab4e45712644499978f9cc468465360', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:43:44', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:43:44', '0', null);
INSERT INTO `login_data` VALUES ('3ae9b40155bb47a08a5aecf85f5b7888', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 21:11:30', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 21:11:30', '0', null);
INSERT INTO `login_data` VALUES ('3c0d7dcb50f04f479ba3c1d79fe7b9b8', '0', '0', '3', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:53:20', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:53:36', '0', null);
INSERT INTO `login_data` VALUES ('3c688e64239248ffac0069db089c3041', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:33:58', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:33:58', '0', null);
INSERT INTO `login_data` VALUES ('3d86745acdcd4684a03585c1187d406d', '0', '0', '3', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-30 13:18:56', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-30 13:20:06', '0', null);
INSERT INTO `login_data` VALUES ('3dbcde31243d43c882b6e8e21805437b', '0', '0', '1', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 21:37:35', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 21:37:35', '0', null);
INSERT INTO `login_data` VALUES ('3dcd834c88e846ff8591323f6f42ab89', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:15:30', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:15:30', '0', null);
INSERT INTO `login_data` VALUES ('3e3dceb3224c487dbedf4fc295c751f0', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:33:20', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:33:20', '0', null);
INSERT INTO `login_data` VALUES ('3f3aa5fa106a440ca90c8abb5c74449a', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:13:56', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:13:56', '0', null);
INSERT INTO `login_data` VALUES ('414eb22808534c18899e0c93d5605a4c', '0', '0', '2', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:35:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:36:18', '0', null);
INSERT INTO `login_data` VALUES ('428cd8f5b93544839dc5925d5a101145', '0', '0', '4', '1', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 20:01:47', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 20:06:08', '0', null);
INSERT INTO `login_data` VALUES ('43eaab5899e74000996986c1e2c1e7a1', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:39:12', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:39:12', '0', null);
INSERT INTO `login_data` VALUES ('458caeaa40724180a3b845c995b666bb', '0', '0', '2', '1', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:47:03', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:47:43', '0', null);
INSERT INTO `login_data` VALUES ('45cfb3f974b04a10838573cbc3081f08', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:36:30', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:36:30', '0', null);
INSERT INTO `login_data` VALUES ('462dcb355f354f4bbf96e3446c827bb2', '0', '0', '2', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:40:29', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:41:27', '0', null);
INSERT INTO `login_data` VALUES ('46500c62d495463bba66859187e96168', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:36:53', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:36:53', '0', null);
INSERT INTO `login_data` VALUES ('479a8726d10a40f0b93257054ba2429e', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:51:48', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:51:48', '0', null);
INSERT INTO `login_data` VALUES ('482599792cc041749f2331a71a3eb94b', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:59:23', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:59:23', '0', null);
INSERT INTO `login_data` VALUES ('484db55f706547ec8a7dc6fbaa3045e6', '0', '0', '1', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 21:31:35', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 21:31:35', '0', null);
INSERT INTO `login_data` VALUES ('48db31c56cb540a48f99e5162a18ffb5', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:40:15', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:40:15', '0', null);
INSERT INTO `login_data` VALUES ('49253d362447464193cff57092372115', '0', '0', '3', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:39:12', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:42:02', '0', null);
INSERT INTO `login_data` VALUES ('497386caf7c441149b54e54e800aa11c', '2', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:39:09', null, '2019-04-27 16:40:24', '0', null);
INSERT INTO `login_data` VALUES ('4a4d3f677eb24a3ab63ba77a56969746', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 18:59:39', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 18:59:39', '0', null);
INSERT INTO `login_data` VALUES ('4ad652ecb27447769e58e8b577a2f849', '0', '0', '1', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 16:46:32', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 16:46:32', '0', null);
INSERT INTO `login_data` VALUES ('4b07f8651ade4d37b7ac43899d81e178', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:36:30', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:36:30', '0', null);
INSERT INTO `login_data` VALUES ('4b69af3bbc1046f8801a7a3f134e1a71', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:00:49', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:00:49', '0', null);
INSERT INTO `login_data` VALUES ('4b74e3560cce4f59aa881742a486b47a', '0', '0', '13', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:59:01', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:11:03', '0', null);
INSERT INTO `login_data` VALUES ('4ba8aa9dbfb54580aa347a5edbef77b2', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:45:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:45:55', '0', null);
INSERT INTO `login_data` VALUES ('4bdded2a257846ff99537bbe725957f9', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:41:13', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:41:13', '0', null);
INSERT INTO `login_data` VALUES ('4c52712fea4047ddaa2254dc8e3222bb', '0', '0', '10', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:17:31', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:25:45', '0', null);
INSERT INTO `login_data` VALUES ('4d2aa2353cf745b7abe005a6f5a36556', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:01:26', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:01:26', '0', null);
INSERT INTO `login_data` VALUES ('4de7ecbaa797423a97141a9fda59154d', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:15:48', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:15:48', '0', null);
INSERT INTO `login_data` VALUES ('4f2e85657c7e4e888f8e54998ad1b1fb', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:37:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:37:54', '0', null);
INSERT INTO `login_data` VALUES ('4f39c7b9ec3a4e6aaf1df0acf76dc4a6', '0', '0', '20', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:16:23', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:31:51', '0', null);
INSERT INTO `login_data` VALUES ('51b0892ed6104009901ce995e3052acb', '0', '0', '1', '1', '0', 'a9062e572631452498a721f2f4ec033c', 'a9062e572631452498a721f2f4ec033c', '2019-05-04 14:42:47', 'a9062e572631452498a721f2f4ec033c', '2019-05-04 14:43:39', '0', null);
INSERT INTO `login_data` VALUES ('52e06c0b1e74469c9217af29fa930a92', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:27:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:27:17', '0', null);
INSERT INTO `login_data` VALUES ('53c8c16a75674c9984e80fe27ec78979', '0', '0', '4', '1', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-03 14:39:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-03 15:31:51', '0', null);
INSERT INTO `login_data` VALUES ('53c9a6d7c22b4d8388caeb6c9c0adb3b', '0', '0', '3', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 15:04:57', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 15:10:44', '0', null);
INSERT INTO `login_data` VALUES ('53d178471f1f43a9878e65a3fcece68d', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:15:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:15:17', '0', null);
INSERT INTO `login_data` VALUES ('543b9862555640cf9a4d97cf192fad4a', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:29:56', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:29:56', '0', null);
INSERT INTO `login_data` VALUES ('549696eb27fe45d0a9f6b617d62515c3', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:27:53', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:27:53', '0', null);
INSERT INTO `login_data` VALUES ('549948f4d20246458d44f8555663e530', '2', '0', '71', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-29 20:58:45', null, '2019-04-29 22:25:43', '0', null);
INSERT INTO `login_data` VALUES ('550d394163c543f0a06cd3208fbb4577', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:05:14', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:05:14', '0', null);
INSERT INTO `login_data` VALUES ('58232fc48b2a48ab98710da258c724a5', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:41:47', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:41:47', '0', null);
INSERT INTO `login_data` VALUES ('58c1c6bb6ac64c0e8fd9e5638d98a028', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:30:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:30:13', '0', null);
INSERT INTO `login_data` VALUES ('5957ac5d63074e4c896b367dd2b95163', '0', '0', '0', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-16 20:59:45', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-16 21:00:21', '0', null);
INSERT INTO `login_data` VALUES ('5aa4f094687c4430b1507241589f0406', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-03 21:34:51', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-03 21:34:51', '0', null);
INSERT INTO `login_data` VALUES ('5adc8fc9e726454da5499763292ec214', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:33:58', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:33:58', '0', null);
INSERT INTO `login_data` VALUES ('5b5161e5997342dea761c900f0e0e50e', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:52:35', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:52:35', '0', null);
INSERT INTO `login_data` VALUES ('5c5376000d96406bae5d5c449579e10d', '0', '0', '2', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:55:46', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:56:28', '0', null);
INSERT INTO `login_data` VALUES ('5d707a5be42349dcb1bd4c9e056fbf00', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:55:37', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:55:37', '0', null);
INSERT INTO `login_data` VALUES ('5da8f454381b4964a552e53b90200d6d', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:20:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:20:52', '0', null);
INSERT INTO `login_data` VALUES ('5dcef28cea584c9ab58e60581f9624b8', '0', '0', '2', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:32:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:40:22', '0', null);
INSERT INTO `login_data` VALUES ('5e080b4ee3e64076bd3ff03922c3491a', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-03 21:34:51', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-03 21:34:51', '0', null);
INSERT INTO `login_data` VALUES ('5e122bafe14a476db46ad887ae3c3b30', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:53:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:53:41', '0', null);
INSERT INTO `login_data` VALUES ('5e28402b6bc04b19a93588f1aa3f75a5', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-28 10:36:22', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:36:22', '0', null);
INSERT INTO `login_data` VALUES ('5f84402098b74473af3cb6f6aaf03936', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:06:03', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:06:03', '0', null);
INSERT INTO `login_data` VALUES ('5f86bda93f2b4c43b182394a31d15c51', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:39:47', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:39:47', '0', null);
INSERT INTO `login_data` VALUES ('600c498e3f4e47f09c05db93da80c4ae', '0', '0', '4', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 11:18:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 11:20:27', '0', null);
INSERT INTO `login_data` VALUES ('60b819fc60ea4c08a84f7df477759151', '0', '0', '3', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:17:29', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:17:59', '0', null);
INSERT INTO `login_data` VALUES ('60c953344f8d4d459b6e1f57aeb8ae18', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 18:43:57', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 18:43:57', '0', null);
INSERT INTO `login_data` VALUES ('60ec0c71a0b943d0aa00ab9a427db7db', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 18:56:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 18:56:59', '0', null);
INSERT INTO `login_data` VALUES ('611978d2a062498ba28c2cdf1cb06aeb', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:21:15', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:21:15', '0', null);
INSERT INTO `login_data` VALUES ('6147e0a62e2343648f65d869b39e1bc5', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:37:51', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:37:51', '0', null);
INSERT INTO `login_data` VALUES ('6173e7db1cf1458b873c4e524aa815b7', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:59:36', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:01:17', '0', null);
INSERT INTO `login_data` VALUES ('6183f633cf5e4d10be0956aa589ee789', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:34:22', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:34:22', '0', null);
INSERT INTO `login_data` VALUES ('61bc693acefe442f8c81cab8b849b137', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 21:08:05', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 21:08:05', '0', null);
INSERT INTO `login_data` VALUES ('62caf728309a4b2980ade0d6c440d3ba', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:24:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:24:59', '0', null);
INSERT INTO `login_data` VALUES ('65927ea4a5a34bd28bdf5043b5ead24b', '0', '0', '2', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:58:20', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:00:14', '0', null);
INSERT INTO `login_data` VALUES ('6647e745529147079add86020d64cd69', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 13:42:31', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 13:42:31', '0', null);
INSERT INTO `login_data` VALUES ('66c71ca570474b83b8fefabf680a1b17', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:48:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:48:41', '0', null);
INSERT INTO `login_data` VALUES ('68cf340361c0483892a80cd6eacabb41', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-30 13:18:56', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-30 13:18:56', '0', null);
INSERT INTO `login_data` VALUES ('68d1dfe1588f416fa22f1d5187d8e547', '0', '0', '1', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 16:49:30', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 16:49:30', '0', null);
INSERT INTO `login_data` VALUES ('68ee011cf6694a65985dfbf7dedec45c', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:03:19', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:03:19', '0', null);
INSERT INTO `login_data` VALUES ('6acaecd4b5214118b63cf29590565ac6', '0', '0', '6', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:05:00', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:15:51', '0', null);
INSERT INTO `login_data` VALUES ('6b3f847be18d4f9db741e30ecadb45a0', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:35:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:35:59', '0', null);
INSERT INTO `login_data` VALUES ('6bc12e7f88244c60ad26e98b7563dc3c', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:34:22', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:34:22', '0', null);
INSERT INTO `login_data` VALUES ('6bf9e675e4ca476bac37ff8793bae963', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:04:02', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:04:02', '0', null);
INSERT INTO `login_data` VALUES ('6c0ef713a5e747cdacd91e464a2aef35', '0', '0', '3', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:00:44', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:03:17', '0', null);
INSERT INTO `login_data` VALUES ('6d400a735e694e36b2339f871d31cca3', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 21:37:35', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 21:37:35', '0', null);
INSERT INTO `login_data` VALUES ('6d71c3dc219d427aa3fc954cf9d7b481', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:35:41', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:35:41', '0', null);
INSERT INTO `login_data` VALUES ('6dcb197ec63443968abbead3a2482a8f', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:17:14', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:17:14', '0', null);
INSERT INTO `login_data` VALUES ('6e0c35ee759b4eb5927a639ab6e7b91a', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 11:18:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 11:18:17', '0', null);
INSERT INTO `login_data` VALUES ('6ed488e126c940d899c2478eb81129e0', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:22:15', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:22:15', '0', null);
INSERT INTO `login_data` VALUES ('7009e291857f44aca4c613ff225a340d', '0', '0', '5', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:11:22', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:12:39', '0', null);
INSERT INTO `login_data` VALUES ('70d4d8167a284b61a1ea91f232354e4a', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 12:08:42', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-20 12:09:33', '0', null);
INSERT INTO `login_data` VALUES ('71fe830c29664b1c9fc93f79205139a1', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 17:48:27', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 17:50:17', '0', null);
INSERT INTO `login_data` VALUES ('73cb47993dc843fca451c5766d0140d2', '0', '0', '12', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 19:51:42', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 19:59:35', '0', null);
INSERT INTO `login_data` VALUES ('751ccb4ce458490b883613080589708d', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:25:05', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:25:05', '0', null);
INSERT INTO `login_data` VALUES ('753ac3c8bf704c2090de35b74724bbbe', '4', '0', '10', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 17:43:17', null, '2019-04-17 17:59:51', '0', null);
INSERT INTO `login_data` VALUES ('755f70d5166d49a99c6d1250cf381fe6', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:17:31', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:17:31', '0', null);
INSERT INTO `login_data` VALUES ('758cdfdcec2148069e9ad6235e9d39ec', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 14:43:49', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 14:43:49', '0', null);
INSERT INTO `login_data` VALUES ('75c41960353e45be94083183c241bc3f', '0', '0', '5', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-24 10:52:45', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-24 12:16:30', '0', null);
INSERT INTO `login_data` VALUES ('785ab4fdcdf44e85a8e77f030e152d84', '0', '0', '2', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:13:23', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:14:29', '0', null);
INSERT INTO `login_data` VALUES ('787294b89d3a4dc1b89692d1dc3dff8c', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 17:43:37', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 17:43:42', '0', null);
INSERT INTO `login_data` VALUES ('7933e978ace24f328e96c22de3a4aaff', '0', '0', '27', '1', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-30 13:21:40', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-30 13:42:20', '0', null);
INSERT INTO `login_data` VALUES ('7aaee99bfd6742ae8d364003ed36bb77', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:27:42', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:27:42', '0', null);
INSERT INTO `login_data` VALUES ('7b106d2331bc41b8980351c5c4dd554b', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:05:12', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:05:12', '0', null);
INSERT INTO `login_data` VALUES ('7bf7a845c5d24e84b6cd51eb397eca77', '0', '0', '4', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:42:27', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:47:02', '0', null);
INSERT INTO `login_data` VALUES ('7c3dd700bd56494f9e6a9169c913723d', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:29:35', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:29:35', '0', null);
INSERT INTO `login_data` VALUES ('7c8c774b956a49b8b5dbb9cfb97a733e', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:53:00', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:53:00', '0', null);
INSERT INTO `login_data` VALUES ('7de741056c644e0380068861e579543a', '0', '0', '4', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-16 21:07:58', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-16 21:09:14', '0', null);
INSERT INTO `login_data` VALUES ('7e778a3aa2244391b93d1cc853434d23', '0', '0', '1', '1', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:37:57', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:38:42', '0', null);
INSERT INTO `login_data` VALUES ('7ef0d45baeb34a36b9b84196436036cf', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-16 21:42:28', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-16 21:42:28', '0', null);
INSERT INTO `login_data` VALUES ('7ff9fc26ab334c0ba59cc187c2eca538', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:01:26', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:01:26', '0', null);
INSERT INTO `login_data` VALUES ('80f935d541764a778f6257881d3b46b7', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:42:16', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:42:16', '0', null);
INSERT INTO `login_data` VALUES ('8151cd1d568f48afb8a3fc190ec9b856', '0', '0', '3', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:35:10', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:36:18', '0', null);
INSERT INTO `login_data` VALUES ('82ce0aa961ab4741b47e773b5090581e', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:46:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:47:33', '0', null);
INSERT INTO `login_data` VALUES ('83bd3f17c7e4404f95414a0c30ed6650', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:05:56', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:05:56', '0', null);
INSERT INTO `login_data` VALUES ('8486ee398053400a917a97084558f3a5', '0', '0', '3', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:03:40', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:07:38', '0', null);
INSERT INTO `login_data` VALUES ('84a5f1f0aca04e6e85233227aeb0d0e8', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:35:10', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:35:10', '0', null);
INSERT INTO `login_data` VALUES ('84e6adccc03a4270935445063152a5fe', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 18:59:39', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 18:59:39', '0', null);
INSERT INTO `login_data` VALUES ('857e864f95214d8ea933e6d3d3308c3b', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:49:10', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:49:10', '0', null);
INSERT INTO `login_data` VALUES ('8585d404780b414cb2325d77862fdf38', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 15:47:19', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 15:47:19', '0', null);
INSERT INTO `login_data` VALUES ('859565b1725746319bf84cd0d9966051', '0', '0', '8', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:35:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:44:57', '0', null);
INSERT INTO `login_data` VALUES ('8677027fd0594a1eb7968adddfa844c0', '0', '0', '4', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:27:53', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:30:00', '0', null);
INSERT INTO `login_data` VALUES ('86d3a0329362494988ce6c60080937c7', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:05:14', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:05:14', '0', null);
INSERT INTO `login_data` VALUES ('875736c3af9a4da5993fa84fd6c0b09b', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:22:27', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:22:27', '0', null);
INSERT INTO `login_data` VALUES ('8837e6629f4c43c0ad58815e98f5219f', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:02:51', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:02:51', '0', null);
INSERT INTO `login_data` VALUES ('889d54f0b5894cc7b8788f52e1ef0eed', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:48:34', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:48:34', '0', null);
INSERT INTO `login_data` VALUES ('89418a2b2f654fb298407ca760ed80ba', '6', '0', '0', '0', '0', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '2019-04-17 17:50:21', null, '2019-04-17 17:56:23', '0', null);
INSERT INTO `login_data` VALUES ('89d13e13d2614914bd329d849d190eb7', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:38:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:39:03', '0', null);
INSERT INTO `login_data` VALUES ('8b2d293a341a4ebc939a7c4162b5a49f', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:58:44', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:58:44', '0', null);
INSERT INTO `login_data` VALUES ('8b51da5ff64247a7a9dca1f01b01223b', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:14:35', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:14:35', '0', null);
INSERT INTO `login_data` VALUES ('8b9e8d9c48e14e5b8f152820a56c33f4', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:06:03', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:06:03', '0', null);
INSERT INTO `login_data` VALUES ('8bf0644dcc7e40ef80840046f6819d7b', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:05:00', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:05:00', '0', null);
INSERT INTO `login_data` VALUES ('8c3003bf95c049dd82f9a60d6b4aa180', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:25:34', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:25:34', '0', null);
INSERT INTO `login_data` VALUES ('8c8239742583457a8b8bd5c84870f1d6', '0', '0', '2', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:10:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:11:54', '0', null);
INSERT INTO `login_data` VALUES ('8c8dd241711447f7ad879e576a5a39a9', '4', '0', '0', '0', '0', 'a9062e572631452498a721f2f4ec033c', 'a9062e572631452498a721f2f4ec033c', '2019-05-04 14:40:18', null, '2019-05-04 14:42:00', '0', null);
INSERT INTO `login_data` VALUES ('8d1f777bc120445583bcd50e1e44289d', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-29 20:58:45', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-29 20:58:45', '0', null);
INSERT INTO `login_data` VALUES ('8da714368b6943dfb58ef772015a8194', '0', '0', '8', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:14:20', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:25:37', '0', null);
INSERT INTO `login_data` VALUES ('8e184071be7f440ab38baab173a8ee43', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:08:00', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:08:00', '0', null);
INSERT INTO `login_data` VALUES ('8e8f09cbb61844789e5fcd0f32ac0f3f', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 21:31:35', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 21:31:35', '0', null);
INSERT INTO `login_data` VALUES ('8f5fbdc61fa94fd8a4c66369e3ca7103', '0', '0', '2', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:56:49', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:57:02', '0', null);
INSERT INTO `login_data` VALUES ('8f79df86f09a47a09f2af731145d24b0', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:49:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:49:52', '0', null);
INSERT INTO `login_data` VALUES ('90406e1e8a67434ea49c144f54c4c47b', '0', '0', '5', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:16:08', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:16:24', '0', null);
INSERT INTO `login_data` VALUES ('906d4bf8784d4dda9133934c2552e60c', '0', '0', '1', '0', '0', '244ed8a411b3464996a6cab8c16048e4', '244ed8a411b3464996a6cab8c16048e4', '2019-04-17 15:43:22', '244ed8a411b3464996a6cab8c16048e4', '2019-04-17 15:43:22', '0', null);
INSERT INTO `login_data` VALUES ('90a06193ea3b4e1da0178a00ce2b5e6e', '0', '0', '34', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:53:32', '0', null);
INSERT INTO `login_data` VALUES ('9175bb2ccbaf46448053bb446a57a9fa', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:56:05', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:56:05', '0', null);
INSERT INTO `login_data` VALUES ('9305e21a555f442eba41da64cd98582b', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:17:43', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:17:43', '0', null);
INSERT INTO `login_data` VALUES ('934d4d0481224911a41153cf444ef263', '0', '0', '2', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:16:32', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:17:00', '0', null);
INSERT INTO `login_data` VALUES ('939d2e4be2074321be608bd3b4d78f88', '2', '0', '7', '1', '0', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '2019-04-17 17:56:58', null, '2019-04-17 18:01:10', '0', null);
INSERT INTO `login_data` VALUES ('942da79bddbb4147b2162a1234e45faf', '0', '0', '6', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:57:38', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:00:02', '0', null);
INSERT INTO `login_data` VALUES ('94e28ea5e7ab4230b27b922a920cd82b', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-24 13:52:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-24 13:52:17', '0', null);
INSERT INTO `login_data` VALUES ('94e33bd49bd542df85ad512e876b8570', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:03:07', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:03:07', '0', null);
INSERT INTO `login_data` VALUES ('950eb4e9fef34b49b892d3f4fd770e25', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:37:51', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:38:14', '0', null);
INSERT INTO `login_data` VALUES ('96932f61d6ef427783457b3a7f9eaafc', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:10:10', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:10:10', '0', null);
INSERT INTO `login_data` VALUES ('96c4f7c63b7b4309aa607f8e58c70d25', '0', '0', '2', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:36:30', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:37:26', '0', null);
INSERT INTO `login_data` VALUES ('97882bafd24742d585c7a00ae77e4304', '1', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 18:49:11', null, '2019-04-30 18:56:53', '0', null);
INSERT INTO `login_data` VALUES ('97a4e2dbb9de4205904e62d66d54f5f9', '3', '0', '1', '1', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:58:44', null, '2019-04-17 11:09:58', '0', null);
INSERT INTO `login_data` VALUES ('97eb06aad1e4474a8c304a0829f7341f', '0', '0', '3', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:05:56', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:07:35', '0', null);
INSERT INTO `login_data` VALUES ('986b1d2f5bd34254b75f9651163de64c', '0', '0', '2', '1', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:56:05', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:58:31', '0', null);
INSERT INTO `login_data` VALUES ('987a141078934e35879b2c114b22c06a', '0', '0', '3', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:50:20', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:52:25', '0', null);
INSERT INTO `login_data` VALUES ('98a2d3d3b69a4f3e9ddc4a55c2294188', '0', '0', '5', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:21:10', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:26:37', '0', null);
INSERT INTO `login_data` VALUES ('99505c8fd165417e8aefc9f9029cd8b0', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:45:19', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:45:19', '0', null);
INSERT INTO `login_data` VALUES ('99a0c597f16f424b893efe66db418bed', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:27:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:27:17', '0', null);
INSERT INTO `login_data` VALUES ('9a07574c096b4129b63d2144b28c91ef', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:39:47', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:39:47', '0', null);
INSERT INTO `login_data` VALUES ('9b166120ebd14078bb968e58f4bd7b36', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 16:46:32', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 16:46:32', '0', null);
INSERT INTO `login_data` VALUES ('9d5e994f09824a2297985cd0f13faf83', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:10:29', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:10:29', '0', null);
INSERT INTO `login_data` VALUES ('9dd65949d2004b6eb684e886cc71cbcc', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:13:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:13:42', '0', null);
INSERT INTO `login_data` VALUES ('9e2808b1136645e0a5e949eda375e171', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:48:34', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:48:34', '0', null);
INSERT INTO `login_data` VALUES ('9eb0f9c93bf94ea99171287ed1798627', '0', '0', '2', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:14:39', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:14:41', '0', null);
INSERT INTO `login_data` VALUES ('9ebb11641eee4892acf5ce915346d2ed', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-29 22:25:53', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-29 22:25:53', '0', null);
INSERT INTO `login_data` VALUES ('9f0e145e10ad4095b01682c7541c8ef3', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:04:35', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:04:35', '0', null);
INSERT INTO `login_data` VALUES ('9f5ac537a34147a7849fa8c8607afa16', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:55', '0', null);
INSERT INTO `login_data` VALUES ('9fa7d29abeba4275b08cb9685adb5cdd', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:16:32', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:16:32', '0', null);
INSERT INTO `login_data` VALUES ('a059a804c8ef420c82cedecd72daa702', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:03:00', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:03:00', '0', null);
INSERT INTO `login_data` VALUES ('a1293cfd8e704e728fc949f223f4ef07', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:41:32', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:41:32', '0', null);
INSERT INTO `login_data` VALUES ('a1b944a393bc46448b3ea621c1692a9a', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:51:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:51:52', '0', null);
INSERT INTO `login_data` VALUES ('a1c4ea4f58e14f76985cad2c0042d47c', '0', '0', '7', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:30:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:34:03', '0', null);
INSERT INTO `login_data` VALUES ('a1e5cb8e150f494b85cae4cc84923b23', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:23:58', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:23:58', '0', null);
INSERT INTO `login_data` VALUES ('a22cfc80bc8146258a39a5f38cca0063', '0', '0', '16', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:10:04', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:14:56', '0', null);
INSERT INTO `login_data` VALUES ('a2867ab61eb348fea7b4b106414c7361', '0', '0', '14', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:56:28', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:08:41', '0', null);
INSERT INTO `login_data` VALUES ('a2b0d859af19453bb26b6a5f5eb8a2ad', '0', '0', '5', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:14:35', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:16:00', '0', null);
INSERT INTO `login_data` VALUES ('a2e1f899729a4f9bbe25c29a4fe9bcc6', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-03 14:39:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-03 14:39:52', '0', null);
INSERT INTO `login_data` VALUES ('a31387b455db4125abef8ed1d58a05b1', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 17:54:16', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 17:54:16', '0', null);
INSERT INTO `login_data` VALUES ('a379c22e92b74fca85c05df64d4da63b', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:46:47', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:46:47', '0', null);
INSERT INTO `login_data` VALUES ('a3d62d8235314373a8d11fd5a2c8c37c', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:23:58', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:23:58', '0', null);
INSERT INTO `login_data` VALUES ('a43b5dec41da4101a25096d9ebd47d7f', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 19:51:42', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 19:51:42', '0', null);
INSERT INTO `login_data` VALUES ('a47b3370c13443c5ba6658634be8514d', '0', '0', '1', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 22:05:14', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 22:05:14', '0', null);
INSERT INTO `login_data` VALUES ('a5618c1411e6414781c56683327acee3', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 18:56:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 18:56:59', '0', null);
INSERT INTO `login_data` VALUES ('a5cea8734a434aa28a3eb8cfed2d7d3b', '0', '0', '3', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:29:56', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:38:45', '0', null);
INSERT INTO `login_data` VALUES ('a5f0e9dc1ea04f53b5ac6d4132e3cc47', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 21:18:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 21:18:54', '0', null);
INSERT INTO `login_data` VALUES ('a64bc89317824e6596026bbc2942589d', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:41:19', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:41:19', '0', null);
INSERT INTO `login_data` VALUES ('a75ea933e29b43ed89dac5a7f36ac99b', '0', '0', '3', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:09:12', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:16:07', '0', null);
INSERT INTO `login_data` VALUES ('a8cac193b2224ab08e5f07be712d5e4d', '0', '0', '0', '0', '0', '0cf3855b-d32b-4a8c-aab3-5e1ab5f0d07b', '0cf3855b-d32b-4a8c-aab3-5e1ab5f0d07b', '2019-05-03 15:37:44', '0cf3855b-d32b-4a8c-aab3-5e1ab5f0d07b', '2019-05-03 15:37:44', '0', null);
INSERT INTO `login_data` VALUES ('a9303eb1af9842e3b2ad65b1ff533735', '17', '0', '3', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 17:25:42', null, '2019-04-17 17:59:16', '0', null);
INSERT INTO `login_data` VALUES ('a9cc2caf43e646ea932684953bdeb948', '0', '0', '0', '0', '0', 'a9062e572631452498a721f2f4ec033c', 'a9062e572631452498a721f2f4ec033c', '2019-05-04 14:40:18', 'a9062e572631452498a721f2f4ec033c', '2019-05-04 14:40:18', '0', null);
INSERT INTO `login_data` VALUES ('aa55c2d4b01e483d935b79eb139fbaf9', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:45:19', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:45:19', '0', null);
INSERT INTO `login_data` VALUES ('ab45c6c8fddf4b37a7a33e10268d439b', '0', '0', '14', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:41:47', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:58:15', '0', null);
INSERT INTO `login_data` VALUES ('ac4aeee3dd2a4e45881d349abea185c0', '0', '0', '21', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 13:42:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:16:09', '0', null);
INSERT INTO `login_data` VALUES ('ac77e372f5c54723b9beeaa6ac99bfe3', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:03:19', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:03:19', '0', null);
INSERT INTO `login_data` VALUES ('ac95a623009b44678a81e05ae73288d1', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 17:35:42', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 17:35:42', '0', null);
INSERT INTO `login_data` VALUES ('ad40245a954749418d361f4b285000b8', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 14:36:58', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 14:36:58', '0', null);
INSERT INTO `login_data` VALUES ('ae5bc245258e4badb1c99edb5d001c4c', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:06:48', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:06:49', '0', null);
INSERT INTO `login_data` VALUES ('ae97e4a62a48440b9b0ad8defc0820ae', '1', '0', '4', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 14:08:45', null, '2019-04-17 15:04:45', '0', null);
INSERT INTO `login_data` VALUES ('af5fd51d62bd48b699618e8d12c69c68', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:41:32', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:41:32', '0', null);
INSERT INTO `login_data` VALUES ('b00b014d4e8644dd959bda278aa33852', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:38:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:38:55', '0', null);
INSERT INTO `login_data` VALUES ('b1529b0101e34163a457c2d59e393f52', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:10:04', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:10:04', '0', null);
INSERT INTO `login_data` VALUES ('b15d009f6e4b4a63a2950de59b5f77ae', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:55:39', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:55:39', '0', null);
INSERT INTO `login_data` VALUES ('b1e33bd4db09423a9152eb6de55be3fd', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:33:41', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:33:41', '0', null);
INSERT INTO `login_data` VALUES ('b203ccb1fd824246a7c3eceb425e9789', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:23:08', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:23:08', '0', null);
INSERT INTO `login_data` VALUES ('b2120673442e4d01b6966f183c9bed89', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:29:29', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:32:30', '0', null);
INSERT INTO `login_data` VALUES ('b2339f5ade8946dd9b695b725465cf59', '0', '0', '2', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-25 15:27:11', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-25 15:28:03', '0', null);
INSERT INTO `login_data` VALUES ('b23fa652a8874bfe8b69dde23cb6f776', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:03:07', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:03:07', '0', null);
INSERT INTO `login_data` VALUES ('b25b303f6e9c4e32a4014b45f3950df9', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 17:51:43', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 17:51:43', '0', null);
INSERT INTO `login_data` VALUES ('b36e6544e0614cd781cc381dcdfc8b36', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:32:18', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:33:19', '0', null);
INSERT INTO `login_data` VALUES ('b3ab2383a4a4485a8b78c1059ef2956b', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 21:41:30', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 21:41:30', '0', null);
INSERT INTO `login_data` VALUES ('b4f86dcd07d5487d934e3fab240c1d70', '0', '0', '1', '1', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:33:41', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:35:40', '0', null);
INSERT INTO `login_data` VALUES ('b563b95e458944df8fbee4c3729e668c', '0', '0', '2', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:34:24', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:35:27', '0', null);
INSERT INTO `login_data` VALUES ('b58447f3cef6431fafa1408259ad32eb', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:16:23', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:16:23', '0', null);
INSERT INTO `login_data` VALUES ('b610f147a7584b32a5923e3eb67be66b', '0', '0', '4', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 21:08:05', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 21:09:15', '0', null);
INSERT INTO `login_data` VALUES ('b73f46cd115e45b5b03ba230507da216', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:35:41', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:35:41', '0', null);
INSERT INTO `login_data` VALUES ('b747635fa34b46a08fe9b3f1e631d8cf', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 17:43:37', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 17:43:37', '0', null);
INSERT INTO `login_data` VALUES ('b7eac381137047c1aa6308b56b789e21', '0', '0', '0', '0', '0', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '2019-04-17 17:50:21', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '2019-04-17 17:50:21', '0', null);
INSERT INTO `login_data` VALUES ('b91a96e98dc24c1daf39630408c95abd', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:08:00', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:08:00', '0', null);
INSERT INTO `login_data` VALUES ('ba21fcf55cbb46f3b53f1ca40a674c52', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:09:08', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:09:08', '0', null);
INSERT INTO `login_data` VALUES ('ba8c04c4885241a58f710dfa93f8cd09', '1', '0', '45', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:15:30', null, '2019-04-22 18:27:48', '0', null);
INSERT INTO `login_data` VALUES ('bab83ec72f434293b7677ec975a63b3f', '0', '0', '16', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:20:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:21:38', '0', null);
INSERT INTO `login_data` VALUES ('badc9ae643a94f3a86bc79094cbbbb3e', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:39:09', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:39:09', '0', null);
INSERT INTO `login_data` VALUES ('bc1a86dc05ba45bc9f76ca026709b683', '0', '0', '0', '0', '0', '244ed8a411b3464996a6cab8c16048e4', '244ed8a411b3464996a6cab8c16048e4', '2019-04-17 15:43:22', '244ed8a411b3464996a6cab8c16048e4', '2019-04-17 15:43:22', '0', null);
INSERT INTO `login_data` VALUES ('bc634327c31f4a00bd52f707e72b8801', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:13:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:13:41', '0', null);
INSERT INTO `login_data` VALUES ('bc714e58266947f4ba13244eabd57b33', '0', '0', '1', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:41:09', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:41:09', '0', null);
INSERT INTO `login_data` VALUES ('bcc7b08057f24a8b84f7afe50731c6dc', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:10:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:10:55', '0', null);
INSERT INTO `login_data` VALUES ('bceaa9a261394760b13ecd4f85d35aaa', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:44:28', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:44:28', '0', null);
INSERT INTO `login_data` VALUES ('bd2c93225ca2431b967e8a02b0f20a8f', '0', '0', '12', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 21:22:56', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 21:31:17', '0', null);
INSERT INTO `login_data` VALUES ('bd73b5dbc99b449d988bbdced272056a', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:29:29', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:29:29', '0', null);
INSERT INTO `login_data` VALUES ('be43657be9d84729a0e30661dabb2b4d', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 17:48:27', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 17:48:27', '0', null);
INSERT INTO `login_data` VALUES ('bfac30c7cf84432aa622b917b7f169f3', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-30 13:21:40', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-30 13:21:40', '0', null);
INSERT INTO `login_data` VALUES ('c001f3bf0b744c97a692e65abb3d65a5', '0', '0', '0', '0', '0', '0cf3855b-d32b-4a8c-aab3-5e1ab5f0d07b', '0cf3855b-d32b-4a8c-aab3-5e1ab5f0d07b', '2019-05-03 15:37:44', '0cf3855b-d32b-4a8c-aab3-5e1ab5f0d07b', '2019-05-03 15:37:44', '0', null);
INSERT INTO `login_data` VALUES ('c0138a5e7fb04a659d932d7efcad073f', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-24 13:54:01', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-24 13:54:01', '0', null);
INSERT INTO `login_data` VALUES ('c1dd156196ee4902bbb0a9d0356b9e40', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:20:03', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:20:03', '0', null);
INSERT INTO `login_data` VALUES ('c4ea32ca3ec6488e86dd57ac1173af88', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:27', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:27', '0', null);
INSERT INTO `login_data` VALUES ('c587fa58c4b5470bba9e8da7f6cb7831', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 17:56:19', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 17:56:19', '0', null);
INSERT INTO `login_data` VALUES ('c5c2043ac0a54a8a9c72b34aa65a0537', '0', '0', '2', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:12:21', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:12:23', '0', null);
INSERT INTO `login_data` VALUES ('c7c002bc7f63438b8d8c73291b32c3ab', '0', '0', '3', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:27:42', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:32:34', '0', null);
INSERT INTO `login_data` VALUES ('c8bb391af13b452fbfa64aee6f1fa8ff', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:41:13', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:41:13', '0', null);
INSERT INTO `login_data` VALUES ('c8cbce08e43940e8b770d6712f6435af', '0', '0', '4', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 18:36:33', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 18:38:32', '0', null);
INSERT INTO `login_data` VALUES ('c97afbc5663c431fb9a20097af3d56e2', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:23:26', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:23:26', '0', null);
INSERT INTO `login_data` VALUES ('ca5fef6af092425ba14020f44fefda05', '0', '0', '1', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:42:16', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:42:16', '0', null);
INSERT INTO `login_data` VALUES ('ca9e1e79568d4b90a6ab9288fa5aeaf0', '0', '0', '4', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:12:03', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:19:29', '0', null);
INSERT INTO `login_data` VALUES ('cadb795b6ee74184addeae5eb2e5ec16', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:56:49', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:56:49', '0', null);
INSERT INTO `login_data` VALUES ('caeca495c85b4b7fbb4c8b61e068b199', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:15:18', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:15:18', '0', null);
INSERT INTO `login_data` VALUES ('cb1cffea26ea48959b220b3fbabea681', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 17:43:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 17:43:17', '0', null);
INSERT INTO `login_data` VALUES ('cc232a09953742b8a24afd944161ce9d', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:19:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:19:54', '0', null);
INSERT INTO `login_data` VALUES ('cca758c69d6b4c21aa22ef6430cd018d', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 22:05:14', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 22:05:14', '0', null);
INSERT INTO `login_data` VALUES ('cce3dbf38b4b4a8a9643edc72835873d', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-25 14:28:41', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-25 14:28:41', '0', null);
INSERT INTO `login_data` VALUES ('cd1db4bc0bde4de2a9a0147de10cc4e7', '0', '0', '11', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:22:27', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:29:29', '0', null);
INSERT INTO `login_data` VALUES ('cfe5402be55e4de594ca181eaee00aec', '0', '0', '2', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:10:29', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 15:11:03', '0', null);
INSERT INTO `login_data` VALUES ('d20d8d63557d4041b82ffffa153df6d2', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:22:04', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:22:04', '0', null);
INSERT INTO `login_data` VALUES ('d26428009838422fb3e9b1399a4398e6', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:35:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:35:52', '0', null);
INSERT INTO `login_data` VALUES ('d2a015cfa7704e4a9dcef0cbc6530b3d', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:13:56', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:14:37', '0', null);
INSERT INTO `login_data` VALUES ('d2be032751b14930a2cfbe7718b6fb5d', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 15:38:06', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 15:38:06', '0', null);
INSERT INTO `login_data` VALUES ('d351c1f99d3e44e0bf80377ace9e5ab0', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 15:38:06', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 15:38:06', '0', null);
INSERT INTO `login_data` VALUES ('d3f4c9043cac4c1e84e2890d0fdce6e7', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:14:20', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:14:20', '0', null);
INSERT INTO `login_data` VALUES ('d5812a2ea8a148759b082865f74ac2a2', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:34:24', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:34:24', '0', null);
INSERT INTO `login_data` VALUES ('d63702bf143f4b4e8f8c0b59bbd0e082', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-03 15:32:01', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-03 15:32:01', '0', null);
INSERT INTO `login_data` VALUES ('d80f43757bf344499b1e2e5907ec89e1', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:06:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:06:32', '0', null);
INSERT INTO `login_data` VALUES ('d8b3d7b5f8954fe9b9fdcbef7e8f0398', '0', '0', '0', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 21:33:18', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 21:33:18', '0', null);
INSERT INTO `login_data` VALUES ('d8fe44cddf9847bea6c18ac8502c006b', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:59:01', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:59:01', '0', null);
INSERT INTO `login_data` VALUES ('d9c8e03813f34183899e3ba4e00ffc29', '0', '0', '2', '1', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:36:22', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:36:48', '0', null);
INSERT INTO `login_data` VALUES ('daa63e8560e64e0d8e72da639cfdd990', '0', '0', '1', '1', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:36:15', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:37:16', '0', null);
INSERT INTO `login_data` VALUES ('db6472564b1e42ecabcd98229c2b7d02', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-29 20:06:22', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-29 20:06:22', '0', null);
INSERT INTO `login_data` VALUES ('dbac27be91db46d59ed0271c58ec3f7c', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:08:44', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:08:44', '0', null);
INSERT INTO `login_data` VALUES ('dd531154d7974102ac3f1971ba283059', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:42:27', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:42:27', '0', null);
INSERT INTO `login_data` VALUES ('ddaf5dc124a54779af9f889196f9f759', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-24 13:52:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-24 13:52:18', '0', null);
INSERT INTO `login_data` VALUES ('e05a27533a304eaf9ae3ccb7df8a29de', '0', '0', '1', '1', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 20:58:17', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 20:58:27', '0', null);
INSERT INTO `login_data` VALUES ('e0a0c5d17fab4c3a8f908c67f54f25c4', '1', '0', '1', '1', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 15:40:55', null, '2019-04-17 17:25:33', '0', null);
INSERT INTO `login_data` VALUES ('e0d06999e99b4a11a76f2151b8ec9ebc', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:52:35', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 14:52:35', '0', null);
INSERT INTO `login_data` VALUES ('e15afd7ce12643fcab3b2fb64fee4efd', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:50:20', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:50:20', '0', null);
INSERT INTO `login_data` VALUES ('e261a142bede4b14af10f845833457fb', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:02:51', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:02:52', '0', null);
INSERT INTO `login_data` VALUES ('e2a5099b402947c69983b6addfed32c6', '0', '0', '1', '1', '0', '0cf3855b-d32b-4a8c-aab3-5e1ab5f0d07b', '0cf3855b-d32b-4a8c-aab3-5e1ab5f0d07b', '2019-05-03 15:37:44', '0cf3855b-d32b-4a8c-aab3-5e1ab5f0d07b', '2019-05-03 15:38:09', '0', null);
INSERT INTO `login_data` VALUES ('e2ae003ea2f84d298e6b6f25c2760e12', '0', '0', '5', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:20:03', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:21:32', '0', null);
INSERT INTO `login_data` VALUES ('e34f59e31d9a49cdae394fd69cbadb19', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:30:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:30:41', '0', null);
INSERT INTO `login_data` VALUES ('e43bee9065e54b73862db585d256864f', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:53:27', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:53:27', '0', null);
INSERT INTO `login_data` VALUES ('e496be00c5eb49c2991fcbac95b620c0', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:02:15', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:02:15', '0', null);
INSERT INTO `login_data` VALUES ('e49c82a52e3d4658bbf422802af3785b', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:21:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:21:13', '0', null);
INSERT INTO `login_data` VALUES ('e55969326b2c46b68813661a6ea87fd4', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-24 13:54:01', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-24 13:54:01', '0', null);
INSERT INTO `login_data` VALUES ('e6452b4857714c9e9be059b96ae650b6', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:55:37', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 22:55:37', '0', null);
INSERT INTO `login_data` VALUES ('e6ab3976eba44306bce11172b315b2a0', '0', '0', '29', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 21:18:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 21:30:27', '0', null);
INSERT INTO `login_data` VALUES ('e6b4bd2bf8a84b0ca94a9f58902919d7', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:05:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 22:05:54', '0', null);
INSERT INTO `login_data` VALUES ('e72ae6f2ea31450ea76bab9aab2443f2', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:29:35', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 10:29:35', '0', null);
INSERT INTO `login_data` VALUES ('e81027a5617f45dc83d0794930060734', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:26:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:26:32', '0', null);
INSERT INTO `login_data` VALUES ('e81e3fda11ba49f280340db5090451c0', '0', '0', '7', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:46:47', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:48:22', '0', null);
INSERT INTO `login_data` VALUES ('e93d18e15a804b319960914e2aa5a2bf', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:59:36', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:59:36', '0', null);
INSERT INTO `login_data` VALUES ('eade6838bb364221bcc4659250931b07', '0', '0', '1', '1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 17:51:43', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 17:51:48', '0', null);
INSERT INTO `login_data` VALUES ('ec5b443cfaba47afbe81cb73a00a73d8', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:03:40', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:03:40', '0', null);
INSERT INTO `login_data` VALUES ('eebc80c20cb647508da64eb0d21a9d41', '0', '0', '2', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:02:15', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:02:44', '0', null);
INSERT INTO `login_data` VALUES ('f151c6f15cd243ab8b754fbd59f657cf', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:33:31', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 14:33:31', '0', null);
INSERT INTO `login_data` VALUES ('f154b66b85ce4849b209dd660d5a4ccb', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 18:43:57', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 18:43:57', '0', null);
INSERT INTO `login_data` VALUES ('f2b71e0bd2704a3683925a48fbcdd036', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:19:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:19:54', '0', null);
INSERT INTO `login_data` VALUES ('f38da6c3240845e98bf4c4659313b869', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 18:49:11', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 18:49:11', '0', null);
INSERT INTO `login_data` VALUES ('f3c986b6befd43f9abf0f7260587d2a9', '0', '0', '4', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:26:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 21:27:52', '0', null);
INSERT INTO `login_data` VALUES ('f45c3906ed244658a702760d20aa516b', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:09:08', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 19:09:08', '0', null);
INSERT INTO `login_data` VALUES ('f555a17d360f414680036f3fdfa32620', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:02:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 15:02:54', '0', null);
INSERT INTO `login_data` VALUES ('f56c635397b346a1a76114ca7350e448', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-25 15:04:20', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-25 15:04:20', '0', null);
INSERT INTO `login_data` VALUES ('f5ade80dda0949a8b30a9f6098dbe5d0', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:21:15', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-26 23:21:15', '0', null);
INSERT INTO `login_data` VALUES ('f66162029b7e45d18098668e81f8f91d', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-25 15:04:20', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-25 15:04:20', '0', null);
INSERT INTO `login_data` VALUES ('f6ec62a00b6d49888f42a2d103ce6fd4', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 15:47:19', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 15:47:19', '0', null);
INSERT INTO `login_data` VALUES ('f7eccbd86ece4ad985d2db3716bc9b26', '0', '0', '1', '0', '0', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 21:33:18', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-04 21:33:18', '0', null);
INSERT INTO `login_data` VALUES ('f810f4eb46e241e292a5d3d120a3d8fc', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:16:08', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:16:08', '0', null);
INSERT INTO `login_data` VALUES ('f8a82a64b84a4e979313edb3ce3ef9fe', '0', '0', '1', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:25:05', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 16:25:05', '0', null);
INSERT INTO `login_data` VALUES ('f985bd007c8d4b6c8b35744c7bed74b6', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 17:35:42', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 17:35:42', '0', null);
INSERT INTO `login_data` VALUES ('f9b0ee0ffbd0434faa7241beb44b24ed', '0', '0', '1', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:08:00', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:08:00', '0', null);
INSERT INTO `login_data` VALUES ('f9de98fc2fb049c98fe14da6dba97821', '0', '0', '5', '1', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:25:34', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:32:32', '0', null);
INSERT INTO `login_data` VALUES ('fa8a099a015f4565ad060af0edf6fbfe', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:18:13', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:18:13', '0', null);
INSERT INTO `login_data` VALUES ('faea74b496d541069ce58bd475ad66a2', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-24 10:52:45', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-24 10:52:45', '0', null);
INSERT INTO `login_data` VALUES ('fba1a3a830924bf48ffd58f299113581', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:37:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 14:37:54', '0', null);
INSERT INTO `login_data` VALUES ('fc71922c81284d178e27cc5475108d49', '0', '0', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:16:40', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:18:06', '0', null);
INSERT INTO `login_data` VALUES ('fcaf0caab8ae4080b9fd8960db35814e', '0', '0', '1', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-16 21:42:28', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-16 21:42:28', '0', null);
INSERT INTO `login_data` VALUES ('fd7bdb2bdf6c4c9599848fe386a1e241', '0', '0', '0', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:36:53', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:36:53', '0', null);
INSERT INTO `login_data` VALUES ('fd88016bf8a24a0c80d648997e22a28d', '0', '0', '1', '1', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 13:58:06', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 13:58:27', '0', null);
INSERT INTO `login_data` VALUES ('fdf72d32be2243b78614da247619e44c', '0', '0', '0', '0', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-02 11:12:06', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:12:06', '0', null);
INSERT INTO `login_data` VALUES ('ff4e6fa597534709a4938e08ebc3cd92', '0', '0', '0', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-25 15:27:11', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-25 15:27:11', '0', null);

-- ----------------------------
-- Table structure for `nongtianmysqldata`
-- ----------------------------
DROP TABLE IF EXISTS `nongtianmysqldata`;
CREATE TABLE `nongtianmysqldata` (
  `id` varchar(255) NOT NULL,
  `time` datetime DEFAULT NULL,
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
  `farm_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nongtianmysqldata
-- ----------------------------
INSERT INTO `nongtianmysqldata` VALUES ('', '2019-04-29 18:45:31', '22', '36', '35', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `nongtianmysqldata` VALUES ('asdf', '2019-04-28 18:45:31', '22', '36', '35', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `nongtianmysqldata` VALUES ('asdfsffafffhhsghg', '2019-04-27 18:45:31', '22', '36', '35', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `nongtianmysqldata` VALUES ('asdfsffafffs', '2019-04-26 18:45:31', '22', '36', '35', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `nongtianmysqldata` VALUES ('asdfsffafffsghg', '2019-04-25 18:45:31', '22', '36', '35', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `nongtianmysqldata` VALUES ('asdfsffafs', '2019-04-24 18:45:31', '22', '36', '35', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `nongtianmysqldata` VALUES ('asdfss', '2019-04-29 18:45:31', '22', '36', '35', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `nongtianmysqldata` VALUES ('dssdgdddfhfghsdas', '2019-04-30 16:42:13', '25', '30', '36', '', '', '', '', '', '', '', '', '', '', '1e66a8199f08422c8b464a28ed93205');
INSERT INTO `nongtianmysqldata` VALUES ('dssdgdddfhsafafghsdaaas', '2019-04-30 16:42:13', '25', '30', '36', '', '', '', '', '', '', '', '', '', '', '1e66a8199f08422c8b464a28ed93205');
INSERT INTO `nongtianmysqldata` VALUES ('dssdgdddfhsafafghsdas', '2019-04-30 16:42:13', '25', '30', '36', '', '', '', '', '', '', '', '', '', '', '1e66a8199f08422c8b464a28ed93205');
INSERT INTO `nongtianmysqldata` VALUES ('dssdgdddfhsafafghsdhhaaas', '2019-04-30 16:42:13', '25', '30', '36', '', '', '', '', '', '', '', '', '', '', '1e66a8199f08422c8b464a28ed93205');
INSERT INTO `nongtianmysqldata` VALUES ('dssdgdddfhsafafgjjhsdhhaaas', '2019-04-30 16:42:13', '25', '30', '36', '', '', '', '', '', '', '', '', '', '', '1e66a8199f08422c8b464a28ed93205');
INSERT INTO `nongtianmysqldata` VALUES ('dssdgdfhfghsdas', '2019-04-30 16:42:13', '25', '30', '36', '', '', '', '', '', '', '', '', '', '', '1e66a8199f08422c8b464a28ed93205');

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
INSERT INTO `sys_menu` VALUES ('2063a48f0386449989ce9da033f98741', '农田管理员', '154e56abaf494269943d4e40015c9ad0', '2', '154e56abaf494269943d4e40015c9ad0,2063a48f0386449989ce9da033f98741,', '2', '/admin/farm/manager/list', null, '', '', '1', 'farm:manager:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-02 21:15:30', null, '2019-05-04 11:27:30', null, '0');
INSERT INTO `sys_menu` VALUES ('20af27585ca641f1879358fd1bb4f218', '修改农田', '99c78288bf7d43f09b439ab00239ae86', '3', '154e56abaf494269943d4e40015c9ad0,99c78288bf7d43f09b439ab00239ae86,20af27585ca641f1879358fd1bb4f218,', '2', '', null, null, '', '0', 'farm:user:edit', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 19:08:35', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 19:08:54', null, '0');
INSERT INTO `sys_menu` VALUES ('316277d2d6fa47b2b27265f2ba669846', '消息管理', null, '1', '316277d2d6fa47b2b27265f2ba669846,', '4', '', null, '', '', '1', '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-23 15:56:33', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-23 15:56:33', null, '0');
INSERT INTO `sys_menu` VALUES ('3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', '用户管理', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb', '2', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,', '9', '/admin/system/user/list', null, '', '#47e69c', '1', 'sys:user:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-16 11:31:18', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-20 05:59:20', null, '0');
INSERT INTO `sys_menu` VALUES ('3b58e01e-9adb-11e8-aebe-1368d4ec24eb', '访问策略', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb', '2', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b58e01e-9adb-11e8-aebe-1368d4ec24eb,', '10', '/admin/system/role/list', null, '', '#c23ab9', '1', 'sys:role:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-16 11:32:33', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 13:55:40', null, '0');
INSERT INTO `sys_menu` VALUES ('3b5cb607-9adb-11e8-aebe-1368d4ec24eb', '权限管理', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb', '2', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,', '20', '/admin/system/menu/list', null, '', '#d4573b', '1', 'sys:menu:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-16 11:33:19', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:49:28', null, '0');
INSERT INTO `sys_menu` VALUES ('3c7f0aa572d648349c594f572af1d97f', '温度管理', '679ef59d6f30441ba57a5eb051eb917e', '2', '679ef59d6f30441ba57a5eb051eb917e,3c7f0aa572d648349c594f572af1d97f,', '3', '/farm/farmdata/temper', null, '', '', '1', 'farm:farmdata:temper', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 13:50:31', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 14:32:20', null, '0');
INSERT INTO `sys_menu` VALUES ('3e0b86a3-9adc-11e8-aebe-1368d4ec24eb', '新增用户', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', '3', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,3e0b86a3-9adc-11e8-aebe-1368d4ec24eb,', '0', '', null, null, null, '0', 'sys:user:add', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:10:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:10:32', null, '0');
INSERT INTO `sys_menu` VALUES ('3e2fa8b6-9adc-11e8-aebe-1368d4ec24eb', '编辑用户', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', '3', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,3e2fa8b6-9adc-11e8-aebe-1368d4ec24eb,', '10', '', null, null, null, '0', 'sys:user:edit', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:11:49', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:11:49', null, '0');
INSERT INTO `sys_menu` VALUES ('3e36cf2f-9adc-11e8-aebe-1368d4ec24eb', '删除用户', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', '3', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,3e36cf2f-9adc-11e8-aebe-1368d4ec24eb,', '20', '', null, null, null, '0', 'sys:user:delete', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:12:43', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:12:43', null, '0');
INSERT INTO `sys_menu` VALUES ('432934148cbb48798c852a01f100f9ed', '所有数据', '679ef59d6f30441ba57a5eb051eb917e', '2', '679ef59d6f30441ba57a5eb051eb917e,432934148cbb48798c852a01f100f9ed,', '4', '/farm/farmdata/list', null, '', '', '1', 'farm:farmdata:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-03-16 14:07:26', null, '2019-05-04 11:18:35', null, '0');
INSERT INTO `sys_menu` VALUES ('493f9cc85a284e098c047000d59d81f4', '新增农田', '99c78288bf7d43f09b439ab00239ae86', '3', '154e56abaf494269943d4e40015c9ad0,99c78288bf7d43f09b439ab00239ae86,493f9cc85a284e098c047000d59d81f4,', '1', '', null, null, '', '0', 'farm:user:add', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 19:07:38', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 19:08:07', null, '0');
INSERT INTO `sys_menu` VALUES ('563f189b651b42168ee6e12b9ff115e4', '光照管理', '679ef59d6f30441ba57a5eb051eb917e', '2', '679ef59d6f30441ba57a5eb051eb917e,563f189b651b42168ee6e12b9ff115e4,', '1', '/farm/farmdata/sun', null, '', '', '1', 'farm:farmdata:sun', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 13:53:03', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 14:32:11', null, '0');
INSERT INTO `sys_menu` VALUES ('679ef59d6f30441ba57a5eb051eb917e', '农田数据', null, '1', '679ef59d6f30441ba57a5eb051eb917e,', '3', '', null, '', '', '1', '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 13:49:41', null, '2019-05-04 11:18:46', null, '0');
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
INSERT INTO `sys_rescource` VALUES ('019675503e5b4a55bfb9192684b7967e', '93df6006-274d-450b-8f1f-331ccf66192f.jpg', 'local', '/static/upload/93df6006-274d-450b-8f1f-331ccf66192f.jpg', 'FkLGqxqucO0-1gDXtq-c6gTtogqi', '11kb', 'image/jpeg', null, '2019-05-04 11:32:18', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:32:18', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '0');
INSERT INTO `sys_rescource` VALUES ('306c9a708cc9432dbec7e5d8a98cc034', '307905d0-5e59-4167-b561-6321b040c2ca.jpg', 'local', '/static/upload/307905d0-5e59-4167-b561-6321b040c2ca.jpg', 'FgE9EAR_Xw9j0ETAa9JDQeNYVw5Q', '13kb', 'image/jpeg', null, '2019-05-04 11:29:08', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:29:08', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '0');
INSERT INTO `sys_rescource` VALUES ('584353035e6f4a559389ded43c7de423', 'c7b2a7d9-82e6-4a4b-a7c8-4544ed8ad889.jpeg', 'local', '/static/upload/c7b2a7d9-82e6-4a4b-a7c8-4544ed8ad889.jpeg', 'Fg_QPbNxuhCYavQIuidImEqKzk8i', '21kb', 'image/jpeg', null, '2019-02-27 20:54:46', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-02-27 20:54:46', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '0');
INSERT INTO `sys_rescource` VALUES ('592ec478ec7f4dce86a357a7b35e558e', '5b90f5d1-cb3d-492f-ae98-913057381436.jpeg', 'local', '/static/upload/5b90f5d1-cb3d-492f-ae98-913057381436.jpeg', 'Fg_QPbNxuhCYavQIuidImEqKzk8i', '21kb', 'image/jpeg', null, '2019-04-17 13:36:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 13:36:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '0');
INSERT INTO `sys_rescource` VALUES ('66226963bc0a4e3284631df7e807ba5e', '6aa15baf-63e4-478c-87cc-526e4b9632ad.jpg', 'local', '/static/upload/6aa15baf-63e4-478c-87cc-526e4b9632ad.jpg', 'FgE9EAR_Xw9j0ETAa9JDQeNYVw5Q', '13kb', 'image/jpeg', null, '2019-04-17 10:52:59', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:52:59', 'e426acc3cf434635a9cbf8c90902e314', null, '0');
INSERT INTO `sys_rescource` VALUES ('88852c24b8ed4190b883a4be0e0d3248', '7276118e-5ca3-4ab3-8188-e7d39a39b91b.jpg', 'local', '/static/upload/7276118e-5ca3-4ab3-8188-e7d39a39b91b.jpg', 'Fluz0NHAakDjZqPPX3XoD68lj55u', '9kb', 'image/jpeg', null, '2018-12-21 13:54:39', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 13:54:39', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '0');
INSERT INTO `sys_rescource` VALUES ('8d3d5ef0e5c84b069eedeeb887f89a66', '454234f1-0be5-4c50-a1a4-9096fca48ee4.jpeg', 'local', '/static/upload/454234f1-0be5-4c50-a1a4-9096fca48ee4.jpeg', 'Fg_QPbNxuhCYavQIuidImEqKzk8i', '21kb', 'image/jpeg', null, '2019-04-17 10:47:27', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 10:47:27', 'e426acc3cf434635a9cbf8c90902e314', null, '0');
INSERT INTO `sys_rescource` VALUES ('b1396a2021654ee89d790eb92a403a3f', '6acb4503-77ed-42c0-827c-15a755a0f0a2.jpeg', 'local', '/static/upload/6acb4503-77ed-42c0-827c-15a755a0f0a2.jpeg', 'Fg_QPbNxuhCYavQIuidImEqKzk8i', '21kb', 'image/jpeg', null, '2019-05-03 15:41:56', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 15:41:56', 'e426acc3cf434635a9cbf8c90902e314', null, '0');
INSERT INTO `sys_rescource` VALUES ('b32f741ce31b413f808ef499cc7d9c37', 'd02219a6-ae1c-4234-8db4-2f5a496e25d5.jpg', 'local', '/static/upload/d02219a6-ae1c-4234-8db4-2f5a496e25d5.jpg', 'FgE9EAR_Xw9j0ETAa9JDQeNYVw5Q', '13kb', 'image/jpeg', null, '2019-04-30 20:00:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 20:00:17', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '0');
INSERT INTO `sys_rescource` VALUES ('c8fa642616894560b0f2f95845dae9f0', 'e08ddf29-476e-4069-9fdc-30e51e36f86a.jpeg', 'local', '/static/upload/e08ddf29-476e-4069-9fdc-30e51e36f86a.jpeg', 'Fg_QPbNxuhCYavQIuidImEqKzk8i', '21kb', 'image/jpeg', null, '2019-05-04 11:28:53', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:28:53', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '0');
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
  `identity` varchar(255) DEFAULT NULL,
  `request_place` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
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
INSERT INTO `sys_role` VALUES ('11dc51e3c049456c912d0c9093e9dbaa', '查看湿度', '湿度管理员', '成都大学', '15015015015', '150@qq.com', '30', '2019-04-09 10:49:49', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 22:05:39', 'e426acc3cf434635a9cbf8c90902e314', '', '0');
INSERT INTO `sys_role` VALUES ('1d661fb8b11a488eb7cbf077ae60fc86', '测试001', '阿达', '', '', '反光度', '33', '2019-04-07 17:32:10', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 21:54:32', 'e426acc3cf434635a9cbf8c90902e314', '', '0');
INSERT INTO `sys_role` VALUES ('4132f0579ae54d7399c4337cc3fe44bd', '查看温度', '温度,滴滴,学生', '', '', '110@qq.com,187@qq.com', '20,40,21', '2018-12-25 16:51:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 21:58:10', 'e426acc3cf434635a9cbf8c90902e314', '', '0');
INSERT INTO `sys_role` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', '访客', '', '', '', '', '', '2017-11-02 14:19:07', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-03-20 16:50:34', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', '0');
INSERT INTO `sys_role` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '开发者账号', 'root', '', '110', '', '', '2017-11-29 19:36:37', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-03 15:30:45', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', '0');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('0cf3855b-d32b-4a8c-aab3-5e1ab5f0d07b', '小强', '小强', null, '284bca2f67907d5c758ec92643edfa6324cabcbb', '39f283bb4e4b3a9b', '学生', '成大', '18780027500', '187@qq.com', '21', '0', '2019-05-03 15:33:23', null, '2019-05-04 21:45:17', 'e426acc3cf434635a9cbf8c90902e314', null, '0', '1', '1');
INSERT INTO `sys_user` VALUES ('18b8b543-9ad7-11e8-aebe-1368d4ec24eb', 'java', '开发管理员', '/static/upload/93df6006-274d-450b-8f1f-331ccf66192f.jpg', '9c5feb7aba88c7c87bc047c7cec7c6e3b63e1894', '08c5900125b80cd2', 'root', null, '110', 'b@qq.com', '22', '0', '2017-11-27 22:19:39', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 11:32:21', null, '测试', '0', '1', '0.4');
INSERT INTO `sys_user` VALUES ('244ed8a411b3464996a6cab8c16048e4', '我是农民', 'I\'m农民', null, 'f3f94fa171a1808edad4cdc9a2bcebae2fa2a234', '8fc3ac51cde539ab', '农田主', '十陵', '13313313313', '133@qq.com', '40', '0', '2018-12-21 21:19:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 15:41:34', null, null, '0', '1', '1');
INSERT INTO `sys_user` VALUES ('57d7a3aa8bdd4f9fa2203f5ca3c07cd0', 'ff', '光照管理员01', null, '6affbcdcd77a80144f6f2ce21c13ee5a0e08d398', '154bb8604475a9e2', '光照管理员', '成都大学', '16016016016', '160@qq.com', '30', '0', '2019-04-09 10:52:04', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:05:30', null, null, '0', '1', '1');
INSERT INTO `sys_user` VALUES ('7af9d58e790e413297229a3c2115254f', 'dd', '湿度dd', null, '2677282477155cd27649aaa579730f2521c0fbd1', '571bc7f8773c14be', '湿度管理员', '成都大学', '15015015015', '150@qq.com', '30', '0', '2019-04-09 10:50:45', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-04 22:05:29', 'e426acc3cf434635a9cbf8c90902e314', null, '0', '1', '1');
INSERT INTO `sys_user` VALUES ('a9062e572631452498a721f2f4ec033c', '温度管理员', '温度', '/static/upload/bcc9cef0-4a82-47f5-8f6e-499aa298b2bf.jpg', '05428c3fca02ca2798425d7e691427424c4809cb', 'd771a49c37122490', '温度', '当当', '11011011011', '110@qq.com', '20', '0', '2018-12-25 16:52:47', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-07 14:25:34', 'a9062e572631452498a721f2f4ec033c', '', '0', '1', '1');
INSERT INTO `sys_user` VALUES ('da6761c227124e568c1e9fe7f2e1cbd7', '测试', '测试', null, '009da81f3a1b55829254d93280646c4619d161ca', 'a4eb4fba8893fd50', '测试', '成大', '13013013013', '130@qq.com', '33', '0', '2019-04-07 17:36:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:49:11', null, null, '0', '1', '1');
INSERT INTO `sys_user` VALUES ('e426acc3cf434635a9cbf8c90902e314', 'admin', '管理员', '/static/upload/6acb4503-77ed-42c0-827c-15a755a0f0a2.jpeg', '9c5feb7aba88c7c87bc047c7cec7c6e3b63e1894', '08c5900125b80cd2', 'root', '十陵', '120', '120@qq.com', '20', '0', '2018-12-24 13:02:24', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-03 15:41:57', null, '', '0', '1', '1');
INSERT INTO `sys_user` VALUES ('fcd3c425a4d54d13976f758b8545dff8', '风法师', 'as', null, '05e478d540778388d9708a5b90abb07065cdf955', 'e0e1dac7f508a616', '安抚', '安抚', '15915915915', '159@qq.com', '45', '0', '2018-12-23 18:33:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-23 18:33:20', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', null, '0', '1', '1');
INSERT INTO `sys_user` VALUES ('fd3399d8447842a48a5a2016c41d4172', '小强2', '小强2', null, '0072f5297fa1933213d012ba6a68de133f5db7a6', '3bafee8e033eb39d', '学生', '成大', '18718718718', '1871@qq.com', '22', '0', '2019-05-03 16:03:43', 'e426acc3cf434635a9cbf8c90902e314', '2019-05-03 16:03:43', null, null, '0', '1', '1.001');

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
INSERT INTO `sys_user_role` VALUES ('0cf3855b-d32b-4a8c-aab3-5e1ab5f0d07b', '4132f0579ae54d7399c4337cc3fe44bd');
INSERT INTO `sys_user_role` VALUES ('18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '706e0195-9ad7-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_user_role` VALUES ('244ed8a411b3464996a6cab8c16048e4', '8332ea7322704faa8a0fdfc9726d587c');
INSERT INTO `sys_user_role` VALUES ('57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '919acb6b89784f81a2826699c103710e');
INSERT INTO `sys_user_role` VALUES ('7af9d58e790e413297229a3c2115254f', '11dc51e3c049456c912d0c9093e9dbaa');
INSERT INTO `sys_user_role` VALUES ('a9062e572631452498a721f2f4ec033c', '4132f0579ae54d7399c4337cc3fe44bd');
INSERT INTO `sys_user_role` VALUES ('da6761c227124e568c1e9fe7f2e1cbd7', '1d661fb8b11a488eb7cbf077ae60fc86');
INSERT INTO `sys_user_role` VALUES ('e426acc3cf434635a9cbf8c90902e314', 'c600d2c3320f4685b8d75cb8a6518409');
INSERT INTO `sys_user_role` VALUES ('fd3399d8447842a48a5a2016c41d4172', '70689483-9ad7-11e8-aebe-1368d4ec24eb');

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
  `temperature` varchar(255) DEFAULT NULL,
  `humidity` varchar(255) DEFAULT NULL,
  `illumination` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_farm
-- ----------------------------
INSERT INTO `t_farm` VALUES ('1', '管理员测试农田01', '成大一期', '100', null, '2018-12-21 15:26:09', null, null, '测试', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '30', '26', '17');
INSERT INTO `t_farm` VALUES ('1e66a8199f08422c8b464a28ed932059', '成大16', '成都大学16栋01', '100', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-25 15:27:56', null, null, '', '0', 'e426acc3cf434635a9cbf8c90902e314', '30', '29', '18');
INSERT INTO `t_farm` VALUES ('2', 'afa', 'asfas3', '33', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 20:40:40', null, null, 'fasf', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '30', '30', '16');
INSERT INTO `t_farm` VALUES ('3', '十陵一期01', '十陵一期', '20', '244ed8a411b3464996a6cab8c16048e4', '2018-12-21 21:50:00', null, null, '', '0', '244ed8a411b3464996a6cab8c16048e4', '26', '30', '29');
INSERT INTO `t_farm` VALUES ('4', 'asd', 'asd', '22', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 20:40:30', null, null, 'ad', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '30', '32', '22');
INSERT INTO `t_farm` VALUES ('5', 'ads', 'asagadg', '44', '244ed8a411b3464996a6cab8c16048e4', '2018-12-22 17:15:59', null, null, '', '1', '244ed8a411b3464996a6cab8c16048e4', '29', '30', '24');
INSERT INTO `t_farm` VALUES ('6', 'asdaf', 'faf', '11', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 20:50:00', null, null, 'fa', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '28', '35', '30');
INSERT INTO `t_farm` VALUES ('7', 'adasd', 'asdasd', '34', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 19:40:51', null, null, '', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '25', '30', '28');
INSERT INTO `t_farm` VALUES ('8', '001', '100', '100', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-03-18 15:00:29', null, null, '', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '30', '36', '26');
INSERT INTO `t_farm` VALUES ('9', '测试添加农田02', '十陵', '23', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-12-21 20:10:58', null, null, '阿达', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '30', '34', '24');
INSERT INTO `t_farm` VALUES ('9b1a547796cd41279819649e758a506d', '测试002', '成大图书馆', '50', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-30 16:34:38', null, null, '', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '30', '24', '22');
INSERT INTO `t_farm` VALUES ('c4ef24b254f143589aa4b72b1e6d90d5', '3测试', '成都大学', '3', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-03-18 15:23:22', null, null, '003', '0', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '32', '30', '21');

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
INSERT INTO `user_credit` VALUES ('0ad542328d884d7c8b32f46de11570a7', '25', '0', '155', '83', '90', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:52:20', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-27 16:52:20', null, null);
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
INSERT INTO `user_credit` VALUES ('62f4ee0a6454482abc305506de96d340', '3', '0', '311', '86', '89', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-03 15:28:18', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-05-03 15:28:18', null, null);
INSERT INTO `user_credit` VALUES ('6954ddbe8ba848a2b2cfe0cc87737e07', '0', '0', '14', '2', '2', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 20:03:26', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 20:03:26', null, null);
INSERT INTO `user_credit` VALUES ('6c05ea00f8184ae6a420f83b29c0ba19', '0', '0', '16', '2', '2', '0.05', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:15:25', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:15:25', null, null);
INSERT INTO `user_credit` VALUES ('79a7699a5e324376bd762323198ecdc6', '0', '0', '3', '1', '1', '0.05', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:53:23', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:53:23', null, null);
INSERT INTO `user_credit` VALUES ('8fb75b1073fd4b7eb1ab3cb6b6dfb0b4', '22', '0', '38', '17', '25', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:19:22', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:19:22', null, null);
INSERT INTO `user_credit` VALUES ('9077c78c2c7844bb8e25a0ab599e06f3', '0', '0', '53', '12', '12', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-29 21:56:27', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-29 21:56:27', null, null);
INSERT INTO `user_credit` VALUES ('a6e48a48c443433ab18612214c4d70be', '0', '0', '3', '1', '2', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:21:01', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:21:01', null, null);
INSERT INTO `user_credit` VALUES ('ad4d106921d146f8af6d2fa0895a6cd9', '1', '0', '57', '9', '9', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:35:55', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 18:35:55', null, null);
INSERT INTO `user_credit` VALUES ('bef57ca095f448629072d6bc7b6cb105', '0', '0', '28', '10', '13', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 18:37:48', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 18:37:48', null, null);
INSERT INTO `user_credit` VALUES ('c71ebe817d4d4bb8add6bfcc00d17671', '0', '0', '1', '2', '2', '0.1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:25:12', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:25:12', null, null);
INSERT INTO `user_credit` VALUES ('c7686c96494b4b109c7aa6643fb15940', '22', '0', '36', '17', '25', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:12:20', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-17 18:12:20', null, null);
INSERT INTO `user_credit` VALUES ('c98abf198a3d40a4ae90f97c261d8d02', '6', '0', '4', '3', '3', '0.1', '1', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', null, '57d7a3aa8bdd4f9fa2203f5ca3c07cd0', null, null, null);
INSERT INTO `user_credit` VALUES ('d1dc67dba2c340a3a318f2b741e853e4', '0', '0', '30', '3', '4', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 17:43:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-22 17:43:41', null, null);
INSERT INTO `user_credit` VALUES ('d8f63edbb68e45e499e5275c724685e9', '0', '0', '4', '2', '2', '0', '1', 'e426acc3cf434635a9cbf8c90902e314', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 19:51:44', 'e426acc3cf434635a9cbf8c90902e314', '2019-04-29 19:51:44', null, null);
INSERT INTO `user_credit` VALUES ('dd5ca2a22a9743a395d9d54ac0f1a095', '1', '0', '87', '25', '26', '0', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 23:00:34', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 23:00:34', null, null);
INSERT INTO `user_credit` VALUES ('dfcef35c77fc4d119debd5862a8800d6', '0', '0', '5', '1', '1', '0.05', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:17:31', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 19:17:31', null, null);
INSERT INTO `user_credit` VALUES ('e8485092c8cf497d900a85732c3fdd06', '0', '0', '4', '1', '1', '0.2', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:29:13', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:29:13', null, null);
INSERT INTO `user_credit` VALUES ('f95787b58a604ebb93d207927cafc31b', '0', '0', '3', '1', '1', '0.1', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:28:38', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-17 18:28:38', null, null);
INSERT INTO `user_credit` VALUES ('fe822cc529204eb499e520eb790a81d8', '0', '0', '6', '4', '4', '0.05', '1', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:36', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2019-04-21 20:20:36', null, null);
