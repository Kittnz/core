CREATE TABLE `player_census` (
	`Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`alliancePlayers` INT UNSIGNED NOT NULL,
	`hordePlayers` INT UNSIGNED NOT NULL,
	`totalPlayers` INT UNSIGNED NOT NULL,
	`dateTime` DATETIME NOT NULL,
	PRIMARY KEY (`Id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;