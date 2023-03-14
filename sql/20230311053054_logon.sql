CREATE TABLE `account_ip_logins` (
	`account_id` INT(10) UNSIGNED NOT NULL,
	`account_ip` VARCHAR(32) NOT NULL DEFAULT '0.0.0.0' COLLATE 'utf8mb4_general_ci',
	`login_count` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY (`account_id`, `account_ip`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;
