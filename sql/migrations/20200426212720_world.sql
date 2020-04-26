DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200426212720');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200426212720');
-- Add your query below.

CREATE TABLE `guild_bank` (
  `guid` INT(11) UNSIGNED NOT NULL,
  `slot` TINYINT(3) UNSIGNED NOT NULL,
  `item` INT(11) UNSIGNED NOT NULL,
  `item_template` INT(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`item`));
ALTER TABLE `guild_bank` 
ADD COLUMN `bag` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `guid`;

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES ('56003', '0', '6', 'I would like to check my guild bank', '3398', '18', '0', '0', '0', '0', '0', '0', '', '0', '0');

INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES ('90341', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES ('56003', '90341', '0');

UPDATE `gossip_menu_option` SET `npc_option_npcflag` = '1' WHERE (`menu_id` = '56003') and (`id` = '0');

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
