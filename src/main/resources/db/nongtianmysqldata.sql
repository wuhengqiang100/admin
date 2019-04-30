/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : comadmin

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-30 19:36:27
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `nongtianmysqldata` VALUES ('asdf', '2019-04-29 18:45:31', '22', '36', '35', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `nongtianmysqldata` VALUES ('dssdgdfhfghsdas', '2019-04-30 16:42:13', '25', '30', '36', '', '', '', '', '', '', '', '', '', '', '1e66a8199f08422c8b464a28ed93205');
