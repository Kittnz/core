ALTER TABLE `characters`
	ADD COLUMN `is_worldbot` TINYINT(11) NOT NULL DEFAULT '0' AFTER `world_phase_mask`;

/*UPDATE `characters` SET `is_worldbot`=1*/

ALTER TABLE `characters`
	ADD COLUMN `virtual_player_realm` INT(11) NOT NULL DEFAULT '0' AFTER `is_worldbot`;
	
/*UPDATE `characters` SET `virtual_player_realm`=721682444*/