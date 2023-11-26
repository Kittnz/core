CREATE TABLE `pending_commands` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing identifier for the row',
	`realm_id` INT UNSIGNED NULL COMMENT 'id of the realm that should run the command',
	`command` VARCHAR(250) NOT NULL DEFAULT '' COMMENT 'full comand with parameters',
	`run_at_time` INT UNSIGNED NOT NULL DEFAULT '0' COMMENT 'unixtime',
	PRIMARY KEY (`id`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
;
