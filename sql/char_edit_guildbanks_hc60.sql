ALTER TABLE `guild_bank`
	ADD COLUMN `isInferno` TINYINT UNSIGNED NOT NULL DEFAULT 0 AFTER `guid`,
	DROP INDEX `guildidandguid`,
	ADD UNIQUE INDEX `guildidandguidandinferno` (`guildid`, `guid`, `isInferno`) USING BTREE;


ALTER TABLE `guild_bank_log`
	ADD COLUMN `isInferno` TINYINT UNSIGNED NOT NULL DEFAULT 0 AFTER `log_id`;
	
ALTER TABLE `guild_bank_money`
	ADD COLUMN `isInferno` TINYINT UNSIGNED NOT NULL DEFAULT 0 AFTER `guildid`,
	DROP INDEX `guildid`,
	ADD UNIQUE INDEX `guildid` (`guildid`, `isInferno`) USING BTREE;


ALTER TABLE `guild_bank_tabs`
	ADD COLUMN `isInferno` TINYINT UNSIGNED NOT NULL DEFAULT 0 AFTER `guildid`;
	
ALTER TABLE `guild_bank_money`
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`guildid`, `isInferno`) USING BTREE;


