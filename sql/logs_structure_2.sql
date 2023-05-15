CREATE TABLE `character_action` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`date_time` TIMESTAMP NOT NULL DEFAULT current_timestamp(),
	`char_guid` INT(11) NOT NULL,
	`account_id` INT(11) NOT NULL,
	`action` ENUM('Login','Logout','Create','Delete','Rename') NOT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;



CREATE TABLE `character_action_renames` (
	`action_id` INT(10) UNSIGNED NOT NULL,
	`old_name` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_520_ci',
	`new_name` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_520_ci',
	INDEX `action_id` (`action_id`) USING BTREE,
	CONSTRAINT `FK_Character_Action` FOREIGN KEY (`action_id`) REFERENCES `character_action` (`id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;



