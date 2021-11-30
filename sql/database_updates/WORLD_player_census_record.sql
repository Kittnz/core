DROP TABLE IF EXISTS `player_census`;
CREATE TABLE `player_census` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`alliance_players` INT(10) UNSIGNED NOT NULL,
	`horde_players` INT(10) UNSIGNED NOT NULL,
	`total_players` INT(10) UNSIGNED NOT NULL,
	`date_time` DATETIME NOT NULL,
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=6
;
