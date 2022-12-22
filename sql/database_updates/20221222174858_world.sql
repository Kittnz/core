-- Snowball respawn timer:
UPDATE `creature` SET `spawntimesecsmin` = 50400, `spawntimesecsmax` = 72000 WHERE `id` = 50112;
-- Change respawn timer of Oilmaster Higgle Wirefuse to 5 mins:
UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `id` = 61036;
-- NPC Warleader Temukar make unkillable and unaggroable:
UPDATE `creature_template` SET `unit_flags` = 2, `flags_extra` = 2 WHERE `entry` = 61045;
-- NPC Vengeful Spirit needs ghost effects:
UPDATE `creature_template` SET `auras` = '9617' WHERE `entry` = 61118;
-- Wolfves don't drop the Silvermane Pelt for Protecting Aerie Peak:
REPLACE INTO `creature_loot_template` VALUES
(2924, 60898, -72, 4, 1, 1, 0),
(2925, 60898, -72, 4, 1, 1, 0),
(2926, 60898, -72, 4, 1, 1, 0);
-- Remove Dark Ranger skin temporary fix:
UPDATE `custom_character_skins` SET `skin_male` = 16 WHERE `token_id` = 81206;
-- Removed corrupted reward for Earth Rumble quest:
UPDATE `quest_template` SET `RewChoiceItemId1` = 0, `RewChoiceItemId2` = 0, `RewChoiceItemCount1` = 0, `RewChoiceItemCount2` = 0, `RewItemId1` = 60865, `RewItemCount1` = 1 WHERE `entry` = 40637;
-- Fixes for Grizzlore Wants Thunder quest:
UPDATE `quest_template` SET `Details` = 'Grizzlore - me! I want more booze! <hick!>\n\nThunder… <hick!> …brew! Lager… <hick!>\n\nGrimbooze brews it well. You go there. Westfall! <hick!>\r\n', `Objectives` = 'Acquire Thunderbrew Lager from Grimbooze Thunderbrew in Westfall or Innkeeper Karakul in Swamp of Sorrows for Grizzlore.' WHERE `entry` = 50326;
