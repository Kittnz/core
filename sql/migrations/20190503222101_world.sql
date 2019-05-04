DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20190503222101');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20190503222101');
-- Add your query below.

replace into quest_template (entry, MinLevel, QuestLevel, Title, Details, Objectives, OfferRewardText, RequestItemsText, ReqItemId1, ReqItemCount1, ReqItemId2, ReqItemCount2, ReqItemId3, ReqItemCount3, RewItemId1, RewItemCount1, RewItemId2, RewItemCount2) values

(50230, 5, 15, 'Night\'s Exploration', 

'Come here, lad!\n\nI see that you are a capable person so I\'ll teach you something useful since fate brought us together.\n\nYou could benefit from out here in the jungle!\n\nIf you bring me a tight rope from Jaquilina there, some oil from the goblins of Booty Bay and a thick club from around the area then I will let you in on a unique way on how to construct a proper torch in no time that you could use in your travels for either a night\'s exploration or to safeguard yourself against wild animals.\n\nSee the ones near our camp? They never go out!', 

'Bring a rope from Jaquilina, oil from Booty Bay and a club from the surrounding jungle to Nesingwary\'s Expedition for S. J. Erlgadin.',

'Ah! You brought the materials. Splendid!\n\nWatch carefully!',

'Have you gathered all materials?',

 50231, 1, -- Rope
 50232, 1, -- Oil
 50233, 1, -- Wooden Club
 
 50230, 1, 6183, 1);

-- Skill update on usage and some other stuff:

update item_template set script_name = '' where entry = 6183;
update item_template set required_skill_rank = 1 where entry = 6183;
update item_template set bonding = 1 where entry = 6183;
update item_template set spellcooldown_1 = 3600000 where entry = 6183;

replace into creature_involvedrelation (id, quest) values (718, 50230);
replace into creature_questrelation (id, quest) values (718, 50230);

replace into npc_vendor (entry, item) values (2483, 50231); -- Jaquilina Dramet <Superior Axecrafter>
replace into npc_vendor (entry, item) values (2685, 50232); -- Mazk Snipeshot <Engineering Supplies>

replace into `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) 
values (1000000, 0, 3, 289, 'Pile of Wood', 0, 0, 0.7, 57, 1000000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount) values (1000000, 50233, 100, 1, 1, 1);

replace into`gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) 
values (1000000, 0, -11633.1, -66.3499, 10.9391, 0.630667, 0, 0, 0.310133, 0.950693, 25, 25, 100, 1, 0, 0, 0, 10);

-- Light Torch -> bind spell to the Survival skill.

replace into skill_line_ability (id, build, skill_id, spell_id, race_mask, class_mask, req_skill_value, superseded_by_spell, learn_on_get_skill, max_value, min_value, req_train_points) 
values (16000, 5875, 142, 7364, 0, 0, 0, 0, 0, 150, 1, 0);

-- Survival Tent

replace `gameobject_template` (`entry`, `patch`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `script_name`) 
value (1000001, 0, 5, 4176, 'Adventurer\'r Tent', 0, 0, 1.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Survival Expert

replace into creature_template (entry, name, subname, level_min, level_max, health_min, health_max, display_id1, faction, type, inhabit_type, npc_flags) 
values (50070, 'Rufus Hardwick', 'Survival Expert', 40, 40, 5000, 6000, 1685, 35, 7, 3, 4);

replace into npc_vendor (entry, item) values 
(50070, 4471),
(50070, 4470), 
(50070, 6183), 
(50070, 50234), 
(50070, 7005), 
(50070, 10111), 
(50070, 8749), 
(50070, 18288); 

replace into `creature` (`id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`, `visibilitymod`, `patch_min`, `patch_max`) 
values (50070, 0, 0, 0, -11621.3, -47.7214, 10.9964, 5.40745, 25, 25, 0, 0, 100, 0, 0, 0, 0, 0, 0, 10);



-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
