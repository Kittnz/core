CREATE TABLE `character_variables` (
	`lowGuid` INT(10) UNSIGNED NOT NULL,
	`variableType` INT(10) UNSIGNED NOT NULL,
	`value` VARCHAR(255) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`lowGuid`, `variableType`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;
