-- object scaling table

CREATE TABLE `object_scaling` (
	`fullGuid` BIGINT(20) UNSIGNED NOT NULL,
	`scale` FLOAT(12) NOT NULL DEFAULT '0',
	PRIMARY KEY (`fullGuid`) USING BTREE
)
