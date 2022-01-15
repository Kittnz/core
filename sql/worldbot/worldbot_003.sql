ALTER TABLE `characters`
	ADD COLUMN `is_worldbot` TINYINT(11) NOT NULL DEFAULT '0' AFTER `world_phase_mask`;

/*UPDATE `characters` SET `is_worldbot`=1*/