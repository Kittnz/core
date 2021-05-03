-- run once !

-- update chromie to be a vendor
UPDATE `creature_template` SET `npc_flags` = '6' WHERE `creature_template`.`entry` = 10667;

-- add the item to chromie's vendor list
REPLACE INTO `npc_vendor` VALUES(10667, 83000, 0, 0, 0, 0);

-- add the two items
REPLACE INTO `item_template` VALUES
(83000, 0, 0, 0, 'Chronoboon Displacer', 'Alters the fabric of time, suspending beneficial world effects from dragonslaying, Dire Maul, Zul\'Gurub, Darkmoon Faire and Felwood.', 34867, 2, 0, 1, 50000, 12500, 0, -1, -1, 0, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46024, 0, 0, 0, 3600000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_chronoboon_displacer'),
(83001, 0, 0, 0, 'Supercharged Chronoboon Displacer', 'Restores your suspended world effects.', 34864, 2, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46034, 0, 0, 0, 3600000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'item_supercharged_chronoboon_displacer');

-- create character_aura_suspended
USE tw_char;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
CREATE TABLE `character_aura_suspended` (
  `guid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `item_guid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `spell` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `stackcount` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `remaincharges` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `basepoints0` int(11) NOT NULL DEFAULT '0',
  `basepoints1` int(11) NOT NULL DEFAULT '0',
  `basepoints2` int(11) NOT NULL DEFAULT '0',
  `periodictime0` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `periodictime1` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `periodictime2` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `effIndexMask` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System' ROW_FORMAT=DYNAMIC;

ALTER TABLE `character_aura_suspended`
  ADD PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`);

COMMIT;
