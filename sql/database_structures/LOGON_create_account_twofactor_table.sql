CREATE TABLE `account_twofactor_allowed` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`ip_address` VARCHAR(30) NOT NULL DEFAULT '0' COLLATE 'utf8_general_ci',
	`account_id` INT(10) UNSIGNED NULL DEFAULT NULL,
	`expires_at` BIGINT(20) UNSIGNED NULL DEFAULT NULL,
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
