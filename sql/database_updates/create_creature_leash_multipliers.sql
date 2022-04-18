CREATE TABLE IF NOT EXISTS `creature_max_leash_multipliers` (
	`entry` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`multiplier` FLOAT NOT NULL DEFAULT 3,
	PRIMARY KEY (`entry`)
)
COLLATE='utf8_general_ci'
;
