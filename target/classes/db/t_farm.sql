/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : comadmin

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-30 19:34:14
*/

SET FOREIGN_KEY_CHECKS=0;

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
