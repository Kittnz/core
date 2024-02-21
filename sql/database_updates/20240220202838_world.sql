DROP TABLE IF EXISTS `collection_toy`;
CREATE TABLE `collection_toy`  (
  `itemId` int(10) UNSIGNED NOT NULL,
  `spellId` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`itemId`, `spellId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;


REPLACE INTO `collection_toy` (`itemId`, `spellId`) VALUES (333, 332);





