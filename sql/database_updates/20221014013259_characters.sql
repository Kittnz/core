CREATE TABLE `character_destroyed_items` (
	`player_guid` INT UNSIGNED NOT NULL,
	`item_entry` MEDIUMINT UNSIGNED NOT NULL,
	`stack_count` MEDIUMINT UNSIGNED NOT NULL
)
COMMENT='items that players have thrown away'
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
