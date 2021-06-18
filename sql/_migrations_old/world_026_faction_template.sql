/*
Navicat MySQL Data Transfer

Source Server         : server
Source Server Version : 50505
Source Host           : localhost:3312
Source Database       : tw_world

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-06-07 22:09:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `faction_template`
-- ----------------------------
DROP TABLE IF EXISTS `faction_template`;
CREATE TABLE `faction_template` (
  `id` smallint(4) unsigned NOT NULL DEFAULT 0,
  `build` smallint(4) unsigned NOT NULL DEFAULT 5875 COMMENT 'Game client build for which to load this entry',
  `faction_id` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `faction_flags` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `our_mask` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `friendly_mask` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `hostile_mask` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `enemy_faction1` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `enemy_faction2` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `enemy_faction3` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `enemy_faction4` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `friend_faction1` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `friend_faction2` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `friend_faction3` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `friend_faction4` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`build`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of faction_template
-- ----------------------------
INSERT INTO `faction_template` VALUES ('1', '5875', '1', '72', '3', '2', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('2', '5875', '2', '72', '5', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('3', '5875', '3', '72', '3', '2', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('4', '5875', '4', '72', '3', '2', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('5', '5875', '5', '72', '5', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('6', '5875', '6', '72', '5', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('7', '5875', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('10', '5875', '40', '2056', '3', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('11', '5875', '72', '2081', '3', '2', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('12', '5875', '72', '0', '2', '2', '4', '0', '0', '0', '0', '72', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('14', '5875', '14', '0', '8', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('15', '5875', '7', '1', '0', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('16', '5875', '14', '1', '8', '0', '1', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('17', '5875', '15', '1', '8', '0', '1', '0', '0', '0', '0', '15', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('18', '5875', '19', '1', '8', '0', '1', '0', '0', '0', '0', '19', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('19', '5875', '17', '1', '8', '0', '1', '0', '0', '0', '0', '17', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('20', '5875', '16', '1', '8', '0', '1', '0', '0', '0', '0', '16', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('21', '5875', '20', '1', '8', '0', '1', '0', '0', '0', '0', '20', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('22', '5875', '22', '0', '8', '0', '1', '0', '0', '0', '0', '22', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('23', '5875', '54', '2049', '2', '2', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('24', '5875', '24', '1', '8', '0', '1', '0', '0', '0', '0', '24', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('25', '5875', '25', '0', '8', '0', '0', '0', '0', '0', '0', '25', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('26', '5875', '25', '1', '8', '0', '1', '0', '0', '0', '0', '25', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('27', '5875', '15', '1', '8', '0', '1', '1', '0', '0', '0', '15', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('28', '5875', '26', '1', '8', '0', '1', '0', '0', '0', '0', '26', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('29', '5875', '76', '0', '4', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('30', '5875', '27', '1', '8', '0', '1', '0', '0', '0', '0', '27', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('31', '5875', '28', '1024', '0', '0', '0', '0', '0', '0', '0', '148', '28', '0', '0');
INSERT INTO `faction_template` VALUES ('32', '5875', '29', '16', '0', '0', '0', '28', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('33', '5875', '40', '2056', '5', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('34', '5875', '15', '1', '8', '0', '0', '0', '0', '0', '0', '15', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('35', '5875', '31', '0', '0', '1', '0', '0', '0', '0', '0', '31', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('36', '5875', '32', '1025', '0', '0', '0', '0', '0', '0', '0', '32', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('37', '5875', '33', '1', '8', '0', '1', '0', '0', '0', '0', '33', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('38', '5875', '29', '17', '8', '0', '1', '28', '0', '0', '0', '29', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('39', '5875', '18', '1', '8', '0', '1', '0', '0', '0', '0', '18', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('40', '5875', '34', '1', '8', '0', '1', '0', '0', '0', '0', '34', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('41', '5875', '35', '49', '8', '0', '1', '36', '0', '0', '0', '35', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('42', '5875', '36', '9', '1', '1', '0', '0', '0', '0', '0', '36', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('43', '5875', '35', '33', '8', '0', '0', '36', '0', '0', '0', '35', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('44', '5875', '37', '1', '8', '0', '1', '0', '0', '0', '0', '37', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('45', '5875', '38', '1', '8', '0', '1', '0', '0', '0', '0', '38', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('46', '5875', '39', '1', '8', '0', '1', '0', '0', '0', '0', '39', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('47', '5875', '41', '1', '8', '0', '1', '0', '0', '0', '0', '41', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('48', '5875', '42', '1', '8', '0', '1', '0', '0', '0', '0', '42', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('49', '5875', '43', '0', '8', '0', '1', '0', '0', '0', '0', '43', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('50', '5875', '44', '1', '8', '0', '1', '0', '0', '0', '0', '44', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('51', '5875', '45', '1', '8', '0', '1', '46', '40', '0', '0', '45', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('52', '5875', '769', '8', '8', '0', '0', '770', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('53', '5875', '49', '0', '2', '2', '12', '0', '0', '0', '0', '49', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('54', '5875', '48', '1', '8', '0', '1', '0', '0', '0', '0', '48', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('55', '5875', '47', '0', '2', '2', '4', '0', '0', '0', '0', '47', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('56', '5875', '49', '33', '2', '2', '12', '0', '0', '0', '0', '49', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('57', '5875', '47', '2081', '3', '2', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('58', '5875', '7', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('59', '5875', '32', '1', '8', '0', '1', '0', '0', '0', '0', '32', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('60', '5875', '50', '1', '8', '0', '1', '0', '0', '0', '0', '50', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('61', '5875', '51', '1', '8', '0', '1', '0', '0', '0', '0', '51', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('62', '5875', '52', '1', '8', '0', '1', '0', '0', '0', '0', '52', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('63', '5875', '53', '1', '8', '0', '1', '0', '0', '0', '0', '53', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('64', '5875', '54', '1', '2', '2', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('65', '5875', '76', '1', '0', '0', '0', '45', '0', '0', '0', '76', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('66', '5875', '55', '17', '8', '0', '1', '28', '0', '0', '0', '55', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('67', '5875', '56', '1', '8', '0', '1', '0', '0', '0', '0', '56', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('68', '5875', '68', '0', '4', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('69', '5875', '470', '0', '0', '0', '0', '0', '0', '0', '0', '470', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('70', '5875', '57', '1', '8', '0', '1', '0', '0', '0', '0', '57', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('71', '5875', '68', '2081', '5', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('72', '5875', '58', '1', '8', '0', '1', '0', '0', '0', '0', '58', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('73', '5875', '669', '1', '8', '0', '1', '0', '0', '0', '0', '669', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('74', '5875', '60', '1', '8', '0', '1', '289', '0', '0', '0', '60', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('76', '5875', '61', '33', '0', '2', '4', '0', '0', '0', '0', '61', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('77', '5875', '62', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('78', '5875', '63', '0', '8', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('79', '5875', '69', '2081', '3', '2', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('80', '5875', '69', '0', '2', '2', '4', '0', '0', '0', '0', '69', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('81', '5875', '64', '1025', '8', '0', '1', '0', '0', '0', '0', '64', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('82', '5875', '65', '1', '8', '0', '1', '0', '0', '0', '0', '65', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('83', '5875', '66', '33', '4', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('84', '5875', '189', '33', '2', '2', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('85', '5875', '76', '2081', '5', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('86', '5875', '770', '64', '0', '1', '0', '769', '0', '0', '0', '771', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('87', '5875', '70', '1', '8', '0', '1', '0', '0', '0', '0', '70', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('88', '5875', '71', '33', '2', '2', '4', '0', '0', '0', '0', '71', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('89', '5875', '56', '33', '8', '0', '1', '20', '0', '0', '0', '56', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('90', '5875', '73', '1', '8', '0', '1', '0', '0', '0', '0', '73', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('91', '5875', '74', '0', '8', '0', '1', '0', '0', '0', '0', '74', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('92', '5875', '75', '0', '8', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('93', '5875', '14', '8', '8', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('94', '5875', '77', '0', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('95', '5875', '78', '1', '8', '0', '1', '0', '0', '0', '0', '78', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('96', '5875', '79', '0', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('97', '5875', '70', '64', '8', '0', '0', '79', '0', '0', '0', '70', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('98', '5875', '68', '8', '4', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('99', '5875', '36', '8', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('100', '5875', '77', '32', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('101', '5875', '77', '0', '0', '8', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('102', '5875', '77', '0', '0', '8', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('103', '5875', '80', '65', '8', '0', '1', '689', '0', '0', '0', '80', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('104', '5875', '81', '0', '4', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('105', '5875', '81', '2081', '5', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('106', '5875', '66', '33', '4', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('107', '5875', '33', '0', '8', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('108', '5875', '70', '64', '0', '0', '0', '79', '0', '0', '0', '70', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('109', '5875', '110', '1', '8', '0', '1', '0', '0', '0', '0', '110', '111', '0', '0');
INSERT INTO `faction_template` VALUES ('110', '5875', '110', '33', '8', '0', '1', '85', '0', '0', '0', '110', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('111', '5875', '85', '1', '8', '0', '1', '0', '0', '0', '0', '85', '111', '0', '0');
INSERT INTO `faction_template` VALUES ('112', '5875', '85', '33', '8', '0', '1', '110', '0', '0', '0', '85', '111', '0', '0');
INSERT INTO `faction_template` VALUES ('113', '5875', '40', '2056', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('114', '5875', '77', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('115', '5875', '8', '72', '3', '2', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('116', '5875', '9', '72', '5', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('118', '5875', '68', '33', '4', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('119', '5875', '87', '1', '8', '0', '1', '0', '0', '0', '0', '87', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('120', '5875', '21', '0', '0', '0', '0', '0', '0', '0', '0', '21', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('121', '5875', '21', '6177', '1', '0', '8', '0', '0', '0', '0', '21', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('122', '5875', '47', '33', '2', '2', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('123', '5875', '72', '33', '2', '2', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('124', '5875', '69', '33', '2', '2', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('125', '5875', '76', '33', '4', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('126', '5875', '530', '0', '4', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('127', '5875', '35', '32', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('128', '5875', '88', '1', '8', '0', '1', '0', '0', '0', '0', '88', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('129', '5875', '89', '1', '8', '0', '1', '0', '0', '0', '0', '89', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('130', '5875', '90', '1', '8', '0', '1', '0', '0', '0', '0', '90', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('131', '5875', '91', '1', '8', '0', '1', '0', '0', '0', '0', '91', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('132', '5875', '92', '1', '8', '0', '1', '0', '0', '0', '0', '92', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('133', '5875', '93', '1', '8', '0', '1', '0', '0', '0', '0', '93', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('134', '5875', '94', '1', '8', '0', '1', '0', '0', '0', '0', '94', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('148', '5875', '14', '0', '8', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('149', '5875', '108', '1025', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('150', '5875', '108', '2081', '3', '2', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('151', '5875', '108', '0', '2', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('152', '5875', '109', '1', '8', '0', '1', '0', '0', '0', '0', '109', '111', '0', '0');
INSERT INTO `faction_template` VALUES ('153', '5875', '109', '0', '8', '0', '0', '0', '0', '0', '0', '109', '111', '0', '0');
INSERT INTO `faction_template` VALUES ('154', '5875', '111', '1', '8', '0', '1', '0', '0', '0', '0', '109', '85', '111', '110');
INSERT INTO `faction_template` VALUES ('168', '5875', '128', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('188', '5875', '148', '1025', '0', '8', '0', '0', '0', '0', '0', '148', '28', '0', '0');
INSERT INTO `faction_template` VALUES ('189', '5875', '7', '1024', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('190', '5875', '148', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('208', '5875', '168', '5', '2', '2', '0', '0', '0', '0', '0', '168', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('209', '5875', '168', '2', '2', '2', '0', '0', '0', '0', '0', '168', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('210', '5875', '189', '33', '2', '2', '12', '0', '0', '0', '0', '189', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('230', '5875', '573', '1', '8', '0', '1', '0', '0', '0', '0', '573', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('231', '5875', '40', '2120', '3', '2', '8', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('232', '5875', '40', '2120', '5', '4', '8', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('233', '5875', '20', '33', '8', '0', '1', '68', '0', '0', '0', '20', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('250', '5875', '40', '2120', '1', '1', '8', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('270', '5875', '229', '1', '8', '0', '1', '0', '0', '0', '0', '229', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('290', '5875', '40', '8', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('310', '5875', '249', '1', '8', '0', '1', '0', '0', '0', '0', '249', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('311', '5875', '249', '1', '8', '0', '0', '0', '0', '0', '0', '249', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('312', '5875', '22', '1', '8', '0', '1', '0', '0', '0', '0', '22', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('330', '5875', '229', '1', '8', '0', '0', '0', '0', '0', '0', '229', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('350', '5875', '88', '0', '8', '0', '0', '0', '0', '0', '0', '88', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('370', '5875', '915', '33', '8', '8', '1', '912', '0', '0', '0', '915', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('371', '5875', '269', '0', '2', '2', '4', '0', '0', '0', '0', '269', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('390', '5875', '21', '33', '0', '0', '0', '60', '0', '0', '0', '21', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('410', '5875', '43', '1', '8', '0', '1', '0', '0', '0', '0', '43', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('411', '5875', '310', '1', '8', '0', '1', '0', '0', '0', '0', '310', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('412', '5875', '510', '33', '4', '4', '2', '509', '0', '0', '0', '510', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('413', '5875', '309', '1', '8', '0', '1', '0', '0', '0', '0', '309', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('414', '5875', '576', '1', '8', '0', '1', '65', '0', '0', '0', '576', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('415', '5875', '311', '1', '8', '0', '1', '0', '0', '0', '0', '311', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('416', '5875', '311', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('430', '5875', '329', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('450', '5875', '229', '33', '8', '0', '1', '40', '0', '0', '0', '229', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('470', '5875', '311', '0', '8', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('471', '5875', '349', '1', '0', '0', '0', '0', '0', '0', '0', '349', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('472', '5875', '70', '65', '8', '0', '1', '349', '0', '0', '0', '70', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('473', '5875', '349', '65', '0', '0', '0', '70', '0', '0', '0', '349', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('474', '5875', '369', '0', '0', '0', '0', '0', '0', '0', '0', '369', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('475', '5875', '369', '6177', '1', '0', '8', '0', '0', '0', '0', '369', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('494', '5875', '389', '32', '8', '0', '1', '53', '0', '0', '0', '389', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('495', '5875', '40', '2121', '1', '1', '8', '0', '0', '0', '0', '40', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('514', '5875', '409', '1', '8', '0', '1', '0', '0', '0', '0', '409', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('534', '5875', '189', '0', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('554', '5875', '429', '1', '8', '0', '7', '0', '0', '0', '0', '429', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('574', '5875', '449', '33', '8', '0', '1', '450', '0', '0', '0', '449', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('575', '5875', '450', '0', '8', '0', '1', '0', '0', '0', '0', '450', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('594', '5875', '32', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('614', '5875', '36', '9', '0', '1', '0', '0', '0', '0', '0', '36', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('634', '5875', '14', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('635', '5875', '609', '1', '0', '0', '0', '0', '0', '0', '0', '609', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('636', '5875', '576', '0', '8', '0', '1', '65', '0', '0', '0', '576', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('637', '5875', '470', '6177', '1', '0', '8', '0', '0', '0', '0', '470', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('654', '5875', '82', '1', '8', '0', '1', '0', '0', '0', '0', '82', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('655', '5875', '90', '9', '8', '0', '5', '0', '0', '0', '0', '90', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('674', '5875', '48', '1', '0', '0', '0', '0', '0', '0', '0', '48', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('694', '5875', '471', '0', '2', '2', '4', '0', '0', '0', '0', '471', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('695', '5875', '749', '1', '0', '0', '0', '0', '0', '0', '0', '749', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('714', '5875', '66', '33', '4', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('734', '5875', '48', '1', '1', '1', '0', '0', '0', '0', '0', '48', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('735', '5875', '489', '0', '1', '1', '0', '0', '0', '0', '0', '489', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('736', '5875', '489', '1', '8', '0', '1', '0', '0', '0', '0', '489', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('754', '5875', '48', '65', '8', '0', '1', '34', '0', '0', '0', '48', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('774', '5875', '40', '8', '3', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('775', '5875', '40', '8', '5', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('776', '5875', '910', '0', '0', '0', '0', '249', '80', '0', '0', '910', '531', '0', '0');
INSERT INTO `faction_template` VALUES ('777', '5875', '912', '33', '1', '1', '0', '915', '0', '0', '0', '912', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('778', '5875', '511', '1', '8', '0', '1', '0', '0', '0', '0', '511', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('794', '5875', '529', '0', '0', '0', '0', '0', '0', '0', '0', '529', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('795', '5875', '572', '1', '8', '0', '1', '0', '0', '0', '0', '572', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('814', '5875', '529', '1', '0', '0', '0', '0', '0', '0', '0', '529', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('834', '5875', '74', '1', '8', '0', '1', '0', '0', '0', '0', '74', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('854', '5875', '577', '6177', '1', '0', '8', '0', '0', '0', '0', '577', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('855', '5875', '577', '0', '0', '0', '0', '0', '0', '0', '0', '577', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('874', '5875', '589', '33', '2', '2', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('875', '5875', '54', '0', '2', '2', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('876', '5875', '530', '33', '4', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('877', '5875', '530', '2081', '5', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('894', '5875', '108', '0', '2', '2', '4', '0', '0', '0', '0', '108', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('914', '5875', '679', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('934', '5875', '575', '0', '8', '0', '1', '0', '0', '0', '0', '575', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('954', '5875', '73', '0', '8', '0', '1', '0', '0', '0', '0', '73', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('974', '5875', '20', '0', '8', '0', '1', '0', '0', '0', '0', '20', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('994', '5875', '609', '0', '0', '0', '0', '0', '0', '0', '0', '609', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('995', '5875', '81', '33', '4', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('996', '5875', '609', '33', '1', '0', '8', '249', '0', '0', '0', '609', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1014', '5875', '629', '1', '0', '0', '0', '0', '0', '0', '0', '629', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1015', '5875', '629', '0', '0', '0', '0', '0', '0', '0', '0', '629', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1034', '5875', '66', '0', '4', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1054', '5875', '471', '2081', '3', '2', '12', '0', '0', '0', '0', '471', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1055', '5875', '471', '33', '2', '2', '4', '0', '0', '0', '0', '471', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1074', '5875', '76', '1', '4', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1075', '5875', '108', '1', '2', '2', '4', '0', '0', '0', '0', '108', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1076', '5875', '69', '1', '2', '2', '4', '0', '0', '0', '0', '69', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1077', '5875', '108', '33', '2', '2', '4', '0', '0', '0', '0', '108', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1078', '5875', '72', '1', '2', '2', '4', '0', '0', '0', '0', '72', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1080', '5875', '31', '8', '0', '1', '0', '74', '0', '0', '0', '31', '649', '0', '0');
INSERT INTO `faction_template` VALUES ('1081', '5875', '74', '1', '8', '0', '1', '649', '0', '0', '0', '74', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1094', '5875', '23', '1024', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1095', '5875', '679', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1096', '5875', '108', '2080', '3', '2', '12', '679', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1097', '5875', '69', '32', '2', '2', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1114', '5875', '689', '64', '8', '0', '1', '80', '0', '0', '0', '689', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1134', '5875', '68', '2080', '5', '4', '10', '679', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1154', '5875', '68', '2080', '5', '4', '10', '679', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1174', '5875', '76', '73', '4', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1194', '5875', '709', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1214', '5875', '729', '33', '5', '4', '10', '730', '0', '0', '0', '729', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1215', '5875', '729', '1', '4', '4', '2', '730', '0', '0', '0', '729', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1216', '5875', '730', '33', '3', '2', '12', '729', '0', '0', '0', '730', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1217', '5875', '730', '1', '2', '2', '4', '729', '0', '0', '0', '730', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1234', '5875', '750', '33', '8', '0', '1', '749', '0', '0', '0', '750', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1235', '5875', '750', '1', '8', '0', '1', '749', '0', '0', '0', '750', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1236', '5875', '750', '0', '8', '0', '1', '749', '0', '0', '0', '750', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1254', '5875', '609', '4129', '1', '0', '8', '0', '0', '0', '0', '609', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1274', '5875', '7', '33', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1275', '5875', '7', '33', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1294', '5875', '771', '0', '8', '0', '1', '770', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1314', '5875', '66', '65', '4', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1315', '5875', '189', '65', '2', '2', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1334', '5875', '730', '0', '2', '2', '4', '729', '0', '0', '0', '730', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1335', '5875', '729', '0', '4', '4', '2', '730', '0', '0', '0', '729', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1354', '5875', '809', '0', '0', '0', '0', '0', '0', '0', '0', '809', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1355', '5875', '809', '1', '0', '0', '0', '0', '0', '0', '0', '809', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1374', '5875', '829', '1', '8', '0', '1', '0', '0', '0', '0', '38', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1375', '5875', '77', '32', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1394', '5875', '80', '33', '8', '0', '1', '689', '47', '0', '0', '80', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1395', '5875', '916', '1', '8', '0', '1', '0', '0', '0', '0', '916', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1414', '5875', '790', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1415', '5875', '849', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1434', '5875', '869', '1', '8', '0', '1', '0', '0', '0', '0', '869', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1454', '5875', '36', '9', '0', '1', '0', '35', '0', '0', '0', '36', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1474', '5875', '59', '1', '0', '0', '0', '0', '0', '0', '0', '59', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1475', '5875', '59', '0', '0', '0', '0', '0', '0', '0', '0', '59', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1494', '5875', '893', '0', '4', '4', '2', '0', '0', '0', '0', '893', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1495', '5875', '893', '2081', '5', '4', '10', '0', '0', '0', '0', '893', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1496', '5875', '893', '33', '4', '4', '2', '0', '0', '0', '0', '893', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1514', '5875', '890', '33', '2', '2', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1515', '5875', '889', '33', '4', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1534', '5875', '730', '33', '2', '2', '4', '729', '0', '0', '0', '730', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1554', '5875', '729', '2120', '5', '4', '8', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1555', '5875', '909', '0', '0', '0', '0', '0', '0', '0', '0', '909', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1574', '5875', '270', '0', '0', '0', '0', '0', '0', '0', '0', '270', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1575', '5875', '72', '33', '3', '2', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1576', '5875', '269', '33', '2', '2', '4', '0', '0', '0', '0', '269', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1577', '5875', '509', '33', '2', '2', '4', '510', '0', '0', '0', '509', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1594', '5875', '69', '33', '3', '2', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1595', '5875', '76', '33', '5', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1596', '5875', '730', '33', '3', '2', '12', '729', '0', '0', '0', '730', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1597', '5875', '729', '33', '5', '4', '10', '730', '0', '0', '0', '729', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1598', '5875', '510', '0', '4', '4', '2', '509', '0', '0', '0', '510', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1599', '5875', '509', '0', '2', '2', '4', '510', '0', '0', '0', '509', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1600', '5875', '69', '33', '2', '2', '8', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1601', '5875', '910', '33', '0', '0', '0', '249', '80', '0', '0', '910', '531', '0', '0');
INSERT INTO `faction_template` VALUES ('1605', '5875', '531', '0', '0', '0', '1', '0', '0', '0', '0', '531', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1606', '5875', '7', '0', '0', '4', '2', '7', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1607', '5875', '7', '0', '0', '4', '2', '7', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1608', '5875', '609', '73', '1', '0', '8', '249', '0', '0', '0', '609', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1609', '5875', '927', '72', '5', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1610', '5875', '914', '72', '3', '2', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1611', '5875', '47', '65', '3', '2', '4', '916', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1612', '5875', '76', '65', '5', '4', '2', '916', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1613', '5875', '912', '0', '1', '1', '0', '915', '0', '0', '0', '912', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1614', '5875', '14', '1', '8', '0', '1', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1615', '5875', '169', '6177', '1', '0', '8', '0', '0', '0', '0', '21', '577', '369', '0');
INSERT INTO `faction_template` VALUES ('1616', '5875', '919', '0', '0', '15', '0', '918', '0', '0', '0', '919', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1617', '5875', '918', '64', '0', '0', '1', '919', '0', '0', '0', '918', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1618', '5875', '47', '33', '2', '2', '12', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1619', '5875', '76', '33', '4', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1620', '5875', '128', '0', '0', '0', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1621', '5875', '921', '0', '2', '0', '4', '920', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1622', '5875', '920', '0', '2', '0', '4', '921', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1624', '5875', '529', '2115', '1', '0', '8', '0', '0', '0', '0', '529', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1625', '5875', '529', '4129', '1', '0', '8', '0', '0', '0', '0', '529', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1626', '5875', '20', '33', '8', '0', '1', '679', '0', '0', '0', '20', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1630', '5875', '928', '37', '0', '0', '15', '14', '148', '0', '0', '928', '20', '0', '0');
INSERT INTO `faction_template` VALUES ('1634', '5875', '928', '33', '8', '0', '0', '68', '72', '0', '0', '928', '20', '0', '0');
INSERT INTO `faction_template` VALUES ('1635', '5875', '169', '6161', '0', '0', '0', '891', '0', '0', '0', '169', '892', '0', '0');
INSERT INTO `faction_template` VALUES ('1641', '5875', '889', '1', '4', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1642', '5875', '890', '1', '2', '2', '4', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1673', '5875', '950', '0', '0', '0', '0', '951', '0', '0', '0', '950', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1676', '5875', '954', '0', '0', '15', '0', '0', '0', '0', '0', '954', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1677', '5875', '951', '0', '0', '15', '0', '0', '0', '0', '0', '954', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1678', '5875', '789', '1', '0', '0', '0', '0', '0', '0', '0', '789', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1679', '5875', '630', '1', '0', '0', '0', '0', '0', '0', '0', '630', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1680', '5875', '999', '1', '0', '0', '0', '1000', '0', '0', '0', '999', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1681', '5875', '1000', '1', '0', '0', '0', '999', '0', '0', '0', '1000', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1682', '5875', '1001', '1', '0', '0', '0', '0', '0', '0', '0', '1001', '0', '0', '0');
INSERT INTO `faction_template` VALUES ('1683', '5875', '1002', '37', '0', '0', '15', '14', '148', '0', '0', '1002', '73', '0', '0');
INSERT INTO `faction_template` VALUES ('1684', '5875', '1003', '1', '0', '0', '0', '73', '0', '0', '0', '1003', '635', '0', '0');
INSERT INTO `faction_template` VALUES ('1685', '5875', '72', '0', '2', '2', '4', '14', '16', '0', '0', '72', '371', '0', '0');
