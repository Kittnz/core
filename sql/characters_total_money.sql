CREATE TABLE `characters_total_money` (
	`Id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`total_gold` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`time` DATETIME NOT NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`Id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;
