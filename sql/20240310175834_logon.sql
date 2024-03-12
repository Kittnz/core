CREATE TABLE `hwprint_autobans`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `extendedPrint` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;


