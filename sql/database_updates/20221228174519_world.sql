-- Bar'thog the Wicked quest needs MaxLevelRewardMoney:
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2340 WHERE `entry` = 40703;

-- Table `creature` have creature (GUID: 2565647 Entry: 91926) with `spawntimesecsmax` (10800) value lower than `spawntimesecsmin` (200000), it will be adjusted to 200000.
-- Table `creature` have creature (GUID: 2565563 Entry: 91915) with `spawntimesecsmax` (10800) value lower than `spawntimesecsmin` (200000), it will be adjusted to 200000.
-- Table `creature` have creature (GUID: 2565561 Entry: 91915) with `spawntimesecsmax` (10800) value lower than `spawntimesecsmin` (200000), it will be adjusted to 200000.
-- Table `creature` have creature (GUID: 2565615 Entry: 91926) with `spawntimesecsmax` (10800) value lower than `spawntimesecsmin` (200000), it will be adjusted to 200000.
-- Table `creature` have creature (GUID: 2565630 Entry: 91912) with `spawntimesecsmax` (10800) value lower than `spawntimesecsmin` (200000), it will be adjusted to 200000.
-- Table `creature` have creature (GUID: 2565631 Entry: 91912) with `spawntimesecsmax` (10800) value lower than `spawntimesecsmin` (200000), it will be adjusted to 200000.
-- Table `creature` have creature (GUID: 2565648 Entry: 91926) with `spawntimesecsmax` (10800) value lower than `spawntimesecsmin` (200000), it will be adjusted to 200000.
-- Table `creature` have creature (GUID: 2565649 Entry: 91926) with `spawntimesecsmax` (10800) value lower than `spawntimesecsmin` (200000), it will be adjusted to 200000.
-- Table `creature` have creature (GUID: 2565650 Entry: 91926) with `spawntimesecsmax` (10800) value lower than `spawntimesecsmin` (200000), it will be adjusted to 200000.
-- Table `creature` have creature (GUID: 2567901 Entry: 91926) with `spawntimesecsmax` (10800) value lower than `spawntimesecsmin` (200000), it will be adjusted to 200000.
-- Table `creature` have creature (GUID: 2567902 Entry: 91926) with `spawntimesecsmax` (10800) value lower than `spawntimesecsmin` (200000), it will be adjusted to 200000.
-- Table `creature` have creature (GUID: 2567903 Entry: 91926) with `spawntimesecsmax` (10800) value lower than `spawntimesecsmin` (200000), it will be adjusted to 200000.
-- Table `creature` have creature (GUID: 2567904 Entry: 91926) with `spawntimesecsmax` (10800) value lower than `spawntimesecsmin` (200000), it will be adjusted to 200000.
-- Table `creature` have creature (GUID: 2567922 Entry: 91926) with `spawntimesecsmax` (10800) value lower than `spawntimesecsmin` (200000), it will be adjusted to 200000.
-- Table `creature` have creature (GUID: 2567923 Entry: 91926) with `spawntimesecsmax` (10800) value lower than `spawntimesecsmin` (200000), it will be adjusted to 200000.
-- Table `creature` have creature (GUID: 2568428 Entry: 91926) with `spawntimesecsmax` (10800) value lower than `spawntimesecsmin` (200000), it will be adjusted to 200000.

UPDATE `creature` SET `spawntimesecsmax` = 200000 WHERE `guid` IN (2565647, 2565563, 2565561, 2565615, 2565630, 2565631, 2565648, 2565649, 2565650, 2567901, 2567902, 2567903, 2567904, 2567922, 2567923, 2568428);

-- Table 'creature_loot_template' entry 50637 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 60893 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 60894 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 60895 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 60896 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 60897 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 60898 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 60899 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 60900 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 60902 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 61018 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 61038 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 61069 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 61072 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 61081 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 61089 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 61097 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 61099 (creature entry) not exist but used as loot id in DB.
-- Table 'creature_loot_template' entry 61165 (creature entry) not exist but used as loot id in DB.

UPDATE `creature_template` SET `loot_id` = 0 WHERE `entry` IN (50637, 60893, 60894, 60895, 60896, 60897, 60898, 60899, 60900, 60902, 61018, 61038, 61069, 61072, 61081, 61089, 61097, 61099, 61165);

-- Quest 80606 has `ReqCreatureOrGOId2` = 0 but `ReqCreatureOrGOCount2` = 1.
-- Quest 80606 has `ReqCreatureOrGOId3` = 0 but `ReqCreatureOrGOCount3` = 1.
-- Quest 80606 has `ReqCreatureOrGOId4` = 0 but `ReqCreatureOrGOCount4` = 1.
-- Quest 40724 has `RewItemId2` = 60971 but item with entry 60971 does not exist, quest will not reward this item.
-- Quest 40677 has `RewChoiceItemId3` = 60922 but item with entry 60922 does not exist, quest will not reward this item.
-- Quest 40794 has `RequiredMinRepFaction` = 1693 but faction template 1693 does not exist, quest can't be done.

UPDATE `quest_template` SET `ReqCreatureOrGOCount2` = 0 WHERE `entry` = 80606;
UPDATE `quest_template` SET `ReqCreatureOrGOCount3` = 0 WHERE `entry` = 80606;
UPDATE `quest_template` SET `ReqCreatureOrGOCount4` = 0 WHERE `entry` = 80606;
UPDATE `quest_template` SET `RewItemId2` = 0, `RewItemCount2` = 0 WHERE `entry` = 40724;
UPDATE `quest_template` SET `RewChoiceItemId3` = 0, `RewChoiceItemCount3` = 0 WHERE `entry` = 40677;
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1011 WHERE `entry` = 40794;

-- Item (Entry: 51250) has wrong value in stackable (0), replace by default 1.

UPDATE `item_template` SET `stackable` = 1 WHERE `entry` =  51250;

-- Table `creature_questrelation: Quest 55033 listed for entry 91243 does not exist.
-- Table `creature_questrelation: Quest 55034 listed for entry 91243 does not exist.
-- Table `creature_involvedrelation: Quest 55033 listed for entry 91243 does not exist.
-- Table `creature_involvedrelation: Quest 55034 listed for entry 91243 does not exist.
-- Table `creature_involvedrelation` have data for nonexistent creature entry (0) and existing quest 20003

DELETE FROM `creature_involvedrelation` WHERE `quest` = 55033;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 55034;
DELETE FROM `creature_questrelation` WHERE `quest` = 55034;
DELETE FROM `creature_questrelation` WHERE `quest` = 55034;
DELETE FROM `creature_questrelation` WHERE `quest` = 20003 AND `id` = 0;

-- Creature (Entry: 61137) has wrong spell 0 defined in `auras` field in `creature_template`.

UPDATE `creature_template` SET `auras` = NULL WHERE `entry` = 61137;