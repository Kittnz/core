-- Add instance id player logged out inside of to characters table to prevent exploits.
ALTER TABLE `characters`
	ADD COLUMN `instance_id` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `map`;
