/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : comadmin

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-05-06 17:14:43
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
INSERT INTO `nongtianmysqldata` VALUES ('asdaf', '2019-04-28 18:45:31', '25', '26', '29', null, null, null, null, null, null, null, null, null,
null, '9b1a547796cd41279819649e758a506d');
INSERT INTO `nongtianmysqldata` VALUES ('asdfsffaaffffhhsghg', '2019-04-27 18:45:31', '45', '27', '28', null, null, null, null, null, null, null,
null, null, null, '9b1a547796cd41279819649e758a506d');
INSERT INTO `nongtianmysqldata` VALUES ('asdfsffsdfafffs', '2019-04-26 18:45:31', '20', '25', '32', null, null, null, null, null, null, null, null,
null, null, '9b1a547796cd41279819649e758a506d');
INSERT INTO `nongtianmysqldata` VALUES ('asdfsffggafffsghg', '2019-04-25 18:45:31', '48', '40', '38', null, null, null, null, null, null, null,
null, null, null, '9b1a547796cd41279819649e758a506d');
INSERT INTO `nongtianmysqldata` VALUES ('asdfsfhjkfafs', '2019-04-24 18:45:31', '32', '41', '35', null, null, null, null, null, null, null, null,
null, null, '9b1a547796cd41279819649e758a506d');
INSERT INTO `nongtianmysqldata` VALUES ('asdfslyus', '2019-04-29 18:45:31', '22', '46', '37', null, null, null, null, null, null, null, null, null,
null, '9b1a547796cd41279819649e758a506d');
INSERT INTO `nongtianmysqldata` VALUES ('asftuyas', '2019-05-02 16:51:15', '33', '50', '48', null, null, null, null, null, null, null, null, null,
null, '9');
INSERT INTO `nongtianmysqldata` VALUES ('dssdgdddfhyiufghsdas', '2019-04-30 16:42:13', '28', '48', '36', '', '', '', '', '', '', '', '', '', '',
'c4ef24b254f143589aa4b72b1e6d90d5');
INSERT INTO `nongtianmysqldata` VALUES ('dssdgdddfhsauyofafghsdaaas', '2019-04-30 16:42:13', '25', '43', '36', '', '', '', '', '', '', '', '', '',
'', 'c4ef24b254f143589aa4b72b1e6d90d5');
INSERT INTO `nongtianmysqldata` VALUES ('dssdgdddfhsafyuoafghsdas', '2019-04-30 16:42:13', '29', '32', '35', '', '', '', '', '', '', '', '', '', '',
'c4ef24b254f143589aa4b72b1e6d90d5');
INSERT INTO `nongtianmysqldata` VALUES ('dssdgdddfhsafahjkfghsdhhaaas', '2019-04-30 16:42:13', '24', '28', '33', '', '', '', '', '', '', '', '', '',
'', 'c4ef24b254f143589aa4b72b1e6d90d5');
INSERT INTO `nongtianmysqldata` VALUES ('dssdgdddfhsafafgfgjjhsdhhaaas', '2019-04-30 16:42:13', '18', '26', '28', '', '', '', '', '', '', '', '',
'', '', 'c4ef24b254f143589aa4b72b1e6d90d5');
INSERT INTO `nongtianmysqldata` VALUES ('dssdgdfhf56ghsdas', '2019-04-30 16:42:13', '19', '50', '42', '', '', '', '', '', '', '', '', '', '',
'c4ef24b254f143589aa4b72b1e6d90d5');
INSERT INTO `nongtianmysqldata` VALUES ('fhdrtfh', '2019-05-03 16:50:31', '19', '46', '55', null, null, null, null, null, null, null, null, null,
null, '9');
INSERT INTO `nongtianmysqldata` VALUES ('gdsgyydfh', '2019-05-04 16:50:04', '20', '65', '58', null, null, null, null, null, null, null, null, null,
null, '9');
INSERT INTO `nongtianmysqldata` VALUES ('gheehj', '2019-04-30 18:45:31', '22', '36', '28', null, null, null, null, null, null, null, null, null,
null, '9');
INSERT INTO `nongtianmysqldata` VALUES ('hkiuouoo', '2019-05-01 16:51:43', '27', '66', '53', null, null, null, null, null, null, null, null, null,
null, '9');
INSERT INTO `nongtianmysqldata` VALUES ('jnntppyj', '2019-05-05 16:49:48', '18', '46', '59', null, null, null, null, null, null, null, null, null,
null, '9');
INSERT INTO `nongtianmysqldata` VALUES ('lksjafiudsfi', '2019-04-30 16:52:07', '24', '45', '49', null, null, null, null, null, null, null, null,
null, null, '9');
INSERT INTO `nongtianmysqldata` VALUES ('syyigg', '2019-05-06 16:49:23', '15', '50', '66', null, null, null, null, null, null, null, null, null,
null, '9');
