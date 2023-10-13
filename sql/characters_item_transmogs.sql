-- ----------------------------
-- Table structure for item_transmogs
-- ----------------------------

DROP TABLE IF EXISTS `item_transmogs`;
CREATE TABLE `item_transmogs`  (
  `ID` int UNSIGNED NOT NULL,
  `ItemID` int UNSIGNED NOT NULL,
  `DisplayID` int UNSIGNED NOT NULL,
  `SourceID` int NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

REPLACE INTO `item_transmogs` VALUES (100001, 12064, 34233, 16921);

