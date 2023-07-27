ALTER TABLE `system_fingerprint_usage`
	ADD COLUMN `extendedHash` BIGINT NOT NULL DEFAULT 0 AFTER `osVersion`;

    CREATE TABLE `hwprint_marks` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `extendedPrint` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;


